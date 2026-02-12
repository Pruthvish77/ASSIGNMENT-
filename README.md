# Production App

> A scalable, production-ready full-stack application built with **Modular Monolith** architecture.

[![Node](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.3-blue.svg)](https://www.typescriptlang.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## Tech Stack

| Layer        | Technology                    | Purpose                     |
| ------------ | ----------------------------- | --------------------------- |
| **Frontend** | React 18 + TypeScript + Vite  | SPA with fast HMR           |
| **Backend**  | NestJS + Node.js + TypeScript | REST API (Modular Monolith) |
| **Database** | PostgreSQL                    | Primary data store          |
| **DevOps**   | Docker, GitHub Actions        | Containerization & CI/CD    |

---

## Project Structure

```
├── frontend/                 # React SPA
│   ├── public/               # Static assets
│   ├── src/
│   │   ├── assets/           # Images, fonts
│   │   ├── components/       # Reusable components
│   │   │   ├── common/       # Shared components
│   │   │   └── ui/           # UI primitives
│   │   ├── hooks/            # Custom React hooks
│   │   ├── layouts/          # Page layouts
│   │   ├── pages/            # Route-level components
│   │   ├── services/         # API client layer
│   │   ├── store/            # State management
│   │   ├── types/            # TypeScript definitions
│   │   └── utils/            # Helper functions
│   └── ...
├── backend/                  # NestJS API
│   ├── src/
│   │   ├── common/           # Shared decorators, guards, pipes
│   │   ├── config/           # Configuration modules
│   │   ├── modules/          # Feature modules (auth, users, health)
│   │   ├── app.module.ts
│   │   └── main.ts
│   └── ...
├── docs/                     # Documentation
├── scripts/                  # Build & deployment scripts
├── .github/workflows/        # CI/CD pipelines
├── docker-compose.yml        # Local PostgreSQL
└── README.md
```

---

## Prerequisites

- **Node.js** 18.x or higher
- **npm** 9+ (or yarn/pnpm)
- **PostgreSQL** 14+ (for database features)
- **Git**

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Pruthvish77/ASSIGNMENT-/
cd ASSIGNMENT
```

### 2. Install dependencies

```bash
# Frontend
cd frontend && npm install && cd ..

# Backend
cd backend && npm install && cd ..
```

### 3. Configure environment

```bash
# Copy example env files
cp frontend/.env.example frontend/.env
cp backend/.env.example backend/.env

# Edit .env files with your values
```

### 4. Start the application

**Option A: Run separately (development)**

```bash
# Terminal 1 - Backend (port 3000)
cd backend && npm run start:dev

# Terminal 2 - Frontend (port 5173)
cd frontend && npm run dev
```

**Option B: Database (optional)**

```bash
docker-compose up -d   # Start PostgreSQL on port 5432
```

### 5. Access the app

| Service  | URL                       |
| -------- | ------------------------- |
| Frontend | http://localhost:5173     |
| Backend  | http://localhost:3000     |
| API Docs | http://localhost:3000/api |

---

## Available Scripts

### Frontend

| Command           | Description              |
| ----------------- | ------------------------ |
| `npm run dev`     | Start dev server (Vite)  |
| `npm run build`   | Production build         |
| `npm run preview` | Preview production build |

### Backend

| Command              | Description           |
| -------------------- | --------------------- |
| `npm run start:dev`  | Start with hot reload |
| `npm run build`      | Compile TypeScript    |
| `npm run start:prod` | Run production build  |

---

## Architecture

- **Modular Monolith**: Single deployable application with clear module boundaries
- **Scalability**: Horizontal scaling via multiple instances behind load balancer
- **Separation of concerns**: Frontend (React) and Backend (NestJS) as separate packages

---

## Contributing

1. Create a feature branch: `git checkout -b feature/my-feature`
2. Commit changes: `git commit -m "feat: add my feature"`
3. Push to branch: `git push origin feature/my-feature`
4. Open a Pull Request

---

## License

MIT © [Pruthvish77](https://github.com/Pruthvish77/)
