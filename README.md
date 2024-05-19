# Turborepo, Supabase, Expo, and Expo Web Starter

This is a boilerplate repository that sets up a monorepo using Turborepo, Supabase for backend services, and Expo & Expo Web for building cross-platform applications.

## What's inside?

This repository uses [Turborepo](https://turbo.build/) as a build tool for monorepos. It includes the following packages/apps:

### Apps and Packages

- `web`: a [Next.js](https://nextjs.org/) app
- `native`: an [Expo](https://expo.dev/) app for building cross-platform native applications
- `supabase`: a folder containing [Supabase](https://supabase.io/) backend services
- `eslint-config-custom`: `eslint` configurations (includes `eslint-config-next` and `eslint-config-prettier`)
- `tsconfig`: `tsconfig.json`s used throughout the monorepo

Each package/app is 100% [TypeScript](https://www.typescriptlang.org/).

### Utilities

This repository has some additional tools already setup for you:

- [TypeScript](https://www.typescriptlang.org/) for static type checking
- [ESLint](https://eslint.org/) for code linting
- [Prettier](https://prettier.io) for code formatting

### Build

To build all apps and packages, run the following command:

```sh
pnpm run build
```

### Develop

To develop all apps and packages, run the following command:

```sh
pnpm run dev
```

### Remote Caching

Turborepo can use a technique known as [Remote Caching](https://turbo.build/repo/docs/core-concepts/remote-caching) to share cache artifacts across machines, enabling you to share build caches with your team and CI/CD pipelines.

By default, Turborepo will cache locally. To enable Remote Caching you will need an account with Vercel. If you don't have an account you can [create one](https://vercel.com/signup), then enter the following commands:

```sh
npx turbo login
```

### Supabase

Supabase is a Firebase alternative. It provides a set of tools for backend development including a Postgres database, authentication, and storage. You can learn more about Supabase in the [`supabase/README.md`](supabase/README.md).

To run Supabase locally, you need to have Docker installed on your machine. Once Docker is installed, you can start Supabase with the following command:

```sh
cd supabase
pnpm run start
```

### Expo and Expo Web

Expo is a framework for building native apps using React. `native` is an Expo app that can be run on Android, iOS, and Web. You can start the app by running `pnpm run android`, `pnpm run ios`, or `pnpm run web` in the `apps/native` directory.

### GitHub Actions

This repository is set up with GitHub Actions for continuous integration (CI) and deployment (CD). The workflows for these actions can be found in the .github/workflows directory.

To set up these actions for your own use, you'll need to add your own secrets to your GitHub repository. These secrets include things like your `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, and any other environment variables you're using in your application.

To add these secrets:

Go to your repository on GitHub.
Click on "Settings".
Click on "Secrets".
Click on "New repository secret".
Add the name of the secret in the "Name" field and its corresponding value in the "Value" field.
Click on "Add secret".
Once you've added your secrets, the GitHub Actions workflows should be able to use these values and run your CI/CD pipelines successfully.

## Getting Started

First, install the dependencies:

```sh
pnpm install
```

Then, you can start the development server for the web app:

```sh
pnpm run dev
```

Or start the Expo app:

```sh
cd apps/native
pnpm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result of the web app. The Expo app can be opened using the Expo Go app on your phone or using an emulator.

You can start editing the page by modifying `apps/web/app/page.tsx` or `apps/native/App.tsx`. The page auto-updates as you edit the file.