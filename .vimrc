" ------------------------------------
" Leon Zhou's .vimrc begins
" ------------------------------------
" pathogen
filetype on
filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on
" coding style check
let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['flake8']
let g:syntastic_javascript_checkers=['jshint']
" indent guid
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=lightgray ctermbg=lightgray
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightgray ctermbg=lightgray

" clipboard
set clipboard=unnamed

" color theme for terminal
color ron

" ru
set ru

" is
set is

" display code
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" Comfirm when Unsaved or Read-only
set confirm

" no backup
set nobackup

" 高亮字符，让其不受100列限制
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
match OverLength '\%101v.*'

" 光标移动到buffer的顶部和底部时保持2行距离
set scrolloff=2

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 命令行（在状态行下）的高度，默认为1
set cmdheight=1


" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" display tab and space as some other remarkable characters
set list
set listchars=tab:>.,trail:.

" tab menu
set wildmenu

" get support of color
set t_Co=256

" highlight cursor
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=233 ctermfg=NONE guibg=purple guibg=NONE
set cursorline
hi CursorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=purple guibg=NONE

" for closetag
let g:closetag_html_style=1
source ~/.vim/scripts/closetag.vim

" for miniBufexplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

set number
set expandtab
set nowrap
set backspace=indent,eol,start

if has("autocmd")
   autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
   autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
   autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python,go,haskell setlocal textwidth=100
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
    autocmd BufEnter * :IndentGuidesEnable
endif " has("autocmd")
