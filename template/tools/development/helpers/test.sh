#!/bin/bash

################################################################################################################################################################

# @project        Libraries
# @file           tools/development/helpers/test.sh
# @author         Lucas Brémond <lucas.bremond@gmail.com>
# @license        Apache License 2.0

################################################################################################################################################################

project_directory="$(git rev-parse --show-toplevel)"

pushd "${project_directory}" > /dev/null

# make test

if [[ -z ${1} ]]; then
    ./bin/*.test
else
    ./bin/*.test --gtest_filter=${1}
fi

popd > /dev/null

################################################################################################################################################################
