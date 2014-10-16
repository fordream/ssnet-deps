REM @echo off
setlocal
set TREEVIEWEX=%~dp0..\..\..\..\externals\TreeViewEx
call "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\vc\vcvarsall.bat" x86
msbuild /tv:4.0 /t:Build /verbosity:quiet /clp:ErrorsOnly /fl /flp:logfile=BuildErrors.log;ErrorsOnly "/p:Configuration=Release;Platform=Any CPU" %TREEVIEWEX%\Main\TreeViewEx.sln
if NOT ERRORLEVEL 0 pause

xcopy /Y %TREEVIEWEX%\Main\TreeViewEx\bin\Release\TreeViewEx.dll .
xcopy /Y %TREEVIEWEX%\Main\TreeViewEx\bin\Release\TreeViewEx.pdb .
if NOT ERRORLEVEL 0  pause
	