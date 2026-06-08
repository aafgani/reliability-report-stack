[Back to ReadMe](../README.md)

## Verify Database Initialization

Open a MariaDB session inside the container:

```bash
docker compose exec mariadb mariadb -uroot -proot
```

You should see a prompt similar to:

```text
MariaDB [(none)]>
```

### List Databases

```sql
SHOW DATABASES;
```

Expected output:

```text
+--------------------+
| Database           |
+--------------------+
| database_report    |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
```

### Select Database

```sql
USE database_report;
```

Expected output:

```text
Database changed
```

### List Tables

```sql
SHOW TABLES;
```

Expected output:

```text
+----------------------+
| Tables_in_database_report |
+----------------------+
| n_ata_qpa_xref_pn    |
| n_fleetdata          |
| n_ik17_raw           |
+----------------------+
```

### Verify Table Structure

```sql
DESCRIBE n_fleetdata;
```

or

```sql
SHOW CREATE TABLE n_fleetdata\G
```

### Exit MariaDB

```sql
EXIT;
```

## Quick Verification Commands

Verify database exists:

```bash
docker compose exec mariadb mariadb -uroot -proot -e "SHOW DATABASES;"
```

Verify tables exist:

```bash
docker compose exec mariadb mariadb -uroot -proot -e "USE database_report; SHOW TABLES;"
```

Verify container status:

```bash
docker compose ps
```

View MariaDB logs:

```bash
docker compose logs mariadb
```


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