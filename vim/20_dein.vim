" vimrc に以下のように追記
let s:dein_home = expand('~/.vim/dein')

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = s:dein_home . '/repo'
" dein.vim 本体
let s:dein_repo_dir = s:dein_home . '/dein.vim'
" dein.vim 本体
"let s:rc_dir = s:dein_home . '/rc'
let s:rc_dir = expand('~/dotfiles/vim/deinrc')

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  let s:toml      = s:rc_dir . '/dein.toml'
  let s:lazy_toml = s:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  let filelist = split(glob(s:rc_dir . "/plugin/*.toml"), "\n")
  for file in filelist
    if filereadable(expand(file))
      call dein#load_toml(file,      {'lazy': 0})
    endif
  endfor

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
