; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{76D4D864-E70F-4923-8289-C2504A2A9E67}
AppName=VidCutter
AppVersion=4.5.0.DEV
AppVerName=VidCutter
AppPublisher=Pete Alexandrou
AppPublisherURL=http://vidcutter.ozmartians.com
DefaultDirName={pf}\VidCutter
DefaultGroupName=VidCutter
OutputBaseFilename=VidCutter-4.5.0.DEV-setup-win32
SetupIconFile=..\..\data\icons\vidcutter.ico
UninstallDisplayIcon={app}\vidcutter.exe
Compression=lzma2
LZMAUseSeparateProcess=yes
SolidCompression=yes
ShowLanguageDialog=no
VersionInfoVersion=4.5.0.DEV
VersionInfoCompany=ozmartians.com
VersionInfoCopyright=(c) 2017 Pete Alexandrou
VersionInfoProductName=VidCutter x86
VersionInfoProductVersion=4.5.0.DEV
WizardImageFile=assets\WizModernImage.bmp
WizardSmallImageFile=assets\SmallWizardImage.bmp
WizardImageStretch=False
SignTool=signtool

[InstallDelete]
Type: filesandordirs; Name: "{app}"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "..\pyinstaller\dist\vidcutter.exe"; DestDir: "{app}"
Source: "..\..\data\icons\uninstall.ico"; DestDir: "{app}"

[Icons]
Name: "{group}\VidCutter"; Filename: "{app}\vidcutter.exe"
Name: "{userdesktop}\VidCutter"; Filename: "{app}\vidcutter.exe"; Tasks: desktopicon
Name: "{group}\{cm:UninstallProgram,VidCutter}"; Filename: "{uninstallexe}"; IconFilename: "{app}\uninstall.ico"

[Run]
Filename: "{app}\vidcutter.exe"; Flags: nowait postinstall skipifsilent 32bit; Description: "{cm:LaunchProgram,VidCutter}"
