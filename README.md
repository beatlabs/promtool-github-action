![Linting](https://github.com/beatlabs/promtool-action/workflows/Linting/badge.svg)
# Promtool GitHub Action

## Introduction
This simple GitHub Action allows to run various `promtool` commands on Prometheus rules files.

## Example usage

```
name: Check Prometheus rules
on:
  pull_request:
    paths:
    - 'monitoring/prometheus/*.y*ml'

jobs:
  on-pull-request:
    name: On Pull Request
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Repo
      uses: actions/checkout@v2

    - name: Check Prometheus rules
      uses: beatlabs/promtool-github-action@v0.0.1
      with:
        cmd: 'check'
        files: 'monitoring/prometheus/*.y*ml'

    - name: Test Prometheus rules
      uses: beatlabs/promtool-github-action@v0.0.1
      with:
        cmd: 'test'
        files: 'monitoring/prometheus/test*.y*ml'
```
