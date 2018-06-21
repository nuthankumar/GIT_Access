"C:\Program Files\VisualSVN Server\bin\svnlook" dirs-changed D:\Repositories\NuthanSVNWebhookTest | findstr /b /i "HME-DTCLOUD/App/trunk"
IF %ERRORLEVEL% EQU 0 (
java -jar C:\JARS\jenkins-cli.jar -s http://localhost:8080 build AApp --username Nuthan --password May@2018
)
"C:\Program Files\VisualSVN Server\bin\svnlook" dirs-changed D:\Repositories\NuthanSVNWebhookTest | findstr /b /i "HME-DTCLOUD/Service/trunk"
IF %ERRORLEVEL% EQU 0 (
java -jar C:\JARS\jenkins-cli.jar -s http://localhost:8080 build AService --username Nuthan --password May@2018
)