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
LanguageName=Simplified-Chinese
LanguageID=$0004
LanguageCodePage=0
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=9
;WelcomeFontName= ����
;WelcomeFontSize=12
;TitleFontName=����
;TitleFontSize=29
;CopyrightFontName= ����
;CopyrightFontSize=9
[Messages]
; *** Application titles
SetupAppTitle=��װ
SetupWindowTitle=��װ - %1
UninstallAppTitle=ж��
UninstallAppFullTitle=%1 ж��
; *** Misc. common
InformationTitle=��Ϣ
ConfirmTitle=ȷ��
ErrorTitle= ����
; *** SetupLdr messages
SetupLdrStartupMessage=��Ҫ��װ %1����ϣ��������
LdrCannotCreateTemp= �޷�������ʱ�ļ�����װ������ֹ
LdrCannotExecTemp=�޷�ִ����ʱĿ¼�µ��ļ�����װ������ֹ
; *** Startup error messages
LastErrorMessage=%1.%n%n���� %2: %3
SetupFileMissing= ��װĿ¼�µ� %1 �ļ��Ѷ�ʧ��������������»��һ���򸴱���
SetupFileCorrupt=��װ�ļ����𻵡������»��һ���򸴱���
SetupFileCorruptOrWrongVer= ��װ�ļ����𻵣��������뵱ǰ�汾�İ�װ���򲻼��ݡ�������������»��һ���򸴱���
NotOnThisPlatform=�������� %1 �����С�
OnlyOnThisPlatform=��������� %1 �����С�
OnlyOnTheseArchitectures=�ó���ֻ�������д������ܹ���Windows�汾�а�װ��%n%n%1
MissingWOW64APIs=���������е�Windows�汾���߱�ִ�� 64λ��װ�Ĺ��ܡ�Ҫ��������⣬�밲װ���� %1��
WinVersionTooLowError=��������Ҫ %1 %2 �汾����߰汾��
WinVersionTooHighError= ���������� %1 %2 �汾����߰汾�°�װ��
AdminPrivilegesRequired=���������Թ���Ա��ݵ�¼���ܰ�װ�ó���
PowerUserPrivilegesRequired= �������Թ���Ա��ݻ�Power Users Group��Ա��¼���ܰ�װ�ó���
SetupAppRunningError=��װ�����鵽��һ�� %1 �������С�%n%n�����ڹر���������Ӧ�ã�Ȼ�󵥻�ȷ����������ȡ���˳���
UninstallAppRunningError=ж�س����鵽��һ�� %1 �������С�%n%n�����ڹر���������Ӧ�ã�Ȼ�󵥻�ȷ����������ȡ���˳���
; *** Misc. errors
ErrorCreatingDir=��װ�����޷�����Ŀ¼"%1"
ErrorTooManyFilesInDir= �޷���"%1"Ŀ¼�´����ļ�����Ϊ��������̫���ļ�
; *** Setup common messages
ExitSetupTitle=������װ
ExitSetupMessage= ��װ��δ��ɡ�����������˳������򽫲��ܱ���װ��%n%n����������ѡ��ʱ����ɰ�װ��%n%nҪ������װ��
AboutSetupMenuItem= ���ڰ�װ(&A)...
AboutSetupTitle=���ڰ�װ
AboutSetupMessage=%1 �汾 %2%n%3%n%n%1 ��ҳ:%n%4
AboutSetupNote=
TranslatorNote=
; *** Buttons
ButtonBack=< ��һ��(&B)
ButtonNext=��һ��(&N) >
ButtonInstall=��װ(&I)
ButtonOK=ȷ��
ButtonCancel=ȡ��
ButtonYes=��(&Y)
ButtonYesToAll=ȫ������(&A)
ButtonNo=��(&N)
ButtonNoToAll=ȫ������(&o)
ButtonFinish=���(&F)
ButtonBrowse= ���(&B)...
ButtonWizardBrowse=���(&R)...
ButtonNewFolder=�������ļ���(&M)
; *** "Select Language" dialog messages
SelectLanguageTitle=ѡ��װ����
SelectLanguageLabel=ѡ��װ�ڼ���ʹ�õ�����:
; *** Common wizard text
ClickNext=��������һ�����������˳���װ�밴��ȡ����
BeveledLabel=
BrowseDialogTitle= ����ļ���
BrowseDialogLabel=��������б���ѡ��һ���ļ���, ��������ȷ����
NewFolderName=�½��ļ���
; *** "Welcome" wizard page
WelcomeLabel1=��ӭʹ��[name]��װ��
WelcomeLabel2=[name/ver] ������װ�����ļ�����С�%n%n�������ڼ�����װ֮ǰ�ر���������Ӧ�ó���
; *** "Password" wizard page
WizardPassword=����
PasswordLabel1= ���ΰ�װ�����뱣��
PasswordLabel3=���������벢��������һ��������������Ϊ��Сд�����ַ���
PasswordEditLabel= ����(&P)��
IncorrectPassword=����������벻��ȷ, ���������롣
; *** "License Agreement" wizard page
WizardLicense=���Э��ȷ��
LicenseLabel= ���ڼ����������ǰ�Ķ�������Ҫ��Ϣ.
LicenseLabel3=���Ķ���������Э�顣���ڼ�����װ֮ǰ������ܱ�Э���е����
LicenseAccepted= ��Ը����ܱ�Э������(&A)
LicenseNotAccepted=�Ҿܾ����ܱ�Э������(&D)
; *** "Information" wizard pages
WizardInfoBefore=��Ϣ
InfoBeforeLabel= ���ڼ����������ǰ�Ķ�������Ҫ��Ϣ.
InfoBeforeClickLabel=����׼���ü�����װʱ���뵥������һ������
WizardInfoAfter= ��Ϣ
InfoAfterLabel=�ڼ���֮ǰ�����Ķ�������Ҫ��Ϣ��
InfoAfterClickLabel=����׼���ü�����װʱ���뵥������һ������
; *** "User Information" wizard page
WizardUserInfo=�û���Ϣ
UserInfoDesc= ������������Ϣ.
UserInfoName=�û�����(&U):
UserInfoOrg=��֯(&O):
UserInfoSerial= ���к�(&S):
UserInfoNameRequired=����������һ�����֡�
; *** "Select Destination Location" wizard page
WizardSelectDir= ѡ��Ŀ��λ��
SelectDirDesc=[name]Ҫ����װ�����
SelectDirLabel3=[name]������װ����������ļ����С�
SelectDirBrowseLabel=�����뵥������һ�����������Ҫ��ѡһ���ļ��У��뵥�����������
DiskSpaceMBLabel= ʣ����̿ռ�����Ҫ�� [mb] MB��
ToUNCPathname=�޷���װ�� UNC ·���������Ҫ���԰�װ�������У�����ӳ��һ��������������
InvalidPath=����������һ�����̷���ȫ·���������磺%n%nC:\APP%n%n����һ�� UNC ·����%n%n\\server\share
InvalidDrive=��ѡ��������̻� UNC�������ڻ򲻿ɷ��ʡ���ѡ�����������̻�UNC����
DiskSpaceWarningTitle=���̿ռ䲻��
DiskSpaceWarning= ��װ����������Ҫ %1 KB �Ĵ��̿ռ䣬����ѡ�е������̽��� %2 KB ���á�%n%n����ȻҪ������
DirNameTooLong= �ļ������ƻ�·��̫����
InvalidDirName=�ļ������Ʋ��Ϸ���
BadDirName32=�ļ������Ʋ��ܺ��������ַ���%n%n%1
DirExistsTitle=�ļ��д���
DirExists=�ļ��У�%n%n%1%n%n�Ѿ����ڡ�����ȻҪ��װ�����ļ�������
DirDoesntExistTitle=�ļ��в�����
DirDoesntExist=�ļ��У�%n%n%1%n%n�����ڡ���Ҫ��������
; *** "Select Components" wizard page
WizardSelectComponents=ѡ�����
SelectComponentsDesc=��Щ����ᱻ��װ��
SelectComponentsLabel2=ѡ����Ҫ��װ���������������밲װ�����������׼������ʱ��������һ������
FullInstallation=��ȫ��װ
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=����װ
CustomInstallation=�Զ��尲װ
NoUninstallWarningTitle= �������
NoUninstallWarning=��װ�����⵽���ļ�������Ѿ���װ�����������%n%n%1%n%nȡ����Щ��������ᰲװ���ǡ�%n%n������Ҫ������
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel= Ŀǰѡ�е�������Ҫ [mb] MB �Ĵ��̿ռ䡣
; *** "Select Additional Tasks" wizard page
WizardSelectTasks=ѡ���������
SelectTasksDesc=������Щ����ᱻִ���أ�
SelectTasksLabel2=ѡ�������ڰ�װ[name]�Ĺ�����ִ�е�������������Ȼ�󵥻�����һ������
; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup= ѡ��ʼ�˵�
SelectStartMenuFolderDesc=��װ��������Ķ���������Ŀ�ݷ�ʽ��
SelectStartMenuFolderLabel3= ��װ���������µĿ�ʼ�˵��ļ����д�������Ŀ�ݷ�ʽ��
SelectStartMenuFolderBrowseLabel=��������һ���������������Ҫѡ�������ļ��У��뵥�����������
MustEnterGroupName=����������һ���ļ������ơ�
GroupNameTooLong= �ļ������ƻ�·��̫���ˡ�
InvalidGroupName=�ļ������Ʋ��Ϸ���
BadGroupName=�ļ������Ʋ��ܺ��������ַ���%n%n%1
NoProgramGroupCheck2=��������ʼ�˵��ļ���(&D)
; *** "Ready to Install" wizard page
WizardReady=׼����װ
ReadyLabel1= ��װ������׼�������Ļ����а�װ[name].
ReadyLabel2a=������װ�뵥������װ���������Ҫ�ع˻��޸�һЩ���ã��뵥������һ������
ReadyLabel2b=������װ�뵥������װ����
ReadyMemoUserInfo=�û���Ϣ:
ReadyMemoDir= Ŀ��λ��:
ReadyMemoType=��װ����:
ReadyMemoComponents=ѡ�е����:
ReadyMemoGroup= ��ʼ�˵���:
ReadyMemoTasks=����������:
; *** "Preparing to Install" wizard page
WizardPreparing=׼����װ
PreparingDesc= ��װ������׼�������Ļ����а�װ[name].
PreviousInstallNotCompleted=֮ǰ��һ����װ/ж�س�����δ��ɡ��������������������ɸð�װ��%n%n��������֮�����ٴ����а�װ���������[name]�İ�װ��
CannotContinue=��װ�����޷��������뵥����ȡ�����˳���
; *** "Installing" wizard page
WizardInstalling=��װ��
InstallingLabel= ���ڰ�װ[name], ��ȴ�.
; *** "Setup Completed" wizard page
FinishedHeadingLabel=��� [name]��װ��
FinishedLabelNoIcons=��װ���������[name]�İ�װ.
FinishedLabel=��װ�����Ѿ������ļ�����а�װ��[name]��ѡ�а�װ���ͼ�������Ӧ�ó���
ClickFinish=��������ɡ��˳���װ��
FinishedRestartLabel= Ϊ�����[name]��װ����, ������Ҫ��������, ��Ը����?
FinishedRestartMessage=Ҫ���[name]�İ�װ�����������������ļ������%n%n��Ը������������
ShowReadmeCheck=�ǵ�, ��Ҫ�Ķ�README�ļ�
YesRadio= (&Y)�ǵ�, �������������
NoRadio=(&N)��, ���Ժ������������
; used for example as 'Run MyProg.exe'
RunEntryExec=���� %1
; used for example as 'View Readme.txt'
RunEntryShellExec=�Ķ� %1
; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=��װ������Ҫ��һ������
SelectDiskLabel2=�������� %1 ������ȷ����%n%n������������г���֮�⣬��δ�ҵ������ļ��Ļ�����������ȷ·���򵥻����������
PathLabel=·��(& P)��
FileNotInDir2="%2" ���޷���λ�ļ� "%1"���������ȷ���̻�ѡ�������ļ��С�
SelectDirectoryLabel= ��ָ����һ�Ŵ��̵�λ�á�
; *** Installation phase messages
SetupAborted=��װδ��ɡ�%n%n�������Ⲣ�������а�װ����
EntryAbortRetryIgnore=�����뵥�������ԡ������Խ���������У���ֹ��ȡ����װ��
; *** Installation status messages
StatusCreateDirs=���ڴ����ļ�·��...
StatusExtractFiles= �����ͷ��ļ�...
StatusCreateIcons=���ڴ�����ݷ�ʽ...
StatusCreateIniEntries=���ڴ���INI���...
StatusCreateRegistryEntries=���ڴ���ע������...
StatusRegisterFiles= ����ע���ļ�...
StatusSavingUninstall=���ڱ��淴��װ��Ϣ...
StatusRunProgram=���ڽ�����װ...
StatusRollback=���ڻָ���ԭ�ȵ�״̬...
; *** Misc. errors
ErrorInternal2=�ڲ�����: %1
ErrorFunctionFailedNoCode=%1 ʧ��
ErrorFunctionFailed=%1 ʧ�ܣ�����Ϊ %2
ErrorFunctionFailedWithMessage=%1 ʧ�ܣ�����Ϊ %2.%n%3
ErrorExecutingProgram=�޷�ִ���ļ���%n%1
; *** Registry errors
ErrorRegOpenKey=��ע����ֵ��%n%1\%2
ErrorRegCreateKey= ����ע����ֵ��%n%1\%2
ErrorRegWriteKey=д��ע����ֵ��%n%1\%2
; *** INI errors
ErrorIniEntry=���ļ� "%1" �д���INI�����Ϣ��
; *** File copying errors
FileAbortRetryIgnore=���������ԡ������³���һ�Σ����Կ��������ļ������Ƽ���������ֹ�˳���װ��
FileAbortRetryIgnore2=���������ԡ������³���һ�Σ����Կɼ���ִ�У����Ƽ���������ֹ�˳���װ��
SourceIsCorrupted=Դ�ļ�����
SourceDoesntExist=Դ�ļ� "%1" ������
ExistingFileReadOnly= �Ѵ��ڵ��ļ�Ϊֻ���ļ���%n%n�������Կ��Ƴ�ֻ�����ԣ�Ȼ�����ԡ����Կ��������ļ�����ֹ��ȡ����װ��
ErrorReadingExistingDest= ���Զ��ļ�ʱ�д�������
FileExists=�ļ��Ѵ��ڡ�%n%n��Ҫ��װ���򸲸�����
ExistingFileNewer=�Ѵ��ڵ��ļ��汾���£����鱣�����ļ���%n%n��Ը�Ᵽ�����ļ���
ErrorChangingAttr=�����޸��ļ�����ʱ�д�������
ErrorCreatingTemp= ������Ŀ��·���´����ļ�ʱ�д�������
ErrorReadingSource=���Զ�Դ�ļ�ʱ�д�������
ErrorCopying= ���Ը����ļ�ʱ�д�������
ErrorReplacingExistingFile=�����滻�ļ�ʱ�д�������
ErrorRestartReplace=RestartReplace failed:
ErrorRenamingTemp=����������Ŀ��·�����ļ�ʱ�д�������
ErrorRegisterServer= �޷�ע�� DLL/OCX��%1
ErrorRegSvr32Failed=RegSvr32 ʧ���˳��� %1
;ErrorRegisterServerMissingExport=δ����DllRegisterServer �ĵ����ӿ�
ErrorRegisterTypeLib=�޷�ע�����Ϳ⣺%1
; *** Post-installation errors
ErrorOpeningReadme=���Դ� README �ļ�ʱ�д�������
ErrorRestartingComputer=��װ�����޷���������������ֶ�������
; *** Uninstaller messages
UninstallNotFound="%1"�ļ������ڡ��޷�ж�ء�
UninstallOpenError="%1" �ļ��޷��򿪡��޷�ж��
UninstallUnsupportedVer=�ð汾��ж�ع����޷�ʶ��ǰж����־"%1"�еĸ�ʽ���޷�ж��
UninstallUnknownEntry= ��ж�س������־����������ʶ��������Ϣ(%1)
ConfirmUninstall=��ȷ��Ҫ��ȫɾ��%1�Լ�������������?
UninstallOnlyOnWin64= �ð�װ����ֻ����64λWindows����ϵͳ�±�ж�ء�
OnlyAdminCanUninstall=�ð�װ����ֻ���ɾ��й���ԱȨ�޵��û�ж�ء�
UninstallStatusLabel=%1 �������ļ�����б�ж�أ���ȴ���
UninstalledAll=%1 �ѳɹ���ж�ء�
UninstalledMost=%1 ж����ɡ�%n%n������Щ�ļ�δ���Ƴ��������ֶ�ɾ�����ǡ�
UninstalledAndNeedsRestart= Ҫ��ɱ���%1��ж�أ�����������������%n%n��Ը������������
UninstallDataCorrupted="%1" �ļ����𻵣��޷�ж��
; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle= Ҫɾ�������ļ���?
ConfirmDeleteSharedFile2=���¹����ļ����ٱ��κγ���ʹ�ã���Ҫж�ز�ɾ����Щ�����ļ���%n%nһ������ɾ������������������Ҫʹ�ø��ļ��Ļ�����Щ����Ĺ��ܽ��᲻�������������ȷ������ѡ�񡺷񡻡��������ļ���ϵͳ�в��������κ��𺦡�
SharedFileNameLabel=�ļ�����:
SharedFileLocationLabel=λ��:
WizardUninstalling= ж��״̬
StatusUninstalling=����ж�� %1...
; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.
[CustomMessages]
NameAndVersion=%1 �汾 %2
AdditionalIcons=����ͼ�꣺
CreateDesktopIcon= ��������ͼ��(&d)
CreateQuickLaunchIcon=������������ͼ��(&Q)
ProgramOnTheWeb=%1 �����վ
UninstallProgram=ж�� %1
LaunchProgram=���� %1
AssocFileExtension=%1 �����ļ���չ��%2��������(&A)
AssocingFileExtension=���ڽ���%1���ļ���չ��%2�Ĺ�����ϵ...