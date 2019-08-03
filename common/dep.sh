#!/bin/sh
base_dir=$(cd "$(dirname "$0")";pwd)
yumbin=`which yum`
if [ "$yumbin" != "" ];then
	sudo yum install bash_completion*
fi

brewbin=`which brew`

if [ "$brewbin" != "" ];then
	brew install bash-completion
fi

cp -f $base_dir/.gitconfig $HOME/
