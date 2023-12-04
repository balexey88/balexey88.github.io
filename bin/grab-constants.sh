# !/bin/bash

# This script is used to grab the constants.md file from the wiki and use it as a page in the docs.

cd "$(dirname "$0")/../"

FILE='docs/constants.md'
URL='https://raw.githubusercontent.com/wiki/udx/wp-stateless/Constants.md'

echo "---" > $FILE
echo "title: Constants" >> $FILE
echo "permalink: /docs/constants/" >> $FILE
echo "---" >> $FILE
echo "" >> $FILE

date >> $FILE

echo "" >> $FILE

curl $URL >> $FILE
