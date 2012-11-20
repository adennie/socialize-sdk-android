set version=%1%

if (%version%)==() goto MISSING_VERSION

copy sdk\bin\sdk.jar sdk\bin\socialize-sdk-android-%version%.jar
mvn install:install-file -Dpackaging=jar -DgeneratePom=true -DgroupId=com.socialize -DartifactId=socialize-sdk-android -Dversion=%version% -Dfile=sdk\bin\socialize-sdk-android-%version%.jar

goto END

:MISSING_VERSION
echo "missing version argument" 
goto END

:END