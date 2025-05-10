# FeriaDB: A Knowledge Graph for a fair domain

This repository contains all the necessary components to deploy, explore, and extend the FAIR Knowledge Graph using Apache Jena Fuseki.

## Starting the Fuseki Server

These scripts will launch Apache Jena Fuseki with:

- An in-memory dataset at `/fair`
- Ontology and data preloaded from `ontology/ontology.ttl` and `data/output.ttl`
- SPARQL Update enabled (`--update`)

### Linux / macOS

```bash
chmod +x start-fuseki.sh
./start-fuseki.sh
```

Once running, open your browser to:

[http://localhost:3030/fair/](http://localhost:3030/fair/)

### Windows

Double-click `start-fuseki.bat` or run from Command Prompt:

```cmd
start-fuseki.bat
```

Then visit:

[http://localhost:3030/fair/](http://localhost:3030/fair/)

---

## SPARQL Endpoint

- **SPARQL UI**: [http://localhost:3030/fair/](http://localhost:3030/fair/)
- **SPARQL Query Endpoint**: `http://localhost:3030/fair/query`
- **SPARQL Update Endpoint**: `http://localhost:3030/fair/update`

You can use this interface to query the data, update it, or explore it interactively.

---

## How It Works

- The ontology (`ontology/ontology.ttl`) defines the FAIR domain concepts.
- The data (`data/output.ttl`) includes instances generated from CSVs via R2RML mappings.
- Fuseki is configured to load both files at runtime into memory for fast access.

---

## Tips

- Edit the `output.ttl` or `ontology.ttl` files to update data or schema.
- Regenerate the RDF using your R2RML mapping file in `mappings/` if the CSV changes.

---

## License

This project uses Apache Jena Fuseki, licensed under the Apache License 2.0. See the LICENSE and NOTICE files in the `deployment/` folder.


## Credits

This project is part of the course Knowledge Representation and Reasoning (INFO9014) imparted at the University of Liège.

Álvaro Adrada Martínez-Flórez
Javier Carballal Morgade