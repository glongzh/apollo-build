#! /bin/bash

set -e

path=`dirname $0`

mkdir tmp

curl -L https://github.com/ctripcorp/apollo/releases/download/v1.3.0/apollo-adminservice-1.3.0-github.zip -o ./tmp/apollo-adminservice-1.3.0-github.zip
curl -L https://github.com/ctripcorp/apollo/releases/download/v1.3.0/apollo-configservice-1.3.0-github.zip -o ./tmp/apollo-configservice-1.3.0-github.zip
curl -L https://github.com/ctripcorp/apollo/releases/download/v1.3.0/apollo-portal-1.3.0-github.zip -o ./tmp/apollo-portal-1.3.0-github.zip

cd tmp
unzip -q -o apollo-adminservice-1.3.0-github.zip
mv apollo-adminservice-1.3.0.jar ../apollo-admin-server/apollo-adminservice.jar

unzip -q -o apollo-configservice-1.3.0-github.zip
mv apollo-configservice-1.3.0.jar ../apollo-config-server/apollo-configservice.jar

unzip -q -o apollo-portal-1.3.0-github.zip
mv apollo-portal-1.3.0.jar ../apollo-portal-server/apollo-portal.jar