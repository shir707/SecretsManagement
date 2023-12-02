# SecretsManagement

## Pipeline description

This pipeline is getting 3 varaibles: environment,secret name and secret value. 

In the pipeline: we encrypt the secret value using kms key ,and stroe the encrypted secret in aws secret manager. 

## Getting started

In order to run the pipeline manually click on "Run Workflow" button.

## Enter 3 variables in "input variable key"

ENVIRONMENT

SECRET_KEY

SECRET_VALUE

## write your "input variable value" for each variable

ENVIRONMENT: in which environment would you like to create the secret --->  stage/production...

SECRET_VALUE: the value that you want to encrypt

SECRET_KEY: the name you want to give the key in secret manager