"マウス・カーソル"  {{{
set mouse=a                                         "マウスの入力を受け付ける
set ruler                                           "画面右下のカーソル位置表示
set cursorline                                      "カーソル行の背景色を変える
set cursorcolumn                                    "カーソル位置のカラムの背景色を変える   }}}

"検索関係"
set ignorecase                                      "大文字/小文字の区別なく検索
set smartcase                                       "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set incsearch                                       "インクリメンタルサーチを行う
set wrapscan                                        "最後尾まで検索を終えたら次の検索で先頭に移る
set hlsearch                                        "検索文字列をハイライトする
set nofoldenable                                    "検索にマッチした行以外を折りたたむ(フォールドする)機能
nnoremap <ESC><ESC> :nohlsearch<CR>

"表示関係"
syntax on                                           "キーワードをハイライト表示
set number                                          "行番号を表示
set title                                           "タイトルを表示
set list                                            "不可視文字を表示
set wrap                                            "画面の端で行を折り返して表示
set textwidth=0                                     "vimが勝手に自動改行をするのを防ぐ
set colorcolumn=80                                  "80文字目の背景色が変わる
set statusline=%{fugitine#statusline()}
set fileformats=unix,dos,mac
set laststatus=2                                    "ステータス行を常に表示
set cmdheight=2                                     "メッセージ表示欄を2行確保
set helpheight=999                                  "ヘルプを画面いっぱいに開く
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮    " 不可視文字の表示記号指定
set foldmethod=marker                               "折りたたみを{{{と}}}で指定する。zcで閉じる、zoで展開 https://blog.delphinus.dev/2011/01/folding-sources-on-vim.html

"編集関係"
"set paste                                           "ペースト時にインデントのずれが解消される
set confirm                                         "保存されていないファイルがあるときは終了前に保存確認
set fenc=utf-8                                      "エンコードを指定して保存
set backspace=indent,eol,start                      "Backspaceキーの影響範囲に制限を設けない
set showmatch                                       "閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする
set showmode                                        "現在のモードを表示
set clipboard+=unnamed                              "OSのクリップボードをレジスタ指定無しでYank, Put 出来るようにする
set virtualedit=onemore                             "行末にテキストがなくてもカーソルを行末以降に移動させることができる
set autoread                                        "外部でファイルに変更がされた場合は読みなおす
set noswapfile                                      "ファイル編集中にスワップファイルを作らない
set iminsert=2                                      "インサートモードから抜けると自動的にIMEをオフにする

"タブ・インデント"
filetype indent on
set expandtab                                       "タブ入力を複数の空白入力に置き換える
set tabstop=4                                       "画面上でタブ文字が占める幅
set softtabstop=4                                   "Tabの挿入やBSの使用等の編集操作をするときに、Tabが対応する空白の数
set autoindent                                      "改行時に前の行のインデントを継続する
set smartindent                                     "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set shiftwidth=4                                    "自動インデントでずれる幅

"補完関係"
set wildmenu                                        "コマンドラインモードでTABキーによるファイル名補完を有効にする
set history=10000                                   "コマンドラインの履歴を10000件保存する
set completeopt=menuone,preview                     "コマンド補間の設定

"カラースキーマ"
colorscheme pablo
