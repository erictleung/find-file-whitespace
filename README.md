# find-file-whitespace

[![Test](https://github.com/erictleung/find-file-whitespace/actions/workflows/test.yml/badge.svg)](https://github.com/erictleung/find-file-whitespace/actions/workflows/test.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Raise error for whitespace in files

## Example

```yaml
name: Example

on: pull_request

jobs:
  example:
    name: Find Files with Whitespace
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: erictleung/find-file-whitespace@main
```

## Test Locally

```bash
docker build -t test .
docker run -v $(pwd):/find-file-whitespace test
```

## Credit

**Motivated by**: https://twitter.com/ASpittel/status/1508939056918396931

**Code inspired by**: https://github.com/harupy/find-trailing-whitespace
