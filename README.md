# argocd-test
My Test Repo for ArgoCD running on Openshift. Provides a demo which syncs various application data and operators.

__Instructions__

There are 5 folders, numbered in the order that they will be used in this demo

- **1-argocd-installation-example** - Installs ArgoCD using the ArgoCD Operator (note: Creates a namespace called argocd and creates required operatorgroups and subscription resources)
- **2-demo-namespaces** - Creates the namespaces used by this project. Feel free to omit some of these if you're already using them. This demo installs Istio with the Bookinfo sample, Metering, Codeready Workspaces, and AMQ Streams
- **3-permissions** - Assigns the required permissions. The easiest way is to assign the ArgoCD Service User as a cluster admin (there is an example YAML and shell script for doing this)
  - Per namespace permissions can also be used but more permissions might be needed. The sample per-namespace permissions provided here only give the ArgoCD service user "edit" rights on the namespaces
- **4-argocd-projects** - Creates the ArgoCD Project and Applications
- **5-example-data** - Contains the demo files that the above projects will sync to.
