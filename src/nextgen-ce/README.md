# nextgen-ce

![Version: 0.1.16](https://img.shields.io/badge/Version-0.1.16-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.773.0](https://img.shields.io/badge/AppVersion-1.773.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 2.x.x |
| https://harness.github.io/helm-common | harness-common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `2` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| awsSecret.AWS_ACCESS_KEY | string | `""` |  |
| awsSecret.AWS_ACCOUNT_ID | string | `""` |  |
| awsSecret.AWS_DESTINATION_BUCKET | string | `""` |  |
| awsSecret.AWS_SECRET_KEY | string | `""` |  |
| awsSecret.AWS_TEMPLATE_LINK | string | `""` |  |
| awsSecret.CE_AWS_TEMPLATE_URL | string | `""` |  |
| ceng-gcp-credentials | string | `""` |  |
| clickhouse.enabled | bool | `false` |  |
| clickhouse.password.key | string | `"admin-password"` |  |
| clickhouse.password.name | string | `"clickhouse"` |  |
| clickhouse.username | string | `"default"` |  |
| cloudProviderConfig.AWS_GOV_CLOUD_ACCOUNT_ID | string | `"147449478367"` |  |
| cloudProviderConfig.AWS_GOV_CLOUD_REGION_NAME | string | `"us-gov-west-1"` |  |
| cloudProviderConfig.AWS_GOV_CLOUD_TEMPLATE_LINK | string | `"https://continuous-efficiency.s3.us-east-2.amazonaws.com/setup/v1/ng/HarnessAWSTemplate.yaml"` |  |
| cloudProviderConfig.AZURE_APP_CLIENT_ID | string | `"0211763d-24fb-4d63-865d-92f86f77e908"` |  |
| cloudProviderConfig.GCP_PROJECT_ID | string | `"placeHolder"` |  |
| fullnameOverride | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.ingress.className | string | `"harness"` |  |
| global.ingress.enabled | bool | `false` |  |
| global.ingress.hosts[0] | string | `"my-host.example.org"` |  |
| global.ingress.tls.enabled | bool | `true` |  |
| global.ingress.tls.secretName | string | `""` |  |
| global.istio.enabled | bool | `false` |  |
| global.istio.gateway.create | bool | `false` |  |
| global.istio.virtualService.gateways | string | `nil` |  |
| global.istio.virtualService.hosts | string | `nil` |  |
| global.loadbalancerURL | string | `"https://test"` |  |
| image.digest | string | `""` |  |
| image.imagePullSecrets | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"harness/ce-nextgen-signed"` |  |
| image.tag | string | `"78300-000"` |  |
| imageClickhouseEnabled.digest | string | `""` |  |
| imageClickhouseEnabled.imagePullSecrets | list | `[]` |  |
| imageClickhouseEnabled.pullPolicy | string | `"Always"` |  |
| imageClickhouseEnabled.registry | string | `"docker.io"` |  |
| imageClickhouseEnabled.repository | string | `"harness/ce-nextgen-signed"` |  |
| imageClickhouseEnabled.tag | string | `"9000363-000"` |  |
| ingress.className | string | `"nginx"` |  |
| java.memory | string | `"4096m"` |  |
| java.memoryLimit | string | `"4096m"` |  |
| maxSurge | string | `"100%"` |  |
| maxUnavailable | int | `0` |  |
| mongoSecrets.password.key | string | `"mongodb-root-password"` |  |
| mongoSecrets.password.name | string | `"mongodb-replicaset-chart"` |  |
| mongoSecrets.userName.key | string | `"mongodbUsername"` |  |
| mongoSecrets.userName.name | string | `"harness-secrets"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `2` |  |
| resources.limits.cpu | int | `2` |  |
| resources.limits.memory | string | `"5Gi"` |  |
| resources.requests.cpu | int | `2` |  |
| resources.requests.memory | string | `"5Gi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `6340` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `"harness-default"` |  |
| stackDriverLoggingEnabled | bool | `false` |  |
| timescaleSecret.password.key | string | `"timescaledbPostgresPassword"` |  |
| timescaleSecret.password.name | string | `"harness-secrets"` |  |
| tolerations | list | `[]` |  |
| waitForInitContainer.image.digest | string | `""` |  |
| waitForInitContainer.image.imagePullSecrets | list | `[]` |  |
| waitForInitContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| waitForInitContainer.image.registry | string | `"docker.io"` |  |
| waitForInitContainer.image.repository | string | `"harness/helm-init-container"` |  |
| waitForInitContainer.image.tag | string | `"latest"` |  |
| workloadIdentity.enabled | bool | `false` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
