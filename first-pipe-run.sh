#!/bin/bash

cd 5-applications/spring-rest/cicd/tekton-pipeline/first-test-run

oc apply -f pipelineresources.yaml
oc apply -f first-pipeline-run.yaml


