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

## 📚 Table of Contents

- [📦 Architecture](docs/architecture.md)
- [👩‍💻 User Guide](docs/getting-started.md)
- [🔧 Installation](docs/installation.md)



