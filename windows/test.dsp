# Microsoft Developer Studio Project File - Name="test" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101
# TARGTYPE "Win32 (ALPHA) Application" 0x0601

CFG=test - Win32 AlphaDbg
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "test.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "test.mak" CFG="test - Win32 AlphaDbg"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "test - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "test - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "test - Win32 AlphaRel" (based on "Win32 (ALPHA) Application")
!MESSAGE "test - Win32 AlphaDbg" (based on "Win32 (ALPHA) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""

!IF  "$(CFG)" == "test - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\test\Release"
# PROP BASE Intermediate_Dir ".\test\Release"
# PROP BASE Target_Dir ".\test"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\test\Release"
# PROP Intermediate_Dir ".\test\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ".\test"
F90=df.exe
# ADD BASE F90 /include:".\test\Release/" /I "test\Release/"
# ADD F90 /include:".\test\Release/" /I "test\Release/"
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /Gm /Gi /GX /ZI /Od /I "hdf\src" /D "_WINDOWS" /D "NDEBUG" /D "INTEL86" /D "WIN32" /D "DOS_FS" /YX /FD /c
MTL=midl.exe
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib $(HDF4_EXT_ZLIB) $(HDF4_EXT_SZIP) $(HDF4_EXT_JPEG) /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "test - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\test\Debug"
# PROP BASE Intermediate_Dir ".\test\Debug"
# PROP BASE Target_Dir ".\test"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\test\Debug"
# PROP Intermediate_Dir ".\test\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ".\test"
F90=df.exe
# ADD BASE F90 /include:".\test\Debug/" /I "test\Debug/"
# ADD F90 /dbglibs /include:".\test\Debug/" /I "test\Debug/"
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /Gm /Gi /GX /ZI /Od /I "hdf\src" /D "_WINDOWS" /D "_DEBUG" /D "INTEL86" /D "WIN32" /D "DOS_FS" /YX /FD /c
MTL=midl.exe
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib $(HDF4_EXT_ZLIB) $(HDF4_EXT_SZIP) $(HDF4_EXT_JPEG) /nologo /subsystem:windows /debug /machine:I386

!ELSEIF  "$(CFG)" == "test - Win32 AlphaRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "test\AlphaRel"
# PROP BASE Intermediate_Dir "test\AlphaRel"
# PROP BASE Target_Dir "test"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "test\AlphaRel"
# PROP Intermediate_Dir "test\AlphaRel"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "test"
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /W3 /GX /Zi /Od /I "hdf/src" /I "hdf\src" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "INTEL86" /D "DOS_FS" /YX /FD /c
# ADD CPP /nologo /Gt0 /W3 /GX /Zi /Od /I "hdf/src" /I "hdf\src" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "INTEL86" /D "DOS_FS" /YX /FD /c
F90=df.exe
# ADD BASE F90 /compile_only /include:"test\AlphaRel/" /nologo /warn:nofileopt /winapp /I "test\Release/"
# ADD F90 /compile_only /include:"test\AlphaRel/" /nologo /warn:nofileopt /I "test\Release/"
# SUBTRACT F90 /dbglibs /libdir:noauto /winapp
MTL=midl.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /machine:ALPHA

!ELSEIF  "$(CFG)" == "test - Win32 AlphaDbg"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "test\AlphaDbg"
# PROP BASE Intermediate_Dir "test\AlphaDbg"
# PROP BASE Target_Dir "test"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "test\AlphaDbg"
# PROP Intermediate_Dir "test\AlphaDbg"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "test"
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /W3 /GX /Zi /Od /I "hdf\src" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "INTEL86" /D "DOS_FS" /YX /FD /c
# ADD CPP /nologo /Gt0 /W3 /GX /Zi /Od /I "hdf\src" /D "_WINDOWS" /D "WIN32" /D "_DEBUG" /D "DOS_FS" /YX /FD /c
F90=df.exe
# ADD BASE F90 /compile_only /dbglibs /debug:full /include:"test\AlphaDbg/" /nologo /warn:nofileopt /winapp /I "test\Debug/"
# ADD F90 /compile_only /dbglibs /debug:full /include:"test\AlphaDbg/" /nologo /warn:nofileopt /I "test\Debug/"
# SUBTRACT F90 /winapp
MTL=midl.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /debug /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /debug /machine:ALPHA

!ENDIF 

# Begin Target

# Name "test - Win32 Release"
# Name "test - Win32 Debug"
# Name "test - Win32 AlphaRel"
# Name "test - Win32 AlphaDbg"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
