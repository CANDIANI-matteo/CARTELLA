@echo off


:: Crea il file VBScript
echo Set objShell = CreateObject("WScript.Shell") > changeWallpaper.vbs
echo strWallpaper = "R:/Desktop/rodi/sfondo.jpg" >> changeWallpaper.vbs
echo objShell.RegWrite "HKEY_CURRENT_USER\Control Panel\Desktop\Wallpaper", strWallpaper >> changeWallpaper.vbs
echo Set objSysEnv = objShell.Environment("USER") >> changeWallpaper.vbs
echo objSysEnv("SEE_MASK_NOZONECHECKS") = 1 >> changeWallpaper.vbs
echo objShell.Run "%windir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True >> changeWallpaper.vbs

:: Esegui il file VBScript
cscript changeWallpaper.vbs

:: Rimuovi il file VBScript
del changeWallpaper.vbs

echo Sfondo cambiato con successo!
pause
