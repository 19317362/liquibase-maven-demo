#!/bin/bash

# https://docs.liquibase.com/tools-integrations/maven/workflows/using-liquibase-maven-plugin-and-springboot.html
# mvn compile package
# mvn liquibase:update-sql
# mvn liquibase:update
if [ -z "$1" ]
  then
    echo "Parameter missing"
    echo "Usage: liquibase-diff.sh 'changelog-msg'"
    exit 1
fi
./mvnw clean compile liquibase:diff -Dchangelog-msg=$1
