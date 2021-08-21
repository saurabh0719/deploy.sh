# deploy.sh

Utility to deploy serverless python applications to AWS Lambda with [Zappa](https://github.com/zappa/Zappa) :zap:

### Requirements 

```sh
$ pip install zappa
```

The project root should contain a valid `zappa_settings.json` file to avoid running into errors.

### deploy.sh

This file contains an interactive menu to run common `Zappa` commands.

```sh
$ chmod +x deploy.sh  # grant permissions
```

```sh
$ ./deploy.sh
```

<hr>
