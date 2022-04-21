#!/usr/bin/env bash

HEX_a = $(shell ruby -r securerandom -e "puts SecureRandom.hex(3)")
HEX_b = $(shell ruby -r securerandom -e "puts SecureRandom.hex(3)")
FLOAT_a = $(shell ruby -e "puts rand.round(1)")
FLOAT_b = $(shell ruby -e "puts rand.round(1)")
UUID = $(shell uuidgen)

# https://imagemagick.org/script/color.php#color_names
# use identitfy to find colors from chosen images with a good palet

${PWD}/notes/$(UUID):
	bash /Users/rant/Downloads/juliaset -c $(FLOAT_a),$(FLOAT_b) -C "#$(HEX_a) #$(HEX_b)" -d 100x100 $@
