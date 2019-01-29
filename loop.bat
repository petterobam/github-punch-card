@echo off
set var=0
rem ************循环开始了
:continue
set /a var+=1
echo the %var% day before
rem ************执行打卡提交
call push.bat
rem ************执行日期前调一天
call OneDayAgo.bat
if %var% lss %1 goto continue
rem ************循环结束了
echo finish
call SyncNetTime.bat
pause
