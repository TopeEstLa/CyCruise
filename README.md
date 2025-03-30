# CyCruise 🗿🗿🗿

Pre-Ing-2 S2 IT project <br>
Subject ClickJourney [subject.pdf](subject/Projet_Click_journeY_v1.0_Présentation.pdf) <br>
Project report [report.pdf](document/RapportProjetInformatiqueV3.pdf) <br>
Project document [document](document/) <br>
Project URL [CyCruise](https://cycruise.antoninp.dev/) <br>

## Branches explanation🌳

due to the evaluation of the project divided into parts, we have one branch per part. <br>

- `master` : the main branch, contains the current published version of the project.
- `part1` : the first part of the project: html/css.
- `part2` : the second part of the project: php.
- `part3` : the third part of the project: js.
- `part4` : the fourth part of the project: async js. (+/- = to master)

## How to run the project 🚀

### Using docker

#### Using the automatic script

1. Install [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/).
2. Run the [run-cycruise-app.sh](run-cycruise-app.sh) script to start the project.
3. Open your browser and go to [http://localhost:4000](http://localhost:4000) to see the project.

#### Manually

1. Install [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/).
2. Run the command `docker build -t cycruise .` in the root of the project to build the docker image.
3. Run the command `docker compose -f dev-compose.yml up -d` to start the project.

> [!IMPORTANT]
> The [docker-compose.yml](docker-compose.yml) is used for the production
> version ([cycruise.antoninp.dev](https://cycruise.antoninp.dev)) and use the image from the docker hub. <br>

### Without docker

1. Install [php 8.1](https://www.php.net/downloads), [mysqli](), [pdo_mysql]() and [mariadb server]().
2. Create the MariaDB database called `cycruise`
3. Edit the [src/Models/Database.php](src/Models/Database.php) file to set the database connection parameters (line 12).
4. Edit the [src/Services/InvoiceService.php](src/Services/InvoiceService.php) file to set the application URL (line
   22).
5. Run the php server with the command `php -S localhost:4000 -t public/` in the root of the project.
6. Open your browser and go to [http://localhost:4000](http://localhost:4000) to see the project.

for more information see the [DT](document/DT.pdf) document.

## List of documents 📚

- [DA](document/DA.pdf) : Document explaining the artistic direction of the project.
- [DT](document/DT.pdf) : Document explaining the technical direction of the project.
- [RapportProjetInformatiqueV3](document/RapportProjetInformatiqueV3.pdf) : Project report.