#!/bin/bash
#script for the creation of Mesos Cluster
cwd=$(pwd)
STACKNAME=$1
STACKTEMPLATEURL='https://raw.githubusercontent.com/DouglasLopez/Mesos-Single-Master/master/cloudformation/DCOSSingleMaster.template'
REGIONS=(us-east-1 us-west-2)



for region in ${REGIONS};
 do
  echo "creation of stack ${STACKNAME} in ${region}"
  aws cloudformation create-stack --stack-name ${STACKNAME} --template-body ${STACKTEMPLATEURL} --parameters file://${cwd}/parameters.json
done


