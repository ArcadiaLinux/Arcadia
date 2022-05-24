#!/bin/bash
#
# Copyright (C) 2022 Arcadia Linux
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

echo "[-] Preparing build environment..."

# Set directory names/paths
WORK_DIR='tmp'
OUTPUT_DIR='out'
PROFILE_DIR='iso'

# Create output and work directories.
mkdir -p "$OUTPUT_DIR"
mkdir -p "$WORK_DIR"

cp "$PROFILE_DIR/pacman.conf" "$PROFILE_DIR/airootfs/etc"

# Cleanup step
rm -rf $WORK_DIR

echo "[-] Generating ISO..."
# Generate ISO using mkarchiso
mkarchiso -v -w $WORK_DIR -o $OUTPUT_DIR $PROFILE_DIR
