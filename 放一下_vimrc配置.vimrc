source ~/.vim/bundles.vim

" 瑙ｅ喅涔辩爜
"set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"瑙ｅ喅鑿滃崟涔辩爜
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"瑙ｅ喅consle杈撳嚭涔辩爜
language messages zh_CN.utf-8


" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on


" enable syntax hightlight and completion
syntax on


"--------
" Vim UI
"--------
" color scheme
set background=dark
color evening 
set guifont=Courier_new:h14
set guifontwide=新宋体:h14

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn


" search
set incsearch
"set highlight     " conflict with highlight current line
set ignorecase
set smartcase


" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
"set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber


" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
"set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space


autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"


"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle


" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1


hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white


" easy-motion
let g:EasyMotion_leader_key = '<Leader>'


" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }


  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif


" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']


" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"


" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1


" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'


" powerline
"let g:Powerline_symbols = 'fancy'


" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview


imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'


" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2


" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'


" Keybindings for plugin toggle
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>


nmap <F2> :!gvim %<cr>
nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :TagbarToggle<cr>
"nmap <F7> :GundoToggle<cr>
nmap <F8> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]


"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif


" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %


" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv


" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa


" for macvim
"if has("gui_running")
"    set go=aAce  " remove toolbar
"    "set transparency=30
"    set guifont=Monaco:h13
"    set showtabline=2
"    set columns=140
"    set lines=40
"    noremap <D-M-Left> :tabprevious<cr>
"    noremap <D-M-Right> :tabnext<cr>
"    map <D-1> 1gt
"    map <D-2> 2gt
"    map <D-3> 3gt
"    map <D-4> 4gt
"    map <D-5> 5gt
"    map <D-6> 6gt
"    map <D-7> 7gt
"    map <D-8> 8gt
"    map <D-9> 9gt
"    map <D-0> :tablast<CR>
"endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缂撳瓨璁剧疆
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 璁剧疆涓嶅浠?
set noswapfile          " 绂佹鐢熸垚涓存椂鏂囦欢
set autoread            " 鏂囦欢鍦╲im涔嬪淇敼杩囷紝鑷姩閲嶆柊璇诲叆
set autowrite           " 璁剧疆鑷姩淇濆瓨
set confirm             " 鍦ㄥ鐞嗘湭淇濆瓨鎴栧彧璇绘枃浠剁殑鏃跺€欙紝寮瑰嚭纭

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缂栫爜璁剧疆
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim璁剧疆
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
"    let system = system('uname -s')
"    if system == "Darwin\n"
"        set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h18 " 璁剧疆瀛椾綋
"    else
"        set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 18      " 璁剧疆瀛椾綋
"    endif
"    set guioptions-=m           " 闅愯棌鑿滃崟鏍?
"    set guioptions-=T           " 闅愯棌宸ュ叿鏍?
"    set guioptions-=L           " 闅愯棌宸︿晶婊氬姩鏉?
"    set guioptions-=r           " 闅愯棌鍙充晶婊氬姩鏉?
"    set guioptions-=b           " 闅愯棌搴曢儴婊氬姩鏉?
"    set showtabline=0           " 闅愯棌Tab鏍?
"    set guicursor=n-v-c:ver5    " 璁剧疆鍏夋爣涓虹珫绾?
  set autochdir "鑷姩璁剧疆褰撳墠鐩綍涓烘鍦ㄧ紪杈戠殑鐩綍
  set hidden "鑷姩闅愯棌娌℃湁淇濆瓨鐨勭紦鍐插尯锛屽垏鎹uffer鏃朵笉缁欏嚭淇濆瓨褰撳墠buffer鐨勬彁绀?
  set scrolloff=5 "鍦ㄥ厜鏍囨帴杩戝簳绔垨椤剁鏃讹紝鑷姩涓嬫粴鎴栦笂婊?
endif

"鑳屾櫙閫忔槑搴﹁窡闅忕粓绔?
hi Normal ctermfg=252 ctermbg=none

"NERDTree閰嶇疆
"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1
"let g:NERDTreeHighlightFolders = 1
"let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='鈻? "鐩綍鍓嶉潰鐨勫舰鐘?
let g:NERDTreeDirArrowCollapsible='鈻?
let NERDTreeQuitOnOpen=1 "鎵撳紑鏂囦欢鏃跺叧闂爲
let NERDTreeShowBookmarks=1 "鏄剧ず涔︾
let NERDTreeShowHidden=1 "鏄剧ず闅愯棌

" change-colorscheme棰滆壊閰嶇疆蹇嵎閿?
nnoremap <silent> <F10> :PreviousColorScheme<cr>
inoremap <silent> <F10> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F9> :NextColorScheme<cr>
inoremap <silent> <F9> <esc> :NextColorScheme<cr>

"缂栬瘧鍑芥暟
func CompileRun()
    exec "w"
"C绋嬪簭
    if &filetype == 'c'
        exec "!gcc % -g -o %<.exe"
"濡傛灉鍑虹幇浜嗛敊璇?from auto-imported DLLs 灏卞湪 !gcc 鍚庨潰鍔? -Wall --enable-auto-import
"c++绋嬪簭
    elseif &filetype == 'cpp'
        exec "!g++  % -g -o %<.exe"
"濡傛灉鍑虹幇浜嗛敊璇?from auto-imported DLLs 灏卞湪 !g++ 鍚庨潰鍔? -Wall --enable-auto-import
"Java绋嬪簭
    elseif &filetype == 'java'
        exec "!javac %"
"-------------go------------------
    elseif &filetype == 'go'
        exec "!go build %<"
"----------mkd>>html--------------
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
    endif
endfunc
"缁撴潫瀹氫箟CompileRun

"瀹氫箟Run杩愯鍑芥暟
func Run()
    if &filetype == 'c' || &filetype == 'cpp'
        exec "!%<.exe"
"---------JAVA------------
    elseif &filetype == 'java'
        exec "!java %<"
"-------------Python鎵ц------------
    elseif &filetype == 'python'
"杩欓噷璇存槑涓嬭繖鏄墽琛宲ython濡傛灉浣犳兂璁﹑ython2.7鎵ц灏辨敼python2.7 %<灏卞彲浠?
        exec "python3 %"
"----------bash----------------
    elseif &filetype == 'sh'
        :!bash %
"-------------html----------------
    elseif &filetype =='html'
"杩欓噷璇存槑涓€涓嬪鏋滀綘鏄敤chrome灏卞皢涓嬮潰firefox鏀筩hrome灏辫浜?
        exec "!firefox % &"
"-------------go------------------
    elseif &filetype == 'go'
        exec "!go run %"
"----------mkd>>html--------------
    elseif &filetype == 'mkd'
        exec "!firefox %.html &"
    endif
endfunc
"瀹氫箟Debug鍑芥暟锛岀敤鏉ヨ皟璇曠▼搴?
func Debug()
    exec "w"
"C绋嬪簭
    if &filetype == 'c'
        exec "!gcc % -g -o %<.exe"
        exec "!gdb %<.exe"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<.exe"
        exec "!gdb %<.exe"
"Java绋嬪簭
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!jdb %<"
    endif
endfunc
"缁撴潫瀹氫箟Debug
"璁剧疆绋嬪簭鐨勮繍琛屽拰璋冭瘯鐨勫揩鎹烽敭F5鍜孋trl-F5
map <F5> :call CompileRun()<CR>
map <F6> :call Run()<CR>
map <F7> :call Debug()<CR>
