#!/usr/bin/env bash

VERSION=${VERSION//v}

bob promote -product-name "$PRODUCT_NAME" \
-version "$VERSION" -source-env "$SOURCE_ENV"