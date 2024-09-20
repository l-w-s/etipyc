# Eset Threat Intelligence Proto to Yaml Compiler (ETIPYC)

Compile ETI proto files into yaml file for ETI Public API Swagger documentation.

## USAGE

### Install

First install all the necessary libraries by running:

```bash
./install.sh
```

This should be done only once (or every time proto files change).

### Compile

Then compile proto files info yaml file by running:

```bash
./compile.sh
```

Output file should be in **_output/** directory.