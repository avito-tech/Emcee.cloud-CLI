# Command-Line interface for [Emcee.cloud](https://emcee.cloud)

## Instalation

### MacOS

#### Brew

```sh
brew tap avito-tech/tap && brew install emcee-cloud
```

#### Terminal

```sh
curl --location https://github.com/avito-tech/Emcee.cloud-CLI/releases/download/{VERSION}/emcee-cloud_Darwin_all.tar.gz --output emcee-cloud_Darwin_all.tar.gz
```
```sh
tar -xzf emcee-cloud_Darwin_all.tar.gz /usr/bin/emcee-cloud
```
```sh
chmod +x /usr/bin/emcee-cloud
```
```sh
xattr -dr com.apple.quarantine /usr/bin/emcee-cloud
```

### Linux

#### Terminal

```sh
curl --location https://github.com/avito-tech/Emcee.cloud-CLI/releases/download/{VERSION}/emcee-cloud_Linux_{CPU_ARCHITECTURE}.tar.gz --output emcee-cloud_Linux_{CPU_ARCHITECTURE}.tar.gz
```
```sh 
tar -xzf emcee-cloud_Linux_{CPU_ARCHITECTURE}.tar.gz /usr/bin/emcee-cloud
```
```sh
chmod +x /usr/bin/emcee-cloud
```

## Documentation

For quick reference you can use `emcee-cloud --help` command

For more information check our [documentation](https://docs.emcee.cloud/cloud/api/)
