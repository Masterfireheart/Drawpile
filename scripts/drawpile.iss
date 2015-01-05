; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Drawpile"
#define MyAppVersion "0.9.7"
#define MyAppURL "http://drawpile.net/"
#define MyAppExeName "drawpile.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DC47B534-E365-4054-85F0-2E7C6CCB76CC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
SourceDir=C:\Drawpile\pkg
OutputDir=C:\Drawpile\setup
OutputBaseFilename=drawpile-{#MyAppVersion}-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "*.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "i18n\*.qm"; DestDir: "{app}\i18n"; Flags: ignoreversion
Source: "imageformats\*.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "iconengines\*.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "platforms\qwindows.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "palettes\*.gpl"; DestDir: "{app}\palettes"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
; drawpile:// URL handler
Root: HKCR; Subkey: "drawpile"; ValueType: "string"; ValueData: "URL:Custom Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "drawpile"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "drawpile\DefaultIcon"; ValueType: "string"; ValueData: "{app}\drawpile.exe,0"
Root: HKCR; Subkey: "drawpile\shell\open\command"; ValueType: "string"; ValueData: """{app}\drawpile.exe"" ""%1"""

; .dprec file association
Root: HKCR; Subkey: ".dprec"; ValueType: string; ValueName: ""; ValueData: "DrawpileRecording"; Flags: uninsdeletevalue 
Root: HKCR; Subkey: ".dprecz"; ValueType: string; ValueName: ""; ValueData: "DrawpileRecording"; Flags: uninsdeletevalue 
Root: HKCR; Subkey: "DrawpileRecording"; ValueType: string; ValueName: ""; ValueData: "Drawpile recording"; Flags: uninsdeletekey 
Root: HKCR; Subkey: "DrawpileRecording\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\drawpile.exe,0" 
Root: HKCR; Subkey: "DrawpileRecording\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\drawpile.exe"" ""%1""" 
