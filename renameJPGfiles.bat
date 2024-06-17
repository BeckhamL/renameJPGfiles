@echo off
REM Batch script to append 'hello' to the end of .jpg file names

REM Set the target directory (current directory in this case)
SET "TARGET_DIR=."

REM Change to the target directory
cd "%TARGET_DIR%"

REM Loop through all .jpg files in the directory
for %%f in (*.jpg) do (
    REM Get the file name without the extension
    set "filename=%%~nf"

    REM Rename the file by appending 'hello' to the end of the file name
    ren "%%f" "%%~nfhello%%~xf"
)

echo All .jpg files have been renamed.
pause
