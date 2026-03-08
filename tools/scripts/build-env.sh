#!/bin/bash

export BUILD_TIMESTAMP=$(date "+%d-%m-%Y_%H:%M:%S")
export BUILD_BRANCH=$(git rev-parse --abbrev-ref HEAD)
export BUILD_COMMIT=$(git rev-parse --short HEAD)
export BUILD_ENV=$1

echo "Timestamp: $BUILD_TIMESTAMP"
echo "Branch: $BUILD_BRANCH"
echo "Commit: $BUILD_COMMIT"
echo "Env: $BUILD_ENV"

flutter build web \
  --base-href "/resources/" \
  --output ../../dist/resources_ui \
  --dart-define=BUILD_TIMESTAMP=$BUILD_TIMESTAMP \
  --dart-define=BUILD_BRANCH=$BUILD_BRANCH \
  --dart-define=BUILD_COMMIT=$BUILD_COMMIT \
  --dart-define=BUILD_ENV=$BUILD_ENV