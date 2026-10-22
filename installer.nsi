Unicode true
!include "MUI2.nsh"
Name "sg0hann Crosshair Studio"
OutFile "sg0hann-Crosshair-Studio-2.0.0-Setup.exe"
InstallDir "$LOCALAPPDATA\Programs\sg0hann Crosshair Studio"
RequestExecutionLevel user
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"
Section "Install"
 SetOutPath "$INSTDIR"
 File "sg0hann-Crosshair-Studio.exe"
 CreateDirectory "$SMPROGRAMS\sg0hann Crosshair Studio"
 CreateShortcut "$SMPROGRAMS\sg0hann Crosshair Studio\sg0hann Crosshair Studio.lnk" "$INSTDIR\sg0hann-Crosshair-Studio.exe"
 WriteUninstaller "$INSTDIR\Uninstall.exe"
 WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\sg0hannCrosshair" "DisplayName" "sg0hann Crosshair Studio"
 WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\sg0hannCrosshair" "UninstallString" '"$INSTDIR\Uninstall.exe"'
SectionEnd
Section "Uninstall"
 Delete "$INSTDIR\sg0hann-Crosshair-Studio.exe"
 Delete "$INSTDIR\Uninstall.exe"
 RMDir "$INSTDIR"
 Delete "$SMPROGRAMS\sg0hann Crosshair Studio\sg0hann Crosshair Studio.lnk"
 RMDir "$SMPROGRAMS\sg0hann Crosshair Studio"
 DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\sg0hannCrosshair"
SectionEnd