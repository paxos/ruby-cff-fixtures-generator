#!/bin/bash
docker build . -t ruby-cff-fixtures
docker run -v "$(pwd)"/input:/input -v "$(pwd)"/output:/output ruby-cff-fixtures