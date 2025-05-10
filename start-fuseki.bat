@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set "SCRIPT_DIR=%~dp0"
set "FUSEKI=%SCRIPT_DIR%deployment\apache-jena-fuseki-5.4.0\fuseki-server.bat"
set "ONTOLOGY=%SCRIPT_DIR%ontology\ontology.ttl"
set "DATA=%SCRIPT_DIR%data\output.ttl"

echo [%DATE% %TIME%] Starting Apache Jena Fuseki…

"%FUSEKI%" ^
  --update ^
  --file "%ONTOLOGY%" ^
  --file "%DATA%" ^
  /fair