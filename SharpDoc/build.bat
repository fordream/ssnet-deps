REM @echo off
setlocal
set SHARPDOC=%~dp0..\..\externals\SharpDoc
call "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\vc\vcvarsall.bat" x86
msbuild /tv:4.0 /t:Build /verbosity:quiet /clp:ErrorsOnly /fl /flp:logfile=BuildErrors.log;ErrorsOnly "/p:Configuration=Release;Platform=Any CPU" %SHARPDOC%\SharpDoc.sln
if NOT ERRORLEVEL 0 pause
xcopy /Y /E %SHARPDOC%\Build .
if NOT ERRORLEVEL 0 pause
