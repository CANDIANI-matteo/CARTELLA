@echo off
set /A "index = 0"
set /A "counter = -1"

:while
if %index% leq %counter% (
echo The value of index is %index%
start explorer
set /A "index = index + 1"
goto :while
)

msg * /self /w "Ammira emu 8087"


reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f 
reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d "R:\Desktop\bomba\Gucciardi\emu8087\maxresdefault.jpg" /f 
reg delete "HKCU\Software\Microsoft\Internet Explorer\Desktop\General" /v WallpaperStyle /f
reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
exit