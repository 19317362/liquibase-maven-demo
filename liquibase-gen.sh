#!/bin/bash
# https://docs.liquibase.com/tools-integrations/maven/commands/home.html
# doc1 https://docs.liquibase.com/tools-integrations/maven/commands/maven-generatechangelog.html
# doc2 https://docs.liquibase.com/tools-integrations/maven/maven-pom-file.html
# https://docs.liquibase.com/tools-integrations/maven/workflows/using-liquibase-maven-plugin-and-springboot.html
# flyway vs liquibase https://zhuanlan.zhihu.com/p/559857853
# mvn compile package
# mvn liquibase:update-sql
# mvn liquibase:update
# liquibase:generateChangeLog
#
#  Generates a changelog based on the current database schema. Typically used
#  when beginning to use Liquibase on an existing project and database schema.
#if [ -z "$1" ]
#  then
#    echo "Parameter missing"
#    echo "Usage: liquibase-diff.sh 'changelog-msg'"
#    exit 1
#fi
# mvn liquibase:generateChangeLog -Dliquibase.diffTypes=data
./mvnw clean compile liquibase:generateChangeLog -Dliquibase.diffTypes=data,tables,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints
