# OpenAPI Specification
We used v3.0.0

See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md

# Swagger Editor
```
docker pull swaggerapi/swagger-editor
docker run -d -p 80:8080 swaggerapi/swagger-editor
```
See https://github.com/swagger-api/swagger-editor

# Build the static html from the OpenAPI Spec.
You will prepare these environments.

- java (JDK)
- maven

And then, run this command.
```
./build_html.sh
```

Finaly, the static html will be built.
```
out/index.html
```

# Deploy the static html to the S3 bucket.
```
DEPLOY_TO=your-s3-bucket/path ./deploy_html.sh
```
