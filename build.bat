@echo off
set CURRENT_WOT_MODS_DIR=d:\Games\World_of_Tanks_EU\mods\1.28.0.1

echo Building Hello World mod with Equipment Display for World of Tanks...

REM Create Docker image for building WOT mods
docker build -t wot-mod-builder .

echo Building mod...
REM Run Docker container to build and package the mod
docker run --rm -v "%cd%/src:/app" wot-mod-builder bash -c "python setup.py bdist_wotmod"

echo Copying mod to WOT mods directory %CURRENT_WOT_MODS_DIR% ...

cd src
for %%F in (dist\*.wotmod) do copy "%%F" "%CURRENT_WOT_MODS_DIR%"

echo Cleaning up...
rmdir /s /q dist build

echo Build complete. Your mod is ready: oleksiiserheiev.helloworld_1.0.0.wotmod