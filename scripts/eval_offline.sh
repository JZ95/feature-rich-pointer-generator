#!/bin/sh
#####################
##### OUR OWN SETTING
#####################
export DATA_DIR=/path/to/you/data
export VOCAB_DIR=/path/to/you/vocab
export LOG_DIR=/path/to/your/experiment/logs
# give a name to your experiment
export EXP_NAME=test

# VERY IMPORTANT
export POS_METHOD=concate
export CHAR_METHOD=concate

##################
## EVAL OFFLINE
##################
frpg_run --mode=eval\
    --offline=True\
    --data_path=$DATA_DIR/val_*\
    --vocab_path=$VOCAB_DIR\
    --log_root=$LOG_DIR\
    --exp_name=$EXP_NAME\
    --how_to_use_pos=$POS_METHOD\
    --how_to_use_char=$CHAR_METHOD
