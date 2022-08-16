## Python 3.10 environment on docker
docker environment containing Python 3.10 and major libraries

### Run command
- `docker-compose -f docker_python/docker-env/docker-compose.yml up -d --build`

### Note
- This folder is mounted in the docker's `/app/workdir` folder
- Only `docker-env` folder and `readme.md` are tracked by git