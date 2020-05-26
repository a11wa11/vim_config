#!/bin/bash

# brewのアンインストール
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
# brewのインストール
[ ! -e /usr/local/bin/brew ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# gitの初期設定
git_name=`git config --get user.name`
git_email=`git config --get user.email`

register_git_info () {
    target=$1
    target_jp=$2
    echo -e "Please input your ${target} on git.\\n〜gitの登録${target_jp}を入力してください〜\\n"
    read -p ">>> " git_var
    git config --global user.${target} ${git_var}
    echo -e "\\n   gitの登録${target_jp}は -> ${git_var} です\n"
}

[ ! ${git_name} ] && register_git_info "name" "名"
[ ! ${git_email} ] && register_git_info "email" "メール"

# ssh-keyの作成
if [ ! -e ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -C ${git_email} -f ~/.ssh/id_rsa
    # ssh-keyの公開鍵をgithubへ登録
    echo "\nPlese register your public-key in github settings.\n〜githubへ公開鍵を登録してください\n"
fi

# 初期設定するリポジトリをクローン
[ ! -e ~/my-config ] && git clone https://github.com/a11wa11/my-config.git ~/my-config
[ ! -e ~/.bashrc ] && cp ~/my-config/bash/bashrc.txt ~/.bashrc

. ~/.bashrc
