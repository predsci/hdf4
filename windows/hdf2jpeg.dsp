# Microsoft Developer Studio Project File - Name="hdf2jpeg" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103
# TARGTYPE "Win32 (ALPHA) Console Application" 0x0603

CFG=hdf2jpeg - Win32 AlphaDbg
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "hdf2jpeg.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "hdf2jpeg.mak" CFG="hdf2jpeg - Win32 AlphaDbg"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "hdf2jpeg - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "hdf2jpeg - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "hdf2jpeg - Win32 AlphaRel" (based on "Win32 (ALPHA) Console Application")
!MESSAGE "hdf2jpeg - Win32 AlphaDbg" (based on "Win32 (ALPHA) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""

!IF  "$(CFG)" == "hdf2jpeg - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\hdf2jpeg\Release"
# PROP BASE Intermediate_Dir ".\hdf2jpeg\Release"
# PROP BASE Target_Dir ".\hdf2jpeg"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\hdf2jpeg\Release"
# PROP Intermediate_Dir ".\hdf2jpeg\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ".\hdf2jpeg"
F90=df.exe
# ADD BASE F90 /include:".\hdf2jpeg\Release/" /I "hdf2jpeg\Release/"
# ADD F90 /include:".\hdf2jpeg\Release/" /I "hdf2jpeg\Release/"
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /W3 /Gi /GX /ZI /Od /I "hdf\src" /D "_CONSOLE" /D "NDEBUG" /D "INTEL86" /D "WIN32" /D "DOS_FS" /FD /c
# SUBTRACT CPP /YX
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib $(HDF4_EXT_ZLIB) $(HDF4_EXT_SZIP) $(HDF4_EXT_JPEG) /nologo /subsystem:console /incremental:yes /machine:I386 /out:"windows\bin\release\hdf2jpeg.exe" /libpath:".\windows\lib\release\singlethreaded"

!ELSEIF  "$(CFG)" == "hdf2jpeg - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\hdf2jpeg\Debug"
# PROP BASE Intermediate_Dir ".\hdf2jpeg\Debug"
# PROP BASE Target_Dir ".\hdf2jpeg"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\hdf2jpeg\Debug"
# PROP Intermediate_Dir ".\hdf2jpeg\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ".\hdf2jpeg"
F90=df.exe
# ADD BASE F90 /include:".\hdf2jpeg\Debug/" /I "hdf2jpeg\Debug/"
# ADD F90 /dbglibs /include:".\hdf2jpeg\Debug/" /I "hdf2jpeg\Debug/"
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /W3 /Gm /Gi /GX /ZI /Od /I "hdf\src" /D "_CONSOLE" /D "_DEBUG" /D "INTEL86" /D "WIN32" /D "DOS_FS" /FD /c
# SUBTRACT CPP /YX
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib $(HDF4_EXT_ZLIB) $(HDF4_EXT_SZIP) $(HDF4_EXT_JPEG) /nologo /subsystem:console /debug /machine:I386 /nodefaultlib:"libc.lib" /out:"windows\bin\debug\hdf2jpeg.exe" /libpath:".\windows\lib\debug\singlethreaded"

!ELSEIF  "$(CFG)" == "hdf2jpeg - Win32 AlphaRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "hdf2jpeg\AlphaRel"
# PROP BASE Intermediate_Dir "hdf2jpeg\AlphaRel"
# PROP BASE Target_Dir "hdf2jpeg"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "hdf2jpeg\AlphaRel"
# PROP Intermediate_Dir "hdf2jpeg\AlphaRel"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "hdf2jpeg"
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /W3 /GX /Zi /Od /I ".\hdf\src" /I ".\hdf\zlib" /I ".\hdf\jpeg" /I "hdf/src" /I "hdf\src" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "INTEL86" /D "DOS_FS" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /Gt0 /W3 /GX /Zi /Od /I ".\hdf\src" /I ".\hdf\zlib" /I ".\hdf\jpeg" /I "hdf/src" /I "hdf\src" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "INTEL86" /D "DOS_FS" /FD /c
# SUBTRACT CPP /YX
F90=df.exe
# ADD BASE F90 /compile_only /include:"hdf2jpeg\AlphaRel/" /nologo /warn:nofileopt /I "hdf2jpeg\Release/"
# ADD F90 /compile_only /include:"hdf2jpeg\AlphaRel/" /nologo /warn:nofileopt /I "hdf2jpeg\Release/"
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 src\release\src.lib jpeg\release\jpeg.lib zlib\release\zlib.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /machine:ALPHA /out:"windows\bin\release\hdf2jpeg.exe"

!ELSEIF  "$(CFG)" == "hdf2jpeg - Win32 AlphaDbg"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "hdf2jpeg\AlphaDbg"
# PROP BASE Intermediate_Dir "hdf2jpeg\AlphaDbg"
# PROP BASE Target_Dir "hdf2jpeg"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "hdf2jpeg\AlphaDbg"
# PROP Intermediate_Dir "hdf2jpeg\AlphaDbg"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "hdf2jpeg"
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /W3 /GX /Zi /Od /I ".\hdf\zlib" /I ".\hdf\jpeg" /I "hdf\src" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "INTEL86" /D "DOS_FS" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /Gt0 /W3 /GX /Zi /Od /I ".\hdf\zlib" /I ".\hdf\jpeg" /I "hdf\src" /D "_CONSOLE" /D "_MBCS" /D "WIN32" /D "_DEBUG" /D "DOS_FS" /FD /c
# SUBTRACT CPP /YX
F90=df.exe
# ADD BASE F90 /compile_only /dbglibs /debug:full /include:"hdf2jpeg\AlphaDbg/" /nologo /warn:nofileopt /I "hdf2jpeg\Debug/"
# ADD F90 /compile_only /dbglibs /debug:full /include:"hdf2jpeg\AlphaDbg/" /nologo /warn:nofileopt /I "hdf2jpeg\Debug/"
RSC=rc.exe
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 src\debug\src.lib jpeg\debug\jpeg.lib zlib\debug\zlib.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:console /debug /machine:ALPHA /out:"windows\bin\debug\hdf2jpeg.exe"

!ENDIF 

# Begin Target

# Name "hdf2jpeg - Win32 Release"
# Name "hdf2jpeg - Win32 Debug"
# Name "hdf2jpeg - Win32 AlphaRel"
# Name "hdf2jpeg - Win32 AlphaDbg"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\hdf\util\hdf2jpeg.c

!IF  "$(CFG)" == "hdf2jpeg - Win32 Release"

!ELSEIF  "$(CFG)" == "hdf2jpeg - Win32 Debug"

!ELSEIF  "$(CFG)" == "hdf2jpeg - Win32 AlphaRel"

DEP_CPP_HDF2J=\
	".\hdf\src\atom.h"\
	".\hdf\src\bitvect.h"\
	".\hdf\src\dfivms.h"\
	".\hdf\src\dynarray.h"\
	".\hdf\src\hbitio.h"\
	".\hdf\src\hchunks.h"\
	".\hdf\src\hcomp.h"\
	".\hdf\src\hdf.h"\
	".\hdf\src\hdfi.h"\
	".\hdf\src\herr.h"\
	".\hdf\src\hfile.h"\
	".\hdf\src\hlimits.h"\
	".\hdf\src\hntdefs.h"\
	".\hdf\src\hproto.h"\
	".\hdf\src\hqueue.h"\
	".\hdf\src\htags.h"\
	".\hdf\src\linklist.h"\
	".\hdf\src\maldebug.h"\
	".\hdf\src\mcache.h"\
	".\hdf\src\mfgr.h"\
	".\hdf\src\tbbt.h"\
	".\hdf\src\vg.h"\
	".\hdf\src\vgint.h"\
	
NODEP_CPP_HDF2J=\
	".\hdf\src\fmpio.h"\
	".\hdf\src\IOTrace.h"\
	".\hdf\src\ProcIDs.h"\
	".\ys\stat.h"\
	".\ys\types.h"\
	

!ELSEIF  "$(CFG)" == "hdf2jpeg - Win32 AlphaDbg"

DEP_CPP_HDF2J=\
	".\hdf\src\atom.h"\
	".\hdf\src\bitvect.h"\
	".\hdf\src\dfivms.h"\
	".\hdf\src\dynarray.h"\
	".\hdf\src\hbitio.h"\
	".\hdf\src\hchunks.h"\
	".\hdf\src\hcomp.h"\
	".\hdf\src\hdf.h"\
	".\hdf\src\hdfi.h"\
	".\hdf\src\herr.h"\
	".\hdf\src\hfile.h"\
	".\hdf\src\hlimits.h"\
	".\hdf\src\hntdefs.h"\
	".\hdf\src\hproto.h"\
	".\hdf\src\hqueue.h"\
	".\hdf\src\htags.h"\
	".\hdf\src\linklist.h"\
	".\hdf\src\maldebug.h"\
	".\hdf\src\mcache.h"\
	".\hdf\src\mfgr.h"\
	".\hdf\src\tbbt.h"\
	".\hdf\src\vg.h"\
	".\hdf\src\vgint.h"\
	
NODEP_CPP_HDF2J=\
	".\hdf\src\fmpio.h"\
	".\hdf\src\IOTrace.h"\
	".\hdf\src\ProcIDs.h"\
	".\ys\stat.h"\
	".\ys\types.h"\
	

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
