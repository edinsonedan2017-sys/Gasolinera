#!/bin/sh
#
# Copyright © 2015-2021 the original authors.
# Script de inicio de Gradle para sistemas POSIX
#

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

# Resolver APP_HOME
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

APP_HOME="${APP_HOME:-$(pwd)}"
APP_CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
JAVA_EXECUTABLE="java"

if [ -n "$JAVA_HOME" ]; then
    JAVA_EXECUTABLE="$JAVA_HOME/bin/java"
fi

exec "$JAVA_EXECUTABLE" $DEFAULT_JVM_OPTS \
    -classpath "$APP_CLASSPATH" \
    org.gradle.wrapper.GradleWrapperMain "$@"
