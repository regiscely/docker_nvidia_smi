#!/bin/bash
#########################################################
# nvidia-smi client implementation for nvidia-docker env
#
#


gpu_cards=($(ls /dev/nvidia[0-9]))
gpu_cards_num=("${gpu_cards[@]##*nvidia}")

var=$( IFS=$','; echo "${gpu_cards_num[*]}" )

echo $var


echo "nvidia-smi -i $var"

