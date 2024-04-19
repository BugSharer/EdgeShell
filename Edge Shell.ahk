; %0%代表命令行参数个数，%1%、%2%、%3%……分别代表第n个命令行参数的值
; MsgBox %0%                    ; 调试代码

; 遍历并整合所有命令行参数
All_Args = --enable-features=msFavoritesOpenInNewTabSetting ; 使能【始终在新选项卡中打开收藏夹】配置项
Loop, %0%
{
    All_Args := All_Args " " %A_Index%                      ; 拼接命令行参数(空格分割)
    ; Single_Arg := %A_Index%   ; 调试代码
    ; MsgBox %Single_Arg%       ; 调试代码
}
; MsgBox %All_Args%             ; 调试代码

; 调用Edge原可执行程序(补充并转发命令行参数)
Run, C:\Program Files (x86)\Microsoft\Edge\Application\msedge_raw.exe %All_Args%
ExitApp
