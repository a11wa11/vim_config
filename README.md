# vimの設定

## .vimrcの紐付け

```
ln -snf $(pwd)/vimrc ~/.vimrc
```

## vim-plugの使用法

1. vim-plug　を下記のコマンドでインストール

参考：https://github.com/junegunn/vim-plug/wiki/tutorial
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```    
2. `.vimrc`ファイル使用時に下記のコマンドでインストール
```
:PlugInstall
```
※削除したい時は↓
```
:PlugClean
```

## 折畳みコマンド
```
zo    #カーソル下の折り畳みを一段階開く
zO    #カーソル下の折り畳みを全て開く
zc    #カーソル下の折り畳みを一段階閉じる
zC    #カーソル下の折り畳みを全て閉じる
zm    #折り畳み全てを一段階開く
zM    #折り畳み全てを開く
zr    #折り畳み全てを一段階閉じる
zR    #折り畳み全てを閉じる
```

# gitの設定

## gitの設定の紐付け

```
ln -snf $(pwd)/gitconfig ~/.gitconfig
ln -snf $(pwd)/gitignore_global ~/.gitignore_global
```
