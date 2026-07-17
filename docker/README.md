# Docker Configuration

Este diretório contém as configurações Docker para a plataforma ANTT.

## Arquivos

- **Dockerfile.frontend** - Image para aplicação Next.js
- **Dockerfile.backend** - Image para API NestJS
- **Dockerfile.postgres** - Image customizada PostgreSQL
- **postgres/init.sql** - Script de inicialização do banco

## Build

```bash
# Build frontend
docker build -f docker/Dockerfile.frontend -t antt-frontend .

# Build backend
docker build -f docker/Dockerfile.backend -t antt-backend .

# Build database
docker build -f docker/Dockerfile.postgres -t antt-postgres .
```

## Desenvolvimento

Use `docker-compose.yml`:

```bash
docker-compose up -d
```

## Produção

Use `docker-compose.prod.yml`:

```bash
docker-compose -f docker-compose.prod.yml up -d
```

## Logs

```bash
# Ver logs de todos os serviços
docker-compose logs -f

# Ver logs de um serviço específico
docker-compose logs -f backend
docker-compose logs -f frontend
docker-compose logs -f postgres
```

## Parar

```bash
docker-compose down
```

## Volumes

Volumes persistentes para dados:
- `postgres_data` - Banco de dados
- `redis_data` - Cache Redis
