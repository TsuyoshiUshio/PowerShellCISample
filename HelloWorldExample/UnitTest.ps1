Unblock-File -Path "..\..\Pester-master.zip"
Import-Module Pester
Invoke-Pester -OutputXml TEST-RESULT.xml
