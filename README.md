# Marp minimalistic template

## Purpose

Feel free to modify anything, the purpose is just to give a quick'n ready environnement for making a presentation using Marp Framework, with a customizable theme.

## Marp Framework

Use [Marp's documentation](https://marp.app)

## Makefile

make clean : remove builded files

make all : build the main file in all available formats (foundable in _build/)

make {format} : build the Main.{format} (available: html, pdf, pptx)

make preview : launch a webserver that let you see your presentation in real time

make _build/Main.{format}: You can use the target directly
