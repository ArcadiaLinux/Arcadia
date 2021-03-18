#!/bin/bash

WORK_DIR='work'
OUTPUT_DIR='output'
PROFILE_DIR='iso'

mkdir -p "$OUTPUT_DIR"
mkdir -p "$WORK_DIR"

cp "$PROFILE_DIR/pacman.conf" "$PROFILE_DIR/airootfs/etc"

sudo rm -rf $WORK_DIR*

sudo mkarchiso -v -w $WORK_DIR -o $OUTPUT_DIR $PROFILE_DIR
