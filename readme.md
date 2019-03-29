GitHub Framer Auto Build and Publishing Action

1. Make sure GitHub Actions is enabled for your repo.
2. Add these to the root in a `.github` folder.
3. Add your `FRAMER_TOKEN` to your project workflow.

Whenever a commit is pushed, the GitHub action will build the Framer project. On commits pushed to the `master` branch, the Framer project will additionally be published to the store.

For more documentation about how to configure the Framer CLI, check out the [`framer-cli` package on npm](https://www.npmjs.com/package/framer-cli)
