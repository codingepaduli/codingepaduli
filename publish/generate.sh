#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PUB_DIR="$CURRENT_DIR/"
BUILD="$CURRENT_DIR/build/"
CONTENT_DIR="$CURRENT_DIR/.." # NO ending "/"
RESOURCE_DIR="$CURRENT_DIR/../static"

METADATA="metadata.xml"

STYLESHEET="stylesheet.css"

COVER_IMAGE="cover.jpg"

IMAGE_PREPROCESS_FILTER_EBOOK="replace_image_source.lua"
PAGEBREAK_PREPROCESS_FILTER="pagebreak.lua"

BOOKNAME="Appunti-di-laboratorio"
CHAPTERS="$CONTENT_DIR/content/coding/shell/PowerShell/intro.md $CONTENT_DIR/content/coding/shell/PowerShell/CmdLet.md $CONTENT_DIR/content/coding/shell/PowerShell/CmdLet-Filesystem-Path.md $CONTENT_DIR/content/coding/shell/PowerShell/CmdLet-Filesystem-FileCartelle.md"


# Common pandoc command for all formats
PANDOC_COMMAND="pandoc --standalone --from=markdown+yaml_metadata_block --toc --toc-depth=3 --lua-filter=$PUB_DIR$IMAGE_PREPROCESS_FILTER_EBOOK --lua-filter=$PUB_DIR$PAGEBREAK_PREPROCESS_FILTER --resource-path=$RESOURCE_DIR "  # --fail-if-warnings --top-level-division=section


if [ -d $BUILD ]
then
	echo "";
    # echo "Cancella prima la cartella: $BUILD"
	# rm -rf "$BUILD"
	# mkdir "$BUILD"
fi


cd $CONTENT_DIR

echo "Generating ebook"
PANDOC_COMMAND_EBOOK="$PANDOC_COMMAND --output=$BUILD$BOOKNAME.epub $PUB_DIR/ebook_title.txt $CHAPTERS --epub-chapter-level=1 --epub-metadata=$PUB_DIR/epub_metadata.xml --epub-cover-image=$PUB_DIR$COVER_IMAGE --css=$PUB_DIR$STYLESHEET --listings" #

$PANDOC_COMMAND_EBOOK

# Generating ebook
echo "Generating pdf"
PANDOC_COMMAND_PDF="  $PANDOC_COMMAND --output=$BUILD$BOOKNAME.pdf $PUB_DIR/cover.md $PUB_DIR/ebook_title.txt  $CHAPTERS     --to=latex --pdf-engine=xelatex --top-level-division=chapter --number-sections --variable=geometry:margin=2cm --highlight-style=tango --css=$PUB_DIR$STYLESHEET " # --verbose --metadata-file=metadata.yml -V documentclass=scrreprt

$PANDOC_COMMAND_PDF

#@REM OPTION 1 for PDF: Use HTML5 rendering engine (wkhtmltopdf)
#@REM pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% -t html5 --standalone

#@REM OPTION 2 for PDF: Use LATEX Library
# REM Set documentclass to article, report, book, memoir
#pandoc -o %BUILD%%BOOKNAME%.pdf %PUB_DIR%%TITLE% %CHAPTERS% %TOC% --standalone -t latex -V documentclass=%LATEX_CLASS%

#cd %PUB_DIR%
