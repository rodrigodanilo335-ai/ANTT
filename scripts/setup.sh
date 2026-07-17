#!/bin/bash

# ANTT Project Setup Script

set -e

echo "🚀 Iniciando setup do projeto ANTT..."

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}📦 Instalando dependências...${NC}"
npm install

echo -e "${BLUE}🗂️ Criando estrutura de diretórios...${NC}"
mkdir -p frontend backend mobile database docs docker/postgres scripts .github/workflows

echo -e "${BLUE}📝 Copiando arquivos de ambiente...${NC}"
if [ ! -f "frontend/.env.local" ]; then
  cp .env.example frontend/.env.local
fi

if [ ! -f "backend/.env" ]; then
  cp .env.example backend/.env
fi

echo -e "${BLUE}🐳 Iniciando Docker containers...${NC}"
docker-compose up -d

echo -e "${BLUE}⏳ Aguardando banco de dados ficar pronto...${NC}"
sleep 10

echo -e "${BLUE}📊 Executando migrations...${NC}"
npm run db:migrate

echo -e "${BLUE}🌱 Populando banco de dados...${NC}"
npm run db:seed

echo -e "${GREEN}✅ Setup completo!${NC}"
echo -e "${GREEN}✅ Frontend: http://localhost:3000${NC}"
echo -e "${GREEN}✅ Backend: http://localhost:3001${NC}"
echo -e "${GREEN}✅ API Docs: http://localhost:3001/api/docs${NC}"
echo -e "${GREEN}✅ Database: localhost:5432${NC}"
echo ""
echo "Para iniciar o desenvolvimento:"
echo "  npm run dev"
