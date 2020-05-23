#!/bin/bash
oc create -f amqstreams-ns.yaml
oc create -f bookinfo-ns.yaml
oc create -f codereadyworkspaces-ns.yaml
oc create -f developerteam1-ns.yaml
oc create -f developerteam2-ns.yaml
oc create -f devtools.yaml
oc create -f istio-system-ns.yaml
oc create -f metering-ns.yaml
oc create -f openshift-nfd-ns.yaml
