# Run assetchains in docker container

- parse_magic_to_yaml - this script will parse magic file and will output data into yaml file

# Use dokomodo tool to generate docker compose file for assetchains
- output of data_test.yml append to data.yaml inside komodotools repo

- in config.ini, replace pubkey with your pubkey

- generate new docker compose file:
```
dokomodo generate_docker_compose -b test
``` 

docker-compose file will be called something like docker-compose_assets_test.yml.


# Run all assetchains in containers

```
docker-compose -f docker-compose_assets_test.yml run --rm
```
