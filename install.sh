#!/bin/bash

set -e

echo "Creating symbolic link now..."

CURRENT_DIR=$(pwd)

for FILE in $(ls .)
do
    [[ "$FILE" == "README.md" ]] && continue
    [[ "$FILE" == ".git" ]] && continue
    [[ "$FILE" == ".DS_Store" ]] && continue
    [[ "$FILE" == "tags" ]] && continue
    [[ "$FILE" == "install.sh" ]] && continue

    sudo ln -sf "$CURRENT_DIR/$FILE" "/usr/local/bin/$FILE"
done

echo "Finished creating symbolic link!"

exit 0
