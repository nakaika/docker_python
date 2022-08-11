## Docker General Environment
docker environment containing Python 3.10 and major libraries

### Procedure
- `cd docker-env`
- `docker-compose up -d --build`

### Note
- This folder is shared by `/app/workdir` in the docker environment
- All folders except docker-env folder and this readme is ignored by git