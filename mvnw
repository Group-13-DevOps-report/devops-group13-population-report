#!/bin/sh
# Apache Maven Wrapper launcher (POSIX)
set -e
WRAPPER_JAR=".mvn/wrapper/maven-wrapper.jar"
WRAPPER_LAUNCHER="org.apache.maven.wrapper.MavenWrapperMain"
JAVA_EXE="java"
# Important: tell Maven the project base dir (this fixes the exit code 1 you saw)
exec "$JAVA_EXE" -Dmaven.multiModuleProjectDirectory="$(pwd -P)" -classpath "$WRAPPER_JAR" $WRAPPER_LAUNCHER "$@"