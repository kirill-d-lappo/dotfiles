#!/bin/bash

file="$1"
width=$2
height=$3
x=$4
y=$5

# Check if a command is available
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Preview files based on type
if [[ -f "$file" ]]; then
    case "$file" in
        *.jpg|*.jpeg|*.png|*.gif)						
            if command_exists viu; then
                viu --width "$width" -s "$file"
            else
							  echo "$file"
                echo "Install 'viu' for image previews."
            fi
            ;;
        *.pdf)
            if command_exists pdftotext; then
                pdftotext "$file" - | less
            else
							  echo "$file"
                echo "Install 'poppler' (pdftotext) for PDF previews."
            fi
            ;;
        *)
            if command_exists bat; then
                bat --color=always --style=numbers --line-range=:500 "$file"
            elif command_exists cat; then
                cat "$file"
            else
								echo "$file"
                echo "Install 'bat' for enhanced file previews."
            fi
            ;;
    esac
else
    echo "Preview not available for this file type."
fi

