#!/bin/bash

_directory() {
	case $1 in
		ly)
			echo Le_Yi
			;;
		gr)
			echo Gokul_Rajiv
			;;
		gc)
			echo Gerard_Christopher
			;;
		ik)
			echo Isaac_Khoo
			;;
		bge)	
			echo Bridge
			;;
		wil)
			echo Wild DUMB Bishan pokemon \(22nd\)
			;;
		kc)
			echo Keith_Chiam
			;;
		s)
			echo Zheng_Yew_Yong
			;;
		*)
			echo DIRECTORY_ERROR
			;;
	esac
}

_message() {
	PAYLOAD="msg $(_directory $1) ${@:2}"
	telegram-cli -RD -W -e "$PAYLOAD"
}


# Execution
_message $1 "${@:2}"
