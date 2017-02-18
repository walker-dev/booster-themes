#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
OPTIPNG="/usr/bin/optipng"

HOTROD_SRC_FILE="assets-hotrod.svg"
HOTROD_ASSETS_DIR="assets-hotrod"
NVIDIA_SRC_FILE="assets-nvidia.svg"
NVIDIA_ASSETS_DIR="assets-nvidia"
INDEX="assets.txt"

for i in `cat $INDEX`
do

if [ -f $HOTROD_ASSETS_DIR/$i.png ]; then
    echo $HOTROD_ASSETS_DIR/$i.png exists.
else
    echo Rendering $HOTROD_ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$HOTROD_ASSETS_DIR/$i.png $HOTROD_SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $HOTROD_ASSETS_DIR/$i.png
fi

if [ -f $NVIDIA_ASSETS_DIR/$i.png ]; then
    echo $NVIDIA_ASSETS_DIR/$i.png exists.
else
    echo Rendering $NVIDIA_ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$NVIDIA_ASSETS_DIR/$i.png $NVIDIA_SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $NVIDIA_ASSETS_DIR/$i.png
fi
done

cp $HOTROD_ASSETS_DIR/entry-toolbar.png menubar-toolbar/entry-toolbar.png
cp $HOTROD_ASSETS_DIR/entry-active-toolbar.png menubar-toolbar/entry-active-toolbar.png
cp $HOTROD_ASSETS_DIR/entry-disabled-toolbar.png menubar-toolbar/entry-disabled-toolbar.png

cp $HOTROD_ASSETS_DIR/menubar.png menubar-toolbar/menubar.png
cp $HOTROD_ASSETS_DIR/menubar_button.png menubar-toolbar/menubar_button.png


cp $NVIDIA_ASSETS_DIR/button.png menubar-toolbar/button.png
cp $NVIDIA_ASSETS_DIR/button-hover.png menubar-toolbar/button-hover.png
cp $NVIDIA_ASSETS_DIR/button-active.png menubar-toolbar/button-active.png
cp $NVIDIA_ASSETS_DIR/button-insensitive.png menubar-toolbar/button-insensitive.png

cp $NVIDIA_ASSETS_DIR/entry-toolbar.png menubar-toolbar/entry-toolbar-dark.png
cp $NVIDIA_ASSETS_DIR/entry-active-toolbar.png menubar-toolbar/entry-active-toolbar-dark.png
cp $NVIDIA_ASSETS_DIR/entry-disabled-toolbar.png menubar-toolbar/entry-disabled-toolbar-dark.png

cp $NVIDIA_ASSETS_DIR/menubar.png menubar-toolbar/menubar-dark.png
cp $NVIDIA_ASSETS_DIR/menubar_button.png menubar-toolbar/menubar_button-dark.png

exit 0
