; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName 
#define MyAppVersion 
#define MyAppPublisher 
#define MyAppURL "http://fhir.org"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B39DF16F-6D54-4346-BB9E-3C6619BA11A2}
AppName="FHIR Notepad++ plugin"
AppVersion=1.x
AppPublisher=Health Intersections
AppPublisherURL=http://healthintersections.com.au
AppSupportURL=http://wiki.hl7.org/index.php?title=FHIR_Notepad%2B%2B_Plugin_Documentation
AppUpdatesURL=http://healthintersections.com.au/FhirServer
DefaultDirName={pf32}\Notepad++
DefaultGroupName=Notepad++
DisableProgramGroupPage=yes
LicenseFile=C:\work\fhirserver\install\npplicense.txt
InfoBeforeFile=C:\work\fhirserver\install\nppreadme.txt
OutputDir=C:\work\fhirserver\install\build
OutputBaseFilename=npp-install-1.0.26
SetupIconFile=C:\work\fhirserver\Server\fhir.ico
Compression=lzma
SolidCompression=yes
DirExistsWarning=no
AppVerName=1.0.26 (FHIR Version 1.0.2.7475)

; C:\Users\Grahame Grieve\AppData\Roaming\Notepad++\plugins\Config

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 1st, the plug-in itself
Source: "C:\Users\Grahame Grieve\AppData\Roaming\Notepad++\plugins\fhirnpp.dll"; DestDir: "{app}\plugins";                                         Flags: ignoreversion
; supporting ssl files
Source: "C:\work\fhirserver\install\ssl32\libeay32.dll";                         DestDir: "{app}\plugins\fhir";                                    Flags: ignoreversion
Source: "C:\work\fhirserver\install\ssl32\ssleay32.dll";                         DestDir: "{app}\plugins\fhir";                                    Flags: ignoreversion
; data files
Source: "C:\work\org.hl7.fhir\build\publish\igpack.zip";                         DestDir: "{app}\plugins\fhir"; DestName: "fhir3-definitions.zip"; Flags: ignoreversion
; Source: "C:\work\org.hl7.fhir\build\publish\definitions-r2asr3.xml.zip";         DestDir: "{app}\plugins\fhir"; DestName: "fhir2-definitions.zip"; Flags: ignoreversion
; n++ config file
Source: "C:\Program Files (x86)\Notepad++\allowAppDataPlugins.xml";              DestDir: "{app}";                                                 Flags: ignoreversion


[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "notepad++.exe"; ValueData: "10000"; Flags: createvalueifdoesntexist 


