@ECHO OFF&PUSHD %~DP0 &TITLE Git 仓库管理
mode con cols=35 lines=20
color 2F
color 2F

SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.　　　　　   选 项
@ echo.
@ echo.     自动拉取代码 → 请输入1
@ echo.
@ echo.     自动推送代码 → 请输入2
@ echo.
@ echo.     手动推送代码 → 请输入3
@ echo.
@ echo.     设置远程仓库 → 请输入4
@ echo.
@ echo.      退出本程序  → 请输入5
@ echo.
set /p xj= 输入数字并按回车：
if /i "%xj%"=="1" Goto Install
if /i "%xj%"=="2" Goto Push
if /i "%xj%"=="3" Goto Establish
if /i "%xj%"=="4" Goto custom
if /i "%xj%"=="5" Goto Uninstall
@ echo.
echo      选择无效，请重新输入
ping -n 2 127.1>nul
goto menu
:Install
@ echo.
ECHO 　　　正在安装中..请稍等..
XXXXX
goto Install2
:Establish
XXXXX
:Push
git add --all
git commit -m "update"
git push origin
ECHO 代码推送成功
//goto fanhui
:Uninstall
@ echo.
echo 　　　正在卸载中..请稍等..
XXXXX
goto Uninstall2
:custom
start Program\Xmp.ini
:fanhui
@ ECHO.
ECHO 　　　设置完成..
goto menu
:Install2
@ ECHO.
ECHO 　　　安装完成..
goto menu
:Uninstall2
@ ECHO.
ECHO 　　　卸载完成..
goto menu