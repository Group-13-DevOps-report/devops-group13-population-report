@ECHO OFF
REM Minimal Maven Wrapper launcher (Windows)
setlocal
set WRAPPER_JAR=.mvn\wrapper\maven-wrapper.jar
set WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain
set JAVA_EXE=java
"%JAVA_EXE%" -classpath "%WRAPPER_JAR%" %WRAPPER_LAUNCHER% %*