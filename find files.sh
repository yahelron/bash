Certainly! If you want to use a Bash script for searching files, you can create a Bash script file (let's say `search_file.sh`) with the following content:

```bash
#!/bin/bash

file_name=$1
directory=$2

# Using find command to search for the file case-insensitively
found_files=$(find "$directory" -iname "$file_name")

if [ -n "$found_files" ]; then
  echo "Found files with name $file_name in directory $directory:"
  echo "$found_files"
else
  echo "No files found with name $file_name in directory $directory"
fi
```

Make sure to give execute permissions to the script:

```bash
chmod +x search_file.sh
```

Then you can run the script:

```bash
./search_file.sh example.txt /path/to/search
```

This Bash script uses the `find` command to search for files in a case-insensitive manner and prints the results. Adjust the script as needed for your specific requirements.