-- vim: ft=lua:foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

-- Vimscript-style settings (((
vim.cmd [[

let g:ale_disable_lsp = 1
" let g:code_action_menu_show_diff = v:true
let g:python3_host_prog = 'python3'

" backup settings (((

set backupdir-=.
set backupext='vimbackup'

" )))

" 'c*' (settings that start with the character 'c') (((

set clipboard=""
set cmdheight=2
set colorcolumn=121
set confirm

" )))

" fold settings (((

set foldcolumn=auto:5
set foldlevel=2
set foldlevelstart=2
" set foldopen=all  " helps to avoid automatic closing of previously open folds when returning to a buffer

" )))

" chars 'g-l'* settings (settings that start with the characters 'g' through 'l') (((

set guifont="monospace:h17"

set infercase
set iskeyword+=-

set lazyredraw
set list

" )))

" indent settings (((

set copyindent
set nosmartindent
set preserveindent

" )))

" popup menu settings (((

set pumheight=10
set pumwidth=35

" )))

" line-number settings (((

set relativenumber
set numberwidth=4

" )))

" match highlighting settings  (((

set showmatch
set matchtime=3

" )))

" scroll settings (((

set scrolloff=2
set sidescrolloff=8

" )))

" tabstop settings (((

set softtabstop=2
set tabstop=2

" )))

" updatecount/updatetime settings (((

set updatecount=100
set updatetime=275

" )))

" commented-out settings (((

" set ruler
" set whichwrap+=<,>,[,],h,l
" let mapleader="\\"
" :let mapleader=""
" :let maplocalleader=""

" set complete=.,w,b,u,t,kspell,U,s,k,d,],i ". through t is the default. . = current buffer. w  = any other windows, b = any other buffers opened, u = unopened buffers, t = tags, i = current and included files
" set complete+=U,s,k,kspell,]

" )))

" Linebreak settings (((

set linebreak
let &showbreak='→ '
" let &showbreak='↪ '
" let &showbreak='… '
" set breakat=\ \ ;:,!? " which characters might cause a line break if 'linebreak' is on.
set breakindent
set breakindentopt=shift:2,sbr

" )))

" formatoptions (((

" set formatoptions-=cro " TODO: this doesn't seem to work
set formatoptions-=t " Disable 'auto-wrap text using textwidth'
set formatoptions+=n " When formatting text, recognize numbered lists. This actually uses the 'formatlistpat' option, thus any kind of list can be used. Helps to avoid joining distinct items as if they were a single paragraph.

" )))

" Settings for 'fillchar' (((

set fillchars=vert:│,diff:⣿  " no ~ for end-of-buffer lines.
set fillchars+=foldopen:▾,foldsep:│,foldclose:▸ " https://vi.stackexchange.com/questions/21872/change-fold-sign-character

" )))

" Wildmode and wildmenu settings (((

" set wildmode=longest,list:full  " Tab press completes and lists
set wildignorecase      " If supported, make wildmenu completions case-insensitive

" Wildignore and low-priority suffixes/filetype-extensions (((

" Ignore the following type of files when tab completing. " There are certain files that we would never want to edit with Vim. Wildmenu will ignore files with these extensions.
set wildignore+=*.4ct,*.4tc,*.7z,*.a,*.acn,*.acr,*.alg,*.auxlock,*.backup,*.bcf,*.beam,*.bin,*.blg,*.bmp,*.brf,*.cb,*.cb2,*.class,*.cpt,*.cut,*.dats,*.db,*.dll,*.dmg,*.docx,*.dpth,*.DS_Store,*.dx64fsl,*.el,*.end,*.ent,*.eps,*.exe,*.fasl,*.fdb_latexmk,*.fff,*.fls,*.flv,*.fmt,*.fot,*.gaux,*.gem,*.gif,*.git,*.glg,*.glo,*.gls,*.glsdefs,*.glstex,*.gtex,*.hg,*.hst,*.idv,*.idx,*.ilg,*.img,*.ind,*.ini,*.ist,*.jpeg,*.JPG,*.la,*.lb,*.lg,*.listing,*.lnk,*.loa,*.load,*.loe,*.lof,*.lol,*.lot,*.lox,*.ltjruby,*.luac,*.lx64fsl,*.maf,*.manifest,*.mf,*.mkv,*.mlf,*.mlt,*.mo,*.mod,*.mp,*.mp4,*.mw,*.nav,*.nlg,*.nlo,*.nls,*.o,*.obj,*.orig,*.pax,*.pdf,*.pdfpc,*.pdfsync,*.png,*.pre,*.ps,*.psd,*.pyc,*.pyg,*.pyo,*.pytxcode,*.rar,*.rbc,*.rbo,*.run.xml,*.save,*.snm,*.so,*.soc,*.sout,*.spl,*.sqlite,*.sta,*.svg,*.svn,*.sw?,*.swp,*.sympy,*.synctex,*.synctex.gz,*.tar,*.tar.bz2,*.tar.gz,*.tar.xz,*.tdo,*.texpadtmp,*.tfm,*.thm,*.tiff,*.toc,*.trc,*.ttt,*.upa,*.upb,*.ver,*.vrb,*.wrt,*.xcp,*.xdv,*.xdy,*.xlsx,*.xmpi,*.xpm,*.xref,*.xyc,*.xz,*.zip,*/.bundle/*,*/.cls,*/.fdb*/,*/.git/*,*/.glo,*/.ist,*/.sass-cache/*,*/.svn/*,*/.toc,*/.vim$,*/__pycache__/*,*/builds/*,*/dist*/*,*/node_modules/*,*/target/*,*/tmp/*,*/vendor/cache/*,*/vendor/gems/*,*/venv/*,*\\tmp\\*,*~,./tags,._*,.git/,.git/*,.idea/,\~$,_site,bower_components/*,CVS,CVS/*,media/*,migrations,tags,types_*taghl,vendor/cache/**,vendor/rails/**,

" This gives files lower priority, instead of outright ignoring them
set suffixes+=*.info,*.aux,*.log,*/.log,*.dvi,*.bbl,*.out,*/.out,*.old,*.bak
" )))

" )))

" Custom 'Underline' command using user-defined function (((

" https://vim.fandom.com/wiki/Underline_using_dashes_automatically
function! s:Underline(chars) abort
    let chars = empty(a:chars) ? '-' : a:chars
    let nr_columns = virtcol('$') - 1
    let uline = repeat(chars, (nr_columns / len(chars)) + 1)
    put =strpart(uline, 0, nr_columns)
endfunction

command! -nargs=? Underline call s:Underline(<q-args>)

" )))

" Formatlistpat settings (((

" A pattern that is used to recognize a list header.  This is used for the "n" flag in 'formatoptions'. The pattern must match exactly the text that will be the indent for the line below it.  You can use |/\ze| to mark the end of the match while still checking more characters.  There must be a character following the pattern, when it matches the whole line it is handled like there is no match. The default recognizes a number, followed by an optional punctuation character and white space.

set formatlistpat=^\\s*                " Optional leading whitespace
set formatlistpat+=[                   " Start character class
set formatlistpat+=\\[({]\\?           " |  Optionally match opening punctuation
set formatlistpat+=\\(                 " |  Start group
set formatlistpat+=[0-9]\\+            " |  |  Numbers
set formatlistpat+=\\\|                " |  |  or
set formatlistpat+=[a-zA-Z]\\+         " |  |  Letters
set formatlistpat+=\\)                 " |  End group
set formatlistpat+=[\\]:.)}            " |  Closing punctuation
set formatlistpat+=]                   " End character class
set formatlistpat+=\\s\\+              " One or more spaces
set formatlistpat+=\\\|                " or
set formatlistpat+=^\\s*[-–+o*•]\\s\\+ " Bullet points

" )))

" Global g:tex_ settings (((

" let g:tex_no_error=1   " The <tex.vim> supports lexical error checking of various sorts.  Thus, although the error checking is ofttimes very useful, it can indicate errors where none actually are.  If this proves to be a problem for you, you may put in your vimrc the following statement: > let g:tex_no_error=1 and all error checking by <syntax/tex.vim> will be suppressed.
let g:tex_comment_nospell= 1
let g:tex_conceal='abdmgs'
let g:tex_flavor = 'latex'
let g:tex_fold_enabled=1
let g:tex_isk='48-57,a-z,A-Z,192-255,:,_'

" )))

" Disable unnecessary internal plugins (((

" let g:do_filetype_lua           = 1
let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_load_filetypes        = 1
let g:skip_loading_mswin        = 1
let g:loaded_matchparen         = 1
let g:loaded_remote_plugins     = 1
let g:netrw_nogx                = 1

" let g:did_indent_on             = 1    " raises an error: Vim(doautocmd):E216: No such group or event: filetypeindent FileType markdown

" )))

" Folding-related global(g:) variables for various languages (((

let g:markdown_folding        = 1
let g:markdown_enable_folding = 1
let g:tex_fold_enabled        = 1
let g:vimsyn_folding          = 'af'
let g:xml_syntax_folding      = 1
let g:javaScript_fold         = 1
let g:sh_fold_enabled         = 7
let g:ruby_fold               = 1
let g:perl_fold               = 1
let g:perl_fold_blocks        = 1
let g:r_syntax_folding        = 1
let g:rust_fold               = 1
let g:php_folding             = 1

let g:cursorhold_updatetime   = 100

" )))

" Diff-mode settings (((

set diffopt+=vertical,foldcolumn:0,context:3,iwhiteall,hiddenoff
set diffopt+=indent-heuristic,algorithm:patience
" set diffopt+=internal,indent-heuristic,algorithm:histogram

" )))

" Settings for 'listchars' which define extra list display characters (((

set listchars=
set listchars+=tab:▸\     " Tab characters, preserve width
set listchars+=trail:·    " Trailing spaces
set listchars+=extends:>  " Unwrapped text to screen right
set listchars+=precedes:< " Unwrapped text to screen left
set listchars+=nbsp:␣

" )))

" Title (GUI/terminal) settings (((

set title
set titleold="Terminal"

" https://github.com/factorylabs/vimfiles/blob/ad1f9ffcd8c1e620a75a28822aaefc2097640b0d/home/.vimrc#L309
" Set the title bar to something meaningful

" set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
" set titlestring=%f%(\ [%M]%)
" set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)

set titlestring=
set titlestring+=%f\                " file name
set titlestring+=%h%m%r%w           " flags
set titlestring+=\ -\ %{v:progname} " program name

" )))

" Settings for grepprg and grepformat (((

if executable('rg')
    set grepprg=rg\ -H\ --no-heading\ --vimgrep
    set grepformat^=%f:%l:%c:%m
endif

" )))

" Mappings (((

" https://github.com/neovim/neovim/issues/9953
" https://github.com/neovim/neovim/issues/9953#issuecomment-487399273
" if &wildoptions == 'pum'
"     cnoremap <expr> <up>   pumvisible() ? "<C-p>" : "\<up>"
"     cnoremap <expr> <down> pumvisible() ? "<C-n>" : "\<down>"
" endif

cnoremap <C-N> <Down>
cnoremap <C-P> <Up>

" Replace :w with :up
" https://vi.stackexchange.com/questions/16173/how-to-remap-w-to-up
cnoreabbrev <expr> w getcmdtype() == ":" && getcmdline() =~ '^w$' ? 'up' : 'w'

" https://www.reddit.com/r/neovim/comments/sf0hmc/im_really_proud_of_this_mapping_i_came_up_with/?sort=old
" nnoremap g. /\V\C<C-r>"<CR>cgn<C-a><Esc>
nnoremap g. :call setreg('/',substitute(@", '\%x00', '\\n', 'g'))<cr>:exec printf("norm %sgn%s", v:operator, v:operator != 'd' ? '<c-a>':'')<cr>

" nnoremaps (((

" https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/?sort=new
" noremap <silent> <expr> j (v:count ? 'j' : 'gj')
" noremap <silent> <expr> k (v:count ? 'k' : 'gk')

" )))

" replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

noremap <c-w>" <c-w>t<c-w>K    " change vertical to horizontal with -
noremap <c-w>% <c-w>t<c-w>H    " change horizontal to vertical with %

" Remap 'gx' for opening the URL under cursor on macOS (((
" https://github.com/vim/vim/issues/4738
if has('macunix')
    function! OpenURLUnderCursor()
        let s:uri = expand('<cWORD>')
        let s:uri = substitute(s:uri, '?', '\\?', '')
        let s:uri = shellescape(s:uri, 1)
        if s:uri != ''
            silent exec "!open '".s:uri."'"
            :redraw!
        endif
    endfunction
    nnoremap gx :call OpenURLUnderCursor()<CR>
endif
" )))

" https://vi.stackexchange.com/questions/18777/move-to-first-word-of-paragraph-in-vim-with-and
" nnoremap <expr><silent> { (col('.')==1 && len(getline(line('.')-1))==0? '2{j' : '{j')
" nnoremap <expr><silent> } (col('.')==1 && len(getline(line('.')-1))==0? '2}k' : '}k')

" Make jump-selections work better in visual block mode (((

xnoremap <expr>  G   'G' . virtcol('.') . "\|"
xnoremap <expr>  }   '}' . virtcol('.') . "\|"
xnoremap <expr>  {   '{' . virtcol('.') . "\|"

" )))

" Substitute word under cursor and dot repeat (((
" https://bluz71.github.io/2017/05/15/vim-tips-tricks.html
" nnoremap <silent> \\C :let @/='\<'.expand('<cword>').'\>'<CR>cgn
" xnoremap <silent> \\C "sy:let @/=@s<CR>cgn
" )))

" )))

" Dictionary settings (((

if has('unix')
    silent! set dictionary+=/usr/share/dict/words
    silent! set dictionary+=/usr/share/dict/american-english
    silent! set dictionary+=/usr/share/dict/british-english
    silent! set dictionary+=/usr/share/dict/cracklib-small
endif

" )))

" Custom highlights (((
" highlight clear SignColumn     " SignColumn should match background,SignColumn is the column where |signs| are displayed
" highlight Comment cterm=italic gui=italic
"
" highlight link HelpBar Normal
" highlight link HelpStar Normal
"
" highlight OverLength ctermfg=0 ctermbg=3
" match OverLength /\%121v/

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " Nobody wants to commit merge conflict markers, so let’s highlight these so we can’t miss them: https://vimways.org/2018/vim-and-git/

" )))

" shortmess settings (((

set shortmess+=I  " Don't give the intro message when starting Vim |:intro|.
set shortmess+=c  " Don't give |ins-completion-menu| messages.  For example, '-- XXX completion (YYY)', 'match 1 of 2', 'The only match', 'Pattern not found', 'Back at original', etc.
set shortmess-=x  " Uses [unix format], [dos format], [mac format] etc. instead of their shortened versions

" )))

" neovim-remote settings (((

if executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

" )))

" Other non-conditional settings/declarations (set xxxxxxx) (((

" let g:cursorhold_updatetime = 100
" set colorcolumn=99999 " fixes indentline for now
" set path+=**          " Search current directory's whole tree
set cpoptions-=a      " Stop the :read command from annoyingly setting the alternative buffer
set fileformats=unix,dos,mac  " This gives the end-of-line (<EOL>) formats that will be tried when starting to edit a new buffer and when reading a file into an existing buffer:
set guioptions-=e
set isfname-==
set isfname-={,}
set report=0
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " Probably overridden by status-line plugins
set showtabline=2
set tags=~/.cache/tags
set timeoutlen=500  " milliseconds
set virtualedit+=block " Allow movement beyond buffer text only in visual block mode
set winaltkeys=no

" )))

]]

-- )))

-- lua-style settings and plugin-setup calls (((

require "custom.plugins.filetype"

require "custom.keymaps"
require "custom.autocommands"
require "custom.plugins.aerial"
require "custom.plugins.hlslens"
require "custom.plugins.mini"
require "custom.plugins.neoscroll"
require "custom.plugins.lsp.null-ls"
require "custom.plugins.nvim_cmake"
require "custom.plugins.nvim_config_local"
require "custom.plugins.nvim_lightbulb"
require "custom.plugins.nvim_window"
require "custom.plugins.pretty_fold"
require "custom.plugins.project"
require "custom.plugins.range_highlight"
require "custom.plugins.telescope_fzf"
require "custom.plugins.treesitter_context"
require "custom.plugins.trouble"
require "custom.plugins.whichkey"

-- require "custom.plugins.ale"
-- require "custom.plugins.colorscheme"
-- require "custom.plugins.editorconfig"
-- require "custom.plugins.gutentags"
-- require "custom.plugins.octo"
-- require "custom.plugins.stabilize"
-- require "custom.plugins.toggleterm"

-- )))
