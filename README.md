# internetarchive-docker
Dockerfile for the archive.org Command-Line Tool


## Usage

See https://archive.org/services/docs/api/internetarchive/cli.html for a detailed documentation of the tool.


### Execute read actions

#### Example: Read metadata

```
docker run --rm wesen1/internetarchive metadata <item identifier>
```


### Execute write actions

#### Set up config

```
docker run --rm -it -v "$PWD/config:/root/.config/internetarchive/" wesen1/internetarchive configure
```

#### Example: Upload file

```
docker run --rm -v "$PWD/config:/root/.config/internetarchive/" wesen1/internetarchive upload <item identifier> <file path>
```
