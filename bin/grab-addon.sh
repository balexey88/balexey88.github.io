# !/bin/bash

# This script is used to read the addons config and grab the required README file from addon repo.

cd "$(dirname "$0")/../"

SLUG=$1

if [ ! -n "$SLUG" ]; then
  echo "Slug parameter is required"
  exit 1
fi

ADDONS_FILE="_data/addons.yml"

# Search for slug in addons file
FOUND=false

while IFS=: read -r key value
do
  # Remove whitespace
  value=`echo $value | sed -e 's/^[[:space:]]*//'`

  if [[ $key == *'slug'* && $value == $SLUG ]]; then
    FOUND=true
    continue
  fi

  # If slug is found, grab the name and repo
  if [[ $FOUND == true ]]; then
    if [[ $key == *'name'* ]]; then
      NAME=$value
    fi

    if [[ $key == *'repo'* ]]; then
      REPO=$value
    fi

    if [[ $key == *'branch'* ]]; then
      BRANCH=$value
    fi

    # If another slug is found - stop
    if [[ $key == *'slug'* ]]; then
      break
    fi
  fi
done < $ADDONS_FILE

if [ ! -n "$NAME" ]; then
  echo "Addon name not found, could not parse addons config data"
  exit 1
fi

if [ ! -n "$REPO" ]; then
  echo "Addon repository not found, could not parse addons config data"
  exit 1
fi

if [ ! -n "$BRANCH" ]; then
  BRANCH='main'
fi

# Write file
FILE="addons/${SLUG}.md"
URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}/README.md"

echo "---" > $FILE
echo "title: ${NAME}" >> $FILE
echo "permalink: /addons/${SLUG}/" >> $FILE
echo "layout: addon" >> $FILE
echo "---" >> $FILE
echo "" >> $FILE

curl $URL >> $FILE
