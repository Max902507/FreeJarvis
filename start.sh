#!/bin/sh
# Start unter Mac und Linux:  im Terminal  sh start.sh
cd "$(dirname "$0")" || exit 1
if command -v python3 >/dev/null 2>&1; then exec python3 server.py; fi
if command -v python >/dev/null 2>&1; then exec python server.py; fi
echo "Python wurde nicht gefunden. Bitte Python 3 installieren: https://www.python.org"
