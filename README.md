# ts-node-bootstrap

A template repository for Node TypeScript projects. Includes TypeScript, Jest for testing, Prettier for formatting, and ESLint for linting. Configures TS, Jest, and ESLint with sensible, basic defaults; does not modify Prettier's preset formatting opinions. Has been tested with Node 16, 18, and 20.

## Scripts

| Command              | Description                                                                                                                                                                                             |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `npm run build`      | removes prior build from `/dist` folder, then runs the TypeScript compiler (`tsc`) on the `/src` directory and outputs JS files to the `/dist` folder                                                   |
| `npm run start`      | starts the app with an entry point of `dist/main.js` (it assumes the `/dist` folder has already been built)                                                                                             |
| `npm run dev`        | builds and starts the app - does not rebuild or reload with changes (see below for a script that will track changes)                                                                                    |
| `npm run dev:watch`  | builds and starts the app, then watches for changes, rebuilds as-needed, and restarts the app when changes are detected                                                                                 |
| `npm run test`       | runs the test files in the project                                                                                                                                                                      |
| `npm run test:watch` | runs the test files in the project and watches for changes; reruns tests on changes                                                                                                                     |
| `npm run lint`       | runs ESLint on the project, which will show a list of warnings and errors you may want or need to address; does not change any files                                                                    |
| `npm run lint:fix`   | runs ESLint on the project, correcting fixable errors when possible                                                                                                                                     |
| `npm run format:fix` | runs the Prettier formatter on the project, writes formatting changes to files                                                                                                                          |
| `npm run fix`        | runs the above `format:fix` command, followed by `lint:fix`; an all-in-one lint and format command that writes its changes. There may still be unfixable linting errors, so keep an eye on this output. |

## Extra Bits

Includes a GitHub Actions workflow to confirm the basics are working and some Dependabot configuation in the `.github` directory to try to keep this template up to date; you will likely want to delete or edit this directory to suit your own needs.

## Resources

Documentation for options you may want to change:

- [`tsconfig` options](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html)
- [Jest CLI options](https://jestjs.io/docs/cli)
- [Prettier config](https://prettier.io/docs/en/configuration.html)
- [`.gitignore`-ing more things](https://github.com/github/gitignore/blob/main/Node.gitignore)
- [`concurrently` CLI options](https://www.npmjs.com/package/concurrently)
- [`nodemon` CLI options](https://www.npmjs.com/package/nodemon)
- The base ESLint config is from [this article](https://khalilstemmler.com/blogs/typescript/eslint-for-typescript/) about how to use ESLint with TypeScript
- Official ESLint docs [here](https://eslint.org/docs/latest/)
- And official `typescript-eslint` plugin docs [here](https://typescript-eslint.io/)
