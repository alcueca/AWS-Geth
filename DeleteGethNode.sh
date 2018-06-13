#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name GethNode
waitForDeletion.py -s GethNode
beep

