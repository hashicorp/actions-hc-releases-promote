#!/usr/bin/env bash

#take this out when ready to PR
set -x

VERSION=${VERSION//v}

if [ "${SKIP_TERRAFORM_SYNC}" == "true" ]; then
    hc-releases promote -product "$PRODUCT_NAME" \
    -version "$VERSION" -source-env "$SOURCE_ENV" \
    -skip-terraform-registry-sync
else
    hc-releases promote -product "$PRODUCT_NAME" \
    -version "$VERSION" -source-env "$SOURCE_ENV"
fi
