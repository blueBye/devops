network-up:
	docker network create traefik-network
	docker network create gitea-network
	docker network create gitea-db-network
	docker network create keycloak-db-network

network-down:
	docker network rm traefik-network
	docker network rm gitea-network
	docker network rm gitea-db-network
	docker network rm keycloak-db-network

up:
	docker compose up -d --build --remove-orphans

down:
	docker compose down