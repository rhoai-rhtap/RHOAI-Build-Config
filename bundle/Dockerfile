FROM scratch

# Core bundle labels.
LABEL operators.operatorframework.io.bundle.mediatype.v1=registry+v1
LABEL operators.operatorframework.io.bundle.manifests.v1=manifests/
LABEL operators.operatorframework.io.bundle.metadata.v1=metadata/
LABEL operators.operatorframework.io.bundle.package.v1=rhods-operator
LABEL operators.operatorframework.io.bundle.channel.default.v1=stable
operators.operatorframework.io.bundle.channels.v1=fast,alpha,stable,stable-2.13
LABEL operators.operatorframework.io.metrics.builder=operator-sdk-v1.24.1
LABEL operators.operatorframework.io.metrics.mediatype.v1=metrics+v1
LABEL operators.operatorframework.io.metrics.project_layout=go.kubebuilder.io/v3

# Labels for testing.
LABEL operators.operatorframework.io.test.mediatype.v1=scorecard+v1
LABEL operators.operatorframework.io.test.config.v1=tests/scorecard/

LABEL \
    com.redhat.delivery.operator.bundle="true" \
    com.redhat.openshift.versions="v4.12" \
    com.redhat.component="odh-operator-bundle-container" \
    com.redhat.license_terms="https://www.redhat.com/licenses/Red_Hat_Standard_EULA_20191108.pdf" \
    name="managed-open-data-hub/odh-operator-bundle-rhel8" \
    version="${CI_CONTAINER_VERSION}"

# Copy files to locations specified by labels.
COPY bundle/manifests /manifests/
COPY bundle/metadata /metadata/
COPY bundle/tests/scorecard /tests/scorecard/