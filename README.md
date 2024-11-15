# DevOps Project Boilerplate: Gitea + Traefik (with Cloudflare Integration)

This boilerplate provides an easy-to-use setup for deploying **Gitea** with **Traefik** as a reverse proxy. It uses **Docker Compose** to manage services and integrates with **Cloudflare** for secure domain handling. In the future, **Keycloak** for authentication and identity management will be added to enhance functionality.

---

## Features
- **Gitea**: Lightweight self-hosted Git service for version control and collaborative development.
- **Traefik**: Modern reverse proxy for managing requests and enabling SSL termination.
- **Cloudflare Integration**: Utilizes Cloudflare for domain resolution and SSL certificates.
- **Docker Compose**: Simplified service orchestration for easy deployment and scaling.

---

## Prerequisites
Before you begin, ensure you have the following:
1. **Docker** and **Docker Compose** installed.
2. A **Cloudflare account** with API keys configured.
3. A registered domain with DNS managed through **Cloudflare**.

---

## Setup Guide

### 1. Clone the Repository
```bash
git clone <repository-url>
cd devops-boilerplate
```

### 2. Configure Environment Variables
Create a `.env` file in the project root and add the following configuration:

```env
# General
HOST_NAME=[your domain]

# Traefik
TRAEFIK_IMAGE_TAG=traefik:latest
TRAEFIK_HOSTNAME=traefik.[your domain]
TRAEFIK_LOG_LEVEL=WARN
TRAEFIK_LOG_FORMAT=json
TRAEFIK_ACCESS_LOG_FORMAT=json
TRAEFIK_BASIC_AUTH="admin:$$apr1$$/OvXXPqx$$ASwHg084Hxo6MotyV4pnI0"  # admin123 (use htpasswd to generate a new one)

# Cloudflare
CF_API_EMAIL=[email account used for Cloudflare]
CF_DNS_API_TOKEN=[API token from Cloudflare with DNS edit permissions]

# Gitea
GITEA_POSTGRES_IMAGE_TAG=postgres:17.0-alpine3.20
GITEA_IMAGE_TAG=gitea/gitea:1.22.3
GITEA_DB_NAME=giteadb
GITEA_DB_USER=giteadbuser
GITEA_DB_PASSWORD=[secure password 1]
GITEA_ADMIN_USERNAME=giteaadmin
GITEA_ADMIN_PASSWORD=[secure password 2]
GITEA_ADMIN_EMAIL=giteaadmin@[your domain]
GITEA_URL=https://gitea.[your domain]
GITEA_HOSTNAME=gitea.[your domain]
GITEA_SHELL_SSH_PORT=2222
GITEA_DATA_PATH=/bitnami/gitea
```

Replace `[your domain]`, `[email account used for Cloudflare]`, `[API token from Cloudflare]`, `[secure password 1]` and `[secure password 2]` with appropriate values.

---

### 3. Deploy the Stack
Run the following command to start all services:
```bash
docker-compose up -d
```

### 4. Access Services
- **Gitea**: Accessible at `https://gitea.[your-domain]`.
- **Traefik Dashboard** (if enabled): Accessible at `https://traefik.[your-domain]/dashboard`.

---

## Future Enhancements
This boilerplate will be extended with:
1. **Keycloak Integration**:
   - Unified user authentication and authorization.
   - Single Sign-On (SSO) support for connected services.
2. Additional services to streamline DevOps workflows.

---

## Troubleshooting
### Common Issues
1. **Services not starting**: Check logs with `docker-compose logs -f`.
2. **SSL issues**: Ensure the correct Cloudflare API token and domain configurations.
3. **Traefik not routing correctly**: Verify the domain and Traefik labels in `docker-compose.yml`.

---

## Contributing
Contributions to improve the boilerplate are welcome. To contribute:
1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/your-feature`.
3. Submit a pull request.

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.