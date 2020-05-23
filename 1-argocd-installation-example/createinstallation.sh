#!/bin/bash
oc create -f 1-argo-ns.yaml
oc create -f 2-argo-og.yaml
oc create -f 3-argo-sub.yaml
oc create -f 4-argo-groups.yaml
echo Waiting 60 seconds for ArgoCD Operator to come up, if the following step fails with the
echo error of \"no matches for kind ArgoCD\" then reload the \"5-argo-cluster.yaml\" file manually
echo using \"oc create -f 5-argo-cluster.yaml\".
sleep 60
oc create -f 5-argo-cluster.yaml
