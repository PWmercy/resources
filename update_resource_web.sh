#!/bin/sh

asciidoc_folder="/Volumes/Macintosh HD/Development/GitHub/Mercy-Digital-Arts/Documentation"
web_folder="/Volumes/Macintosh HD/Development/GitHub/TestRepo/Testweb"

cd "$asciidoc_folder" || exit

asciidoctor StudentandFacultyresources.adoc
mv StudentandFacultyresources.html ../../TestRepo/Testweb/index.html

cd "$web_folder" || exit

git add "index.html"
git commit -m "Update index.html"
