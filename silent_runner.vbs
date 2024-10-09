Do
    Set WshShell=WScript.CreateObject("WScript.Shell")
    obj=WshShell.Run("D:\script\copix.bat",0)
    Set WshShell=Nothing

    WScript.Sleep(100) 
Loop