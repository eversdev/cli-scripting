#!/bin/bash
echo "Username: $(whoami)"
echo "Date: $(date "+%Y-%m-%d")"
echo "Time: $(date "+%T")"
echo "Directory: $(pwd)"
echo "Number of Files: $(ls -1 | wc -l)"
echo "Biggest file: $(ls -S | head -1)"
