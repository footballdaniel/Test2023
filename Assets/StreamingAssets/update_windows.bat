@echo off
echo Zip file path: %1
echo Destination folder path: %2
echo Executable name: %3

echo Waiting for 1 seconds...
timeout /t 1 > nul

echo Unzipping...
echo Unzipping file from %1 to %2
tar -xf %1 -C %2

echo Waiting for 1 seconds...
timeout /t 1 > nul

echo Launching executable: %3
start "" "%3"

echo Waiting for 1 seconds...
timeout /t 1 > nul

echo Deleting ZIP file: %1
del "%1"
echo ZIP file deleted.

pause
