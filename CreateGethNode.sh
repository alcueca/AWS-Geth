#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack --profile alberto --stack-name GethNode \
        --template-body file://GethNode.yaml \
        --region eu-west-1 \
        --parameters \
            ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair \
            ParameterKey=InstanceTypeParam,ParameterValue=t2.micro \
        --disable-rollback

waitForStatus.py -s GethNode -r CREATE_COMPLETE

