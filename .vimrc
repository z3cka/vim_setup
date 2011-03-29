autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

:set autoindent
:set smartindent
:set number
:set cindent
:set shiftwidth=2
:set ts=2
:set expandtab

if has("autocmd")
  " Drupal *.module and *.install files.
    augroup module
        autocmd BufRead,BufNewFile *.module set filetype=php.drupal
        autocmd BufRead,BufNewFile *.install set filetype=php.drupal
        autocmd BufRead,BufNewFile *.test set filetype=php
        autocmd BufRead,BufNewFile template.php set filetype=php.drupal
    augroup END
endif
syntax on

    imap <buffer> <C-d> <C-\><C-O>:call drupal6complete#Map()<CR><C-X><C-O>

"    au BufNewFile,BufRead *.{module,install} set filetype=php.drupal

"	:set ft=html.php
