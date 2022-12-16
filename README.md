# ts-node-bootstrap

A template repository for Node TypeScript projects. Includes TypeScript, Jest for testing, and Prettier for formatting. Configures TS and Jest with sensible defaults; does not modify Prettier's preset formatting opinions.

Includes some `npm` scripts to make getting started easier:

`npm run build`: runs the TypeScript compiler (`tsc`) on the `/src` directory and outputs JS files to the `/dist` folder

`npm run start`: runs the above build script, then starts the app with an entry point of `dist/main.js` - does not rebuild or reload with changes (see below for a script that will track changes)

`npm run dev`: builds and starts the app, then watches for changes, rebuilds as-needed, and restarts the app when changes are detected

`npm run test`: runs the test files in the project

`npm run test:watch`: runs the test files in the project and watches for changes; reruns tests on changes

`npm run format`: runs the Prettier formatter on the project


Documentation for options you may want to change:
- [`tsconfig` options](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html)
- [Jest CLI options](https://jestjs.io/docs/cli)
- [Prettier config](https://prettier.io/docs/en/configuration.html)
- [`.gitignore`-ing more things](https://github.com/github/gitignore/blob/main/Node.gitignore)
- [`concurrently` CLI options](https://www.npmjs.com/package/concurrently)
- [`nodemon` CLI options](https://www.npmjs.com/package/nodemon)
