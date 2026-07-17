# ANTT - Agência Nacional de Transportes Terrestres Virtual

<div align="center">

![ANTT Logo](https://img.shields.io/badge/ANTT-Platform-0066cc?style=for-the-badge)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Node.js](https://img.shields.io/badge/node-%3E%3D18.0.0-brightgreen)](https://nodejs.org)
[![Docker](https://img.shields.io/badge/Docker-ready-blue)](./docker-compose.yml)

**Uma plataforma completa e profissional para gerenciamento de transportes terrestres**

[Documentação](#documentação) • [Instalação](#instalação) • [Desenvolvimento](#desenvolvimento) • [Contribuição](#contribuição)

</div>

---

## 📋 Descrição

ANTT é uma plataforma virtual para gerenciamento integrado de transportes terrestres, oferecendo funcionalidades completas para empresas de transporte, agência reguladora e usuários finais. Desenvolvida com arquitetura moderna e escalável, pronta para suportar milhares de usuários simultâneos.

### 🎯 Objetivos

- ✅ Gerenciamento de empresas de transporte
- ✅ Gestão de rotas e viagens
- ✅ Sistema de vendas de passagens
- ✅ Painéis administrativos (Empresa, ANTT, Admin)
- ✅ Autenticação segura (JWT, OAuth)
- ✅ Notificações em tempo real
- ✅ Conformidade regulatória

---

## 🛠 Tecnologias

### Frontend
- **Next.js 15** - Framework React moderno
- **React 19** - Biblioteca UI
- **TypeScript** - Segurança de tipos
- **TailwindCSS** - Estilização
- **Shadcn UI** - Componentes de qualidade
- **Framer Motion** - Animações
- **React Hook Form** - Gerenciamento de formulários
- **Zod** - Validação de esquemas
- **TanStack Table** - Tabelas avançadas
- **Recharts** - Gráficos e visualizações
- **Leaflet** - Mapas interativos

### Backend
- **NestJS** - Framework Node.js enterprise
- **TypeScript** - Desenvolvimento seguro
- **Prisma** - ORM moderno
- **PostgreSQL** - Banco de dados relacional
- **JWT** - Autenticação
- **Passport.js** - Estratégias de auth
- **Swagger** - Documentação API
- **Class Validator** - Validação
- **Winston** - Logging

### Infraestrutura
- **Docker** - Containerização
- **Docker Compose** - Orquestração local
- **GitHub Actions** - CI/CD
- **Supabase Storage** - Armazenamento de arquivos
- **PostgreSQL** - Persistência de dados

### Ferramentas de Desenvolvimento
- **ESLint** - Linting
- **Prettier** - Formatação
- **Husky** - Git hooks
- **Lint-staged** - Staging area linting
- **Vitest** - Testes unitários
- **Playwright** - Testes E2E

---

## 📂 Estrutura do Projeto

```
ANTT/
├── frontend/                 # Aplicação Next.js
│   ├── src/
│   │   ├── app/             # Rotas e layouts
│   │   ├── components/      # Componentes reutilizáveis
│   │   ├── pages/           # Páginas da aplicação
│   │   ├── hooks/           # Custom hooks
│   │   ├── utils/           # Funções utilitárias
│   │   ├── lib/             # Bibliotecas configuradas
│   │   ├── styles/          # Estilos globais
│   │   └── types/           # Tipos TypeScript
│   ├── public/              # Arquivos estáticos
│   ├── package.json
│   ├── tsconfig.json
│   ├── next.config.js
│   └── tailwind.config.js
│
├── backend/                 # Aplicação NestJS
│   ├── src/
│   │   ├── modules/         # Módulos de negócio
│   │   ├── common/          # Código compartilhado
│   │   ├── config/          # Configurações
│   │   ├── decorators/      # Decoradores customizados
│   │   ├── filters/         # Filtros de exceção
│   │   ├── guards/          # Guards de autorização
│   │   ├── interceptors/    # Interceptadores
│   │   ├── middleware/      # Middlewares
│   │   ├── pipes/           # Pipes de validação
│   │   ├── prisma/          # Serviço Prisma
│   │   ├── auth/            # Autenticação
│   │   └── main.ts          # Arquivo de entrada
│   ├── test/                # Testes
│   ├── package.json
│   ├── tsconfig.json
│   └── nest-cli.json
│
├── database/                # Schema e Migrations
│   ├── prisma/
│   │   ├── schema.prisma    # Schema do banco
│   │   ├── migrations/      # Migrations
│   │   └── seed.ts          # Dados iniciais
│   └── README.md
│
├── mobile/                  # App Mobile (React Native/Expo)
│   ├── src/
│   ├── app.json
│   └── package.json
│
├── docker/                  # Configurações Docker
│   ├── Dockerfile.frontend
│   ├── Dockerfile.backend
│   ├── Dockerfile.postgres
│   └── README.md
│
├── scripts/                 # Scripts úteis
│   ├── setup.sh
│   ├── dev.sh
│   └── deploy.sh
│
├── docs/                    # Documentação
│   ├── API.md
│   ├── DATABASE.md
│   ├── ARCHITECTURE.md
│   ├── CONTRIBUTING.md
│   └── DEPLOYMENT.md
│
├── .github/
│   ├── workflows/
│   │   ├── ci.yml
│   │   ├── tests.yml
│   │   └── deploy.yml
│   └── ISSUE_TEMPLATE/
│
├── docker-compose.yml       # Orquestração local
├── .env.example             # Exemplo de variáveis
├── .gitignore               # Git ignore
├── .editorconfig            # Editor config
├── LICENSE                  # Licença MIT
├── .prettierrc               # Prettier config
├── .eslintrc                 # ESLint config
└── package.json             # Workspace root

```

---

## 🚀 Instalação

### Pré-requisitos

- **Node.js** >= 18.0.0
- **npm** ou **yarn**
- **Docker** e **Docker Compose**
- **Git**

### Setup Inicial

1. **Clone o repositório**
```bash
git clone https://github.com/rodrigodanilo335-ai/ANTT.git
cd ANTT
```

2. **Instale as dependências**
```bash
npm install
```

3. **Configure variáveis de ambiente**
```bash
cp .env.example .env.local
```

4. **Inicie os serviços com Docker**
```bash
docker-compose up -d
```

5. **Execute as migrations**
```bash
npm run db:migrate
```

6. **Popule o banco (seed)**
```bash
npm run db:seed
```

---

## ⚙️ Configuração

### Variáveis de Ambiente

Crie um arquivo `.env.local` na raiz do projeto:

```env
# Database
DATABASE_URL=postgresql://user:password@localhost:5432/antt

# Frontend
NEXT_PUBLIC_API_URL=http://localhost:3001
NEXT_PUBLIC_APP_URL=http://localhost:3000

# Backend
PORT=3001
NODE_ENV=development
JWT_SECRET=seu_jwt_secret_super_seguro
JWT_EXPIRATION=7d

# OAuth
GOOGLE_CLIENT_ID=seu_id
GOOGLE_CLIENT_SECRET=seu_secret
DISCORD_CLIENT_ID=seu_id
DISCORD_CLIENT_SECRET=seu_secret

# Supabase Storage
NEXT_PUBLIC_SUPABASE_URL=sua_url
NEXT_PUBLIC_SUPABASE_KEY=sua_key

# Email
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=seu_email
SMTP_PASS=sua_senha

# Discord Webhooks
DISCORD_WEBHOOK_URL=seu_webhook
```

### Configuração do Husky

```bash
npm run prepare
```

---

## 🎨 Design

### Paleta de Cores

- **Primary Blue**: `#0066CC`
- **Secondary Blue**: `#0052A3`
- **Success Green**: `#22C55E`
- **Warning Orange**: `#F59E0B`
- **Error Red**: `#EF4444`
- **Gray**: `#6B7280`
- **White**: `#FFFFFF`
- **Dark**: `#111827`

### Tema

- ✅ Modo Claro (Light)
- ✅ Modo Escuro (Dark)
- ✅ Sistema (Preferência do SO)

### Responsividade

- ✅ Mobile (320px - 640px)
- ✅ Tablet (641px - 1024px)
- ✅ Desktop (1025px+)

---

## 🏃 Desenvolvimento

### Rodar Localmente

**Terminal 1 - Frontend:**
```bash
cd frontend
npm run dev
# Acesse: http://localhost:3000
```

**Terminal 2 - Backend:**
```bash
cd backend
npm run start:dev
# API: http://localhost:3001
# Swagger: http://localhost:3001/api/docs
```

**Terminal 3 - Database:**
```bash
docker-compose up -d postgres
# PostgreSQL: localhost:5432
```

### Scripts Disponíveis

```bash
# Frontend
npm run frontend:dev       # Desenvolvimento
npm run frontend:build     # Build produção
npm run frontend:lint      # Linting
npm run frontend:format    # Formatação

# Backend
npm run backend:dev        # Desenvolvimento
npm run backend:build      # Build produção
npm run backend:lint       # Linting
npm run backend:test       # Testes

# Database
npm run db:migrate         # Executar migrations
npm run db:seed            # Popular banco
npm run db:reset           # Reset banco
npm run db:studio          # Abrir Prisma Studio

# All
npm run dev                # Rodar tudo
npm run build              # Build de tudo
npm run lint               # Lint de tudo
npm run format             # Formatar tudo
```

---

## 🐳 Docker

### Rodar com Docker Compose

```bash
docker-compose up -d
```

Serviços disponíveis:
- **Frontend**: http://localhost:3000
- **Backend**: http://localhost:3001
- **PostgreSQL**: localhost:5432
- **Swagger**: http://localhost:3001/api/docs

### Build de Produção

```bash
docker-compose -f docker-compose.prod.yml up -d
```

---

## 📊 Páginas Implementadas

### Públicas
- ✅ Landing Page
- ✅ Login
- ✅ Cadastro
- ✅ Empresas
- ✅ Viagens
- ✅ Ranking
- ✅ Notícias
- ✅ Eventos
- ✅ Suporte

### Privadas (Usuário)
- ✅ Minha Conta
- ✅ Minha Carteira
- ✅ Minhas Passagens
- ✅ Configurações

### Painéis
- ✅ Painel Empresa
- ✅ Painel ANTT
- ✅ Painel Administrador

---

## 🔒 Segurança

- ✅ **JWT** - Autenticação com tokens
- ✅ **Refresh Tokens** - Renovação segura
- ✅ **2FA** - Autenticação de dois fatores
- ✅ **Criptografia** - Senhas com bcrypt
- ✅ **Rate Limiting** - Proteção contra força bruta
- ✅ **CORS** - Configuração segura
- ✅ **Helmet** - Headers de segurança
- ✅ **Validação** - Zod + Class Validator
- ✅ **Sanitização** - Proteção contra XSS
- ✅ **CSRF Protection** - Tokens CSRF
- ✅ **SQL Injection** - Queries preparadas com Prisma
- ✅ **HTTPS** - Pronto para produção

---

## 📚 Documentação

- [API Documentation](./docs/API.md)
- [Database Schema](./docs/DATABASE.md)
- [Architecture Guide](./docs/ARCHITECTURE.md)
- [Contributing Guide](./docs/CONTRIBUTING.md)
- [Deployment Guide](./docs/DEPLOYMENT.md)

---

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor:

1. Faça um Fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

Veja [CONTRIBUTING.md](./docs/CONTRIBUTING.md) para detalhes.

---

## 📋 Roadmap

### Fase 1: Infraestrutura ✅ (Atual)
- [x] Setup inicial
- [x] Arquitetura base
- [x] Segurança
- [ ] CI/CD completo

### Fase 2: Features Essenciais
- [ ] Autenticação completa
- [ ] Gerenciamento de empresas
- [ ] Sistema de rotas
- [ ] Vendas de passagens

### Fase 3: Painéis
- [ ] Painel de Empresa
- [ ] Painel ANTT
- [ ] Painel Administrador

### Fase 4: Avançado
- [ ] Notificações em tempo real
- [ ] Analytics
- [ ] Relatórios
- [ ] Integrações externas

---

## 📜 Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para detalhes.

---

## 📞 Suporte

- 📧 Email: support@antt.platform
- 💬 Discord: [ANTT Community](https://discord.gg/antt)
- 📖 Wiki: [Documentation](./docs)
- 🐛 Issues: [GitHub Issues](https://github.com/rodrigodanilo335-ai/ANTT/issues)

---

## 👥 Autores

- **Rodrigo Danilo** - Criador e Mantenedor

---

<div align="center">

**[⬆ Voltar ao topo](#-agência-nacional-de-transportes-terrestres-virtual)**

Desenvolvido com ❤️ para o transporte terrestre

</div>
