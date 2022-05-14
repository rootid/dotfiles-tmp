#!/bin/sh

# Create cluster

function _go_gke_cluster_create_list_delete() {
  gcloud container clusters create bbtool
  gcloud container clusters delete bbtool
  gcloud container clusters list
}
