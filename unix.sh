#!/bin/bash

# Ask for user input
read -p "Enter your name: " name
read -p "Enter the title of the blog snippet: " title
read -p "Enter the URL of an image: " imageurl
read -p "Enter a description of the image: " description
read -p "Enter the text content: " text

# Generate HTML snippet and save to output.html
echo "<div class=\"blog\">" > output.html
echo "<h2>$title</h2>" >> output.html
echo "<h3>$name</h3>" >> output.html
echo "<img src=\"$imageurl\" alt=\"$description\">" >> output.html
echo "<p>$text</p>" >> output.html
echo "</div>" >> output.html

echo "HTML snippet has been generated and saved to output.html"
