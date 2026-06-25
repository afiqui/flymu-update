# ClientDecoded — playable x64 client drop

This folder is the **decoded client** output (`Main.sln` → `OutDir = ClientDecoded`) and is
versioned in the **[Muyrton](https://github.com/afiqui/Muyrton)** repo for test players.

Full technical docs (voice sidecar, HD textures, build commands):
**`../CrossPlatform/DEBUG_CLIENT_GUIDE.md`** in the MU-5.2-Turbo engine repo.

## Quick start

1. Run **`Main.exe`** from this directory (data is `./Data/`).
2. **`Config.ini`** — `[Graphics] TextureMode=HD` enables 4× HD folders under `Data/**/HD/`.
3. **Debug builds** need **`MuVoice.exe`** + **`mcaudio.dll`** + **`mcaudio_ffi.dll`** here.
   Do **not** use `livekit.dll` (removed — sidecar uses generic `mcaudio` names only).
4. Voice issues: check **`voice_helper.log`** in this folder.

## Rebuild (developers)

From the engine repo root:

```powershell
msbuild CrossPlatform\Main.sln /p:Configuration=Debug /p:Platform=x64 /t:Main
```

Rebuild voice sidecar if `voice/` changed — see `CrossPlatform/DEBUG_CLIENT_GUIDE.md`.
