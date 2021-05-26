#!/bin/sh

# Due to: https://github.com/kubernetes/kubernetes/issues/57923 and https://github.com/istio/istio/issues/26882
# we need this workaround:
cp /cert/priv.pem /
chmod 400 /priv.pem

# Hand off to the CMD
run "$@"
