@ECHO OFF
XCOPY G:\* D:\Copy /D /E /H /I /Q /Y
ATTRIB +R D:\Copy\* /S
EXIT
