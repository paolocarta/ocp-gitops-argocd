#!/bin/bash

# Example script to add permissions, check the namespaces directory for examples of doing this using YAML
oc adm policy add-cluster-role-to-user cluster-admin -z argocd-application-controller -n argocd

oc apply -f role-bindings-devteam-1.yaml
oc apply -f role-bindings-devteam-2.yaml
