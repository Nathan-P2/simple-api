# 1.26.0

### Open Telemetry

- Added Open Telemetry support
    - Traces are sent to Jaeger Collector via gRPC through OpenTelemetry JAR, which is included in runtime via Azure
      Pipelines.


# 1.10.0

### Slack Notifications

- Triggering Slack notifications only when the approval status is not TIMED_OUT or CANCELLED


# 1.9.0

### Backstage

- **Constraint única para build_id**: Adicionada migração de banco para garantir unicidade do build_id, evitando
  duplicações no sistema

- **Campo environment em aprovações**: Implementado suporte a ambientes nas aprovações, permitindo controle granular por
  ambiente (dev, staging, prod)

- **Melhorias no sistema de workflow**: Atualizações nos modelos de dados, serviços e listeners para suportar as novas
  funcionalidades de ambiente e controle de build

- **Integração Azure aprimorada**: Melhorias na comunicação com Azure Pipelines e processamento de eventos de pipeline
### JaCoCo
- DockerFile customized to add JaCoCo coverage result as pipeline artifact


# 1.8.0

### JaCoCo
- Added JaCoCo plugin

### Trivy
- Added trivy vulnerability scan


#### CICD
- Setting pipeline-microservice version to `7`
