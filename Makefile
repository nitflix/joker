#!/usr/bin/env bash

HEX_a = $(shell ruby -r securerandom -e "puts SecureRandom.hex(3)")
HEX_b = $(shell ruby -r securerandom -e "puts SecureRandom.hex(3)")
FLOAT_a = $(shell ruby -e "rand.round(1)")
FLOAT_b = $(shell ruby -e "rand.round(1)")
UUID = $(shell ruby -r securerandom -e "SecureRandom.uuid")

# https://imagemagick.org/script/color.php#color_names
# use identitfy to find colors from chosen images with a good palet

julia/notes/%:
	sh ./juliaset -c $(FLOAT_a),$(FLOAT_b) -C "#$(HEX_a) #$(HEX_b)" -d 100x100 julia/notes/$*
