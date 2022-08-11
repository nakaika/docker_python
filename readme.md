## Python 3.10 environment on docker
docker environment containing Python 3.10 and major libraries

### Procedure
- `cd docker-env`
- `docker-compose up -d --build`

### Note
- This folder is mounted in the docker's `/app/workdir` folder
- Only `docker-env` folder and `readme.md` are tracked by git