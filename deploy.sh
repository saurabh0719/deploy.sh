#!/bin/bash

# check if banner exists
if [[ -f deploy.txt ]]; then
    cat deploy.txt
fi;

echo
echo "ZAPPA deploy.sh"

# Check if zappa is installed
if ! command -v zappa; then
    echo
    echo "Did not find a zappa installation."
    echo "Please install zappa in the virtual environment : pip install zappa"
    exit 1
fi;

# Main menu
echo "Options -> 1. logs, 2. deploy, 3. update, 4. undeploy"
echo
echo "Enter an option number : "
read choice
echo "Enter stage :"
read stage

if [[ "$choice" == "1" ]]; then
    zappa tail $stage
elif [[ "$choice" == "2" ]]; then
    zappa deploy $stage
elif [[ "$choice" == "3" ]]; then
    zappa update $stage
elif [[ "$choice" == "4" ]]; then
    zappa undeploy $stage
else
    echo
    echo "Could not parse the option number. Please try again"
    exit 1
fi;