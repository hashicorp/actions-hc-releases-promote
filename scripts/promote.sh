#!/usr/bin/env bash

VERSION=${VERSION//v}

hc-releases promote -product "$PRODUCT_NAME" \
-version "$VERSION" -source-env "$SOURCE_ENV"