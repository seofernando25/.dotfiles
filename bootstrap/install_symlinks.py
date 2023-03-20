#!/bin/python

# This script is used to install the symlinks for the ../ folder (dotfiles)
import fnmatch
import os
import re
import sys

# Glob all files on the top directory that are not:
# - the bootstrap folder
# - the .git folder
# - files that match a pattern in .gitignore
# - the README.md

# Change relative path to ../
os.chdir('..')

# Glob
print('Globbing files in folders and subfolders...')
files = []

# Create fileexclude regex from .gitignore
with open('.gitignore', encoding='utf-8') as f:
    ignore = f.read().splitlines()
    # Create a regex pattern from the ignore list into one big regex
    ignore = [re.compile(fnmatch.translate(i)) for i in ignore]

ignore_folders = ['./bootstrap', './.git']
ignore_files = ['README.md', '.gitignore']
for root, dirnames, filenames in os.walk('.'):
    # Ignore folders
    if any([root.startswith(i) for i in ignore_folders]):
        continue
    for filename in filenames:
        if filename in ignore_files:
            continue
        # Check if file matches any of the ignore patterns
        if any([i.match(os.path.join(root, filename)) for i in ignore]):
            continue
        files.append(os.path.join(root, filename))

print("Filtering files...")


# Prompt every file to be symlinked
for f in files:
    print("####################")
    print("File: {}".format(f))
    print("####################")
    # Check if the file exists relative to the home directory
    if os.path.exists(os.path.expanduser('~/' + f)):
        print("File already exists, skipping...")
        continue
    else:
        print("File does not exist, creating symlink...")
        break
        # Create symlink

        # os.symlink(os.path.abspath(f), os.path.expanduser('~/' + f))
