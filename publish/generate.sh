#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PUB_DIR="$CURRENT_DIR/"
BUILD="$CURRENT_DIR/build/"
CONTENT_DIR="$CURRENT_DIR/.." # NO ending "/"
RESOURCE_DIR="$CURRENT_DIR/../static"

TITLE="title.txt"
METADATA="metadata.xml"
TOC="--toc --toc-depth=3"
LATEX_CLASS="report"

# REM Set LATEX_CLASS to article, report, book, memoir
STYLESHEET="stylesheet.css"

COVER_IMAGE="cover.jpg"

IMAGE_PREPROCESS="replace_image_source.lua"

BOOKNAME="Appunti-di-laboratorio-di-TPSIT"
CHAPTERS="$CONTENT_DIR/content/coding/tools/Gradle.md $CONTENT_DIR/content/coding/tools/MacchineVirtuali.md"

if [ -d $BUILD ]
then
	echo "";
    # echo "Cancella prima la cartella: $BUILD"
	# rm -rf "$BUILD"
	# mkdir "$BUILD"
fi

cd $CONTENT_DIR
ROW="pandoc -o "$BUILD$BOOKNAME.epub" "$PUB_DIR$TITLE" "$CHAPTERS" "$TOC" --epub-metadata="$PUB_DIR$METADATA" --epub-cover-image="$PUB_DIR$COVER_IMAGE" --css="$PUB_DIR$STYLESHEET" --lua-filter="$PUB_DIR$IMAGE_PREPROCESS"  --resource-path="$RESOURCE_DIR" "

echo "$ROW"

$ROW
#@REM OPTION 1 for PDF: Use HTML5 rendering engine (wkhtmltopdf)
#@REM pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% -t html5 --standalone

#@REM OPTION 2 for PDF: Use LATEX Library
#pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% --standalone -t latex -V documentclass=%LATEX_CLASS%

#cd %PUB_DIR%
