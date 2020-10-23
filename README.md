# argocd-test
GitOps with ArgoCD running on Openshift. 
This is a demo which spins up everything in your cluster, starting from manifests related to the infrastructure,
carrying on with middleware, apps and tekton pipelines.

__Instructions__

There are different folders, numbered in the order that they will be used by ArgoCD

To spin up everything you should execute the initial script named ```first-installation.sh```
It basically solves the chicken and the egg problem, spinning up ArgoCD and letting it install everything else.

Keep in mind that ArgoCD itself is managed through GitOps with ArgoCD.