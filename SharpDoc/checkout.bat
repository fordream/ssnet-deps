@echo OFF
setlocal
set HOME=%USERPROFILE%
"%ProgramFiles(x86)%\Git\cmd\git.exe" clone https://github.com/SiliconStudio/SharpDoc.git -b master ../../externals/SharpDoc
if NOT ERRORLEVEL 0 pause
