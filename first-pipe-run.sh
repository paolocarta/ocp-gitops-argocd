#!/bin/bash

source tmp-manual-step.sh

oc apply -f first-test-run/pipelineresources.yaml
sleep 1
oc apply -f first-test-run/first-pipeline-run.yaml


