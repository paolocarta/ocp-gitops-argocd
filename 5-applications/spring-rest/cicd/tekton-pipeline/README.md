# springboot-tekton

## Pipeline config values

The helm values.yaml must be provided by the application using this pipeline.

## Setup projects and rolebindings
```
$ oc create -f ocp-projects/projects.yml
```

## Install the pipelines using helm

```
$ helm upgrade --install tekton-helm-pipeline . -n basic-spring-boot-cicd
```

## Run the pipeline

```
$ oc create -f pipelinerun.yaml -n basic-spring-boot-cicd
```

## Support
Add PVC for [maven caching](https://developers.redhat.com/blog/2020/02/26/speed-up-maven-builds-in-tekton-pipelines/)

## Known issues
[Add workspace when starting a pipeline #651](https://github.com/tektoncd/cli/issues/651)


## Cleanup
```
$ oc delete project basic-spring-boot-cicd basic-spring-boot-dev basic-spring-boot-prod basic-spring-boot-stage
```

## References
https://github.com/redhat-cop/container-pipelines/tree/master/basic-spring-boot-tekton

https://developers.redhat.com/blog/2020/02/26/speed-up-maven-builds-in-tekton-pipelines/

https://github.com/tektoncd/catalog

https://docs.google.com/presentation/d/1nIrbVlVbk-cxWR7njrqkSahqK_wXKNnEGPXP2eKRrVk/edit#slide=id.g432884ce64_4_1420

