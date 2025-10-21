@ECHO OFF
REM Apache Maven Wrapper launcher (Windows)
SETLOCAL
set WRAPPER_JAR=.mvn\wrapper\maven-wrapper.jar
set WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain
set MM_DIR=%CD%
REM Important: tell Maven the project base dir (this fixes the exit code 1 you saw)
java -Dmaven.multiModuleProjectDirectory="%MM_DIR%" -classpath "%WRAPPER_JAR%" %WRAPPER_LAUNCHER% %*