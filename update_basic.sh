#!/bin/bash
set -euo pipefail
echo "Hora actual:"
date
echo "Actualizando sistema..."
PKG_update="brew update"
PKG_upgrade="brew upgrade"
$PKG_update
$PKG_upgrade
echo "Listo."

