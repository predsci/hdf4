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

/*+ hkit.h
***  private header file for hkit routines
+*/

#ifndef __HKIT_H

/* tag_messages is the list of tag descriptions in the system, kept as
   tag-description pairs.  To look up a description, a linear search is
   required but efficiency should be okay. */
typedef struct tag_descript_t {
    uint16 tag;    		/* tag for description ? */
    const char   *name;  	/* tag name ? */  
    const char   *desc;  	/* tag description ? */  
} tag_descript_t;

/* stringizing macro */
#define string(x) #x

/*  NOTE: 
 *        Please keep tag names <= 30 characters - a 
 *        lot of pretty-printing code depends on it.
*/
PRIVATE const tag_descript_t tag_descriptions[] =
{
/* low-level set */
{ DFTAG_NULL  , string(DFTAG_NULL), "No Data"},
{ DFTAG_LINKED , string(DFTAG_LINKED), "Linked Blocks Indicator"},
{ DFTAG_VERSION , string(DFTAG_VERSION), "Version Descriptor"},
{ DFTAG_COMPRESSED, string(DFTAG_COMPRESSED), "Compressed Data Indicator"},

/* utility set */
{ DFTAG_FID   , string(DFTAG_FID), "File Identifier"},
{ DFTAG_FD    , string(DFTAG_FD), "File Description"},
{ DFTAG_TID   , string(DFTAG_TID), "Tag Identifier"},
{ DFTAG_TD    , string(DFTAG_TD), "Tag Description"},
{ DFTAG_DIL   , string(DFTAG_DIL), "Data Id Label"},
{ DFTAG_DIA   , string(DFTAG_DIA), "Data Id Annotation"},
{ DFTAG_NT    , string(DFTAG_NT), "Number type"},
{ DFTAG_MT    , string(DFTAG_MT), "Machine type"},
{ DFTAG_FREE  , string(DFTAG_FREE), "Free space"},
      
      /* raster-8 Tags */
{ DFTAG_ID8   , string(DFTAG_ID8), "Image Dimensions-8"},
{ DFTAG_IP8   , string(DFTAG_IP8), "Image Palette-8"},
{ DFTAG_RI8   , string(DFTAG_RI8), "Raster Image-8"},
{ DFTAG_CI8   , string(DFTAG_CI8), "RLE Compressed Image-8"},
{ DFTAG_II8   , string(DFTAG_II8), "Imcomp Image-8"},
      
      /* Raster Image Tags */
{ DFTAG_ID    , string(DFTAG_ID), "Image Dimensions"},
{ DFTAG_LUT   , string(DFTAG_LUT), "Image Palette"},
{ DFTAG_RI    , string(DFTAG_RI), "Raster Image Data"},
{ DFTAG_CI    , string(DFTAG_CI), "Compressed Image"},
{ DFTAG_RIG   , string(DFTAG_RIG), "Raster Image Group"},
{ DFTAG_LD    , string(DFTAG_LD), "Palette Dimension"},
{ DFTAG_MD    , string(DFTAG_MD), "Matte Dimension"},
{ DFTAG_MA    , string(DFTAG_MA), "Matte Data"},
{ DFTAG_CCN   , string(DFTAG_CCN), "Color Correction"},
{ DFTAG_CFM   , string(DFTAG_CFM), "Color Format"},
{ DFTAG_AR    , string(DFTAG_AR), "Aspect Ratio"},
{ DFTAG_DRAW  , string(DFTAG_DRAW), "Sequenced images"},
{ DFTAG_RUN   , string(DFTAG_RUN), "Runable program / script"},
{ DFTAG_XYP   , string(DFTAG_XYP), "X-Y position"},
{ DFTAG_MTO   , string(DFTAG_MTO), "M/c-Type override"},
      
      /* Tektronix */
{ DFTAG_T14   , string(DFTAG_T14), "TEK 4014 Data"},
{ DFTAG_T105  , string(DFTAG_T105), "TEK 4105 data"},
      
      /* Scientific / Numeric Data Sets */
{ DFTAG_SDG   , string(DFTAG_SDG), "Scientific Data Group"},
{ DFTAG_SDD   , string(DFTAG_SDD), "SciData dimension record"},
{ DFTAG_SD    , string(DFTAG_SD), "Scientific Data"},
{ DFTAG_SDS   , string(DFTAG_SDS), "SciData scales"},
{ DFTAG_SDL   , string(DFTAG_SDL), "SciData labels"},
{ DFTAG_SDU   , string(DFTAG_SDU), "SciData units"},
{ DFTAG_SDF   , string(DFTAG_SDF), "SciData formats"},
{ DFTAG_SDM   , string(DFTAG_SDM), "SciData max/min"},
{ DFTAG_SDC   , string(DFTAG_SDC), "SciData coordsys"},
{ DFTAG_SDT   , string(DFTAG_SDT), "Transpose"},
{ DFTAG_SDLNK , string(DFTAG_SDLNK), "Links related to the dataset"},
{ DFTAG_NDG   , string(DFTAG_NDG), "Numeric Data Group"},
{ DFTAG_CAL   , string(DFTAG_CAL), "Calibration information"},
{ DFTAG_FV    , string(DFTAG_FV), "Fill value information"},
      
      /* V Group Tags */
{ DFTAG_VG   , string(DFTAG_VG), "Vgroup"},
{ DFTAG_VH   , string(DFTAG_VH), "Vdata"},
{ DFTAG_VS   , string(DFTAG_VS), "Vdata Storage"},

      /* Compression Schemes */
{ DFTAG_RLE   , string(DFTAG_RLE), "Run Length Encoding"},
{ DFTAG_IMCOMP , string(DFTAG_IMCOMP), "IMCOMP Encoding"},
{ DFTAG_JPEG , string(DFTAG_JPEG), "24-bit JPEG Encoding"},
{ DFTAG_GREYJPEG , string(DFTAG_GREYJPEG), "8-bit JPEG Encoding"} 
      
};

#endif /* __HKIT_H */

