#!/bin/bash

# Top directory path
TOP_DIR=$(dirname "$(readlink -f "$0")")

cd "$TOP_DIR"

# Print header without logging to file
print_header() {
    local header=$1
    local line_len=100
    local header_len=${#header}
    local padding=$(( (line_len - header_len) / 2 ))
    local pad=$(printf '%*s' $padding '')
    local line=$(printf '%*s' $line_len '')

    echo "${line// /-}"
    echo "${pad// / }$header"
    echo "${line// /-}"
}

# Build project
ASAP_project() {
    local project=$1
    local build_command=$2
    local parallel=$3

    clean_up "$project"
    print_header "Building $project..."
    
    echo "Building $project at $(date)"
    cd "$project"
    if [ "$parallel" = "y" ]; then
        $build_command -j$(nproc)
    else
        $build_command
    fi
    cd "$TOP_DIR"
}

# Cleanup project dir
clean_up() {
    local project_dir=$1
    echo "Cleaning up in $project_dir..."
    cd "$project_dir"
    rm -rf build dist output
    find . -maxdepth 1 -type f \( -name '*.elf' -o -name '*.nacp' -o -name '*.nro' -o -name '*.nso' -o -name '*.nsp' -o -name '*.ovl' -o -name '*.pfs0' \) -delete
    cd "$TOP_DIR"
}

# ASAP project builds
ASAP_project Atmosphere "make" "y"

echo "ASAP build Completed"
sleep 3
exit
