#!/bin/sh
WRAPPER_JAR=".mvn/wrapper/maven-wrapper.jar"
WRAPPER_LAUNCHER="org.apache.maven.wrapper.MavenWrapperMain"
exec java -classpath "$WRAPPER_JAR" $WRAPPER_LAUNCHER "$@"