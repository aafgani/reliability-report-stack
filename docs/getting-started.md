[Back to ReadMe](../README.md)

# Starting MariaDB for Reliability Report

## Prerequisites

* Ubuntu (WSL) has been installed and configured.
* Docker has been installed and configured.
* The MariaDB container has already been created by Andrya.

---

## Start MariaDB

### Step 1 - Open Windows Terminal

Open **Windows Terminal** from the Start Menu.

---

### Step 2 - Open Ubuntu

1. Click the **+** button at the top of Windows Terminal.
2. Select **Ubuntu**.

Wait until the Ubuntu terminal is fully loaded.

You should see a screen similar to:

```bash
aafgani@Ika-Workspace:~$
```

The purple Ubuntu terminal and username indicate that Ubuntu is ready.

> Keep this Ubuntu tab open while working.

---

### Step 3 - Open VS Code

Open Visual Studio Code.

---

### Step 4 - Open Docker Extension

1. In the left sidebar, click the **Docker** icon.
2. Expand **Containers**.

You should see the MariaDB container in the list.

Example:

```text
mariadb
```

---

### Step 5 - Start MariaDB Container

1. Right-click the **mariadb** container.
2. Select **Start**.

Wait a few seconds until the container status changes to **Running**.

---

## Verify Database Is Running (Optional)

Open a terminal and run:

```bash
docker ps
```

You should see the MariaDB container listed with status:

```text
Up
```

---

## Connect to Database (Optional)

To open the MariaDB console:

```bash
docker compose exec mariadb mariadb -uroot -proot
```

Useful commands:

```sql
SHOW DATABASES;
USE database_report;
SHOW TABLES;
```

Exit MariaDB:

```sql
EXIT;
```

---

## Stop MariaDB

When finished:

1. Open VS Code.
2. Go to Docker Extension.
3. Right-click the **mariadb** container.
4. Select **Stop**.

Alternatively:

```bash
docker compose stop
```

---

## Troubleshooting

### Docker Extension Shows No Containers

1. Ensure Ubuntu is open and fully loaded.
2. Wait a few seconds for Docker to start.
3. Refresh the Docker extension in VS Code.

### Unable to Connect to Database

Verify the container is running:

```bash
docker ps
```

If the MariaDB container is not listed, start it from the Docker extension or run:

```bash
docker compose up -d
```

### Need Help

Contact Andrya if:

* The container fails to start.
* Database tables are missing.
* VS Code cannot see Docker containers.
* Any unexpected error appears.
