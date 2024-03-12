#!/bin/bash

set +x

echo "Replace variables in deployment"

carpeta_deploy = repository/deploy/

if [ -d $carpeta_deploy ]; then
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__gitcommit__/{{ gitcommit }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__bamboo_deploy_version__/{{ bamboo_deploy_version }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__version__/{{ version }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__api_version__/{{ api_version }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__registry__/{{ registry }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__max_replicas__/{{ max_replicas }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__replicas__/{{ replicas }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__image_pull__/{{ image_pull }}/g' {} \;
    find 'repository/deploy/deployment.yaml' -type f -exec sed -i '' -e 's/__environment__/{{ environment }}/g' {} \;
fi

carpeta_deployment = repository/deployment/
if [ -d $carpeta_deployment ]; then
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__gitcommit__/{{ gitcommit }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__bamboo_deploy_version__/{{ bamboo_deploy_version }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__version__/{{ version }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__api_version__/{{ api_version }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__registry__/{{ registry }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__max_replicas__/{{ max_replicas }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__replicas__/{{ replicas }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__image_pull__/{{ image_pull }}/g' {} \;
    find 'repository/deployment/deployment.yaml' -type f -exec sed -i '' -e 's/__environment__/{{ environment }}/g' {} \;
fi