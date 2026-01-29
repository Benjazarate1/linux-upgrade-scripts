#!/usr/bin/env bash
set -euo pipefail

detect_os() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        OS="mac"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        OS="linux"
    else
        echo "Operating System not supported: $OSTYPE"
        exit 1
    fi 
}

set_commands(){
    if [[ "$OS" == "mac" ]]; then
        PKG_UPDATE="brew update"
        PKG_UPGRADE="brew upgrade"
        PKG_CLEANUP="brew cleanup"
    elif [[ "$OS" == "linux" ]]; then
        PKG_UPDATE="sudo apt update"
        PKG_UPGRADE="sudo apt upgrade -y"
        PKG_CLEANUP="sudo apt autoremove -y && sudo apt autoclean"
    fi
}

print_header(){
    echo "=========================================="
    echo "          System Update Script            "
    echo "=========================================="
    echo
}

update_system(){
    echo "System updating"
    $PKG_UPDATE
    $PKG_UPGRADE
}

cleanup_system(){
    echo "Cleaning"
    $PKG_CLEANUP
}

main(){
    print_header
    detect_os
    set_commands
    update_system
    cleanup_system
    echo
    echo "Process Completed Successfully"
}

main
