alfresco-process-infrastructure
===============================
A Helm chart for Alfresco Activiti Enterprise infrastructure

Current chart version is `7.1.0-M6`

Source code can be found [here](https://github.com/Alfresco/alfresco-process-infrastructure)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://activiti.github.io/activiti-cloud-helm-charts | common | 1.1.28 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-adf-app | 2.1.3 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-adf-app | 2.1.3 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-adf-app | 2.1.3 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-content-services | 3.0.4 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-identity-service | 1.1.1 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-process-springboot-service | 2.1.0 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-process-springboot-service | 2.1.0 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-process-springboot-service | 2.1.0 |
| https://kubernetes-charts.alfresco.com/stable | alfresco-process-springboot-service | 2.1.0 |
| https://kubernetes-charts.storage.googleapis.com | nfs-server-provisioner | 0.4.0 |
| https://kubernetes-charts.storage.googleapis.com | postgresql | 0.11.0 |
| https://kubernetes-charts.storage.googleapis.com | postgresql | 0.11.0 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| alfresco-admin-app.env.APP_CONFIG_AUTH_TYPE | string | `"OAUTH"` |  |
| alfresco-admin-app.env.APP_CONFIG_BPM_HOST | string | `"{{ include \"common.gateway-url\" . }}"` |  |
| alfresco-admin-app.env.APP_CONFIG_IDENTITY_HOST | string | `"{{ include \"common.keycloak-url\" . }}/admin/realms/{{ include \"common.keycloak-realm\" . }}"` |  |
| alfresco-admin-app.image.internalPort | int | `8080` |  |
| alfresco-admin-app.image.pullPolicy | string | `"IfNotPresent"` |  |
| alfresco-admin-app.image.repository | string | `"quay.io/alfresco/alfresco-admin-app"` |  |
| alfresco-admin-app.image.tag | string | `"7.1.0.M6"` |  |
| alfresco-admin-app.ingress.hostName | string | `nil` |  |
| alfresco-admin-app.ingress.path | string | `"/admin"` |  |
| alfresco-admin-app.nameOverride | string | `"alfresco-admin-app"` |  |
| alfresco-content-services.alfresco-digital-workspace.enabled | bool | `false` |  |
| alfresco-content-services.alfresco-digital-workspace.env.APP_CONFIG_AUTH_TYPE | string | `"OAUTH"` |  |
| alfresco-content-services.alfresco-digital-workspace.env.APP_CONFIG_ECM_HOST | string | `"{{ include \"alfresco-process-infrastructure.acs-url\" . }}"` |  |
| alfresco-content-services.alfresco-digital-workspace.env.APP_CONFIG_IDENTITY_HOST | string | `"{{ include \"common.keycloak-url\" . }}/admin/realms/{{ include \"common.keycloak-realm\" . }}"` |  |
| alfresco-content-services.alfresco-digital-workspace.env.BASEPATH | string | `"{{ .Values.ingress.path }}/"` |  |
| alfresco-content-services.alfresco-digital-workspace.image.internalPort | int | `8080` |  |
| alfresco-content-services.alfresco-digital-workspace.image.pullPolicy | string | `"IfNotPresent"` |  |
| alfresco-content-services.alfresco-digital-workspace.image.repository | string | `"quay.io/alfresco/alfresco-digital-workspace"` |  |
| alfresco-content-services.alfresco-digital-workspace.image.tag | string | `"1.3.0"` |  |
| alfresco-content-services.alfresco-digital-workspace.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"500m"` |  |
| alfresco-content-services.alfresco-digital-workspace.ingress.hostName | string | `"{{ include \"alfresco-process-infrastructure.acs-host\" . }}"` |  |
| alfresco-content-services.alfresco-digital-workspace.ingress.path | string | `"/workspace"` |  |
| alfresco-content-services.alfresco-digital-workspace.nameOverride | string | `"alfresco-digital-workspace"` |  |
| alfresco-content-services.alfresco-infrastructure.activemq.adminUser.password | string | `"admin"` |  |
| alfresco-content-services.alfresco-infrastructure.activemq.adminUser.username | string | `"admin"` |  |
| alfresco-content-services.alfresco-infrastructure.activemq.enabled | bool | `true` |  |
| alfresco-content-services.alfresco-infrastructure.enabled | bool | `false` |  |
| alfresco-content-services.alfresco-sync-service.enabled | bool | `false` |  |
| alfresco-content-services.enabled | bool | `false` |  |
| alfresco-content-services.externalHost | string | `"{{ template \"alfresco-process-infrastructure.acs-host\" . }}"` |  |
| alfresco-content-services.externalPort | string | `"{{ if eq \"true\" (toString .Values.global.gateway.http) }}80{{ else }}443{{ end }}"` |  |
| alfresco-content-services.externalProtocol | string | `"{{ template \"common.gateway-proto\" . }}"` |  |
| alfresco-content-services.imagemagick.replicaCount | int | `1` |  |
| alfresco-content-services.libreoffice.replicaCount | int | `1` |  |
| alfresco-content-services.networkpolicysetting.enabled | bool | `false` |  |
| alfresco-content-services.pdfrenderer.replicaCount | int | `1` |  |
| alfresco-content-services.postgresql.imageTag | string | `"11.3"` |  |
| alfresco-content-services.postgresql.persistence.existingClaim | string | `nil` |  |
| alfresco-content-services.registryPullSecrets | string | `"quay-registry-secret"` |  |
| alfresco-content-services.repository.environment.IDENTITY_SERVICE_REALM | string | `"alfresco"` |  |
| alfresco-content-services.repository.environment.IDENTITY_SERVICE_RESOURCE | string | `"activiti"` |  |
| alfresco-content-services.repository.environment.IDENTITY_SERVICE_URI | string | `"{{ template \"alfresco-process-infrastructure.keycloak-url\" . }}"` |  |
| alfresco-content-services.repository.environment.JAVA_OPTS | string | `" -Dsolr.base.url=/solr -Dsolr.secureComms=none -Dindex.subsystem.name=solr6 -Dalfresco.cluster.enabled=true -Ddeployment.method=HELM_CHART -Xms1800M -Xmx1800M -Dauthentication.chain=identity-service1:identity-service,alfrescoNtlm1:alfrescoNtlm -Didentity-service.enable-basic-auth=true -Didentity-service.authentication.validation.failure.silent=false -Didentity-service.auth-server-url=\"$IDENTITY_SERVICE_URI\" -Didentity-service.realm=\"$IDENTITY_SERVICE_REALM\" -Didentity-service.resource=\"$IDENTITY_SERVICE_RESOURCE\" -Dlocal.transform.service.enabled=false -Dtransform.service.enabled=false "` |  |
| alfresco-content-services.repository.ingress.hostName | string | `"{{ template \"alfresco-process-infrastructure.acs-host\" . }}"` |  |
| alfresco-content-services.repository.ingress.maxUploadSize | string | `"500m"` |  |
| alfresco-content-services.repository.ingress.path | string | `"/alfresco"` |  |
| alfresco-content-services.repository.readinessProbe.initialDelaySeconds | int | `140` |  |
| alfresco-content-services.repository.replicaCount | int | `1` |  |
| alfresco-content-services.share.ingress.hostName | string | `"{{ template \"alfresco-process-infrastructure.acs-host\" . }}"` |  |
| alfresco-content-services.share.replicaCount | int | `1` |  |
| alfresco-content-services.tika.replicaCount | int | `1` |  |
| alfresco-content-services.transformmisc.replicaCount | int | `1` |  |
| alfresco-content-services.transformrouter.replicaCount | int | `1` |  |
| alfresco-deployment-service.alfresco-content-services.enabled | bool | `false` |  |
| alfresco-deployment-service.connectorVolume.permission | string | `""` |  |
| alfresco-deployment-service.connectorVolume.storageClass | string | `""` |  |
| alfresco-deployment-service.dind.image.repository | string | `"docker"` |  |
| alfresco-deployment-service.dind.image.tag | string | `"18.06.1-dind"` |  |
| alfresco-deployment-service.dockerRegistry.password | string | `""` |  |
| alfresco-deployment-service.dockerRegistry.secretName | string | `"aps2-registry-secret"` |  |
| alfresco-deployment-service.dockerRegistry.server | string | `""` |  |
| alfresco-deployment-service.dockerRegistry.userName | string | `""` |  |
| alfresco-deployment-service.enabled | bool | `true` |  |
| alfresco-deployment-service.environment.apiToken | string | `""` |  |
| alfresco-deployment-service.environment.apiUrl | string | `""` |  |
| alfresco-deployment-service.extraContainers | string | `"- name: dind\n  image: \"{{ .Values.dind.image.repository }}:{{ .Values.dind.image.tag }}\"\n  imagePullPolicy: IfNotPresent\n  securityContext:\n    privileged: true\n  tty: true\n  env:\n  - name: DOCKER_HOST\n    value: tcp://localhost:2375\n  resources:\n    requests:\n      cpu: 1\n      memory: 1024Mi\n    limits:\n      cpu: 2\n      memory: 2048Mi\n  volumeMounts:\n  - mountPath: /var/lib/docker\n    name: docker-daemon\n"` |  |
| alfresco-deployment-service.extraEnv | string | `"- name: DOCKER_HOST\n  value: tcp://localhost:2375\n- name: SERVER_PORT\n  value: \"8080\"\n- name: SERVER_SERVLET_CONTEXTPATH\n  value: \"{{ .Values.ingress.path }}\"\n- name: SERVER_USEFORWARDHEADERS\n  value: \"true\"\n- name: SERVER_TOMCAT_INTERNALPROXIES\n  value: \".*\"\n- name: MANAGEMENT_ENDPOINTS_WEB_EXPOSURE_INCLUDE\n  value: \"*\"\n- name: KEYCLOAK_AUTH_SERVER_URL\n  value: '{{ include \"common.keycloak-url\" . }}'\n- name: DOCKER_REGISTRY_SERVER\n  value: \"{{ .Values.dockerRegistry.server }}\"\n- name: DOCKER_REGISTRY_USERNAME\n  value: \"{{ .Values.dockerRegistry.userName }}\"\n- name: DOCKER_REGISTRY_PASSWORD\n  value: '{{ .Values.dockerRegistry.password }}'\n- name: DOCKER_REGISTRY_SECRET_NAME\n  value: \"{{ .Values.dockerRegistry.secretName }}\"\n- name: DOCKER_REGISTRY_IMAGE_TAG\n  value: \"develop\"\n- name: CONTENT_SERVICE_BASE_URL\n  value: '{{ template \"alfresco-process-infrastructure.acs-url\" . }}'\n- name: CONTENT_SERVICE_ENABLED\n  value: '{{ index .Values \"alfresco-content-services\" \"enabled\" }}'\n- name: MODELING_URL\n  value: '{{ include \"common.gateway-url\" . }}/modeling-service'\n- name: ENVIRONMENT_HOST_URL\n  value: '{{ include \"common.gateway-url\" . }}'\n- name: ENVIRONMENT_API_URL\n  value: \"{{ .Values.environment.apiUrl }}\"\n- name: ENVIRONMENT_API_TOKEN\n  value: \"{{ .Values.environment.apiToken }}\"\n- name: CONNECTOR_VOLUME_STORAGE_CLASS\n  value: \"{{ .Values.connectorVolume.storageClass }}\"\n- name: CONNECTOR_VOLUME_PERMISSION\n  value: \"{{ .Values.connectorVolume.permission }}\"\n"` |  |
| alfresco-deployment-service.extraInit.image.repository | string | `"bitnami/minideb-extras"` |  |
| alfresco-deployment-service.extraInit.image.tag | string | `"stretch"` |  |
| alfresco-deployment-service.extraInitContainers | string | `"{{- if index .Values \"alfresco-content-services\" \"enabled\" -}}\n- name: wait-for-acs\n  image: \"{{ .Values.init.image.repository }}:{{ .Values.init.image.tag }}\"\n  imagePullPolicy: IfNotPresent\n  command:\n    - sh\n    - -c\n    - |\n      until printf \".\" \u0026\u0026 nc -z -w 2 {{ .Release.Name }}-alfresco-cs-repository 80; do\n          sleep 2;\n      done;\n\n      echo 'ACS OK ✓'\n- name: init-acs\n  image: \"{{ .Values.extraInit.image.repository }}:{{ .Values.extraInit.image.tag }}\"\n  command: [\"/bin/bash\"]\n  args:\n    - -c\n    - /tmp/init/setup_acs.sh\n  env:\n    - name: \"GATEWAY_URL\"\n      value: {{ template \"alfresco-process-infrastructure.acs-url\" . }}\n  volumeMounts:\n    - name: config\n      mountPath: /tmp/init\n{{- end -}}\n"` |  |
| alfresco-deployment-service.extraVolumeMounts | string | `"- name: license\n  mountPath: \"/root/.activiti/enterprise-license/\"\n  readOnly: true\n"` |  |
| alfresco-deployment-service.extraVolumes | string | `"- name: config\n  configMap:\n    name: {{ .Release.Name }}-deployment-config\n    defaultMode: 0744\n- name: docker-daemon\n  emptyDir: {}\n- name: license\n  secret:\n    secretName: licenseaps\n"` |  |
| alfresco-deployment-service.image.pullPolicy | string | `"Always"` |  |
| alfresco-deployment-service.image.repository | string | `"quay.io/alfresco/alfresco-deployment-service"` |  |
| alfresco-deployment-service.image.tag | string | `"develop"` |  |
| alfresco-deployment-service.ingress.enabled | bool | `true` |  |
| alfresco-deployment-service.ingress.path | string | `"/deployment-service"` |  |
| alfresco-deployment-service.postgres.enabled | bool | `true` |  |
| alfresco-deployment-service.postgres.name | string | `"postgresql-ads"` |  |
| alfresco-deployment-service.postgres.password | string | `"alfresco"` |  |
| alfresco-deployment-service.postgres.username | string | `"alfresco"` |  |
| alfresco-deployment-service.probePath | string | `"{{ .Values.ingress.path }}/actuator/health"` |  |
| alfresco-deployment-service.rabbitmq.enabled | bool | `false` |  |
| alfresco-deployment-service.rbac.create | bool | `false` |  |
| alfresco-deployment-service.serviceAccount.create | bool | `false` |  |
| alfresco-digital-workspace.enabled | bool | `false` |  |
| alfresco-digital-workspace.env.APP_CONFIG_AUTH_TYPE | string | `"OAUTH"` |  |
| alfresco-digital-workspace.env.APP_CONFIG_ECM_HOST | string | `"{{ include \"alfresco-process-infrastructure.acs-url\" . }}"` |  |
| alfresco-digital-workspace.env.APP_CONFIG_IDENTITY_HOST | string | `"{{ include \"common.keycloak-url\" . }}/admin/realms/{{ include \"common.keycloak-realm\" . }}"` |  |
| alfresco-digital-workspace.env.BASEPATH | string | `"{{ .Values.ingress.path }}/"` |  |
| alfresco-digital-workspace.image.internalPort | int | `8080` |  |
| alfresco-digital-workspace.image.pullPolicy | string | `"IfNotPresent"` |  |
| alfresco-digital-workspace.image.repository | string | `"quay.io/alfresco/alfresco-digital-workspace"` |  |
| alfresco-digital-workspace.image.tag | string | `"1.3.0"` |  |
| alfresco-digital-workspace.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"500m"` |  |
| alfresco-digital-workspace.ingress.hostName | string | `"{{ include \"alfresco-process-infrastructure.acs-host\" . }}"` |  |
| alfresco-digital-workspace.ingress.path | string | `"/workspace"` |  |
| alfresco-digital-workspace.nameOverride | string | `"alfresco-digital-workspace"` |  |
| alfresco-dmn-simulation-service.extraEnv | string | `"- name: SERVER_PORT\n  value: \"8080\"\n- name: SERVER_SERVLET_CONTEXTPATH\n  value: \"{{ .Values.ingress.path }}\"\n- name: SERVER_USEFORWARDHEADERS\n  value: \"true\"\n- name: SERVER_TOMCAT_INTERNALPROXIES\n  value: \".*\"\n- name: MANAGEMENT_ENDPOINTS_WEB_EXPOSURE_INCLUDE\n  value: \"*\"\n"` |  |
| alfresco-dmn-simulation-service.extraVolumeMounts | string | `"- name: license\n  mountPath: \"/root/.activiti/enterprise-license/\"\n  readOnly: true\n"` |  |
| alfresco-dmn-simulation-service.extraVolumes | string | `"- name: license\n  secret:\n    secretName: licenseaps\n"` |  |
| alfresco-dmn-simulation-service.image.pullPolicy | string | `"IfNotPresent"` |  |
| alfresco-dmn-simulation-service.image.repository | string | `"quay.io/alfresco/alfresco-dmn-simulation-service"` |  |
| alfresco-dmn-simulation-service.image.tag | string | `"develop"` |  |
| alfresco-dmn-simulation-service.ingress.enabled | bool | `true` |  |
| alfresco-dmn-simulation-service.ingress.path | string | `"/dmn-service"` |  |
| alfresco-dmn-simulation-service.nameOverride | string | `"alfresco-dmn-simulation-service"` |  |
| alfresco-dmn-simulation-service.probePath | string | `"{{ .Values.ingress.path }}/actuator/health"` |  |
| alfresco-dmn-simulation-service.rbac.create | bool | `false` |  |
| alfresco-dmn-simulation-service.serviceAccount.create | bool | `false` |  |
| alfresco-identity-service.ingress.annotations."nginx.ingress.kubernetes.io/enable-cors" | string | `"false"` |  |
| alfresco-identity-service.ingress.enabled | bool | `true` |  |
| alfresco-infrastructure.activemq.enabled | bool | `false` |  |
| alfresco-infrastructure.alfresco-event-gateway.enabled | bool | `false` |  |
| alfresco-infrastructure.alfresco-identity-service.enabled | bool | `true` |  |
| alfresco-infrastructure.alfresco-identity-service.ingress.enabled | bool | `false` |  |
| alfresco-infrastructure.alfresco-identity-service.keycloak.keycloak.extraArgs | string | `"-Dkeycloak.import=/realm/alfresco-aps-realm.json"` |  |
| alfresco-infrastructure.alfresco-identity-service.keycloak.keycloak.extraEnv | string | `"- name: PROXY_ADDRESS_FORWARDING\n  value: \"true\"\n"` |  |
| alfresco-infrastructure.alfresco-identity-service.keycloak.keycloak.service.port | int | `80` |  |
| alfresco-infrastructure.alfresco-identity-service.keycloak.postgresql.imageTag | string | `"11.3"` |  |
| alfresco-infrastructure.alfresco-identity-service.keycloak.postgresql.persistence.existingClaim | string | `nil` |  |
| alfresco-infrastructure.alfresco-identity-service.realm.alfresco.client.redirectUris[0] | string | `"*"` |  |
| alfresco-infrastructure.alfresco-identity-service.realm.alfresco.client.webOrigins[0] | string | `"*"` |  |
| alfresco-infrastructure.enabled | bool | `true` |  |
| alfresco-infrastructure.nginx-ingress.controller.scope.enabled | bool | `false` |  |
| alfresco-infrastructure.nginx-ingress.enabled | bool | `false` |  |
| alfresco-infrastructure.persistence.enabled | bool | `false` |  |
| alfresco-modeling-app.env.APP_CONFIG_AUTH_TYPE | string | `"OAUTH"` |  |
| alfresco-modeling-app.env.APP_CONFIG_BPM_HOST | string | `"{{ include \"common.gateway-url\" . }}"` |  |
| alfresco-modeling-app.env.APP_CONFIG_ECM_HOST | string | `"{{ include \"common.gateway-url\" . }}"` |  |
| alfresco-modeling-app.env.APP_CONFIG_IDENTITY_HOST | string | `"{{ include \"common.keycloak-url\" . }}/admin/realms/{{ include \"common.keycloak-realm\" . }}"` |  |
| alfresco-modeling-app.env.APP_CONFIG_OAUTH2_SILENT_LOGIN | string | `"true"` |  |
| alfresco-modeling-app.image.pullPolicy | string | `"IfNotPresent"` |  |
| alfresco-modeling-app.image.repository | string | `"quay.io/alfresco/alfresco-modeling-app"` |  |
| alfresco-modeling-app.image.tag | string | `"7.1.0.M6"` |  |
| alfresco-modeling-app.ingress.path | string | `"/modeling"` |  |
| alfresco-modeling-app.nameOverride | string | `"alfresco-modeling-app"` |  |
| alfresco-modeling-service.extraEnv | string | `"- name: SERVER_PORT\n  value: \"8080\"\n- name: SERVER_SERVLET_CONTEXTPATH\n  value: \"{{ .Values.ingress.path }}\"\n- name: SERVER_USEFORWARDHEADERS\n  value: \"true\"\n- name: SERVER_TOMCAT_INTERNALPROXIES\n  value: \".*\"\n- name: MANAGEMENT_ENDPOINTS_WEB_EXPOSURE_INCLUDE\n  value: \"*\"\n"` |  |
| alfresco-modeling-service.extraVolumeMounts | string | `"- name: license\n  mountPath: \"/root/.activiti/enterprise-license/\"\n  readOnly: true\n"` |  |
| alfresco-modeling-service.extraVolumes | string | `"- name: license\n  secret:\n    secretName: licenseaps\n"` |  |
| alfresco-modeling-service.image.pullPolicy | string | `"Always"` |  |
| alfresco-modeling-service.image.repository | string | `"quay.io/alfresco/alfresco-modeling-service"` |  |
| alfresco-modeling-service.image.tag | string | `"develop"` |  |
| alfresco-modeling-service.ingress.enabled | bool | `true` |  |
| alfresco-modeling-service.ingress.path | string | `"/modeling-service"` |  |
| alfresco-modeling-service.nameOverride | string | `"alfresco-modeling-service"` |  |
| alfresco-modeling-service.postgres.enabled | bool | `true` |  |
| alfresco-modeling-service.postgres.name | string | `"postgresql-ams"` |  |
| alfresco-modeling-service.postgres.password | string | `"alfresco"` |  |
| alfresco-modeling-service.postgres.username | string | `"alfresco"` |  |
| alfresco-modeling-service.probePath | string | `"{{ .Values.ingress.path }}/actuator/health"` |  |
| alfresco-modeling-service.rbac.create | bool | `false` |  |
| alfresco-modeling-service.serviceAccount.create | bool | `false` |  |
| alfresco-script-model-runtime.content.client.id | string | `""` |  |
| alfresco-script-model-runtime.content.client.secret | string | `""` |  |
| alfresco-script-model-runtime.content.service.path | string | `"alfresco"` |  |
| alfresco-script-model-runtime.extraEnv | string | `"- name: SERVER_PORT\n  value: \"8080\"\n- name: SERVER_SERVLET_CONTEXTPATH\n  value: \"{{ .Values.ingress.path }}\"\n- name: SERVER_USEFORWARDHEADERS\n  value: \"true\"\n- name: SERVER_TOMCAT_INTERNALPROXIES\n  value: \".*\"\n- name: MANAGEMENT_ENDPOINTS_WEB_EXPOSURE_INCLUDE\n  value: \"*\"\n- name: ACT_KEYCLOAK_URL\n  value: '{{ include \"common.keycloak-url\" . }}'\n- name: CONTENT_CLIENT_ID\n  value: \"{{ .Values.content.client.id }}\"\n- name: CONTENT_CLIENT_SECRET\n  value: \"{{ .Values.content.client.secret }}\"\n- name: CONTENT_SERVICE_URL\n  value: '{{ template \"alfresco-process-infrastructure.acs-url\" . }}'\n- name: CONTENT_SERVICE_PATH\n  value: \"{{ .Values.content.service.path }}\"\n"` |  |
| alfresco-script-model-runtime.extraVolumeMounts | string | `"- name: license\n  mountPath: \"/root/.activiti/enterprise-license/\"\n  readOnly: true\n"` |  |
| alfresco-script-model-runtime.extraVolumes | string | `"- name: license\n  secret:\n    secretName: licenseaps\n"` |  |
| alfresco-script-model-runtime.image.pullPolicy | string | `"IfNotPresent"` |  |
| alfresco-script-model-runtime.image.repository | string | `"quay.io/alfresco/alfresco-script-model-runtime"` |  |
| alfresco-script-model-runtime.image.tag | string | `"develop"` |  |
| alfresco-script-model-runtime.ingress.enabled | bool | `true` |  |
| alfresco-script-model-runtime.ingress.path | string | `"/script-service"` |  |
| alfresco-script-model-runtime.nameOverride | string | `"alfresco-script-model-runtime"` |  |
| alfresco-script-model-runtime.probePath | string | `"{{ .Values.ingress.path }}/actuator/health"` |  |
| alfresco-script-model-runtime.rbac.create | bool | `false` |  |
| alfresco-script-model-runtime.serviceAccount.create | bool | `false` |  |
| alfresco-sync-service.enabled | bool | `false` |  |
| global.acs.host | string | `"{{ template \"common.gateway-host\" . }}"` |  |
| global.gateway.annotations | object | `{}` |  |
| global.gateway.domain | string | `"REPLACEME"` |  |
| global.gateway.host | string | `"gateway.{{ template \"common.gateway-domain\" . }}"` |  |
| global.gateway.http | string | `"false"` |  |
| global.gateway.tlsacme | string | `"false"` |  |
| global.keycloak.client | string | `"activiti"` |  |
| global.keycloak.host | string | `"identity.{{ template \"common.gateway-domain\" . }}"` |  |
| global.keycloak.realm | string | `"alfresco"` |  |
| global.keycloak.resource | string | `"activiti"` |  |
| global.keycloak.url | string | `""` |  |
| global.registryPullSecrets[0] | string | `"quay-registry-secret"` |  |
| nfs-server-provisioner.enabled | bool | `false` |  |
| nfs-server-provisioner.persistence.enabled | bool | `true` |  |
| nfs-server-provisioner.persistence.size | string | `"200Gi"` |  |
| nfs-server-provisioner.persistence.storageClass | string | `nil` |  |
| nfs-server-provisioner.storageClass.defaultClass | bool | `false` |  |
| persistence.baseSize | string | `"100Gi"` |  |
| persistence.name | string | `"{{ index .Values \"alfresco-content-services\" \"persistence\" \"existingClaim\" }}"` |  |
| persistence.storageClass.accessModes[0] | string | `"ReadWriteMany"` |  |
| persistence.storageClass.name | string | `"{{ index .Values \"nfs-server-provisioner\" \"storageClass\" \"name\" }}"` |  |
| postgresql-ads.imageTag | string | `"11.3"` |  |
| postgresql-ads.postgresConfig.log_min_messages | string | `"LOG"` |  |
| postgresql-ads.postgresConfig.max_connections | int | `300` |  |
| postgresql-ads.postgresPassword | string | `"alfresco"` |  |
| postgresql-ads.postgresUser | string | `"alfresco"` |  |
| postgresql-ads.resources.limits.memory | string | `"1500Mi"` |  |
| postgresql-ads.resources.requests.memory | string | `"1500Mi"` |  |
| postgresql-ams.imageTag | string | `"11.3"` |  |
| postgresql-ams.postgresConfig.log_min_messages | string | `"LOG"` |  |
| postgresql-ams.postgresConfig.max_connections | int | `300` |  |
| postgresql-ams.postgresPassword | string | `"alfresco"` |  |
| postgresql-ams.postgresUser | string | `"alfresco"` |  |
| postgresql-ams.resources.limits.memory | string | `"1500Mi"` |  |
| postgresql-ams.resources.requests.memory | string | `"1500Mi"` |  |