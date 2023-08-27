# PHP QA Tools action

This action allows to run
[PHP QA tools](https://github.com/alximy/docker-php-qa-tools).

## Inputs

### `command`

**Required** The command to run. See the
[README file](https://github.com/alximy/docker-php-qa-tools#readme) for more
information about the available tools.

## Example usage

```yaml
uses: alximy/php-qa-tools-action@v1
with:
  command: 'php-cs-fixer fix --dry-run --diff --verbose'
```

## Disclaimer

The image of this action uses PHP 8.2, and the default predefined tools
extensions.
To customize the build and enable XDebug, AST and/or add more tools extensions,
you should either use Docker Compose instead or fork this action.
