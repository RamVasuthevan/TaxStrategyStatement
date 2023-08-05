#!/bin/bash

FILENAME=$1
SORTED_FILENAME='temp_sorted.csv'

# Extract header
HEADER=$(head -n 1 $FILENAME)
# Extract content and sort it
tail -n +2 $FILENAME | sort > $SORTED_FILENAME
# Add header back
echo "$HEADER" | cat - $SORTED_FILENAME > temp && mv temp $SORTED_FILENAME

# Check if sorted file is different from original
if ! cmp --silent $FILENAME $SORTED_FILENAME; then
  # Replace original with sorted file
  mv $SORTED_FILENAME $FILENAME

  # Remove the newline at the end of the file, if it exists
  sed -i.bak -e '${/^$/d;}' $FILENAME && rm $FILENAME.bak

  echo "CSV file has been sorted."
  git config user.name "Automated"
  git config user.email "actions@users.noreply.github.com"
  git add $FILENAME
  git commit -m "Sort CSV file by Company Name"
  git push
else
  echo "CSV file is already sorted."
  rm $SORTED_FILENAME
fi
