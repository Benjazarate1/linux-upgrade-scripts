#!/bin/bash
echo "======================="
echo "  Linux Update Automation  "
echo "======================="
echo

echo "Fecha y Hora"
date
echo

echo "Ejectutando: apt update"
sudo apt update
echo

echo "Ejecutando apt upgrade"
sudo apt upgrade -y
echo

echo "Proceso terminado correctamente."
