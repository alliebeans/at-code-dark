# @code:dark

Color theme project directory is in `./at-code-dark`.

## Development notes

### Starting development environment

`nix develop`

### Dependencies (install locally)

**Starting new theme:** `npm install yo generator-code`
**Generating VSIX package:** `npm install @vscode/vsce`

### Starting a new color theme

`./node_modules/.bin/yo code`

### Generating a VSIX package from an existing color theme

> Make sure script variables are up-to-date before using

`nix develop && ./generate.sh`