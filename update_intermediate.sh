#!/usr/bin/env bash

set -euo pipefail

PKG_UPDATE="brew update"
PKG_UPGRADE="brew upgrade"
PKG_CLEANUP="brew cleanup"

echo "======================="
echo "  Linux Update Automation  "
echo "======================="
echo

echo "Fecha y Hora"
date
echo

echo "Ejectutando brew update"
$PKG_UPDATE
echo

echo "Ejecutando brew upgrade"
$PKG_UPGRADE
echo

echo "Ejecutando brew cleanup"
$PKG_CLEANUP
echo "Proceso terminado correctamente."
