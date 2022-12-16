# ts-node-bootstrap

A template repository for Node TypeScript projects. Includes TypeScript, Jest for testing, and Prettier for formatting. Configures TS and Jest with sensible defaults; does not modify Prettier's preset formatting opinions.

Includes some `npm` scripts to make getting started easier:

`npm run build`: runs the TypeScript compiler (`tsc`) on the `/src` directory and outputs JS files to the `/dist` folder

`npm run start`: runs the above build script, then starts the app with an entry point of `dist/main.js` - does not rebuild or reload with changes (see below for a script that will track changes)

`npm run dev`: builds and starts the app, then watches for changes, rebuilds as-needed, and restarts the app when changes are detected

`npm run test`: runs the test files in the project

`npm run test:watch`: runs the test files in the project and watches for changes; reruns tests on changes

`npm run lint`: runs ESLint on the project, which will show a list of warnings and errors you may want or need to address; does not change any files

`npm run lint:fix`: runs ESLint on the project, correcting fixable errors when possible

`npm run format`: runs the Prettier formatter on the project

`npm run fix`: runs the above `lint:fix` command, followed by the `format` command; an all-in-one lint and format command. This will exit before formatting if there are unfixable errors detected by the linter, so watch for error output that you'll need to address.

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
