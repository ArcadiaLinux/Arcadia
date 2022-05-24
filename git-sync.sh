#!/bin/bash
#
# Copyright (C) 2020-22 Arcadia Linux
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

echo "[*] Pulling newer files first"

git pull
git add --all iso

echo "[*] Enter commit comment: "
read input

git commit -m "$input"
git push -u origin main

echo "[*] Git changes synced successfully."
