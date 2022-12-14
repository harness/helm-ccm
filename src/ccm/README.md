## Harness CCM Chart

A Helm chart for Harness Cloud Cost Management (CCM) module

![Version: 0.3.6](https://img.shields.io/badge/Version-0.3.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.546.0](https://img.shields.io/badge/AppVersion-1.546.0-informational?style=flat-square)

## Usage

Use the following dependency to add this chart repository to your Helm installation:

```
dependencies:
    - name: ccm
      repository: https://harness.github.io/helm-ccm
      version: 0.3.6
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| anomaly-detection.affinity | object | `{}` |  |
| anomaly-detection.autoscaling.enabled | bool | `false` |  |
| anomaly-detection.autoscaling.maxReplicas | int | `4` |  |
| anomaly-detection.autoscaling.minReplicas | int | `2` |  |
| anomaly-detection.autoscaling.targetCPUUtilizationPercentage | int | `70` |  |
| anomaly-detection.fullnameOverride | string | `""` |  |
| anomaly-detection.image.digest | string | `""` |  |
| anomaly-detection.image.pullPolicy | string | `"IfNotPresent"` |  |
| anomaly-detection.image.registry | string | `"docker.io"` |  |
| anomaly-detection.image.repository | string | `"harness/ce-anomaly-detection-signed"` |  |
| anomaly-detection.image.tag | string | `"12"` |  |
| anomaly-detection.ingress.className | string | `"nginx"` |  |
| anomaly-detection.java.memory | string | `"4096m"` |  |
| anomaly-detection.java.memoryLimit | string | `"4096m"` |  |
| anomaly-detection.maxSurge | string | `"100%"` |  |
| anomaly-detection.maxUnavailable | int | `0` |  |
| anomaly-detection.nameOverride | string | `""` |  |
| anomaly-detection.nodeSelector | object | `{}` |  |
| anomaly-detection.podAnnotations | object | `{}` |  |
| anomaly-detection.podSecurityContext | object | `{}` |  |
| anomaly-detection.replicaCount | int | `2` |  |
| anomaly-detection.resources.limits.cpu | string | `"1024m"` |  |
| anomaly-detection.resources.limits.memory | string | `"2048Mi"` |  |
| anomaly-detection.resources.requests.cpu | string | `"1024m"` |  |
| anomaly-detection.resources.requests.memory | string | `"2048Mi"` |  |
| anomaly-detection.securityContext | object | `{}` |  |
| anomaly-detection.service.port | int | `8081` |  |
| anomaly-detection.service.type | string | `"ClusterIP"` |  |
| anomaly-detection.serviceAccount.annotations | object | `{}` |  |
| anomaly-detection.serviceAccount.create | bool | `false` |  |
| anomaly-detection.serviceAccount.name | string | `"harness-default"` |  |
| anomaly-detection.tolerations | list | `[]` |  |
| batch-processing.GCP_PROJECT_ID | string | `"placeHolder"` |  |
| batch-processing.affinity | object | `{}` |  |
| batch-processing.autoscaling.enabled | bool | `false` |  |
| batch-processing.autoscaling.maxReplicas | int | `2` |  |
| batch-processing.autoscaling.minReplicas | int | `1` |  |
| batch-processing.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| batch-processing.awsSecret.S3_SYNC_CONFIG_ACCESSKEY | string | `""` |  |
| batch-processing.awsSecret.S3_SYNC_CONFIG_SECRETKEY | string | `""` |  |
| batch-processing.ceBatchGCPCredentials | string | `""` |  |
| batch-processing.ceGCPHomeProjectCreds | string | `""` |  |
| batch-processing.fullnameOverride | string | `""` |  |
| batch-processing.image.digest | string | `""` |  |
| batch-processing.image.pullPolicy | string | `"Always"` |  |
| batch-processing.image.registry | string | `"docker.io"` |  |
| batch-processing.image.repository | string | `"harness/batch-processing-signed"` |  |
| batch-processing.image.tag | string | `"77500"` |  |
| batch-processing.isolatedReplica | int | `2` |  |
| batch-processing.java.memory | string | `"7168"` |  |
| batch-processing.mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| batch-processing.mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| batch-processing.mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| batch-processing.mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| batch-processing.nameOverride | string | `""` |  |
| batch-processing.nodeSelector | object | `{}` |  |
| batch-processing.podAnnotations | object | `{}` |  |
| batch-processing.podSecurityContext | object | `{}` |  |
| batch-processing.replicaCount | int | `2` |  |
| batch-processing.resources.limits.cpu | int | `1` |  |
| batch-processing.resources.limits.memory | string | `"8192Mi"` |  |
| batch-processing.resources.requests.cpu | int | `1` |  |
| batch-processing.resources.requests.memory | string | `"8192Mi"` |  |
| batch-processing.securityContext | object | `{}` |  |
| batch-processing.service.port | int | `6340` |  |
| batch-processing.service.type | string | `"ClusterIP"` |  |
| batch-processing.serviceAccount.annotations | object | `{}` |  |
| batch-processing.serviceAccount.create | bool | `false` |  |
| batch-processing.serviceAccount.name | string | `"harness-default"` |  |
| batch-processing.smtp.host | string | `""` |  |
| batch-processing.smtp.password | string | `""` |  |
| batch-processing.smtp.user | string | `""` |  |
| batch-processing.storageObjectAdmin | string | `""` |  |
| batch-processing.timescaleSecret.password.key | string | `"timescaledbPostgresPassword"` |  |
| batch-processing.timescaleSecret.password.name | string | `"harness-secrets"` |  |
| batch-processing.tolerations | list | `[]` |  |
| batch-processing.uiServerUrl | string | `"https://app.harness.io"` |  |
| batch-processing.waitForInitContainer.image.digest | string | `""` |  |
| batch-processing.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| batch-processing.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| batch-processing.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| batch-processing.waitForInitContainer.image.tag | string | `"latest"` |  |
| clickhouse.defaultConfigurationOverrides | string | `"<clickhouse>\n  <!-- Macros -->\n  <macros>\n    <shard from_env=\"CLICKHOUSE_SHARD_ID\"></shard>\n    <replica from_env=\"CLICKHOUSE_REPLICA_ID\"></replica>\n    <layer>{{ include \"common.names.fullname\" . }}</layer>\n  </macros>\n  <!-- Log Level -->\n  <logger>\n    <level>{{ .Values.logLevel }}</level>\n  </logger>\n  {{- if or (ne (int .Values.shards) 1) (ne (int .Values.replicaCount) 1)}}\n  <!-- Cluster configuration - Any update of the shards and replicas requires helm upgrade -->\n  <remote_servers>\n    <default>\n      {{- $shards := $.Values.shards | int }}\n      {{- range $shard, $e := until $shards }}\n      <shard>\n          <internal_replication>false</internal_replication>\n          {{- $replicas := $.Values.replicaCount | int }}\n          {{- range $i, $_e := until $replicas }}\n          <replica>\n              <host>{{ printf \"%s-shard%d-%d.%s.%s.svc.%s\" (include \"common.names.fullname\" $ ) $shard $i (include \"clickhouse.headlessServiceName\" $) (include \"common.names.namespace\" $) $.Values.clusterDomain }}</host>\n              <port>{{ $.Values.service.ports.tcp }}</port>\n          </replica>\n          {{- end }}\n      </shard>\n      {{- end }}\n    </default>\n  </remote_servers>\n  {{- end }}\n  {{- if .Values.keeper.enabled }}\n  <!-- keeper configuration -->\n  <keeper_server>\n    {{/*ClickHouse keeper configuration using the helm chart */}}\n    <tcp_port>{{ $.Values.containerPorts.keeper }}</tcp_port>\n    {{- if .Values.tls.enabled }}\n    <tcp_port_secure>{{ $.Values.containerPorts.keeperSecure }}</tcp_port_secure>\n    {{- end }}\n    <server_id from_env=\"KEEPER_SERVER_ID\"></server_id>\n    <log_storage_path>/bitnami/clickhouse/keeper/coordination/log</log_storage_path>\n    <snapshot_storage_path>/bitnami/clickhouse/keeper/coordination/snapshots</snapshot_storage_path>\n\n    <coordination_settings>\n        <operation_timeout_ms>10000</operation_timeout_ms>\n        <session_timeout_ms>30000</session_timeout_ms>\n        <raft_logs_level>trace</raft_logs_level>\n    </coordination_settings>\n\n    <raft_configuration>\n    {{- $nodes := .Values.replicaCount | int }}\n    {{- range $node, $e := until $nodes }}\n    <server>\n      <id>{{ $node | int }}</id>\n      <hostname from_env=\"{{ printf \"KEEPER_NODE_%d\" $node }}\"></hostname>\n      <port>{{ $.Values.service.ports.keeperInter }}</port>\n    </server>\n    {{- end }}\n    </raft_configuration>\n  </keeper_server>\n  {{- end }}\n  {{- if or .Values.keeper.enabled .Values.zookeeper.enabled .Values.externalZookeeper.servers }}\n  <!-- Zookeeper configuration -->\n  <zookeeper>\n    {{- if or .Values.keeper.enabled }}\n    {{- $nodes := .Values.replicaCount | int }}\n    {{- range $node, $e := until $nodes }}\n    <node>\n      <host from_env=\"{{ printf \"KEEPER_NODE_%d\" $node }}\"></host>\n      <port>{{ $.Values.service.ports.keeper }}</port>\n    </node>\n    {{- end }}\n    {{- else if .Values.zookeeper.enabled }}\n    {{/* Zookeeper configuration using the helm chart */}}\n    {{- $nodes := .Values.zookeeper.replicaCount | int }}\n    {{- range $node, $e := until $nodes }}\n    <node>\n      <host from_env=\"{{ printf \"KEEPER_NODE_%d\" $node }}\"></host>\n      <port>{{ $.Values.zookeeper.service.ports.client }}</port>\n    </node>\n    {{- end }}\n    {{- else if .Values.externalZookeeper.servers }}\n    {{/* Zookeeper configuration using an external instance */}}\n    {{- range $node :=.Values.externalZookeeper.servers }}\n    <node>\n      <host>{{ $node }}</host>\n      <port>{{ $.Values.externalZookeeper.port }}</port>\n    </node>\n    {{- end }}\n    {{- end }}\n  </zookeeper>\n  {{- end }}\n  {{- if .Values.tls.enabled }}\n  <!-- TLS configuration -->\n  <tcp_port_secure from_env=\"CLICKHOUSE_TCP_SECURE_PORT\"></tcp_port_secure>\n  <openSSL>\n      <server>\n          {{- $certFileName := default \"tls.crt\" .Values.tls.certFilename }}\n          {{- $keyFileName := default \"tls.key\" .Values.tls.certKeyFilename }}\n          <certificateFile>/bitnami/clickhouse/certs/{{$certFileName}}</certificateFile>\n          <privateKeyFile>/bitnami/clickhouse/certs/{{$keyFileName}}</privateKeyFile>\n          <verificationMode>none</verificationMode>\n          <cacheSessions>true</cacheSessions>\n          <disableProtocols>sslv2,sslv3</disableProtocols>\n          <preferServerCiphers>true</preferServerCiphers>\n          {{- if or .Values.tls.autoGenerated .Values.tls.certCAFilename }}\n          {{- $caFileName := default \"ca.crt\" .Values.tls.certFilename }}\n          <caConfig>/bitnami/clickhouse/certs/{{$caFileName}}</caConfig>\n          {{- else }}\n          <loadDefaultCAFile>true</loadDefaultCAFile>\n          {{- end }}\n      </server>\n      <client>\n          <loadDefaultCAFile>true</loadDefaultCAFile>\n          <cacheSessions>true</cacheSessions>\n          <disableProtocols>sslv2,sslv3</disableProtocols>\n          <preferServerCiphers>true</preferServerCiphers>\n          <verificationMode>none</verificationMode>\n          <invalidCertificateHandler>\n              <name>AcceptCertificateHandler</name>\n          </invalidCertificateHandler>\n      </client>\n  </openSSL>\n  {{- end }}\n  {{- if .Values.metrics.enabled }}\n  <!-- Prometheus metrics -->\n  <prometheus>\n      <endpoint>/metrics</endpoint>\n      <port from_env=\"CLICKHOUSE_METRICS_PORT\"></port>\n      <metrics>true</metrics>\n      <events>true</events>\n      <asynchronous_metrics>true</asynchronous_metrics>\n  </prometheus>\n  {{- end }}\n</clickhouse>\n"` |  |
| clickhouse.enabled | bool | `false` |  |
| clickhouse.fullnameOverride | string | `"clickhouse"` |  |
| clickhouse.image.tag | string | `"22.11.2-debian-11-r0"` |  |
| clickhouse.persistence.size | string | `"1Ti"` |  |
| clickhouse.replicaCount | int | `2` |  |
| clickhouse.resources.limits.cpu | string | `"16000m"` |  |
| clickhouse.resources.limits.memory | string | `"6Gi"` |  |
| clickhouse.resources.requests.cpu | string | `"16000m"` |  |
| clickhouse.resources.requests.memory | string | `"6Gi"` |  |
| clickhouse.shards | int | `1` |  |
| clickhouse.zookeeper.enabled | bool | `true` |  |
| clickhouse.zookeeper.fullnameOverride | string | `"clickhouse-zookeeper"` |  |
| clickhouse.zookeeper.replicaCount | int | `2` |  |
| cloud-info.CLOUD_INFO_CONFIG | string | `""` |  |
| cloud-info.CLOUD_INFO_GCP_CREDS | string | `""` |  |
| cloud-info.affinity | object | `{}` |  |
| cloud-info.autoscaling.enabled | bool | `false` |  |
| cloud-info.autoscaling.maxReplicas | int | `2` |  |
| cloud-info.autoscaling.minReplicas | int | `1` |  |
| cloud-info.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| cloud-info.fullnameOverride | string | `""` |  |
| cloud-info.image.digest | string | `""` |  |
| cloud-info.image.pullPolicy | string | `"IfNotPresent"` |  |
| cloud-info.image.registry | string | `"docker.io"` |  |
| cloud-info.image.repository | string | `"harness/ce-cloud-info-signed"` |  |
| cloud-info.image.tag | string | `"0.19.0"` |  |
| cloud-info.ingress.className | string | `"nginx"` |  |
| cloud-info.java.memory | string | `"4096m"` |  |
| cloud-info.java.memoryLimit | string | `"4096m"` |  |
| cloud-info.maxSurge | string | `"100%"` |  |
| cloud-info.maxUnavailable | int | `0` |  |
| cloud-info.nameOverride | string | `""` |  |
| cloud-info.nodeSelector | object | `{}` |  |
| cloud-info.podAnnotations | object | `{}` |  |
| cloud-info.podSecurityContext | object | `{}` |  |
| cloud-info.replicaCount | int | `2` |  |
| cloud-info.resources.limits.cpu | int | `2` |  |
| cloud-info.resources.limits.memory | string | `"5120Mi"` |  |
| cloud-info.resources.requests.cpu | int | `2` |  |
| cloud-info.resources.requests.memory | string | `"5120Mi"` |  |
| cloud-info.securityContext | object | `{}` |  |
| cloud-info.service.port | int | `8082` |  |
| cloud-info.service.targetPort | int | `8000` |  |
| cloud-info.service.type | string | `"ClusterIP"` |  |
| cloud-info.serviceAccount.annotations | object | `{}` |  |
| cloud-info.serviceAccount.create | bool | `false` |  |
| cloud-info.serviceAccount.name | string | `"harness-default"` |  |
| cloud-info.tolerations | list | `[]` |  |
| event-service.affinity | object | `{}` |  |
| event-service.autoscaling.enabled | bool | `true` |  |
| event-service.autoscaling.maxReplicas | int | `2` |  |
| event-service.autoscaling.minReplicas | int | `1` |  |
| event-service.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| event-service.ce-gcp-home-project-creds | string | `""` |  |
| event-service.defaultInternalImageConnector | string | `"test"` |  |
| event-service.eventSvcServiceAccounts.ceGCPHomeProjectCreds.key | string | `"placeHolderKey"` |  |
| event-service.eventSvcServiceAccounts.ceGCPHomeProjectCreds.name | string | `"placeHolderName"` |  |
| event-service.fullnameOverride | string | `""` |  |
| event-service.image.digest | string | `""` |  |
| event-service.image.pullPolicy | string | `"Always"` |  |
| event-service.image.registry | string | `"docker.io"` |  |
| event-service.image.repository | string | `"harness/event-service-signed"` |  |
| event-service.image.tag | string | `"77317"` |  |
| event-service.ingress.className | string | `"nginx"` |  |
| event-service.java.memory | int | `1024` |  |
| event-service.maxSurge | string | `"100%"` |  |
| event-service.maxUnavailable | int | `0` |  |
| event-service.mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| event-service.mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| event-service.mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| event-service.mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| event-service.nameOverride | string | `""` |  |
| event-service.ngServiceAccount | string | `"test"` |  |
| event-service.nodeSelector | object | `{}` |  |
| event-service.podAnnotations | object | `{}` |  |
| event-service.podSecurityContext | object | `{}` |  |
| event-service.redislabsCATruststore | string | `"test"` |  |
| event-service.replicaCount | int | `2` |  |
| event-service.resources.limits.cpu | string | `"512m"` |  |
| event-service.resources.limits.memory | string | `"1440Mi"` |  |
| event-service.resources.requests.cpu | string | `"512m"` |  |
| event-service.resources.requests.memory | string | `"1440Mi"` |  |
| event-service.securityContext | object | `{}` |  |
| event-service.service.port | int | `7280` |  |
| event-service.service.port2 | int | `9889` |  |
| event-service.service.type | string | `"ClusterIP"` |  |
| event-service.serviceAccount.annotations | object | `{}` |  |
| event-service.serviceAccount.create | bool | `false` |  |
| event-service.serviceAccount.name | string | `"harness-default"` |  |
| event-service.timescaleSecret.password.key | string | `"timescaledbPostgresPassword"` |  |
| event-service.timescaleSecret.password.name | string | `"harness-secrets"` |  |
| event-service.tolerations | list | `[]` |  |
| event-service.waitForInitContainer.image.digest | string | `""` |  |
| event-service.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| event-service.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| event-service.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| event-service.waitForInitContainer.image.tag | string | `"latest"` |  |
| lwd-autocud.LIGHTWING_GCPCOST_PROJECT | string | `"placeHolder"` |  |
| lwd-autocud.affinity | object | `{}` |  |
| lwd-autocud.autoscaling.enabled | bool | `false` |  |
| lwd-autocud.autoscaling.maxReplicas | int | `2` |  |
| lwd-autocud.autoscaling.minReplicas | int | `1` |  |
| lwd-autocud.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| lwd-autocud.autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| lwd-autocud.aws.region | string | `"us-east-1"` |  |
| lwd-autocud.azure.clientId | string | `""` |  |
| lwd-autocud.ce-batch-gcp-credentials | string | `""` |  |
| lwd-autocud.fullnameOverride | string | `""` |  |
| lwd-autocud.image.digest | string | `""` |  |
| lwd-autocud.image.pullPolicy | string | `"IfNotPresent"` |  |
| lwd-autocud.image.registry | string | `"docker.io"` |  |
| lwd-autocud.image.repository | string | `"harness/lightwing-signed"` |  |
| lwd-autocud.image.tag | string | `"main-1.1.564"` |  |
| lwd-autocud.ingress.className | string | `"nginx"` |  |
| lwd-autocud.java.memory | string | `"4096m"` |  |
| lwd-autocud.java.memoryLimit | string | `"4096m"` |  |
| lwd-autocud.lwdAutocudSecrets.faktoryPassword | string | `"FAKTORY_PASSWORD"` |  |
| lwd-autocud.lwdAutocudSecrets.lightwingAwsGovmasterAccessKey | string | `"LIGHTWING_AWS-GOV-MASTER_ACCESS_KEY"` |  |
| lwd-autocud.lwdAutocudSecrets.lightwingAwsGovmasterSecretKey | string | `"LIGHTWING_AWS-GOV-MASTER_SECRET_KEY"` |  |
| lwd-autocud.lwdAutocudSecrets.lightwingAwsmasterAccessKey | string | `"LIGHTWING_AWSMASTER_ACCESS_KEY"` |  |
| lwd-autocud.lwdAutocudSecrets.lightwingAwsmasterSecretKey | string | `"LIGHTWING_AWSMASTER_SECRET_KEY"` |  |
| lwd-autocud.lwdAutocudSecrets.lightwingCloudConnectorAzureClientSecret | string | `"LIGHTWING_CLOUD-CONNECTOR_AZURE_CLIENT_SECRET"` |  |
| lwd-autocud.lwdAutocudSecrets.lightwingMetricsSegment | string | `"LIGHTWING_METRICS_SEGMENT"` |  |
| lwd-autocud.lwdAutocudSecrets.secretName | string | `"lwd-secrets"` |  |
| lwd-autocud.maxSurge | string | `"100%"` |  |
| lwd-autocud.maxUnavailable | int | `0` |  |
| lwd-autocud.nameOverride | string | `""` |  |
| lwd-autocud.nodeSelector | object | `{}` |  |
| lwd-autocud.podAnnotations | object | `{}` |  |
| lwd-autocud.podSecurityContext | object | `{}` |  |
| lwd-autocud.postgresPassword.key | string | `"postgres-password"` |  |
| lwd-autocud.postgresPassword.name | string | `"postgres"` |  |
| lwd-autocud.redisUrl | string | `"redis://localhost:6379"` |  |
| lwd-autocud.replicaCount | int | `2` |  |
| lwd-autocud.resources.limits.cpu | int | `2` |  |
| lwd-autocud.resources.limits.memory | string | `"4Gi"` |  |
| lwd-autocud.resources.requests.cpu | int | `2` |  |
| lwd-autocud.resources.requests.memory | string | `"4Gi"` |  |
| lwd-autocud.securityContext | object | `{}` |  |
| lwd-autocud.service.port | int | `9090` |  |
| lwd-autocud.service.type | string | `"ClusterIP"` |  |
| lwd-autocud.serviceAccount.annotations | object | `{}` |  |
| lwd-autocud.serviceAccount.create | bool | `false` |  |
| lwd-autocud.serviceAccount.name | string | `"harness-default"` |  |
| lwd-autocud.tolerations | list | `[]` |  |
| lwd-autocud.waitForInitContainer.image.digest | string | `""` |  |
| lwd-autocud.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| lwd-autocud.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| lwd-autocud.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| lwd-autocud.waitForInitContainer.image.tag | string | `"latest"` |  |
| lwd-faktory.affinity | object | `{}` |  |
| lwd-faktory.autoscaling.enabled | bool | `false` |  |
| lwd-faktory.autoscaling.maxReplicas | int | `2` |  |
| lwd-faktory.autoscaling.minReplicas | int | `1` |  |
| lwd-faktory.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| lwd-faktory.faktory.password.key | string | `"FAKTORY_PASSWORD"` |  |
| lwd-faktory.faktory.password.name | string | `"lwd-secrets"` |  |
| lwd-faktory.fullnameOverride | string | `""` |  |
| lwd-faktory.image.digest | string | `""` |  |
| lwd-faktory.image.pullPolicy | string | `"Always"` |  |
| lwd-faktory.image.registry | string | `"docker.io"` |  |
| lwd-faktory.image.repository | string | `"contribsys/faktory"` |  |
| lwd-faktory.image.tag | string | `"1.6.1"` |  |
| lwd-faktory.ingress.className | string | `"nginx"` |  |
| lwd-faktory.nameOverride | string | `""` |  |
| lwd-faktory.nodeSelector | object | `{}` |  |
| lwd-faktory.persistentVolume.accessModes | string | `"ReadWriteOnce"` |  |
| lwd-faktory.persistentVolume.storage.models | string | `"20Gi"` |  |
| lwd-faktory.podAnnotations | object | `{}` |  |
| lwd-faktory.podSecurityContext | object | `{}` |  |
| lwd-faktory.replicaCount | int | `1` |  |
| lwd-faktory.resources.limits.cpu | int | `2` |  |
| lwd-faktory.resources.limits.memory | string | `"4Gi"` |  |
| lwd-faktory.resources.requests.cpu | int | `2` |  |
| lwd-faktory.resources.requests.memory | string | `"4Gi"` |  |
| lwd-faktory.securityContext | object | `{}` |  |
| lwd-faktory.service.api.name | string | `"api"` |  |
| lwd-faktory.service.api.port | int | `7419` |  |
| lwd-faktory.service.dashboard.name | string | `"dashboard"` |  |
| lwd-faktory.service.dashboard.port | int | `7420` |  |
| lwd-faktory.service.type | string | `"ClusterIP"` |  |
| lwd-faktory.serviceAccount.annotations | object | `{}` |  |
| lwd-faktory.serviceAccount.create | bool | `false` |  |
| lwd-faktory.serviceAccount.name | string | `"harness-default"` |  |
| lwd-faktory.tolerations | list | `[]` |  |
| lwd-worker.LIGHTWING_GCPCOST_PROJECT | string | `"placeHolder"` |  |
| lwd-worker.affinity | object | `{}` |  |
| lwd-worker.autoscaling.enabled | bool | `false` |  |
| lwd-worker.autoscaling.maxReplicas | int | `2` |  |
| lwd-worker.autoscaling.minReplicas | int | `1` |  |
| lwd-worker.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| lwd-worker.autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| lwd-worker.aws.region | string | `"us-east-1"` |  |
| lwd-worker.azure.clientId | string | `""` |  |
| lwd-worker.ce-batch-gcp-credentials | string | `""` |  |
| lwd-worker.fullnameOverride | string | `""` |  |
| lwd-worker.image.digest | string | `""` |  |
| lwd-worker.image.pullPolicy | string | `"IfNotPresent"` |  |
| lwd-worker.image.registry | string | `"docker.io"` |  |
| lwd-worker.image.repository | string | `"harness/lightwing-signed"` |  |
| lwd-worker.image.tag | string | `"main-1.1.791"` |  |
| lwd-worker.ingress.className | string | `"nginx"` |  |
| lwd-worker.java.memory | string | `"4096m"` |  |
| lwd-worker.java.memoryLimit | string | `"4096m"` |  |
| lwd-worker.lwdWorkerSecrets.faktoryPassword | string | `"FAKTORY_PASSWORD"` |  |
| lwd-worker.lwdWorkerSecrets.lightwingAwsGovmasterAccessKey | string | `"LIGHTWING_AWS-GOV-MASTER_ACCESS_KEY"` |  |
| lwd-worker.lwdWorkerSecrets.lightwingAwsGovmasterSecretKey | string | `"LIGHTWING_AWS-GOV-MASTER_SECRET_KEY"` |  |
| lwd-worker.lwdWorkerSecrets.lightwingAwsmasterAccessKey | string | `"LIGHTWING_AWSMASTER_ACCESS_KEY"` |  |
| lwd-worker.lwdWorkerSecrets.lightwingAwsmasterSecretKey | string | `"LIGHTWING_AWSMASTER_SECRET_KEY"` |  |
| lwd-worker.lwdWorkerSecrets.lightwingCloudConnectorAzureClientSecret | string | `"LIGHTWING_CLOUD-CONNECTOR_AZURE_CLIENT_SECRET"` |  |
| lwd-worker.lwdWorkerSecrets.lightwingMetricsSegment | string | `"LIGHTWING_METRICS_SEGMENT"` |  |
| lwd-worker.lwdWorkerSecrets.secretName | string | `"lwd-secrets"` |  |
| lwd-worker.maxSurge | string | `"100%"` |  |
| lwd-worker.maxUnavailable | int | `0` |  |
| lwd-worker.nameOverride | string | `""` |  |
| lwd-worker.nodeSelector | object | `{}` |  |
| lwd-worker.podAnnotations | object | `{}` |  |
| lwd-worker.podSecurityContext | object | `{}` |  |
| lwd-worker.postgresPassword.key | string | `"postgres-password"` |  |
| lwd-worker.postgresPassword.name | string | `"postgres"` |  |
| lwd-worker.redisUrl | string | `"redis://localhost:6379"` |  |
| lwd-worker.replicaCount | int | `3` |  |
| lwd-worker.resources.limits.cpu | int | `2` |  |
| lwd-worker.resources.limits.memory | string | `"4Gi"` |  |
| lwd-worker.resources.requests.cpu | int | `2` |  |
| lwd-worker.resources.requests.memory | string | `"4Gi"` |  |
| lwd-worker.securityContext | object | `{}` |  |
| lwd-worker.service.port | int | `9090` |  |
| lwd-worker.service.type | string | `"ClusterIP"` |  |
| lwd-worker.serviceAccount.annotations | object | `{}` |  |
| lwd-worker.serviceAccount.create | bool | `false` |  |
| lwd-worker.serviceAccount.name | string | `"harness-default"` |  |
| lwd-worker.tolerations | list | `[]` |  |
| lwd-worker.waitForInitContainer.image.digest | string | `""` |  |
| lwd-worker.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| lwd-worker.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| lwd-worker.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| lwd-worker.waitForInitContainer.image.tag | string | `"latest"` |  |
| lwd.LIGHTWING_GCPCOST_PROJECT | string | `"placeHolder"` |  |
| lwd.affinity | object | `{}` |  |
| lwd.autoscaling.enabled | bool | `false` |  |
| lwd.autoscaling.maxReplicas | int | `2` |  |
| lwd.autoscaling.minReplicas | int | `1` |  |
| lwd.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| lwd.autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| lwd.aws.region | string | `"us-east-1"` |  |
| lwd.azure.clientId | string | `""` |  |
| lwd.ce-batch-gcp-credentials | string | `""` |  |
| lwd.fullnameOverride | string | `""` |  |
| lwd.image.digest | string | `""` |  |
| lwd.image.pullPolicy | string | `"IfNotPresent"` |  |
| lwd.image.registry | string | `"docker.io"` |  |
| lwd.image.repository | string | `"harness/lightwing-signed"` |  |
| lwd.image.tag | string | `"main-1.1.791"` |  |
| lwd.ingress.className | string | `"nginx"` |  |
| lwd.java.memory | string | `"4096m"` |  |
| lwd.java.memoryLimit | string | `"4096m"` |  |
| lwd.lwdSecrets.faktoryPassword | string | `"FAKTORY_PASSWORD"` |  |
| lwd.lwdSecrets.lightwingAwsGovmasterAccessKey | string | `"LIGHTWING_AWS-GOV-MASTER_ACCESS_KEY"` |  |
| lwd.lwdSecrets.lightwingAwsGovmasterSecretKey | string | `"LIGHTWING_AWS-GOV-MASTER_SECRET_KEY"` |  |
| lwd.lwdSecrets.lightwingAwsmasterAccessKey | string | `"LIGHTWING_AWSMASTER_ACCESS_KEY"` |  |
| lwd.lwdSecrets.lightwingAwsmasterSecretKey | string | `"LIGHTWING_AWSMASTER_SECRET_KEY"` |  |
| lwd.lwdSecrets.lightwingCloudConnectorAzureClientSecret | string | `"LIGHTWING_CLOUD-CONNECTOR_AZURE_CLIENT_SECRET"` |  |
| lwd.lwdSecrets.lightwingMetricsSegment | string | `"LIGHTWING_METRICS_SEGMENT"` |  |
| lwd.lwdSecrets.secretName | string | `"lwd-secrets"` |  |
| lwd.maxSurge | string | `"100%"` |  |
| lwd.maxUnavailable | int | `0` |  |
| lwd.nameOverride | string | `""` |  |
| lwd.nodeSelector | object | `{}` |  |
| lwd.podAnnotations | object | `{}` |  |
| lwd.podSecurityContext | object | `{}` |  |
| lwd.postgresPassword.key | string | `"postgres-password"` |  |
| lwd.postgresPassword.name | string | `"postgres"` |  |
| lwd.redisUrl | string | `"redis://localhost:6379"` |  |
| lwd.replicaCount | int | `2` |  |
| lwd.resources.limits.cpu | int | `2` |  |
| lwd.resources.limits.memory | string | `"4Gi"` |  |
| lwd.resources.requests.cpu | int | `2` |  |
| lwd.resources.requests.memory | string | `"4Gi"` |  |
| lwd.securityContext | object | `{}` |  |
| lwd.service.port | int | `9090` |  |
| lwd.service.type | string | `"ClusterIP"` |  |
| lwd.serviceAccount.annotations | object | `{}` |  |
| lwd.serviceAccount.create | bool | `false` |  |
| lwd.serviceAccount.name | string | `"harness-default"` |  |
| lwd.tolerations | list | `[]` |  |
| lwd.waitForInitContainer.image.digest | string | `""` |  |
| lwd.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| lwd.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| lwd.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| lwd.waitForInitContainer.image.tag | string | `"latest"` |  |
| nextgen-ce.GCP_PROJECT_ID | string | `"placeHolder"` |  |
| nextgen-ce.affinity | object | `{}` |  |
| nextgen-ce.autoscaling.enabled | bool | `false` |  |
| nextgen-ce.autoscaling.maxReplicas | int | `2` |  |
| nextgen-ce.autoscaling.minReplicas | int | `1` |  |
| nextgen-ce.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| nextgen-ce.awsSecret.AWS_ACCESS_KEY | string | `""` |  |
| nextgen-ce.awsSecret.AWS_ACCOUNT_ID | string | `""` |  |
| nextgen-ce.awsSecret.AWS_DESTINATION_BUCKET | string | `""` |  |
| nextgen-ce.awsSecret.AWS_SECRET_KEY | string | `""` |  |
| nextgen-ce.awsSecret.AWS_TEMPLATE_LINK | string | `""` |  |
| nextgen-ce.awsSecret.CE_AWS_TEMPLATE_URL | string | `""` |  |
| nextgen-ce.ceng-gcp-credentials | string | `""` |  |
| nextgen-ce.fullnameOverride | string | `""` |  |
| nextgen-ce.image.digest | string | `""` |  |
| nextgen-ce.image.pullPolicy | string | `"IfNotPresent"` |  |
| nextgen-ce.image.registry | string | `"docker.io"` |  |
| nextgen-ce.image.repository | string | `"harness/ce-nextgen-signed"` |  |
| nextgen-ce.image.tag | string | `"77300"` |  |
| nextgen-ce.ingress.className | string | `"nginx"` |  |
| nextgen-ce.java.memory | string | `"4096m"` |  |
| nextgen-ce.java.memoryLimit | string | `"4096m"` |  |
| nextgen-ce.maxSurge | string | `"100%"` |  |
| nextgen-ce.maxUnavailable | int | `0` |  |
| nextgen-ce.mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| nextgen-ce.mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| nextgen-ce.mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| nextgen-ce.mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| nextgen-ce.nameOverride | string | `""` |  |
| nextgen-ce.nodeSelector | object | `{}` |  |
| nextgen-ce.podAnnotations | object | `{}` |  |
| nextgen-ce.podSecurityContext | object | `{}` |  |
| nextgen-ce.replicaCount | int | `2` |  |
| nextgen-ce.resources.limits.cpu | int | `2` |  |
| nextgen-ce.resources.limits.memory | string | `"5120Mi"` |  |
| nextgen-ce.resources.requests.cpu | int | `2` |  |
| nextgen-ce.resources.requests.memory | string | `"5120Mi"` |  |
| nextgen-ce.securityContext | object | `{}` |  |
| nextgen-ce.service.port | int | `6340` |  |
| nextgen-ce.service.type | string | `"ClusterIP"` |  |
| nextgen-ce.serviceAccount.annotations | object | `{}` |  |
| nextgen-ce.serviceAccount.create | bool | `false` |  |
| nextgen-ce.serviceAccount.name | string | `"harness-default"` |  |
| nextgen-ce.timescaleSecret.password.key | string | `"timescaledbPostgresPassword"` |  |
| nextgen-ce.timescaleSecret.password.name | string | `"harness-secrets"` |  |
| nextgen-ce.tolerations | list | `[]` |  |
| nextgen-ce.waitForInitContainer.image.digest | string | `""` |  |
| nextgen-ce.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| nextgen-ce.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| nextgen-ce.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| nextgen-ce.waitForInitContainer.image.tag | string | `"latest"` |  |
| telescopes.affinity | object | `{}` |  |
| telescopes.autoscaling.enabled | bool | `false` |  |
| telescopes.autoscaling.maxReplicas | int | `2` |  |
| telescopes.autoscaling.minReplicas | int | `1` |  |
| telescopes.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| telescopes.fullnameOverride | string | `""` |  |
| telescopes.image.digest | string | `""` |  |
| telescopes.image.pullPolicy | string | `"IfNotPresent"` |  |
| telescopes.image.registry | string | `"docker.io"` |  |
| telescopes.image.repository | string | `"harness/telescopes-signed"` |  |
| telescopes.image.tag | string | `"10100"` |  |
| telescopes.ingress.className | string | `"nginx"` |  |
| telescopes.java.memory | string | `"4096m"` |  |
| telescopes.java.memoryLimit | string | `"4096m"` |  |
| telescopes.nameOverride | string | `""` |  |
| telescopes.nodeSelector | object | `{}` |  |
| telescopes.podAnnotations | object | `{}` |  |
| telescopes.podSecurityContext | object | `{}` |  |
| telescopes.replicaCount | int | `1` |  |
| telescopes.resources.limits.cpu | string | `"512m"` |  |
| telescopes.resources.limits.memory | string | `"1024Mi"` |  |
| telescopes.resources.requests.cpu | string | `"512m"` |  |
| telescopes.resources.requests.memory | string | `"1024Mi"` |  |
| telescopes.securityContext | object | `{}` |  |
| telescopes.service.port | int | `9090` |  |
| telescopes.service.type | string | `"ClusterIP"` |  |
| telescopes.serviceAccount.annotations | object | `{}` |  |
| telescopes.serviceAccount.create | bool | `false` |  |
| telescopes.serviceAccount.name | string | `"harness-default"` |  |
| telescopes.tolerations | list | `[]` |  |
| telescopes.waitForInitContainer.image.digest | string | `""` |  |
| telescopes.waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| telescopes.waitForInitContainer.image.registry | string | `"docker.io"` |  |
| telescopes.waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| telescopes.waitForInitContainer.image.tag | string | `"latest"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
