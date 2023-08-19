#!/bin/bash

# https://docs.liquibase.com/tools-integrations/maven/workflows/using-liquibase-maven-plugin-and-springboot.html
# mvn compile package
# mvn liquibase:update-sql
# mvn liquibase:update
# liquibase:generateChangeLog
#
#  Generates a changelog based on the current database schema. Typically used
#  when beginning to use Liquibase on an existing project and database schema.
if [ -z "$1" ]
  then
    echo "Parameter missing"
    echo "Usage: liquibase-diff.sh 'changelog-msg'"
    exit 1
fi
./mvnw clean compile liquibase:diff -Dchangelog-msg=$1
