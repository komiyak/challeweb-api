#!/bin/bash

CODEGEN_V='3.0.8'

if [ ! -d ./build/swagger-codegen-$CODEGEN_V/ ]; then
  rm -rf build/

  mkdir -p build/
  wget -qO- https://github.com/swagger-api/swagger-codegen/archive/v$CODEGEN_V.tar.gz | tar zxvf - -C ./build

  # Build the jar file.
  pushd build/swagger-codegen-$CODEGEN_V/
  mvn clean package
  popd
fi

# Build a html from OpenAPI Spec.
java -jar build/swagger-codegen-$CODEGEN_V/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i openapi.yaml -l html2 -o out/
