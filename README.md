# M2-B2C V.3

This is a monorepo powered by [Turborepo](https://turbo.build/repo) using `pnpm` as the package manager. It contains apps and shared packages for a scalable and consistent development experience.

---

## 🚀 Getting Started

### 1. Install dependencies

```bash
pnpm install
```

### 2. Run all apps in development

```bash
pnpm dev
```

Or run a specific app:

```bash
turbo run dev --filter APP_NAME
```

### 3. Lint and format

```bash
pnpm lint
pnpm format
```

---

## 🛠 Scaffolding a New App

Use the built-in script to create a new app from `_template`:

```bash
chmod +x generate-app.sh
./generate-app.sh
```

It will:

- Ask for the new app name
- Copy from `apps/_template` to `apps/<your-app>`
- Update the `package.json` name
- Run `pnpm install`

---

## ✅ Tooling

- **Turborepo** — Task and cache orchestration
- **pnpm** — Fast package manager
- **Next.js** — App framework
- **TypeScript** — Type-safe development
- **ESLint + Prettier** — Code quality
- **TailwindCSS** — Utility-first CSS
- **Husky + lint-staged** — Pre-commit hooks

---

## 📦 Shared Packages

- `@repo/eslint-config`
- `@repo/tailwind-config`
- `@repo/typescript-config`
- `@repo/ui`

These are consumed by apps to ensure consistency.

---

## 📄 License

MIT
