# Provider MongoDb-Users

`provider-mongodb-users` is a [Crossplane](https://crossplane.io/) provider that
is built using [Upjet](https://github.com/crossplane/upjet) code
generation tools and exposes XRM-conformant managed resources for the
MongoDb-Users API.

## Getting Started

Install the provider by using the following command after changing the image tag
to the [latest release](https://marketplace.upbound.io/providers/mcwhitak/provider-mongodb-users):
```
up ctp provider install mcwhitak/provider-mongodb-users:<version>
```

Alternatively, you can use declarative installation:
```
cat <<EOF | kubectl apply -f -
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-mongodb-users
spec:
  package: mcwhitak/provider-mongodb-users:<version>
EOF
```

## Developing

Run the following to open a shell with all development dependencies installed

```shell
env NIXPKGS_ALLOW_UNFREE=1 devenv --impure shell
```

To change the upstream terraform provider version you are targeting, open the `Makefile` and change `TERRAFORM_PROVIDER_VERSION` and `TERRAFORM_NATIVE_PROVIDER_BINARY`

Run code-generation:

```console
make generate
```

Run against a Kubernetes cluster:

```console
make run
```
