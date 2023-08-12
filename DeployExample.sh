#!/bin/bash

# Change Current Directory
cd $(dirname $0)

# Apply Oracle Database
kubectl apply -f ./OracleDatabase/OracleNS.yml
kubectl apply -f ./common/CommonConfig.yml
kubectl apply -f ./OracleDatabase/OracleDatabaseSecretExample.yml
# kubectl apply -f ./OracleDatabase/OracleDatabaseSecret.yml
kubectl apply -f ./OracleDatabase/OracleDatabase.yml

# Apply Ords
# kubectl apply -f ./ords/OrdsConfig.yml
kubectl apply -f ./ords/OrdsSecretExample.yml
# kubectl apply -f ./ords/OrdsSecret.yml
kubectl apply -f ./ords/Ords.yml
# kubectl apply -f ./ords/OrdsIngress.yml