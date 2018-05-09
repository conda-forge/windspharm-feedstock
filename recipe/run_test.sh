#!/bin/bash

# Run windspharm test suite in its own directory.

mkdir windspharm-tests && cd windspharm-tests || exit 1
pytest -vrsx --pyargs windspharm
stat=$?
cd .. && rm -rf windspharm-tests || exit 2
exit $stat
