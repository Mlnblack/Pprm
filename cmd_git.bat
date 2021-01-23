
::for /l %%i in (1,1,10) do echo %%%i>>G:\pprm\GitTool\log_git.txt

cd /d %1
::chdir >>G:\pprm\GitTool\log_git.txt
git status | findstr /C:"No commits yet"
if "%errorlevel%"=="0" (
 echo %date% %time% %1 need to commit>>G:\pprm\GitTool\log_git.txt
) else (
 echo %date% %time% %1 nothing to commit>>G:\pprm\GitTool\log_git.txt
)