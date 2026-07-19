@echo off
echo ========================================
echo 
echo TESSDATA files installation for OCR tool
echo 
echo ========================================
echo 
echo To install:
PAUSE
echo Installing...
echo WARNING: Do not terminate the process as this may lead to corruption
echo ========================================
echo [STEP 1] Delete OCR files
echo ========================================
del /q "scripts\assets\tessdata\*.*"
echo ========================================
echo [STEP 2] Download ZIP file
echo ========================================
curl -L -o "download.zip" "https://github.com/andy-and-terry/TDP2027software/archive/refs/heads/tessdata-ocr-best.zip"
echo ========================================
echo [STEP 3] Move file
echo ========================================
move "download.zip" "scripts\assets\tessdata\download.zip"
echo ========================================
echo [STEP 4] CD to directory
echo ========================================
cd "scripts\assets\tessdata"
echo ========================================
echo [STEP 5] Extract files
echo ========================================
tar -xf "download.zip"
echo ========================================
echo [STEP 6] Delete ZIP file
echo ========================================
del /q "download.zip"
cls
tree /f
echo 
echo ========================================
echo 
echo Installation complete!
echo Please check for missing files - they can be downloaded from the Github repo
echo 
echo ========================================
PAUSE
