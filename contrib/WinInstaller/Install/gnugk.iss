; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Gnu Gatekeeper"
#define MyAppVerName "Gnu Gatekeeper v2.2.4"
#define MyAppPublisher "www.GnuGk.org"
#define MyAppURL "http://www.GnuGk.org"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=true
OutputBaseFilename=GnuGkSetup224
Compression=lzma
SolidCompression=true
ShowLanguageDialog=yes
UninstallDisplayIcon={app}\GnuGk.ico
AppID={{60FE29A6-735F-4E81-B92E-33367CA59D9C}
SetupIconFile=GnuGk.ico
WindowStartMaximized=false
WindowResizable=false
WindowVisible=false
WizardImageFile=InternetClassic22.bmp
WizardSmallImageFile=D:\gnugk\Install\logo.bmp

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Files]
Source: ..\GnuGk\billing.pl; DestDir: {app}; Flags: ignoreversion
Source: ..\GnuGk\.cvsignore; DestDir: {app}; Flags: ignoreversion
Source: ..\GnuGk\changes.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\GnuGk\copying; DestDir: {app}; Flags: ignoreversion
Source: ..\GnuGk\readme.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\GnuGk\contrib\*; DestDir: {app}\contrib; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\GnuGk\docs-html\*; DestDir: {app}\docs; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\GnuGk\etc\*; DestDir: {app}\etc; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\GnuGk\bin\GnuGk.exe; DestDir: {app}
Source: ..\GnuGk\bin\addpasswd.exe; DestDir: {app}
Source: gatekeeper.ini; DestDir: {app}; Flags: onlyifdoesntexist
Source: GnuGk.ico; DestDir: {app}
Source: uninstall.ico; DestDir: {app}
Source: ..\GnuGkService\NTSVC.ocx; DestDir: {sys}; Flags: regserver uninsneveruninstall
Source: ..\GnuGkService\pacGnuGkNTS.exe; DestDir: {app}; Flags: ignoreversion
Source: monitor.ICO; DestDir: {app}
Source: ..\functions\mswinsck.ocx; DestDir: {sys}; Flags: regserver uninsneveruninstall
Source: ..\functions\GnuGkutil.exe; DestDir: {app}
Source: user.ico; DestDir: {app}
Source: reload.ICO; DestDir: {app}
[Icons]
;Name: {group}\GnuGk Gatekeeper; Filename: {app}\GnuGk.exe; IconFilename: {app}\GnuGk.ico; Comment: GnuGk Gatekeeper; IconIndex: 0; WorkingDir: {app}
Name: {group}\Configuration\gatekeeper.ini; Filename: {app}\gatekeeper.ini; WorkingDir: {app}; Comment: Gatekeeper Configuration File
Name: {group}\Add User; Filename: {app}\GnuGkutil.exe; Parameters: user; IconFilename: {app}\user.ico; IconIndex: 0; Tasks: securelogin; Comment: Add New User and Password
Name: {group}\Monitor; Filename: {sys}\telnet.exe; Parameters: 127.0.0.1 7000; IconFilename: {app}\monitor.ICO; IconIndex: 0; Comment: Telnet Connect to Gatekeeper
Name: {group}\Manual; Filename: {app}\docs\manual.html; Comment: GnuGk Manual
Name: {group}\Website; Filename: {app}\GnuGk.url; WorkingDir: {app}; Comment: GnuGk Website
Name: {group}\Uninstall GnuGK; Filename: {uninstallexe}; IconFilename: {app}\uninstall.ico; IconIndex: 0; Comment: Uninstall GnuGk
Name: {group}\Reload; Filename: {app}\GnuGkutil.exe; WorkingDir: {app}; Parameters: call=reload; Comment: Reload Settings; IconIndex: 0; IconFilename: {app}\reload.ICO
Name: {group}\Configuration\Samples; Filename: {app}\etc\; WorkingDir: {app}; Flags: foldershortcut; Comment: Sample configuration files
[INI]
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: FortyTwo; String: 42
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: Name; String: GnuGk
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: EndpointSuffix; String: _GnuGk
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: TimeToLive; String: 60
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: StatusTraceLevel; String: 0
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: UseBroadcastListener; String: 0
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Main; Key: UseMulticastListener; String: 0
Filename: {app}\gatekeeper.ini; Section: GkStatus::Auth; Key: rule; String: explicit
Filename: {app}\gatekeeper.ini; Section: GkStatus::Auth; Key: 127.0.0.1; String: allow
Filename: {app}\gatekeeper.ini; Section: GkStatus::Auth; Key: default; String: forbid
Filename: {app}\gatekeeper.ini; Section: GkStatus::Auth; Key: Shutdown; String: allow
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: GKRouted; String: 1
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: H245Routed; String: 0
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: CallSignalPort; String: 1721
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: AcceptNeighborCalls; String: 1
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: AcceptUnregisteredCalls; String: 0
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: RemoveH245AddressOnTunneling; String: 1
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: RemoveCallOnDRQ; String: 0
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: DropCallsByReleaseComplete; String: 1
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: SendReleaseCompleteOnDRQ; String: 0
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: SupportNATedEndpoints; String: 1
Filename: {app}\gatekeeper.ini; Section: RoutedMode; Key: TranslateFacility; String: 1
Filename: {app}\gatekeeper.ini; Section: Proxy; Key: Enable; String: 0
Filename: {app}\gatekeeper.ini; Section: Proxy; Key: ProxyForNAT; String: 1
Filename: {app}\gatekeeper.ini; Section: Proxy; Key: ProxyForSameNAT; String: 0
Filename: {app}\gatekeeper.ini; Section: RasSrv::RRQFeatures; Key: AcceptEndpointIdentifier; String: 0
Filename: {app}\gatekeeper.ini; Section: RasSrv::RRQFeatures; Key: AcceptGatewayPrefixes; String: 1
Filename: {app}\gatekeeper.ini; Section: RasSrv::ARQFeatures; Key: CallUnregisteredEndpoints; String: 1
Filename: {app}\gatekeeper.ini; Section: CallTable; Key: GenerateNBCDR; String: 0
Filename: {app}\gatekeeper.ini; Section: CallTable; Key: GenerateUCCDR; String: 1
Filename: {app}\gatekeeper.ini; Section: Gatekeeper::Auth; Key: SimplePasswordAuth; String: "required;RRQ"; Tasks: securelogin
Filename: {app}\GnuGk.url; Section: InternetShortcut; Key: URL; String: http://www.GnuGk.org/
[_ISTool]
EnableISX=true
UseAbsolutePaths=false
[UninstallDelete]
Type: files; Name: {app}\GnuGk.url
Name: {app}; Type: filesandordirs
[Run]
Filename: {app}\GnuGkutil.exe; Parameters: kill=pacGnuGkNTS.exe; Flags: runhidden; Tasks: service
Filename: {app}\GnuGkutil.exe; Parameters: kill=GnuGk.exe; Flags: runhidden; Tasks: service
Filename: {app}\pacGnuGkNTS.exe; Parameters: "-install -sname=""GnuGkserv"" -command=""{app}\GnuGk.exe"" -displayname=""GnuGk Service"" -visible=no -process=GnuGk.exe"; Flags: runhidden waituntilidle; StatusMsg: Installing Service; Tasks: service
[UninstallRun]
Filename: {app}\GnuGkutil.exe; Parameters: kill=pacGnuGkNTS.exe; Flags: runhidden; Tasks: service
Filename: {app}\GnuGkutil.exe; Parameters: kill=GnuGk.exe; Flags: runhidden; Tasks: service
Filename: {app}\pacGnuGkNTS.exe; Parameters: "-uninstall -sname=""GnuGkserv"" "; Flags: runhidden waituntilidle; Tasks: service

[Tasks]
Name: securelogin; Description: Require User Passwords (Simple Password Authentication); Flags: unchecked
Name: service; Description: Install as Service; Flags: checkedonce; MinVersion: 0,5.0.2195
[Code]
type
 SERVICE_STATUS = record
     dwServiceType    : cardinal;
     dwCurrentState    : cardinal;
     dwControlsAccepted   : cardinal;
     dwWin32ExitCode    : cardinal;
     dwServiceSpecificExitCode : cardinal;
     dwCheckPoint    : cardinal;
     dwWaitHint     : cardinal;
 end;
 HANDLE = cardinal;

const
 SERVICE_QUERY_CONFIG  = $1;
 SERVICE_CHANGE_CONFIG  = $2;
 SERVICE_QUERY_STATUS  = $4;
 SERVICE_START    = $10;
 SERVICE_STOP    = $20;
 SERVICE_ALL_ACCESS   = $f01ff;
 SC_MANAGER_ALL_ACCESS  = $f003f;
 SERVICE_WIN32_OWN_PROCESS = $10;
 SERVICE_WIN32_SHARE_PROCESS = $20;
 SERVICE_WIN32    = $30;
 SERVICE_INTERACTIVE_PROCESS = $100;
 SERVICE_BOOT_START          = $0;
 SERVICE_SYSTEM_START        = $1;
 SERVICE_AUTO_START          = $2;
 SERVICE_DEMAND_START        = $3;
 SERVICE_DISABLED            = $4;
 SERVICE_DELETE              = $10000;
 SERVICE_CONTROL_STOP  = $1;
 SERVICE_CONTROL_PAUSE  = $2;
 SERVICE_CONTROL_CONTINUE = $3;
 SERVICE_CONTROL_INTERROGATE = $4;
 SERVICE_STOPPED    = $1;
 SERVICE_START_PENDING       = $2;
 SERVICE_STOP_PENDING        = $3;
 SERVICE_RUNNING             = $4;
 SERVICE_CONTINUE_PENDING    = $5;
 SERVICE_PAUSE_PENDING       = $6;
 SERVICE_PAUSED              = $7;

//############################################################################
// nt based service utilities
//############################################################################

function OpenSCManager(lpMachineName, lpDatabaseName: string;
dwDesiredAccess :cardinal): HANDLE;
external 'OpenSCManagerA@advapi32.dll stdcall';

function OpenService(hSCManager :HANDLE;lpServiceName: string;
dwDesiredAccess :cardinal): HANDLE;
external 'OpenServiceA@advapi32.dll stdcall';

function CloseServiceHandle(hSCObject :HANDLE): boolean;
external 'CloseServiceHandle@advapi32.dll stdcall';

function CreateService(hSCManager :HANDLE;lpServiceName, lpDisplayName:
string;dwDesiredAccess,dwServiceType,dwStartType,dwErrorControl:
cardinal;lpBinaryPathName,lpLoadOrderGroup: String; lpdwTagId :
cardinal;lpDependencies,lpServiceStartName,lpPassword :string): cardinal;
external 'CreateServiceA@advapi32.dll stdcall';

function DeleteService(hService :HANDLE): boolean;
external 'DeleteService@advapi32.dll stdcall';

function StartNTService(hService :HANDLE;dwNumServiceArgs :
cardinal;lpServiceArgVectors : cardinal) : boolean;
external 'StartServiceA@advapi32.dll stdcall';

function ControlService(hService :HANDLE; dwControl :cardinal;var
ServiceStatus :SERVICE_STATUS) : boolean;
external 'ControlService@advapi32.dll stdcall';

function QueryServiceStatus(hService :HANDLE;var ServiceStatus
:SERVICE_STATUS) : boolean;
external 'QueryServiceStatus@advapi32.dll stdcall';

function QueryServiceStatusEx(hService :HANDLE;ServiceStatus
:SERVICE_STATUS) : boolean;
external 'QueryServiceStatus@advapi32.dll stdcall';

function OpenServiceManager() : HANDLE;
begin
 if UsingWinNT() = true then begin
  Result := OpenSCManager('','ServicesActive',SC_MANAGER_ALL_ACCESS);
  if Result = 0 then
   MsgBox('the servicemanager is not available', mbError, MB_OK)
 end
 else begin
   MsgBox('only nt based systems support services', mbError, MB_OK)
   Result := 0;
 end
end;

function IsServiceInstalled(ServiceName: string) : boolean;
var
 hSCM : HANDLE;
 hService: HANDLE;
begin
 hSCM := OpenServiceManager();
 Result := false;
 if hSCM <> 0 then begin
  hService := OpenService(hSCM,ServiceName,SERVICE_QUERY_CONFIG);
        if hService <> 0 then begin
            Result := true;
            CloseServiceHandle(hService)
  end;
        CloseServiceHandle(hSCM)
 end
end;

function InstallService(FileName, ServiceName, DisplayName, Description :
string;ServiceType,StartType :cardinal) : boolean;
var
 hSCM : HANDLE;
 hService: HANDLE;
begin
 hSCM := OpenServiceManager();
 Result := false;
 if hSCM <> 0 then begin
  hService :=
CreateService(hSCM,ServiceName,DisplayName,SERVICE_ALL_ACCESS,ServiceType,StartType,0,FileName,'',0,'','','');
  if hService <> 0 then begin
   Result := true;
   // Win2K & WinXP supports aditional description text for services
   if Description<> '' then
    RegWriteStringValue(HKLM,'System\CurrentControlSet\Services\' +
ServiceName,'Description',Description);
   CloseServiceHandle(hService)
  end;
        CloseServiceHandle(hSCM)
 end
end;

function RemoveService(ServiceName: string) : boolean;
var
 hSCM : HANDLE;
 hService: HANDLE;
begin
 hSCM := OpenServiceManager();
 Result := false;
 if hSCM <> 0 then begin
  hService := OpenService(hSCM,ServiceName,SERVICE_DELETE);
        if hService <> 0 then begin
            Result := DeleteService(hService);
            CloseServiceHandle(hService)
  end;
        CloseServiceHandle(hSCM)
 end
end;

function StartService(ServiceName: string) : boolean;
var
 hSCM : HANDLE;
 hService: HANDLE;
begin
 hSCM := OpenServiceManager();
 Result := false;
 if hSCM <> 0 then begin
  hService := OpenService(hSCM,ServiceName,SERVICE_START);
        if hService <> 0 then begin
         Result := StartNTService(hService,0,0);
            CloseServiceHandle(hService)
  end;
        CloseServiceHandle(hSCM)
 end;
end;

function StopService(ServiceName: string) : boolean;
var
 hSCM : HANDLE;
 hService: HANDLE;
 Status : SERVICE_STATUS;
begin
 hSCM := OpenServiceManager();
 Result := false;
 if hSCM <> 0 then begin
  hService := OpenService(hSCM,ServiceName,SERVICE_STOP);
        if hService <> 0 then begin
         Result := ControlService(hService,SERVICE_CONTROL_STOP,Status);
            CloseServiceHandle(hService)
  end;
        CloseServiceHandle(hSCM)
 end;
end;

function IsServiceRunning(ServiceName: string) : boolean;
var
 hSCM : HANDLE;
 hService: HANDLE;
 Status : SERVICE_STATUS;
begin
 hSCM := OpenServiceManager();
 Result := false;
 if hSCM <> 0 then begin
  hService := OpenService(hSCM,ServiceName,SERVICE_QUERY_STATUS);
     if hService <> 0 then begin
   if QueryServiceStatus(hService,Status) then begin
    Result :=(Status.dwCurrentState = SERVICE_RUNNING)
         end;
            CloseServiceHandle(hService)
      end;
        CloseServiceHandle(hSCM)
 end;
end;

function InitializeSetup(): boolean;

var
	answ : Integer;
begin
   answ := IDYES;

  if IsServiceInstalled('GnuGkserv') = true then
   begin
	 if IsServiceRunning('GnuGkserv') then begin
	     answ := MsgBox( 'Warning: GnuGk is currently running on this computer.'
	          + #13#13 + 'Calls and Registrations will be affected during Installation Process.'
			  + #13#13 + 'Do you want to upgrade anyway ?',
			  mbConfirmation, MB_YESNO )
		if (answ = IDYES) then begin
            StopService('GnuGkserv');
        end;
      // If user answer is NO abort setup
	 end;
   end;

	Result := ( answ = IDYES );
end;

procedure DeinitializeSetup();
begin

  if IsServiceInstalled('GnuGkserv') = true then
   begin
	   if IsServiceRunning('GnuGkserv') = false then begin
		   StartService('GnuGkserv');
	   end;
   end;

end;

function InitializeUninstall(): boolean;
begin
  if IsServiceInstalled('GnuGkserv') = true then
   begin
	 if IsServiceRunning('GnuGkserv')= true then begin
		  StopService('GnuGkserv');
	 end;
   end;

 Result := true;
end;
