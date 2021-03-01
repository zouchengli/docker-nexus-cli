# docker-nexus-cli

## image build
```shell
chengli.zou@clz-mbp docker-nexus-cli % git clone https://github.com/zouchengli/docker-nexus-cli.git
chengli.zou@clz-mbp docker-nexus-cli % docker build . -t zouchengli/nexus-cli
```

## usage
```shell
chengli.zou@clz-mbp docker-nexus-cli % docker run -eNEXUS_HOST=http://nexus3.xxx.com -eNEXUS_USER=admin -eNEXUS_PASS=admin -eNEXUS_REPO=docker-releases  --rm -it zouchengli/nexus-cli
~ # sh /opt/crendetials.sh
~ # nexus-cli --help
NAME:
   Nexus CLI - Manage Docker Private Registry on Nexus

USAGE:
   nexus-cli [global options] command [command options] [arguments...]

VERSION:
   1.0.0-beta

AUTHOR:
   Mohamed Labouardy <mohamed@labouardy.com>

COMMANDS:
     configure  Configure Nexus Credentials
     image      Manage Docker Images
     help, h    Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --help, -h     show help
   --version, -v  print the version
~ # 

```
# docker-nexus-cli
