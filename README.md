# Background

Historically, Ika used XAMPP for local development:

* Apache (XAMPP) for running the PHP application
* MariaDB/MySQL (XAMPP) for local database work
* Remote MariaDB server for shared company data

Typical workflow:

```text
PHP Application (localhost)
        │
        ├── Local MariaDB (development / data preparation)
        │
        └── Remote MariaDB (shared database)
```

Recently, the local XAMPP MariaDB instance became corrupted and could no longer start. Investigation showed InnoDB startup failures and database corruption errors, preventing the local database service from running.

Apache and PHP remained functional, but the local MariaDB service was no longer usable.

To avoid spending additional time troubleshooting or rebuilding the XAMPP database installation, a Docker-based MariaDB environment was introduced as a replacement for the local database instance.

# Why Docker?

Benefits of using Docker for the local database:

* Isolated database environment
* Easy to recreate if issues occur
* Consistent MariaDB version across environments
* Data persisted using Docker volumes
* Simplified backup and restoration
* No dependency on XAMPP's MariaDB installation

The PHP application can continue running through XAMPP Apache while the database runs separately in Docker.

```text
XAMPP Apache/PHP
        │
        ▼
Docker MariaDB
```

# Docker Configuration

Docker Engine is installed inside WSL and configured to be accessible from Windows.

This allows database containers to be managed from:

* Visual Studio Code
* Windows Terminal
* PowerShell
* WSL Terminal

The Docker daemon is exposed to the Windows host, enabling Docker commands to be executed from development tools without requiring direct interaction with the Linux environment.

# Daily Usage

Open the project in Visual Studio Code and start the database:

```bash
docker compose up -d
```

Verify the container is running:

```bash
docker ps
```

Stop the database:

```bash
docker compose down
```

View logs:

```bash
docker logs mariadb
```

# Notes

* Apache continues to run from XAMPP.
* MariaDB runs from Docker.
* The local database schema is automatically created during the first startup.
* Database files are persisted in a Docker volume and survive container restarts.
* If the container is recreated, the database can be restored using the provided SQL scripts.
