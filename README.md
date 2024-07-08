# daytona Docker Extension

Daytona extension for Docker Desktop
## Pre Install steps

By now this extension requires some directories pre-created by hand prior to the installation either by extension market place o manually.
This directory will be shared by Daytona process/workspaces and Daytona Docker extension. Execute only once time.
Also Docker Desktop needs access to the base directory, please check Settings->Resources->File sharing options.
Please execute using command line:

```bash
sudo rm -rf /Users/Shared/daytona/
mkdir -p /Users/Shared/daytona/.config/daytona/server/build
mkdir /Users/Shared/daytona/.config/daytona/server/registry
mkdir -p /Users/Shared/daytona/.config/daytona/providers
```

## Manual Installation

Until this extension is ready at Docker Extension Hub you can install just by executing:

```bash
$ docker extension install mochoa/daytona-docker-extension:0.21.1
Image not available locally, pulling mochoa/daytona-docker-extension:0.21.1...
Extracting metadata and files for the extension "mochoa/daytona-docker-extension:0.21.1"
Installing service in Desktop VM...
Setting additional compose attributes
Installing Desktop extension UI for tab "Daytona"...
Extension UI tab "Daytona" added.
Starting service in Desktop VM......
Service in Desktop VM started
Extension "Daytona client tool" installed successfully
```

**Note**: Docker Extension CLI is required to execute above command, follow the instructions at [Extension SDK (Beta) -> Prerequisites](https://docs.docker.com/desktop/extensions-sdk/#prerequisites) page for instructions on how to add it.

## Using daytona Docker Extension

Once the extension is installed a new extension is listed at the pane Extensions of Docker Desktop.

By clicking at Daytona icon the extension main window will display a progress bar for a few second and finally Daytona server and CLI is launched.

![Progress bar indicator](docs/images/screenshot1.png?raw=true).

## Uninstall

To uninstall the extension just execute:

```bash
$ docker extension uninstall mochoa/daytona-docker-extension:0.21.1
Extension "Daytona client tool" uninstalled successfully
```

## Source Code

As usual the code of this extension is at [GitHub](https://github.com/marcelo-ochoa/daytona-docker-extension), feel free to suggest changes and make contributions, note that I am a beginner developer of React and TypeScript so contributions to make this UI better are welcome.
