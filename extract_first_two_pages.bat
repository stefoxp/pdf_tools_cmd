@echo off

echo Extraction started ****************************

rem set the output directory
set "out_dir=out"

for %%f in (*.pdf) do (
    rem extract the first two pages
    pdftk *.pdf cat 1-2 output "out_%%f"
    
    move "out_%%f" "%out_dir%"

    rem echo "out_%%f"
)

echo Extraction complete ****************************
pause
