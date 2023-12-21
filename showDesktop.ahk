~RButton:: ; 开始监测鼠标右键
    Click, Right, D  ; 按下鼠标右键
    KeyWait, RButton  ; 等待鼠标右键释放
    Click, Right, U  ; 释放鼠标右键
    if (A_TimeSincePriorHotkey < 500) ; 判断两次右键点击之间的时间差
    {
        ShowDesktop() ; 双击时回到桌面
    }
    return

ShowDesktop() {
    ; 使用 Shell 对象调用 ShowDesktop 方法
    shell := ComObjCreate("Shell.Application")
    shell.MinimizeAll()
}