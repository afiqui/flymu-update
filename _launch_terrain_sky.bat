@echo off
REM Metin2 environment + terrain tuning. Clouds reuse Effect\clouds.jpg (BITMAP_CLOUD).
REM If crash persists, disable lines one at a time (MU_ENV_CLOUDS first, then MU_ENV_LIGHTS).
set MU_ENV=1
set MU_ENV_LIGHTS=1
set MU_ENV_CLOUDS=1
set MU_CAM_ASPECT=1
set MU_TERRAIN_LOD=1
set MU_TERRAIN_VIEWFAR=1.25
set MU_TERRAIN_FOG=1
set MU_SKY=1
REM set MU_RENDER_PROFILE=1
cd /d d:\MU-5.2-Turbo\ClientDecoded
Main.exe
