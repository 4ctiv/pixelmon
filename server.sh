#!/bin/bash
if [ "$EXTRA_UTILS" == false ]; then
	rm -f /opt/minecraft/mods/extrautils2.jar
else 
	echo "Set EXTRA_UTILS enviromental variable to false to disable Extra Utilities"
	ln -s /opt/minecraft/mods-available/extrautils2.jar /opt/minecraft/mods/extrautils2.jar
fi

if [ "$REFINED_STORAGE" == false ]; then
	rm -f /opt/minecraft/mods/refinedstorage.jar
else 
	echo "Set REFINED_STORAGE enviromental variable to false to disable Refined Storage"
	ln -s /opt/minecraft/mods-available/refinedstorage.jar /opt/minecraft/mods/refinedstorage.jar
fi

if [ "$PIXEL_EXTRAS" == false ]; then
	rm -f /opt/minecraft/mods/PixelExtras.jar
else 
	echo "Set PIXEL_EXTRAS enviromental variable to false to disable Pixel Extras"
	ln -s /opt/minecraft/mods-available/PixelExtras.jar /opt/minecraft/mods/PixelExtras.jar
fi

java $JAVA_EXTRA_PARAM -Dfml.queryResult=confirm -jar minecraft-forge.jar nogui
