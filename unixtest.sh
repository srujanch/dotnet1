#!/bin/bash

# Add two numeric value
((sum=25+40))

#Print the result
echo $sum
#dotnet tool install --global dotnet-sonarscanner --version 4.8.0

/com/optum/sonar-msbuild/SonarScanner.MSBuild.exe begin /k:"com.testing" /d:sonar.host.url="http://ctc2hz1-02-s45.uhc.com:30031"
/com/optum/sonar-msbuild/SonarQube.Scanner.MSBuild.exe /mnt/optum/cloned/_3e3b5cab-2a27-4dfc-adc5-94d62c21a42d/eShopOnWeb.sln /t:Rebuild
/com/optum/sonar-msbuild/SonarScanner.MSBuild.exe end 

echo "command executed"
