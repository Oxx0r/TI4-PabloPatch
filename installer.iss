[Setup]
AppName=TI4 Pablo Patch
AppVersion={{VERSION}}
AppPublisher=Oxx0r
AppSupportURL=https://github.com/Oxx0r/TI4-PabloPatch
DefaultDirName={userdocs}\My Games\Tabletop Simulator\Mods
DefaultGroupName=TI4 Pablo Patch

; Ermöglicht dem User, den Pfad wieder selbst zu wählen
DisableDirPage=no
UsePreviousAppDir=no

; Pfade zu den Personalisierungs-Dateien im Unterordner "installer"
SetupIconFile=installer\pablo.ico
WizardImageFile=installer\banner.bmp
WizardSmallImageFile=installer\logo_small.bmp
InfoBeforeFile=installer\readme_vorher.txt
InfoAfterFile=installer\danke.txt

; Icon für die Windows-Systemsteuerung
UninstallDisplayIcon={app}\pablo.ico

Compression=lzma2
SolidCompression=yes
OutputDir=.
OutputBaseFilename=BSG_Pablo_Patch_Installer

[InstallDelete]
; Löscht den "Images Raw"-Cache, damit TTS die neuen Texturen sofort erkennt
Type: files; Name: "{userdocs}\My Games\Tabletop Simulator\Mods\Images Raw\*"

[Files]
; Haupt-Mod-Dateien
Source: "Mods\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

; Das Icon wird mit kopiert, damit UninstallDisplayIcon darauf zugreifen kann
Source: "installer\pablo.ico"; DestDir: "{app}"; Flags: ignoreversion