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
Create a `.env` file in the project root using the `.example.evn` and update the required fields.

**Note:**: Update usernames and passwords in `.env` file. other things you have to change are marked using `<instruction>` format in the file.
**Note:**: To check redis and postgres connection, use code sample from `Note.md`.
**Note:**: As of Dec. 2024, I had to use python 3.13 on Linux to test the posgres. Python's postgre package might be updated to work on Windows by the time you are reading this note.
**Note:** update you `/etc/host` (Linux) or `C:\Windows\system32\drivers\etc\hosts` (Windows) for local test.

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