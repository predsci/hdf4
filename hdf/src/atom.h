/****************************************************************************
 * NCSA HDF                                                                 *
 * Software Development Group                                               *
 * National Center for Supercomputing Applications                          *
 * University of Illinois at Urbana-Champaign                               *
 * 605 E. Springfield, Champaign IL 61820                                   *
 *                                                                          *
 * For conditions of distribution and use, see the accompanying             *
 * hdf/COPYING file.                                                        *
 *                                                                          *
 ****************************************************************************/

/* $Id$ */

/*-----------------------------------------------------------------------------
 * File:    atom.h
 * Purpose: header file for atom API
 * Dependencies: 
 * Invokes:
 * Contents:
 * Structure definitions: 
 * Constant definitions: 
 *---------------------------------------------------------------------------*/

/* avoid re-inclusion */
#ifndef __ATOM_H
#define __ATOM_H

/* Atom Features control */
/* Define the following macro for fast hash calculations (but limited hash sizes) */
#define HASH_SIZE_POWER_2

/* Define the following macro for atom caching over all the atoms */
#define ATOMS_ARE_CACHED

#include "hdf.h"

/* Group values allowed */
typedef enum {BADGROUP=(-1),    /* Invalid Group */
DDGROUP=0,                  /* Group ID for DD objects */
AIDGROUP=1,                 /* Group ID for access ID objects */
FIDGROUP=2,                 /* Group ID for file ID objects */
VGIDGROUP=3,                /* Group ID for Vgroup ID objects */
VSIDGROUP=4,                /* Group ID for Vdata ID objects */
GRIDGROUP=5,                /* Group ID for GR ID objects */
RIIDGROUP=6,                /* Group ID for RI ID objects */
BITIDGROUP=7,               /* Group ID for Bitfile ID objects */
MAXGROUP                    /* Highest group in group_t (Invalid as true group) */
} group_t;

/* Type of atoms to return to users */
typedef int32 atom_t;

/* Type of the function to compare objects & keys */
typedef intn (*HAsearch_func_t)(const VOIDP obj, const VOIDP key);

#if defined ATOM_MASTER | defined ATOM_TESTER

/* # of bits to use for Group ID in each atom (change if MAXGROUP>16) */
#define GROUP_BITS  4
#define GROUP_MASK  0x0F

/* # of bits to use for the Atom index in each atom (change if MAXGROUP>16) */
#define ATOM_BITS   28
#define ATOM_MASK   0x0FFFFFFF

#ifdef ATOMS_ARE_CACHED
/* # of previous atoms cached */
#define ATOM_CACHE_SIZE 4
#endif /* ATOMS_ARE_CACHED */

/* Map an atom to a Group number */
#define ATOM_TO_GROUP(a)    ((((atom_t)(a))>>((sizeof(atom_t)*8)-GROUP_BITS))&GROUP_MASK)

#ifdef HASH_SIZE_POWER_2
/* Map an atom to a hash location (assumes s is a power of 2 and smaller than the ATOM_MASK constant) */
#define ATOM_TO_LOC(a,s)    ((atom_t)(a)&((s)-1))
#else /* HASH_SIZE_POWER_2 */
/* Map an atom to a hash location */
#define ATOM_TO_LOC(a,s)    (((atom_t)(a)&ATOM_MASK)%(s))
#endif /* HASH_SIZE_POWER_2 */

/* Combine a Group number and an atom index into an atom */
#define MAKE_ATOM(g,i)      ((((atom_t)(g)&GROUP_MASK)<<((sizeof(atom_t)*8)-GROUP_BITS))|((atom_t)(i)&ATOM_MASK))

/* Atom information structure used */
typedef struct atom_info_struct_tag {
    atom_t id;              /* atom ID for this info */
    VOIDP *obj_ptr;         /* pointer associated with the atom */
    struct atom_info_struct_tag *next;   /* link to next atom (in case of hash-clash) */
  }atom_info_t;

/* Atom group structure used */
typedef struct atom_group_struct_tag {
    uintn count;            /* # of times this group has been initialized */
    intn hash_size;         /* size of the hash table to store the atoms in */
    uintn atoms;            /* current number of atoms held */
    uintn nextid;           /* atom ID to use for the next atom */
    atom_info_t **atom_list;/* pointer to an array of ptrs to atoms */
  }atom_group_t;

/* Define this in only one place */
#ifdef ATOM_MASTER

/* Array of pointers to atomic groups */
static atom_group_t *atom_group_list[MAXGROUP]={NULL};

/* Pointer to the atom node free list */
static atom_info_t *atom_free_list=NULL;

#ifdef ATOMS_ARE_CACHED
/* Array of pointers to atomic groups */
static atom_t atom_id_cache[ATOM_CACHE_SIZE]={-1,-1,-1,-1};
static VOIDP atom_obj_cache[ATOM_CACHE_SIZE]={NULL};
#endif /* ATOMS_ARE_CACHED */

#endif /* ATOM_MASTER */

/* Useful routines for generally private use */

#endif /* ATOM_MASTER | ATOM_TESTER */

#if defined c_plusplus || defined __cplusplus
extern      "C"
{
#endif                          /* c_plusplus || __cplusplus */

/******************************************************************************
 NAME
     HAinit_group - Initialize an atomic group

 DESCRIPTION
    Creates an atomic group to store atoms in.  If the group has already been
    initialized, this routine just increments the count of # of initializations
    and returns without trying to change the size of the hash table.

 RETURNS
    Returns SUCCEED if successful and FAIL otherwise

*******************************************************************************/
intn HAinit_group(group_t grp,      /* IN: Group to initialize */
    intn hash_size                  /* IN: Minimum hash table size to use for group */
);

/******************************************************************************
 NAME
     HAdestroy_group - Destroy an atomic group

 DESCRIPTION
    Destroys an atomic group which atoms are stored in.  If the group still
    has atoms which are registered, this routine fails.  If there have been
    multiple initializations of the group, this routine just decrements the
    count of initializations and does not check the atoms out-standing.

 RETURNS
    Returns SUCCEED if successful and FAIL otherwise

*******************************************************************************/
intn HAdestroy_group(group_t grp       /* IN: Group to destroy */
);

/******************************************************************************
 NAME
     HAregister_atom - Register an object in a group and get an atom for it.

 DESCRIPTION
    Registers an object in a group and returns an atom for it.  This routine
    does _not_ check for unique-ness of the objects, if you register an object
    twice, you will get two different atoms for it.  This routine does make
    certain that each atom in a group is unique.  Atoms are created by getting
    a unique number for the group the atom is in and incorporating the group
    into the atom which is returned to the user.

 RETURNS
    Returns atom if successful and FAIL otherwise

*******************************************************************************/
atom_t HAregister_atom(group_t grp,     /* IN: Group to register the object in */
    VOIDP object                        /* IN: Object to attach to atom */
);

/******************************************************************************
 NAME
     HAatom_object - Returns to the object ptr for the atom 

 DESCRIPTION
    Retrieves the object ptr which is associated with the atom.

 RETURNS
    Returns object ptr if successful and NULL otherwise

*******************************************************************************/
VOIDP HAatom_object(atom_t atm   /* IN: Atom to retrieve object for */
);

/******************************************************************************
 NAME
     HAatom_group - Returns to the group for the atom 

 DESCRIPTION
    Retrieves the group which is associated with the atom.

 RETURNS
    Returns group if successful and FAIL otherwise

*******************************************************************************/
group_t HAatom_group(atom_t atm   /* IN: Atom to retrieve group for */
);

/******************************************************************************
 NAME
     HAremove_atom - Removes an atom from a group

 DESCRIPTION
    Removes an atom from a group.

 RETURNS
    Returns atom's object if successful and FAIL otherwise

*******************************************************************************/
VOIDP HAremove_atom(atom_t atm   /* IN: Atom to remove */
);

/******************************************************************************
 NAME
     HAsearch_atom - Search for an object in a group and get it's pointer.

 DESCRIPTION
    Searchs for an object in a group and returns the pointer to it.
    This routine calls the function pointer passed in for each object in the
    group until it finds a match.  Currently there is no way to resume a
    search.

 RETURNS
    Returns pointer an atom's object if successful and NULL otherwise

*******************************************************************************/
VOIDP HAsearch_atom(group_t grp,        /* IN: Group to search for the object in */
    HAsearch_func_t func,               /* IN: Ptr to the comparison function */
    const VOIDP key                     /* IN: pointer to key to compare against */
);

/******************************************************************************
 NAME
     HAshutdown - Terminate various static buffers.

 DESCRIPTION
    Free various buffers allocated in the HA routines.

 RETURNS
    Returns SUCCEED/FAIL

*******************************************************************************/
intn HAshutdown(void);

#if defined c_plusplus || defined __cplusplus
}
#endif                          /* c_plusplus || __cplusplus */

#endif /* __ATOM_H */

