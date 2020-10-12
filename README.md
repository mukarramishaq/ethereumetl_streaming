# Ethereum ETL Streaming Pipeline

This project sets up an [Ethereum ETL](https://ethereum-etl.readthedocs.io/en/latest/) with all its dependecies and constantly fetch data from blockchain and push them to a connected `postgres` database.

It uses [Dokcer](https://docs.docker.com/get-started/overview/ "Docker overview") for containerization and [docker-compose](https://docs.docker.com/compose/ "Overview of Docker Compose") to manage the service.

## Steps to set up

First of all, make sure `postgres` server is already installed and is accessible. Secondly, you have [Docker](https://docs.docker.com/get-docker/ "Get Docker")  and [docker-compose](https://docs.docker.com/compose/install/ "Install Docker Compose") installed on your system. Then follow the following steps:

1. Create an empty database in the `postgres`
2. Clone or download this repository to the local system
3. `cd` to clone/downloaded repository
4. run `git submodule update --init --recursive`
5. open the `.env` file and update the database credentials
6. run `chmod +x ./setup.sh`
7. run `./setup.sh` in this repository
   1. **Note:** this command will create essential tables and indices in the database
   2. if you have tables and indices already created then skip this step
8. open the `.env` file again and update the `provider_uri` variable
   1. currently it is set to `https://mainnet.infura.io/v3/6a3f7fe0b96044b5ae8a3cbaf22920c3`. If you are also using Infura then update the project id in the url.
   2. there are other variables in the `.env` file to tune the streaming process
9. Finally run `docker-compose up -d`
   1. `-d` flag is used to run the etl service in detached mode (i.e in the background).
   2. if you want an interactive mode omit this `-d` flag from the command
   3. if you are in detached mode and want to know what is happening then run `docker-compose logs`
10. That's it!!!!
