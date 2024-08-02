# daytona Docker Extension

Daytona extension for Docker Desktop

## Pre Install steps

By now this extension requires some directories pre-created by hand prior to the installation either by extension market place o manually.
This directory will be shared by Daytona process/workspaces and Daytona Docker extension. Execute only once time.
Also Docker Desktop needs access to the base directory, please check Settings->Resources->File sharing options.
Please execute using command line:

```bash
sudo rm -rf /Users/Shared/daytona
sudo mkdir -p /Users/Shared/daytona
sudo chown -R "$(id -u):$(id -g)" /Users/Shared/daytona
```

## Manual Installation

Until this extension is ready at Docker Extension Hub you can install just by executing:

```bash
$ docker extension install mochoa/daytona-docker-extension:0.24.0
Image not available locally, pulling mochoa/daytona-docker-extension:0.24.0...
Extracting metadata and files for the extension "mochoa/daytona-docker-extension:0.24.0"
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

![Progress bar indicator](docs/images/screenshot1.png?raw=true)

![Daytona CLI Welcome Page](docs/images/screenshot2.png?raw=true)

## Daytona Server logs

Using CLI Pane is posible to see Daytona Serrver logs using:

```bash
[daytona-docker-extension ~]$  tail -f /tmp/serve.log 
INFO[0007] Provider docker-provider registered          
INFO[0007] Setting default targets                      
INFO[0007] Target local set                             
INFO[0007] Default targets set                          
INFO[0007] Provider docker-provider initialized         
INFO[0007] Providers registered                         
INFO[0007] Starting api server on port 3986             
INFO[0007] API REQUEST                                   URI=/health latency="121.042µs" method=GET status=200
INFO[0008] API REQUEST                                   URI=/health latency="38.125µs" method=GET status=200
INFO[0008] API REQUEST                                   URI=/health latency="25.833µs" method=GET status=200
```

## Know kveats

First time execution, right after installing the extesion you could see an error as:

```bash
Success! Got 200 OK from http://localhost:3986/health after 1 attempts.
FATA[0000] config does not exist. Run `daytona serve` to create a default profile or `daytona profile add` to connect to a remote server. 
```

Just ignore it, first line says Daytona Server is up and running, but *daytona whoami* commands shows a fatal error, this is due that Daytona Server is finishing the initial creation steps.

## Uninstall

To uninstall the extension just execute:

```bash
$ docker extension uninstall mochoa/daytona-docker-extension:0.24.0
Extension "Daytona client tool" uninstalled successfully
$ sudo rm -rf /Users/Shared/daytona
```

## Source Code

As usual the code of this extension is at [GitHub](https://github.com/marcelo-ochoa/daytona-docker-extension), feel free to suggest changes and make contributions, note that I am a beginner developer of React and TypeScript so contributions to make this UI better are welcome.
