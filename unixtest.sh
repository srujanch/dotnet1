#!/bin/bash

# Add two numeric value
((sum=25+40))

#Print the result
echo $sum
#dotnet tool install --global dotnet-sonarscanner --version 4.8.0

mono /com/optum/sonar-msbuild/SonarScanner.MSBuild.exe begin /k:"com.testing" 
mono /com/optum/sonar-msbuild/MSBuild.SonarQube.Runner.exe /mnt/optum/cloned/_3e3b5cab-2a27-4dfc-adc5-94d62c21a42d/eShopOnWeb.sln /t:Rebuild
mono /com/optum/sonar-msbuild/SonarScanner.MSBuild.exe end 

echo "command executed"
