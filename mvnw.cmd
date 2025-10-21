@ECHO OFF
set WRAPPER_JAR=.mvn\wrapper\maven-wrapper.jar
set WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain
java -classpath "%WRAPPER_JAR%" %WRAPPER_LAUNCHER% %*