; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
Compression=zip
OutputDir=.
;SignedUninstaller=yes
;SignedUninstallerDir=.
VersionInfoCompany=Gimu Software
VersionInfoCopyright=Copyright (C) 2010-2011 Gimu Software, Inc.
AppName=Gimu Software
VersionInfoProductVersion=2.0
AppendDefaultDirName=yes
AppVerName=Gimu version 2.0
ChangesAssociations=yes
CreateAppDir=yes
;Setting this to no can be useful if your installation is merely an update to an existing application and
;you don't want another entry created, but don't want to the disable the uninstall features entirely (via Uninstallable=no).
;In this case, UpdateUninstallLogAppName is usually set to no as well.
CreateUninstallRegKey=yes
UsePreviousAppDir=yes
DefaultDirName={pf}\Gimu
ExtraDiskSpaceRequired=10485760
LanguageDetectionMethod=locale
PrivilegesRequired=admin
ShowLanguageDialog=yes
Uninstallable=yes
UninstallDisplayIcon={app}\Gimu.exe
UsePreviousLanguage=yes
;The maximum size of the bitmap is 164x314 pixels
;WizardImageFile=gimu_setup_image.bmp
;since it does not handle palettes. The maximum size of the bitmap is 55x58 pixels.
;WizardSmallImageFile=gimu_small_image.bmp
DefaultGroupName=Gimu Software
AlwaysShowGroupOnReadyPage=yes

[Icons]
Name: "{group}\Gimu software"; Filename: "{app}\Gimu.exe"
Name: "{group}\Uninstall gimu"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Gimu Software"; Filename: "{app}\Gimu.exe"


[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl";LicenseFile: "gimu_license_english.txt"
Name: "zh"; MessagesFile: "compiler:Languages\ChineseS.isl";LicenseFile: "gimu_license_simplified.txt"
Name: "zh"; MessagesFile: "compiler:Languages\ChineseT.isl";LicenseFile: "gimu_license_traditional.txt"

[Files]
;My ower program files.

Source: "gimu.chm"; DestDir: "{app}";Flags: ignoreversion
Source: "engine.dll"; DestDir: "{app}";Flags: ignoreversion
Source: "GiMu.exe"; DestDir: "{app}";Flags: ignoreversion
Source: "daemon.exe"; DestDir: "{app}";Flags: ignoreversion
Source: "gimu_english.mo"; DestDir: "{app}";Flags: ignoreversion
Source: "engine_english.mo"; DestDir: "{app}";Flags: ignoreversion
Source: "gimu_simplified.mo"; DestDir: "{app}";Flags: ignoreversion
Source: "engine_simplified.mo"; DestDir: "{app}";Flags: ignoreversion
Source: "gimu_traditional.mo"; DestDir: "{app}";Flags: ignoreversion
Source: "engine_traditional.mo"; DestDir: "{app}";Flags: ignoreversion

;Dependent program files.

Source: "wxbase28u.dll"; DestDir: "{app}";Flags: ignoreversion
Source: "wxbase28u_xml.dll"; DestDir: "{app}";Flags: ignoreversion
Source: "wxmsw28u_adv.dll"; DestDir: "{app}";Flags: ignoreversion
Source: "wxmsw28u_core.dll"; DestDir: "{app}";Flags: ignoreversion
Source: "ACE.dll"; DestDir: "{app}";Flags: ignoreversion

[Registry]
Root: HKCR; Subkey: ".uif"; ValueType: String; ValueData: "UnitedIndexFile";Flags: uninsdeletekey
Root: HKCR; Subkey: "UnitedIndexFile"; ValueType: String; ValueData: "UnitedIndexFile";Flags: uninsdeletekey
Root: HKCR; Subkey: "UnitedIndexFile\DefaultIcon"; ValueType: String; ValueData: "{app}\Gimu.exe";Flags: uninsdeletekey
Root: HKCR; Subkey: "UnitedIndexFile\shell\open\command"; ValueType: String; ValueData: "{app}\Gimu.exe -u %1";Flags: uninsdeletekey

[Run]
Filename: "{app}\runtime.exe"; Description:"Install VC Runtime"; Flags: postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
