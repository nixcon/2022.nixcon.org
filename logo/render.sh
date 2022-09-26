#!/usr/bin/env nix-shell
#!nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz -p nodePackages.svgo inkscape -i bash

inkscape ./nixcon2022-inkscape.svg --actions="\
	;export-area-drawing;\
	\
	export-type:svg;\
	export-plain-svg;\
	export-filename:nixcon2022-web.svg;\
	export-do;\
	\
	export-type:png;\
	export-filename:nixcon2022-web.png;\
	export-do;
	\
	select-by-id:gradient-logo;\
	selection-hide;\
	select-by-id:print-logo;\
	selection-unhide;\
	\
	export-type:svg;\
	export-plain-svg;\
	export-filename:nixcon2022-print.svg;\
	export-do;\
	\
	export-type:png;\
	export-filename:nixcon2022-print.png;\
	export-do;\
	"
svgo ./nixcon2022-web.svg ./nixcon2022-print.svg
