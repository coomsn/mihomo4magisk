#!/bin/sh

zip -r -o -X -ll mihomo4_$(cat module.prop | grep 'version=' | awk -F '=' '{print $2}').zip ./ -x '.git/*' -x 'build.sh' -x '.github/*' -x 'box4.json'
