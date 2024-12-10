@echo off
set /A "index = 0"
set /A "counter = 30"

:while
if %index% leq %counter% (
echo The value of index is %index%
start explorer
set /A "index = index + 1"
goto :while
)

