REM @echo off
setlocal
set CPPNET=%~dp0..\..\externals\CppNet
call "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\vc\vcvarsall.bat" x86
msbuild /tv:4.0 /t:Build /verbosity:quiet /clp:ErrorsOnly /fl /flp:logfile=BuildErrors.log;ErrorsOnly "/p:Configuration=Release;Platform=AnyCPU" %CPPNET%\CppNet.csproj
if NOT ERRORLEVEL 0 pause

xcopy /Y %CPPNET%\Bin\Release\CppNet.dll .
xcopy /Y %CPPNET%\Bin\Release\CppNet.pdb .
if NOT ERRORLEVEL 0  pause
	