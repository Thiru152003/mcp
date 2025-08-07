{{- define "mcp-deployment.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mcp-deployment.labels" -}}
app.kubernetes.io/name: {{ include "mcp-deployment.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "mcp-deployment.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mcp-deployment.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
