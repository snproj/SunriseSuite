#!/bin/bash

# Credit to Hobscob, modified from https://www.reddit.com/r/linux/comments/ckdk28/list_of_the_best_cli_apps_that_i_use_as_a_daily/

# Ask Cheat.sh for CMD examples: "ch lsof"
_cheat() {
	TERM=$1
	lydl "http://cheat.sh/$TERM"
}

# Execution
_cheat $1
