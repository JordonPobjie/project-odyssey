#!/bin/bash

########################################
# Project Odyssey
#
# Common helper functions
########################################

pass() {
    printf "✓ %s\n" "$1"
}

fail() {
    printf "✗ %s\n" "$1"
}

info() {
    printf "• %s\n" "$1"
}

section() {
    echo
    echo "========================================"
    echo "$1"
    echo "========================================"
}

heading() {
    echo
    echo "$1"
    echo "----------------------------------------"
}
