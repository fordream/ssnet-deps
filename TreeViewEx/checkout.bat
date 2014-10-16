@echo OFF
setlocal
set HOME=%USERPROFILE%

"%ProgramFiles%\TortoiseSVN\bin\TortoiseProc.exe" /command:checkout /url:"https://treeviewex.svn.codeplex.com/svn" /closeonend:3 /path:"../../../../externals/TreeViewEx"
if NOT ERRORLEVEL 0 pause

