@echo off
REM Use the full path to activate Conda
call C:\Users\<YourUsername>\miniconda3\condabin\conda.bat activate your_env_name

REM Run the Python script with CUDA
python run.py --execution-provider cuda

REM Pause to keep the window open
pause
