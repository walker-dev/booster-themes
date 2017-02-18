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
  if [ -f $HOTROD_ASSETS_DIR/$i@2.png ]; then
    echo $HOTROD_ASSETS_DIR/$i@2.png exists.
  else
    echo Rendering $HOTROD_ASSETS_DIR/$i@2.png
    $INKSCAPE --export-id=$i \
    --export-dpi=180 \
    --export-id-only \
    --export-png=$HOTROD_ASSETS_DIR/$i@2.png $HOTROD_SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $HOTROD_ASSETS_DIR/$i@2.png
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
  if [ -f $NVIDIA_ASSETS_DIR/$i@2.png ]; then
    echo $NVIDIA_ASSETS_DIR/$i@2.png exists.
  else
    echo Rendering $NVIDIA_ASSETS_DIR/$i@2.png
    $INKSCAPE --export-id=$i \
    --export-dpi=180 \
    --export-id-only \
    --export-png=$NVIDIA_ASSETS_DIR/$i@2.png $NVIDIA_SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $NVIDIA_ASSETS_DIR/$i@2.png
  fi
done
exit 0
