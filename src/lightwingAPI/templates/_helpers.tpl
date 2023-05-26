{{/*
Expand the name of the chart.
*/}}
{{- define "lwd.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "lwd.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "lwd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "lwd.labels" -}}
helm.sh/chart: {{ include "lwd.chart" . }}
{{ include "lwd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "lwd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "lwd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "lwd.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "lwd.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "lwd.deploymentEnv" -}}
- name: DB_PASSWORD
  valueFrom:
    secretKeyRef:
        name: postgres
        key: postgres-password
- { name: APP_DATABASE_DATASOURCE, value: "{{ printf "postgres://postgres:$(DB_PASSWORD)@postgres:5432" }}" }
- { name: APP_DB_MIGRATION_DATASOURCE, value: "{{ printf "postgres://postgres:$(DB_PASSWORD)@postgres:5432" }}" }
{{- end }}

{{- define "lwd.generateLwdSecrets" }}
    FAKTORY_PASSWORD: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "FAKTORY_PASSWORD" "providedValues" (list "lwdSecrets.faktoryPassword") "length" 10 "context" $) }}
    LIGHTWING_AWSMASTER_ACCESS_KEY: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_AWSMASTER_ACCESS_KEY" "providedValues" (list "lwdSecrets.lightwingAwsmasterAccessKey") "length" 10 "context" $) }}
    LIGHTWING_AWSMASTER_SECRET_KEY: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_AWSMASTER_SECRET_KEY" "providedValues" (list "lwdSecrets.lightwingAwsmasterSecretKey") "length" 10 "context" $) }}
    LIGHTWING_AWS-GOV-MASTER_ACCESS_KEY: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_AWS-GOV-MASTER_ACCESS_KEY" "providedValues" (list "lwdSecrets.lightwingAwsGovmasterAccessKey") "length" 10 "context" $) }}
    LIGHTWING_AWS-GOV-MASTER_SECRET_KEY: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_AWS-GOV-MASTER_SECRET_KEY" "providedValues" (list "lwdSecrets.lightwingAwsGovmasterSecretKey") "length" 10 "context" $) }}
    LIGHTWING_CLOUD-CONNECTOR_AZURE_CLIENT_SECRET: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_CLOUD-CONNECTOR_AZURE_CLIENT_SECRET" "providedValues" (list "lwdSecrets.lightwingCloudConnectorAzureClientSecret") "length" 10 "context" $) }}
    LIGHTWING_METRICS_SEGMENT: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_METRICS_SEGMENT" "providedValues" (list "lwdSecrets.lightwingMetricsSegment") "length" 10 "context" $) }}
    {{- if .Values.clickhouse.enabled }}
    LIGHTWING_CLICKHOUSE_PASSWORD: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secrets" "key" "LIGHTWING_CLICKHOUSE_PASSWORD" "providedValues" (list "lwdSecrets.clickhousePassword") "length" 10 "context" $) }}
    {{- end }}  
{{- end }}

{{- define "lwd.generateMountSecrets" }}
    ce-batch-gcp-credentials: {{ include "harnesscommon.secrets.passwords.manage" (dict "secret" "lwd-secret-mount" "key" "ce-batch-gcp-credentials" "providedValues" (list "ce-batch-gcp-credentials") "length" 10 "context" $) }}
{{- end }}

{{- define "lightwingAPI.pullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image .Values.waitForInitContainer.image) "global" .Values.global ) }}
{{- end -}}