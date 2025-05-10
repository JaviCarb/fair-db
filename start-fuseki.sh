#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FUSEKI_HOME="$ROOT/deployment/apache-jena-fuseki-5.4.0"
FUSEKI="$FUSEKI_HOME/fuseki-server"
ONTOLOGY="$ROOT/ontology/ontology.ttl"
DATA="$ROOT/data/output.ttl"

echo "[$(date)] Starting Apache Jena Fuseki…"

exec "$FUSEKI" \
    --update \
    --file="$ONTOLOGY" \
    --file="$DATA" \
    /fair
