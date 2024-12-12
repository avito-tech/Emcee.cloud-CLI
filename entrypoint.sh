#!/bin/bash

set -xeuo pipefail


EMCEE_CLOUD_URL=${EMCEE_CLOUD_URL:-""}
EMCEE_CONFIG_PATH=${EMCEE_CONFIG_PATH:-""}
EMCEE_APP_PATH=${EMCEE_APP_PATH:-""}
EMCEE_ENVS=${EMCEE_ENVS:-""}
EMCEE_DEVICE_OS_VERSION=${EMCEE_DEVICE_OS_VERSION:-""}
EMCEE_OUTPUT_FOLDER=${EMCEE_OUTPUT_FOLDER:-""}
EMCEE_REPORTS=${EMCEE_REPORTS:-""}
EMCEE_RUNNER=${EMCEE_RUNNER:-""}
EMCEE_TESTS_APP_PATH=${EMCEE_TESTS_APP_PATH:-""}
EMCEE_WAIT_FOR_FINISH=${EMCEE_WAIT_FOR_FINISH:-""}
EMCEE_BUILD_ID=${EMCEE_BUILD_ID:-""}
EMCEE_RUN_COMMAND=${EMCEE_RUN_COMMAND:-""}

ARGS=''

if [[ ! -z "$EMCEE_CLOUD_URL" ]]; then
  ARGS="${ARGS} --cloud_url $EMCEE_CLOUD_URL"
fi

if [[ ! -z "$EMCEE_TOKEN" ]]; then
  ARGS="${ARGS} --token $EMCEE_TOKEN"
fi

if [[ ! -z "$EMCEE_CONFIG_PATH" ]]; then
  ARGS="${ARGS} -c $EMCEE_CONFIG_PATH"
fi

if [[ ! -z "$EMCEE_APP_PATH" ]]; then
  ARGS="${ARGS} -a $EMCEE_APP_PATH"
fi

if [[ ! -z "$EMCEE_ENVS" ]]; then
  ARGS="${ARGS} -e $EMCEE_ENVS"
fi

if [[ ! -z "$EMCEE_DEVICE_OS_VERSION" ]]; then
  ARGS="${ARGS} --os_version $EMCEE_DEVICE_OS_VERSION"
fi

if [[ ! -z "$EMCEE_OUTPUT_FOLDER" ]]; then
  ARGS="${ARGS} -o $EMCEE_OUTPUT_FOLDER"
fi

if [[ ! -z "$EMCEE_REPORTS" ]]; then
  ARGS="${ARGS} --reports $EMCEE_REPORTS"
fi

if [[ ! -z "$EMCEE_RUNNER" ]]; then
  ARGS="${ARGS} -r $EMCEE_RUNNER"
fi

if [[ ! -z "$EMCEE_TESTS_APP_PATH" ]]; then
  ARGS="${ARGS} -t $EMCEE_TESTS_APP_PATH"
fi

if [[ ! -z "$EMCEE_WAIT_FOR_FINISH" ]]; then
  ARGS="${ARGS} -w $EMCEE_WAIT_FOR_FINISH"
fi

if [[ ! -z "$EMCEE_BUILD_ID" ]]; then
  ARGS="${ARGS} --build_id $EMCEE_BUILD_ID"
fi

if [[ ! -z "$EMCEE_RUN_COMMAND" ]]; then
  ARGS="${ARGS} --run_command $EMCEE_RUN_COMMAND"
fi

echo 'Result ARGS: ${ARGS}'

emcee-cloud run $EMCEE_PLATFORM $ARGS
