#!/usr/bin/env bash

set -e

# Search for whitespace in version controlled files
test_whitespace=`git ls-files | grep " " | wc -l`

# Default exit code
exit_code=0

# If number of files not zero, throw an error
if [ "$test_whitespace" -ne 0 ]; then
    exit_code=1
fi

exit $exit_code
