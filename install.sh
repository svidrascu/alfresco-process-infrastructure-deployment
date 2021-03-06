#!/usr/bin/env bash

CHART_NAME="helm/alfresco-process-infrastructure"

helm repo add alfresco https://kubernetes-charts.alfresco.com/stable
helm repo add alfresco-incubator https://kubernetes-charts.alfresco.com/incubator
helm repo add activiti https://activiti.github.io/activiti-cloud-helm-charts
helm dependency update ${CHART_NAME}

if [[ -z "${RELEASE_NAME}" ]]
then
  helm install ${HELM_OPTS} ${CHART_NAME}
else
  echo helm upgrade --install --reuse-values ${HELM_OPTS} ${RELEASE_NAME} ${CHART_NAME}
fi
