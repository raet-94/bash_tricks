#!/bin/bash

# This script is a template for batch copying files from a remote server using SCP.
# It iterates over a range of numbers and copies 'file.txt' from a remote directory
# 'folder$i' to the local current directory, renaming it to 'file_$i.txt'.

# Usage:
# 1. Replace "key_path" with the path to your SSH private key.
# 2. Replace "port" with the SSH port (default is 22).
# 3. Replace "user" with the remote username.
# 4. Replace "host" with the remote hostname or IP address.
# 5. Adjust the remote path 'path/folder$i/file.txt' as needed.

for i in 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 
do
 # Perform the SCP copy
 # Note: Ensure you have the necessary permissions and the correct path on the remote server.
 # The command below uses placeholders. Update them before running.

 # Example structure:
 # scp -i /path/to/key -P 22 user@host:/remote/path/file ./local/path

 scp -i "key_path" -P "port" "user@host:path/folder$i/file.txt" "./file_$i.txt"
done
