#!/bin/sh

## API -
# Verb - get, delete, watch,
# short cuts - namespace = ns

# Get all the resources
# Method and resources like REST API
function go_k8_list_all() {
  kubectl get all
}

function go_g8_list_chain_all() {
  # chaining
  kubectl get pods,rs,deployments
}

function go_k8_list_pods() {
  kubectl get pods
}

function go_k8_list_services() {
  kubectl get services
}

function go_k8_list_deployments() {
  kubectl get deployments
}

function go_k8_list_by_deployment_name() {
  deployment_name=${1}
  kubectl get deployment ${deployment_name}
}

## Delete /
function go_k8_delete_by_namespace() {
  namespace=${1}
  kubectl delete ns ${namespace}
  echo "Listing namespaces after deleting ns=${namespace}"
  kubectl get ns
}

function go_k8_delete_all_pods_by_namespace() {
  namespace=${1}
  kubectl delete pods --all --namespace ${namespace}
  echo "Listing pods after deleting pods from namespace=${namespace}"
  kubectl get pods
}

function go_k8_delete_pod_by_name() {
  pod_name=${1}
  kubectl delete pod ${pod_name} --grace-period=0 --froce
  echo "Listing pods after deleting pod=${pod_name}"
  kubectl get pods
}

## Debugging /
function go_k8_watch_all_pods() {
 kubectl get pods --watch
 #watch kubectl get pods
}

function go_k8_login_to_pod() {
  pod_name=${1}
  kubectl exec -it ${pod_name} -- bash
}

# TODO : add autcomplete kubectl
# Edit /
# To debug which container is running either from UI
function go_k8_edit_deploy() {
  deployment=${1}
  name_space=${2}
  # TODO
  kubectl edit ${deployment} -n=${name_space}
}

## Explain/
function go_k8_explain() {
  # Explain the resource
  kubectl explain svc
  kubectl explain deployment
  kubectl explain deployment --recursive

  # chaining
  kubectl explain deployment.spec.strategy

  kubectl explain job  --recursive
}

## TODO /
function go_k8_update_deplyment() {

kubectl edit deploy sise

kubectl rollout history deployment sise

# TODO
# Copy file to/from container
kubectl cp <pod-name>:/path/to/remote/file /path/to/local/file

# kubectl run sise --image=mhausenblas/simpleservice:0.4.0
#deployment "sise" created
#
#$ kubectl set image deployment sise mhausenblas/simpleservice:0.5.0
#deployment "sise" image updated
#
#$ kubectl rollout status deployment sise
#deployment "sise" successfully rolled out
#
#$ kubectl rollout history deployment sise
#deployments "sise"
#REVISION        CHANGE-CAUSE
#1               <none>
#2               <none>

}

# Short cuts for all K8 resources
#configmaps (aka cm)
#daemonsets (aka ds)
#deployments (aka deploy)
#endpoints (aka ep)
#events (aka ev)
#horizontalpodautoscalers (aka hpa)
#ingresses (aka ing)
#namespaces (aka ns)
#nodes (aka no)
#persistentvolumeclaims (aka pvc)
#persistentvolumes (aka pv)
#pods (aka po)
#replicasets (aka rs)
#replicationcontrollers (aka rc)
#resourcequotas (aka quota)
#serviceaccounts (aka sa)
#services (aka svc)
