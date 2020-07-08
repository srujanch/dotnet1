#!/bin/bash

# Add two numeric value
((sum=25+40))

#Print the result
echo $sum
dotnet tool install --global dotnet-sonarscanner --version 4.8.0

dotnet sonarscanner begin /k:"com.testing" 
dotnet build /mnt/optum/cloned/_3e3b5cab-2a27-4dfc-adc5-94d62c21a42d/eShopOnWeb.sln
dotnet sonarscanner end

echo "command executed"
