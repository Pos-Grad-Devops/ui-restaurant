
# UiRestaurant

UiRestaurant é uma aplicação web para gestão de pedidos, produtos, mesas e sessões em restaurantes, desenvolvida como parte de um projeto de pós-graduação em DevOps. O sistema é composto por um frontend em Angular, backend em Node.js/Express, banco de dados relacional e infraestrutura orquestrada com Docker e Kubernetes.

## Sumário

- [Descrição do Projeto](#descrição-do-projeto)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Estrutura de Diretórios](#estrutura-de-diretórios)
- [Como Executar Localmente](#como-executar-localmente)
- [Testes](#testes)
- [Infraestrutura com Docker e Kubernetes](#infraestrutura-com-docker-e-kubernetes)
- [Autores](#autores)

## Descrição do Projeto

O UiRestaurant permite o gerenciamento completo de um restaurante, incluindo:
- Cadastro e visualização de produtos
- Gestão de pedidos
- Controle de mesas e sessões
- Interface web moderna e responsiva
- API RESTful para integração

O projeto é dividido em três principais partes:
1. **front/**: Aplicação Angular (interface do usuário)
2. **api/**: Backend Node.js/Express (serviços REST)
3. **kubernetes/**: Manifests para orquestração dos serviços em ambiente cloud-native

## Tecnologias Utilizadas

- **Frontend:** Angular 20+
- **Backend:** Node.js, Express, TypeScript
- **Banco de Dados:** Relacional (configuração via scripts SQL)
- **Docker:** Containers para front, api e banco de dados
- **Kubernetes:** Orquestração dos serviços, namespaces, deployments, services, configmaps, PVC
- **Ferramentas DevOps:** Docker Compose, scripts de inicialização, CI/CD (sugestão)

## Estrutura de Diretórios

```
├── api/           # Backend Node.js/Express
│   ├── src/
│   ├── controllers/
│   ├── database/
│   ├── middlewares/
│   ├── routes/
│   └── utils/
├── front/         # Frontend Angular
│   ├── src/
│   ├── app/
│   ├── assets/
│   └── scripts/
├── kubernetes/    # Manifests para orquestração
│   ├── back/
│   ├── db/
│   ├── front/
│   └── logs/
├── docker-compose.yml
├── init.sql
├── insert_products.sql
└── README.md
```

## Como Executar Localmente

### Pré-requisitos
- Node.js >= 18
- Angular CLI
- Docker e Docker Compose

### Backend (API)

```bash
cd api
npm install
npm run start
```
Por padrão, a API estará disponível em `http://localhost:3000`.

### Frontend (Angular)

```bash
cd front
npm install
ng serve
```
Acesse `http://localhost:4200` no navegador.

### Usando Docker Compose

Para subir todos os serviços (front, api, db) via containers:

```bash
docker-compose up --build
```

## Testes

### Frontend
```bash
ng test
```

### Backend
```bash
npm test
```

## Infraestrutura com Docker e Kubernetes

### Docker
O projeto possui Dockerfiles para o frontend e backend, permitindo a criação de containers isolados. O arquivo `docker-compose.yml` orquestra os serviços localmente para desenvolvimento e testes.

### Kubernetes
Na pasta `kubernetes/` estão os manifests para deploy em clusters Kubernetes:
- **back/**: Deployments, Services, ConfigMaps para o backend
- **db/**: Deployments, PVC, ConfigMaps para o banco de dados
- **front/**: Deployments, Services, ConfigMaps para o frontend

Para aplicar os recursos em um cluster Kubernetes:

```bash
kubectl apply -f kubernetes/back/
kubectl apply -f kubernetes/db/
kubectl apply -f kubernetes/front/
```
Scripts `apply-all.sh` facilitam a aplicação de todos os recursos de cada módulo.

## Autores

Projeto desenvolvido por alunos da pós-graduação em DevOps.

---
Para dúvidas ou sugestões, abra uma issue ou entre em contato com os mantenedores.
