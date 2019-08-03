#!/bin/sh
base_dir=$(cd "$(dirname "$0")";pwd)
yumbin=`which yum`
if [ "$yumbin" != "" ];then
	sudo yum install bash_completion*
fi

cp -f $base_dir/.gitconfig $HOME/
