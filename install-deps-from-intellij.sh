#!/bin/sh

INTELLIJ_HOME=$1

if [ -z "$INTELLIJ_HOME" ]
then
  echo "Please provide the path to Intellij home directory. For example: install-intellij-libs.sh /Applications/Nika-IU-111.228.app"
  exit 1
fi

echo "Intellij home: $INTELLIJ_HOME"

mvn install:install-file -Dfile="$INTELLIJ_HOME/redist/javac2.jar"   -DgroupId=com.intellij -DartifactId=javac2   -Dversion=2020.3 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/asm-all-9.0.jar" -DgroupId=com.intellij -DartifactId=asm-all  -Dversion=2020.3 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/jdom.jar"        -DgroupId=com.intellij -DartifactId=jdom     -Dversion=2020.3 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/redist/forms_rt.jar" -DgroupId=com.intellij -DartifactId=forms_rt -Dversion=2020.3 -Dpackaging=jar
