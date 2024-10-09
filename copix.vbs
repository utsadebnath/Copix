' make bat and vbs file in one vbs file
' Define paths and parameters
sourceDir = "G:\"
destDir = "D:\Copy\"
sleepDuration = 100

' Main loop
Do
    ' Run the copy command
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run "cmd /c xcopy " & sourceDir & " " & destDir & " /D /E /H /I /Q /Y", 0, True
    
    ' Release objects
    Set WshShell = Nothing
    
    ' Sleep for the specified duration
    WScript.Sleep sleepDuration
Loop
