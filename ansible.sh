#!/bin/bash

# Copy index.html to ansible-first directory
cp login.html Gitpage/


# Change directory to ansible-first
cd Gitpage

# Initialize Git repository (if not already initialized)
git init

# Stage all changes for commit
git add .

# Commit changes with a message
git commit -m 'Add index.html to GitHub through shell'

# Assuming origin is already set as your remote repository, push changes to main branch
git push origin main

# Exit from ansible-first directory to the parent directory
cd ..

# Run ansible-playbook with inventory.ini and playbook.yaml
ansible-playbook -i inventory.ini playbook.yaml
