#!/bin/sh
base_dir=$(cd "$(dirname "$0")";pwd)
yumbin=`which yum`
if [ "$yumbin" != "" ];then
	sudo yum install bash_completion* bash-completion-extras jq lrzsz
fi

brewbin=`which brew`

if [ "$brewbin" != "" ];then
	brew install bash-completion bash-completion-extras  jq lrzsz
fi

# 注意有些文件不能直接拷贝, 比如 .bash_profile
cp -f $base_dir/.gitconfig $HOME/
cp -f $base_dir/.git-completion.bash $HOME/
cat .bash_profile >> $HOME/.bash_profile
