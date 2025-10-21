#!/bin/sh
# Minimal Maven Wrapper launcher (POSIX)
WRAPPER_JAR=".mvn/wrapper/maven-wrapper.jar"
WRAPPER_LAUNCHER="org.apache.maven.wrapper.MavenWrapperMain"
JAVA_EXE="java"
exec "$JAVA_EXE" -classpath "$WRAPPER_JAR" $WRAPPER_LAUNCHER "$@"