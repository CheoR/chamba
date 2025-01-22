# Chamba

## Overview
This project is designed as an excercise in , featuring a backend, frontend, database management, and middleware. It leverages Docker for environment management and will include support for PostgreSQL, MongoDB, and Redis as time permits.

## Project Structure

As of right now

```bash
.
├── backend
├── database
│   ├── mongodb
│   ├── postgresql
│   │   ├── dev.env
│   │   ├── Dockerfile.dev
│   │   └── initdb
│   │       ├── 001_create_tables.sql
│   │       └── 002_insert_mock_data.sql
│   └── redis
├── docker-compose.dev.yaml
├── docker-compose.yml
├── frontend
│   ├── mobile
│   └── web
├── middleware
├── pgadmin
│   ├── dev.env
│   └── Dockerfile.dev
└── README.md
```


## Setup

1. Clone repo
```bash
git clone https://github.com/CheoR/chamba.git
cd chamba
```

2. Create environment variable files for PostgreSQL and pgAdmin:

    - database/postgresql/dev.env
    - pgadmin/dev.env

## Running the Project

To start the development environment, run the following command:

```bash
docker-compose -f docker-compose.dev.yaml up --build
```

## Services

- PostgreSQL
    - Build context: ./database/postgresql

    - Dockerfile: Dockerfile.dev

    - Ports: 5432:5432

    - Environment variables file: dev.env

- pgAdmin

    - Build context: ./pgadmin

    - Dockerfile: Dockerfile.dev

    - Ports: 80:80

    - Environment variables file: dev.env

## Volumes

- postgres_data: Stores PostgreSQL data persistently.

## Database Initialization

PostgreSQL initialization scripts are located in the database/postgresql/initdb directory:

- 001_create_tables.sql: Creates tables and types.

- 002_insert_mock_data.sql: Inserts mock data into the tables.

## Environment Variables

Ensure you set the required environment variables in dev.env files for PostgreSQL and pgAdmin. Example for database/postgresql/dev.env:

```env
POSTGRES_USER=yourusername
POSTGRES_PASSWORD=yourpassword
POSTGRES_DB=yourdatabase
```
Example for pgadmin/dev.env:

```env
PGADMIN_DEFAULT_EMAIL=youremail@example.com
PGADMIN_DEFAULT_PASSWORD=yourpassword

```

## Contributing

Feel free to submit issues, fork the repo, and create pull requests. Contributions are welcome!
License

This project is licensed under the MIT License.
