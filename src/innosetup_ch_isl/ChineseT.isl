; *** Inno Setup version 5.1.0+ English messages ***
;
; To download user-contributed translations of this file, go to:
;   http://www.jrsoftware.org/is3rdparty.php
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
[LangOptions]
; The following three entries are very important. Be sure to read and
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Traditional-Chinese
LanguageID=$7C04
LanguageCodePage=0
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=9
;WelcomeFontName= ���w
;WelcomeFontSize=12
;TitleFontName=���w
;TitleFontSize=29
;CopyrightFontName= ���w
;CopyrightFontSize=9
[Messages]
; *** Application titles
SetupAppTitle=���b
SetupWindowTitle=���b - %1
UninstallAppTitle=ж�d
UninstallAppFullTitle=%1 ж�d
; *** Misc. common
InformationTitle=��Ϣ
ConfirmTitle=�_�J
ErrorTitle= �e�`
; *** SetupLdr messages
SetupLdrStartupMessage=��Ҫ���b %1����ϣ���^�m�᣿
LdrCannotCreateTemp= �o����������n�������b��ʽ���Kֹ
LdrCannotExecTemp=�o�������R�rĿ��µęn�����b��ʽ���Kֹ
; *** Startup error messages
LastErrorMessage=%1.%n%n�e�` %2: %3
SetupFileMissing= ���bĿ��µ� %1 �n�сGʧ��Ո�z�醖�}�����«@��һ��ʽ�}����
SetupFileCorrupt=���b�n�ѓp�ġ�Ո���«@��һ��ʽ�}����
SetupFileCorruptOrWrongVer= ���b�n�ѓp�ģ��������c��ǰ�汾�İ��b��ʽ�����ݡ�Ո�z�醖�}�����«@��һ��ʽ�}����
NotOnThisPlatform=��ʽ������ %1 ���\�С�
OnlyOnThisPlatform=��ʽ����� %1 ���\�С�
OnlyOnTheseArchitectures=ԓ��ʽֻ��������̎�����ܘ���Windows�汾�а��b��%n%n%1
MissingWOW64APIs=�������\�е�Windows�汾���߂���� 64λ���b�Ĺ��ܡ�Ҫ��Q�ˆ��}��Ո���b�a�� %1��
WinVersionTooLowError=����ʽ��Ҫ %1 %2 �汾����߰汾��
WinVersionTooHighError= ����ʽ������ %1 %2 �汾����߰汾�°��b��
AdminPrivilegesRequired=��������Թ���T��ݵ�䛲��ܰ��bԓ��ʽ��
PowerUserPrivilegesRequired= ������Թ���T��ݻ�Power Users Group�ɆT��䛲��ܰ��bԓ��ʽ��
SetupAppRunningError=���b��ʽ�z�鵽��һ�� %1 �����\�С�%n%nՈ�F���P�]�������Б��ã�Ȼ��Γ��_���^�m����ȡ���˳���
UninstallAppRunningError=ж�d��ʽ�z�鵽��һ�� %1 �����\�С�%n%nՈ�F���P�]�������Б��ã�Ȼ��Γ��_���^�m����ȡ���˳���
; *** Misc. errors
ErrorCreatingDir=���b��ʽ�o������Ŀ�"%1"
ErrorTooManyFilesInDir= �o����"%1"Ŀ������n�������������̫���n
; *** Setup common messages
ExitSetupTitle=�Y�����b
ExitSetupMessage= ���b��δ��ɡ�������F���˳�����ʽ�����ܱ����b��%n%n�����������x��r�g��ɰ��b��%n%nҪ�Y�����b�᣿
AboutSetupMenuItem= �P춰��b(&A)...
AboutSetupTitle=�P춰��b
AboutSetupMessage=%1 �汾 %2%n%3%n%n%1 ���:%n%4
AboutSetupNote=
TranslatorNote=
; *** Buttons
ButtonBack=< ��һ��(&B)
ButtonNext=��һ��(&N) >
ButtonInstall=���b(&I)
ButtonOK=�_��
ButtonCancel=ȡ��
ButtonYes=��(&Y)
ButtonYesToAll=ȫ������(&A)
ButtonNo=��(&N)
ButtonNoToAll=ȫ������(&o)
ButtonFinish=���(&F)
ButtonBrowse= ���[(&B)...
ButtonWizardBrowse=���[(&R)...
ButtonNewFolder=�������ļ��A(&M)
; *** "Select Language" dialog messages
SelectLanguageTitle=�x���b�Z��
SelectLanguageLabel=�x���b���g��ʹ�õ��Z��:
; *** Common wizard text
ClickNext=�Γ�����һ�����^�m���˳����bՈ����ȡ����
BeveledLabel=
BrowseDialogTitle= ���[�n�A
BrowseDialogLabel=��������б����x��һ���n�A, �K�Γ����_����
NewFolderName=�½��ļ��A
; *** "Welcome" wizard page
WelcomeLabel1=�gӭʹ��[name]���b����
WelcomeLabel2=[name/ver] �������b��������X�С�%n%n���h�����^�m���b֮ǰ�P�]�����������ó�ʽ��
; *** "Password" wizard page
WizardPassword=�ܴa
PasswordLabel1= ���ΰ��b���ܴa���o
PasswordLabel3=Ոݔ���ܴa�K�Γ�����һ�����^�m���ܴa���С��������Ԫ��
PasswordEditLabel= �ܴa(&P)��
IncorrectPassword=��ݔ����ܴa�����_, Ո����ݔ�롣
; *** "License Agreement" wizard page
WizardLicense=�S�Ʌf�h�_�J
LicenseLabel= Ո���^�m�������ǰ��x������Ҫ�YӍ.
LicenseLabel3=Ո��x������S�Ʌf�h�������^�m���b֮ǰ��횽��ܱ��f�h�еėl�
LicenseAccepted= �������ܱ��f�h�l��(&A)
LicenseNotAccepted=�Ҿܽ^���ܱ��f�h�l��(&D)
; *** "Information" wizard pages
WizardInfoBefore=��Ϣ
InfoBeforeLabel= Ո���^�m�������ǰ��x������Ҫ�YӍ.
InfoBeforeClickLabel=�����ʂ���^�m���b�r��Ո�Γ�����һ������
WizardInfoAfter= ��Ϣ
InfoAfterLabel=���^�m֮ǰ��Ո��x������Ҫ�YӍ��
InfoAfterClickLabel=�����ʂ���^�m���b�r��Ո�Γ�����һ������
; *** "User Information" wizard page
WizardUserInfo=�Ñ��YӍ
UserInfoDesc= Ոݔ�������YӍ.
UserInfoName=�Ñ�����(&U):
UserInfoOrg=�M��(&O):
UserInfoSerial= ����̖(&S):
UserInfoNameRequired=�����ݔ��һ�����֡�
; *** "Select Destination Location" wizard page
WizardSelectDir= �x��Ŀ��λ��
SelectDirDesc=[name]Ҫ�����b�����
SelectDirLabel3=[name]�������b�������@���n�A�С�
SelectDirBrowseLabel=�^�mՈ�Γ�����һ�����������Ҫ���xһ���n�A��Ո�Γ������[����
DiskSpaceMBLabel= ʣ�N�ŵ����g����Ҫ�� [mb] MB��
ToUNCPathname=�o�����b�� UNC ·���������Ҫ�Lԇ���b���W·�У�Ո��ӳ��һ���W·������
InvalidPath=�����ݔ��һ�����P����ȫ·���������磺%n%nC:\APP%n%n����һ�� UNC ·����%n%n\\server\share
InvalidDrive=���x����ӱP�� UNC���ò����ڻ򲻿��L����Ո�x�������ӱP��UNC���á�
DiskSpaceWarningTitle=�ŵ����g����
DiskSpaceWarning= ���b��ʽ������Ҫ %1 KB �Ĵŵ����g�������x�е��ӱP�H�� %2 KB ���á�%n%n����ȻҪ�^�m�᣿
DirNameTooLong= �n�A���Q��·��̫�L��
InvalidDirName=�n�A���Q���Ϸ���
BadDirName32=�n�A���Q���ܺ���������Ԫ��%n%n%1
DirExistsTitle=�ļ��A����
DirExists=�ļ��A��%n%n%1%n%n�ѽ����ڡ�����ȻҪ���b���˙n�A�І᣿
DirDoesntExistTitle=�ļ��A������
DirDoesntExist=�ļ��A��%n%n%1%n%n�����ڡ���Ҫ�������᣿
; *** "Select Components" wizard page
WizardSelectComponents=�x��M��
SelectComponentsDesc=��Щ�M���������b��
SelectComponentsLabel2=�x����Ҫ���b�ĽM������������밲�b�ĽM���������ʂ��^�m�r�Γ�����һ������
FullInstallation=��ȫ���b
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=�������b
CustomInstallation=�Զ��x���b
NoUninstallWarningTitle= �M������
NoUninstallWarning=���b��ʽ�z�y��������X���ѽ����b������Ԫ����%n%n%1%n%nȡ���@Щ�M�����������b������%n%n���F��Ҫ�^�m�᣿
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel= Ŀǰ�x�е�������Ҫ [mb] MB �Ĵŵ����g��
; *** "Select Additional Tasks" wizard page
WizardSelectTasks=�x���~���΄�
SelectTasksDesc=߀����Щ�΄Օ��������أ�
SelectTasksLabel2=�x�������ڰ��b[name]���^���Ј��е������~���΄գ�Ȼ��Γ�����һ������
; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup= �x���_ʼ���ܱ�
SelectStartMenuFolderDesc=���b��ʽ�����ă�������ʽ�Ŀ�ݷ�ʽ��
SelectStartMenuFolderLabel3= ���b��ʽ�������µ��_ʼ���ܱ�n�A�Є�����ʽ�Ŀ�ݷ�ʽ��
SelectStartMenuFolderBrowseLabel=�Γ�����һ�����^�m�������Ҫ�x�������n�A��Ո�Γ������[����
MustEnterGroupName=�����ݔ��һ���n�A���Q��
GroupNameTooLong= �n�A���Q��·��̫�L�ˡ�
InvalidGroupName=�n�A���Q���Ϸ���
BadGroupName=�n�A���Q���ܺ���������Ԫ��%n%n%1
NoProgramGroupCheck2=�������_ʼ�ˆΙn�A(&D)
; *** "Ready to Install" wizard page
WizardReady=�ʂ䰲�b
ReadyLabel1= ���b��ʽ���ʂ������ęC���а��b[name].
ReadyLabel2a=�^�m���bՈ�Γ������b���������Ҫ����޸�һЩ�O�ã�Ո�Γ�����һ������
ReadyLabel2b=�^�m���bՈ�Γ������b����
ReadyMemoUserInfo=�Ñ��YӍ:
ReadyMemoDir= Ŀ��λ��:
ReadyMemoType=���b���:
ReadyMemoComponents=�x�еĽM��:
ReadyMemoGroup= �_ʼ�ˆΊA:
ReadyMemoTasks=�����΄��:
; *** "Preparing to Install" wizard page
WizardPreparing=�ʂ䰲�b
PreparingDesc= ���b��ʽ���ʂ������ęC���а��b[name].
PreviousInstallNotCompleted=֮ǰ��һ�����b/ж�d��ʽ��δ��ɡ�������������X���ԓ���b��%n%n�؆��C��֮�ᣬՈ�ٴ��\�а��b��ʽ�����[name]�İ��b��
CannotContinue=���b��ʽ�o���^�m��Ո�Γ���ȡ�����˳���
; *** "Installing" wizard page
WizardInstalling=���b��
InstallingLabel= ���ڰ��b[name], Ո�ȴ�.
; *** "Setup Completed" wizard page
FinishedHeadingLabel=��� [name]���b����
FinishedLabelNoIcons=���b��ʽ�����[name]�İ��b.
FinishedLabel=���b��ʽ�ѽ���������X�а��b��[name]���x�а��b��ĈDʾ�Ɇ��ӑ��ó�ʽ��
ClickFinish=�Γ�����ɡ��˳����b��
FinishedRestartLabel= �������[name]���b�^��, �F����Ҫ�؆��C��, ������?
FinishedRestartMessage=Ҫ���[name]�İ��b�����������������X��%n%n�����F���؆��᣿
ShowReadmeCheck=�ǵ�, ��Ҫ��xREADME�ļ�
YesRadio= (&Y)�ǵ�, �F���؆���X
NoRadio=(&N)��, ���������؆���X
; used for example as 'Run MyProg.exe'
RunEntryExec=�\�� %1
; used for example as 'View Readme.txt'
RunEntryShellExec=��x %1
; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=���b��ʽ��Ҫ��һ����Ƭ
SelectDiskLabel2=Ո�����Ƭ %1 �K�Γ��_����%n%n������������г���֮�⣬��δ�ҵ���Ƭ�n��Ԓ��Ոݔ�����_·����Γ������[����
PathLabel=·��(& P)��
FileNotInDir2="%2" �Пo����λ�ļ� "%1"��Ո�������_��Ƭ���x�������n�A��
SelectDirectoryLabel= Ոָ����һ����Ƭ��λ�á�
; *** Installation phase messages
SetupAborted=���bδ��ɡ�%n%nՈ�z�醖�}�K�����\�а��b��ʽ��
EntryAbortRetryIgnore=��ԇՈ�Γ�����ԇ�������Ԍ����^�m�M�У��Kֹ��ȡ�����b��
; *** Installation status messages
StatusCreateDirs=���ڄ����n·��...
StatusExtractFiles= ����ጷřn...
StatusCreateIcons=���ڄ�����ݷ�ʽ...
StatusCreateIniEntries=���ڄ���INI���...
StatusCreateRegistryEntries=���ڄ����]�Ա����...
StatusRegisterFiles= �����]�ԙn...
StatusSavingUninstall=���ڱ��淴���b�YӍ...
StatusRunProgram=���ڽY�����b...
StatusRollback=���ڻ֏͵�ԭ�ȵĠ�B...
; *** Misc. errors
ErrorInternal2=�Ȳ��e�`: %1
ErrorFunctionFailedNoCode=%1 ʧ��
ErrorFunctionFailed=%1 ʧ�������a�� %2
ErrorFunctionFailedWithMessage=%1 ʧ�������a�� %2.%n%3
ErrorExecutingProgram=�o�����Йn��%n%1
; *** Registry errors
ErrorRegOpenKey=���_�]�Ա��Iֵ�e��%n%1\%2
ErrorRegCreateKey= �����]�Ա��Iֵ�e��%n%1\%2
ErrorRegWriteKey=�����]�Ա��Iֵ�e��%n%1\%2
; *** INI errors
ErrorIniEntry=�ڙn "%1" �Є���INI����YӍ�e��
; *** File copying errors
FileAbortRetryIgnore=�Γ�����ԇ�������Lԇһ�Σ����Կ����^ԓ�n�������]������Kֹ�˳����b��
FileAbortRetryIgnore2=�Γ�����ԇ�������Lԇһ�Σ����Կ��^�m���У������]������Kֹ�˳����b��
SourceIsCorrupted=ԭʼ�n���ѓp��
SourceDoesntExist=ԭʼ�n�� "%1" ������
ExistingFileReadOnly= �Ѵ��ڵ��ļ���Ψ�x�n����%n%n�Γ���ԇ���Ƴ�Ψ�x���ԣ�Ȼ����ԇ�����Կ����^�˙n���Kֹ��ȡ�����b��
ErrorReadingExistingDest= �Lԇ�x�n�r���e�`�l����
FileExists=�ļ��Ѵ��ڡ�%n%n��Ҫ���b��ʽ���w���᣿
ExistingFileNewer=�Ѵ��ڵęn�汾�^�£����h����ԓ�n��%n%n����Ᵽ��ԓ�n�᣿
ErrorChangingAttr=�Lԇ�޸ęn���ԕr���e�`�l����
ErrorCreatingTemp= �Lԇ��Ŀ��·�������n�r���e�`�l����
ErrorReadingSource=�Lԇ�xԭʼ�n���r���e�`�l����
ErrorCopying= �Lԇ�}�u�n�r���e�`�l����
ErrorReplacingExistingFile=�Lԇ��Q�n�r���e�`�l����
ErrorRestartReplace=RestartReplace failed:
ErrorRenamingTemp=�Lԇ������Ŀ��·���ęn�r���e�`�l����
ErrorRegisterServer= �o���]�� DLL/OCX��%1
ErrorRegSvr32Failed=RegSvr32 ʧ���˳��a %1
;ErrorRegisterServerMissingExport=δ�l�FDllRegisterServer �Č�������
ErrorRegisterTypeLib=�o���]����͎죺%1
; *** Post-installation errors
ErrorOpeningReadme=�Lԇ���_ README �n�r���e�`�l����
ErrorRestartingComputer=���b��ʽ�o���؆���X��Ո�քӲ�����
; *** Uninstaller messages
UninstallNotFound="%1"�ļ������ڡ��o��ж�d��
UninstallOpenError="%1" �ļ��o�����_���o��ж�d
UninstallUnsupportedVer=ԓ�汾��ж�d���ߟo���R�e��ǰж�d���I"%1"�еĸ�ʽ���o��ж�d
UninstallUnknownEntry= ��ж�d��ʽ�����I�����������R�e������YӍ(%1)
ConfirmUninstall=���_��Ҫ��ȫ�h��%1�Լ��������PԪ����?
UninstallOnlyOnWin64= ԓ���b��ʽֻ����64λԪWindows���Iϵ�y�±�ж�d��
OnlyAdminCanUninstall=ԓ���b��ʽֻ���ɾ��й���T�S�ə���Ñ�ж�d��
UninstallStatusLabel=%1 ����������X�б�ж�d��Ո�ȴ���
UninstalledAll=%1 �ѳɹ���ж�d��
UninstalledMost=%1 ж�d��ɡ�%n%n������Щ�nδ���Ƴ���Ո���քӄh��������
UninstalledAndNeedsRestart= Ҫ��ɱ���%1��ж�d��������؆��C����%n%n�����F���؆��᣿
UninstallDataCorrupted="%1" �ļ��ѓp�ģ��o��ж�d
; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle= Ҫ�h�����Ùn��?
ConfirmDeleteSharedFile2=���¹��Ùn���ٱ��κγ�ʽʹ�ã���Ҫж�d�K�h���@Щ���Ùn�᣿%n%nһ�������h��������������ʽ��Ҫʹ��ԓ�n��Ԓ����Щ��ʽ�Ĺ��܌�������������������_����Ո�x�񡺷񡻡�����ԓ�n��ϵ�y�в��������κΓp����
SharedFileNameLabel=�n�����Q:
SharedFileLocationLabel=λ��:
WizardUninstalling= ж�d��B
StatusUninstalling=����ж�d %1...
; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.
[CustomMessages]
NameAndVersion=%1 �汾 %2
AdditionalIcons=�����Dʾ��
CreateDesktopIcon= ��������Dʾ(&d)
CreateQuickLaunchIcon=�������ن��ӈDʾ(&Q)
ProgramOnTheWeb=%1 ���P�Wվ
UninstallProgram=ж�d %1
LaunchProgram=�\�� %1
AssocFileExtension=%1 ���c�ļ����n��%2�����P(&A)
AssocingFileExtension=���ڽ���%1�c�n���n��%2���P�P�S...
