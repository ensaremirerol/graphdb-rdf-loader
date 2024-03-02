# GraphDb RDF Loader

This is a straightforward tool designed to initialize a GraphDB instance with RDF data from one or more files.

It utilizes the official GraphDB docker image to load RDF data into a GraphDB instance.

The tool executes GraphDB's importrdf command to create a new repository and import RDF data into it.

Subsequently, it transfers the newly created repository to the GraphDB data directory.

## Usage 🏃‍♂️

```bash
docker run -v ./rdf_files:/init \
        -v <path_to_graphdb_data>:/opt/graphdb/home \
        -v ./repo_config.ttl:/repo_config.ttl:ro \
        ghcr.io/ensaremirerol/graphdb-rdf-loader:latest
```

## Configuration 🛠

1- Specify graphdb data directory with `-v <path_to_graphdb_data>:/opt/graphdb/home` option.

2- Copy your RDF files to `./rdf_files` directory. Or you can mount your own directory by changing `-v ./rdf_files:/init` option.

3- Change provided `repo_config.ttl` file according to your needs. This file will be used to create a new repository in GraphDB.

## Example 🌟

```bash
docker run -v ./rdf_files:/init \
        -v /home/user/graphdb_data:/opt/graphdb/home \
        -v ./repo_config.ttl:/repo_config.ttl:ro \
        ghcr.io/ensaremirerol/graphdb-rdf-loader:latest
```

## Warning ‼️

This tool leverages the official GraphDB docker image and tools. If you do not possess a valid GraphDB license, you will be restricted to the features available in the free version. This tool does not offer any license or method to circumvent GraphDB licensing.

With the free version, you can still utilize the tool to load RDF data into a GraphDB instance. However, it will operate slower than the enterprise version, as the free version is limited to using only 1 CPU core.

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
