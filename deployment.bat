cd C:\Users\nuthankumarkb\.jenkins\workspace\azureMavenDeployment
CALL mvn clean package
CALL mvn install -s az-settings.xml