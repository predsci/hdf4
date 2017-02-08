########################################################
#  Include file for user options
########################################################

#-----------------------------------------------------------------------------
#------------------- E X A M P L E   B E G I N--------------------------------
#-----------------------------------------------------------------------------
# Option to Build with User Defined Values
#-----------------------------------------------------------------------------
MACRO (MACRO_USER_DEFINED_LIBS)
  set (USER_DEFINED_VALUE "FALSE")
ENDMACRO ()

#-------------------------------------------------------------------------------
option (BUILD_USER_DEFINED_LIBS "Build With User Defined Values" OFF)
if (BUILD_USER_DEFINED_LIBS)
  MACRO_USER_DEFINED_LIBS ()
endif ()
#-----------------------------------------------------------------------------
#------------------- E X A M P L E   E N D -----------------------------------
#-----------------------------------------------------------------------------
