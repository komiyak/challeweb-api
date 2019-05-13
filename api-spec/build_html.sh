#!/bin/bash

if [ ! -d ./build/swagger-codegen-3.0.8/ ]; then
  rm -rf build/

  mkdir -p build/
  wget -qO- https://github.com/swagger-api/swagger-codegen/archive/v3.0.8.tar.gz | tar zxvf - -C ./build

  # Build the jar file.
  pushd build/swagger-codegen-3.0.8/
  mvn clean package
  popd
fi

# Build a html from OpenAPI Spec.
java -jar build/swagger-codegen-3.0.8/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i openapi.yaml -l html2 -o out/
