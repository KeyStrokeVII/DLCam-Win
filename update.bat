@echo off
REM Navigate to the local Git repository
cd path\to\your\repository

REM Fetch updates from the upstream repository
git fetch upstream

REM Switch to the main branch
git checkout main

REM Merge changes from the upstream's main branch into the local main branch
git merge upstream/main

REM Push the merged changes to your origin repository
git push origin main

REM Pause to keep the command prompt open after execution
pause