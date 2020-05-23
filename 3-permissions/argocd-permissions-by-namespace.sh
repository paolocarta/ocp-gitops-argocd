#!/bin/bash

# Example script to add permissions, check the namespaces directory for examples of doing this using YAML
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n amqstreams
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n bookinfo
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n developerteam1
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n developerteam2
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n developertools
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n istio-system
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n openshift-metering
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n openshift-nfd
oc policy add-role-to-user edit system:serviceaccount:argocd:argocd-application-controller -n openshift-operators
