[Setup]
AppName=TI4 Pablo Patch
AppVersion={{VERSION}}
AppPublisher=Oxx0r
AppSupportURL=https://github.com/Oxx0r/TI4-PabloPatch
DefaultDirName={userdocs}\My Games\Tabletop Simulator\Mods
DefaultGroupName=TI4 Pablo Patch

; Diese Zeilen aktivieren die Pfadauswahl wieder:
DisableDirPage=no
UsePreviousAppDir=no

; Pfade zu den Dateien im Unterordner "installer"
SetupIconFile=installer\pablo.ico
WizardImageFile=installer\banner.bmp
WizardSmallImageFile=installer\logo_small.bmp
InfoBeforeFile=installer\readme_vorher.txt
InfoAfterFile=installer\danke.txt

UninstallDisplayIcon={app}\pablo.ico
Compression=lzma2
SolidCompression=yes
OutputDir=.
OutputBaseFilename=TI4_Pablo_Patch_Installer

[Files]
Source: "Mods\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs
; WICHTIG: Das Icon mit kopieren, damit die Deinstallation ein Icon hat
Source: "installer\pablo.ico"; DestDir: "{app}"; Flags: ignoreversion