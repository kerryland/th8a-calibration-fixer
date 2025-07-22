# Thrustmaster TH8A Calibration tool fixer

The Thrustmaster TH8A Calibration Tool (version 1.0.15.0) wouldn't run with one of my TH8A gearsticks -- after a moment it "undisplayed" some things and showed a mostly white screen.

<img width="944" height="619" alt="image" src="https://github.com/user-attachments/assets/b7b5d398-bcc8-4b00-8c79-609ced121156" />

I suspected shenannigans and broke out [x32dgb](https://x64dbg.com/) to take a look, and sure enough the software had decided it didn't like the serial number for some reason (no idea why -- it's a legitimate gearstick originally sourced directly from Thrustmaster).

So I fixed it.

<img width="942" height="615" alt="image" src="https://github.com/user-attachments/assets/9f1da87e-fb55-46e1-8fc8-5f02ca334a44" />

# What to do

1. Download the calibration tool [from the Thrustmaster site](https://ts.thrustmaster.com/download/accessories/pc/wheels/exe/th8rs/TH8RS_tool_v10150.zip) or [from archive.org](https://web.archive.org/web/20250722230836/https://ts.thrustmaster.com/download/accessories/pc/wheels/exe/TH8RS/TH8RS_tool_v10150.zip)
2. Unzip it to reveal `TH8 RS Calibration v1.0.15.0.exe`
3. Download "[patcher.ps1](patcher.ps1)" Powershell script in the same directory as the .exe file
4. Run `patcher.ps1` via `Windows PowerShell`
5. Run the new executable called `TH8 RS Calibration v1.0.15.0-fixed.exe`
6. Celebrate

Maybe you too won't have to buy a new TH8A PCB for no good reason :-)


