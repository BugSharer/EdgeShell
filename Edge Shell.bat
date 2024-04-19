@echo off
:: 开启延迟环境变量扩展
setlocal enabledelayedexpansion

:: 补充命令行参数，使能配置项：始终在新选项卡中打开收藏夹
set All_Args=--enable-features=msFavoritesOpenInNewTabSetting

:: 遍历并整合所有命令行参数
:LOOP
    :: 判断移位后的命令行参数是否为空
    if %1!==! goto :DONE
    set Single_Arg=%1

    :: 移除双引号方法一：如果Single_Arg首尾存在【"】，则剔除
    set Char=!Single_Arg:~0,1!
    if !Char!==^" set Single_Arg=!Single_Arg:~1!
    set Char=!Single_Arg:~-1!
    if !Char!==^" set Single_Arg=!Single_Arg:~0,-1!

    :: 移除双引号方法二：匹配并剔除Single_Arg中所有【"】
    :: set Single_Arg=!Single_Arg:"=!

    :: 拼接命令行参数(空格分割)
    set All_Args=!All_Args! !Single_Arg!
    :: 对命令行参数进行移位操作
    shift
    goto :LOOP

:: 命令行参数整合完成，调用Edge原可执行程序
:DONE
:: 调试代码
:: echo All_Args=!All_Args!
start "Microsoft Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_Raw.exe" !All_Args!
exit
