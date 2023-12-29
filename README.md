# jikan-ga-mada-aru

A test repo for new ember addons:

- gts/gjs
- glint
- embroider
- css modules

## Description

Testing embers new gts components with glint, css modules, and embroider. With glint and plugins you also get errors for css styles within the template, as well as what you'd normally expect from eslint and typescript.

Everything is code-completing and type-safe in this demo which is neat to have.

## css types

to generate css type files:

```bash
pnpm lint
```

or use npx:

```bash
npx type-css-modules --src app
```

## Note

- using alpha version of elsint-plugin-ember for gts/gjs support
- this requires prettier-plugin-ember-template-tag >= v2.0.0
