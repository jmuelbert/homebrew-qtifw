# Astro Starter Kit: Basics

```bash
npm create astro@latest -- --template basics
```

[![Open in StackBlitz][stackblitz_img]][stackblitz]
[![Open with CodeSandbox][codesandbox_img]][codesandbox]

> 🧑‍🚀 **Seasoned astronaut?** Delete this file. Have fun!

![basics][basics]

## 🚀 Project Structure

Inside of your Astro project, you'll see the following folders and files:

```bash
/
├── public/
│   └── favicon.svg
├── src/
│   ├── components/
│   │   └── Card.astro
│   ├── layouts/
│   │   └── Layout.astro
│   └── pages/
│       └── index.astro
└── package.json
```

Astro looks for `.astro` or `.md` files in the `src/pages/` directory. Each page is
exposed as a route based on its file name.

There's nothing special about `src/components/`, but that's where we like to put any
Astro/React/Vue/Svelte/Preact components.

Any static assets, like images, can be placed in the `public/` directory.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                | Action                                           |
|:-----------------------|:-------------------------------------------------|
| `npm install`          | Installs dependencies                            |
| `npm run dev`          | Starts local dev server at `localhost:3000`      |
| `npm run build`        | Build your production site to `./dist/`          |
| `npm run preview`      | Preview your build locally, before deploying     |
| `npm run astro ...`    | Run CLI commands like `astro add`, `astro check` |
| `npm run astro --help` | Get help using the Astro CLI                     |

## 👀 Want to learn more?

Feel free to check [our documentation][documentation] or jump into our
[Discord server][discord].

[basics]: https://user-images.githubusercontent.com/4677417/186188965-73453154-fdec-4d6b-9c34-cb35c248ae5b.png
[stackblitz_img]: https://developer.stackblitz.com/img/open_in_stackblitz.svg
[stackblitz]: https://stackblitz.com/github/withastro/astro/tree/latest/examples/basics
[codesandbox_img]: https://assets.codesandbox.io/github/button-edit-lime.svg
[codesandbox]: https://codesandbox.io/p/sandbox/github/withastro/astro/tree/latest/examples/basics
[documentation]: https://docs.astro.build
[discord]: https://astro.build/chat
