set runtimepath+=~/dotfiles/vim

let filelist = split(glob("~/dotfiles/vim/*.vim"), "\n")
for file in filelist
  if filereadable(expand(file))
    execute ':source ' . file
  endif
endfor
