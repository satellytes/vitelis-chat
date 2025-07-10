#!/bin/bash

SVG="static/logo.svg"
inkscape "$SVG" -o temp.png -w 500 -h 500
magick temp.png  -resize 180x180 static/static/apple-touch-icon.png
magick temp.png -resize 48x48 static/static/favicon.ico
magick temp.png -resize 500x500 static/static/favicon.png
cp "$SVG" static/static/favicon.svg
cp static/static/favicon.png static/favicon.png
magick temp.png -resize 96x96 static/static/favicon-96x96.png
magick temp.png -resize 500x500 static/static/favicon-dark.png
magick temp.png -resize 500x500 static/static/splash.png
magick temp.png -resize 500x500 static/static/splash-dark.png
magick temp.png -resize 192x192 static/static/web-app-manifest-192x192.png
magick temp.png -resize 512x512 static/static/web-app-manifest-512x512.png
rm temp.png
