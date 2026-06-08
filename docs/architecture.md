[Back to ReadMe](../README.md)

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
