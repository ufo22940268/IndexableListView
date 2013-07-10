let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1,"")a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0,"")a
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
snoremap <silent> 	 i<Right>=TriggerSnippet()
noremap  :TagbarToggle
nmap  <Plug>DWMFocus
map  :WMToggle
snoremap  b<BS>
vmap c <Plug>ZenCodingCodePretty
vmap m <Plug>ZenCodingMergeLines
vmap D <Plug>ZenCodingBalanceTagOutwardVisual
vmap d <Plug>ZenCodingBalanceTagInwardVisual
vmap , <Plug>ZenCodingExpandVisual
nmap A <Plug>ZenCodingAnchorizeSummary
nmap a <Plug>ZenCodingAnchorizeURL
nmap k <Plug>ZenCodingRemoveTag
nmap j <Plug>ZenCodingSplitJoinTagNormal
nmap / <Plug>ZenCodingToggleComment
nmap i <Plug>ZenCodingImageSize
nmap N <Plug>ZenCodingPrev
nmap n <Plug>ZenCodingNext
nmap D <Plug>ZenCodingBalanceTagOutwardNormal
nmap d <Plug>ZenCodingBalanceTagInwardNormal
nmap , <Plug>ZenCodingExpandNormal
nmap d :cs find d =expand("<cword>")      
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")      
nmap e :cs find e =expand("<cword>")      
nmap t :cs find t =expand("<cword>")      
nmap c :cs find c =expand("<cword>")      
nmap g :cs find g =expand("<cword>")      
nmap s :cs find s =expand("<cword>")      
map   /
vnoremap $/ `>a*/`<i/*
vnoremap $< `>a -->`<i<!-- 
vnoremap $w `>a"`<i"
vnoremap $q `>a'`<i'
vnoremap $$ `>a"`<i"
vnoremap $3 `>a}`<i{
vnoremap $2 `>a]`<i[
vnoremap $1 `>a)`<i(
snoremap % b<BS>%
snoremap ' b<BS>'
nmap <silent> ,cv <Plug>VCSVimDiff
nmap <silent> ,cU <Plug>VCSUnlock
nmap <silent> ,cr <Plug>VCSReview
nmap <silent> ,cq <Plug>VCSRevert
nmap <silent> ,cN <Plug>VCSSplitAnnotate
nmap <silent> ,cL <Plug>VCSLock
nmap <silent> ,cg <Plug>VCSGotoOriginal
nmap <silent> ,cG <Plug>VCSClearAndGotoOriginal
nmap <silent> ,cD <Plug>VCSDelete
nmap ,caL <Plug>CalendarH
nmap ,cal <Plug>CalendarV
nmap ,scp <Plug>SQLUCreateProcedure
nmap ,scdt <Plug>SQLUGetColumnDataType
nmap ,scd <Plug>SQLUGetColumnDef
nmap ,scl <Plug>SQLUCreateColumnList
vmap ,sf <Plug>SQLUFormatter
nmap ,sf <Plug>SQLUFormatter
vmap ,sfs <Plug>SQLUFormatter
nmap ,sfs <Plug>SQLUFormatter
vmap ,sfr <Plug>SQLUFormatStmts
nmap ,sfr <Plug>SQLUFormatStmts
nmap <silent> ,ig <Plug>IndentGuidesToggle
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nnoremap <silent> ,b :CommandTBuffer
nnoremap <silent> ,t :CommandT
nnoremap ,va :e ~/.config/awesome/rc.lua
nnoremap ,vt :call EditFileType()
nnoremap ,vn :call EditSnippet()
nnoremap ,vh gg/class
nnoremap ,vu :!ant uninstall
nnoremap ,vd :!mvn android:deploy
nnoremap ,vac :!make clean
nnoremap ,vr :make runa
nnoremap ,vf :let @f=expand("%:t:r")
map ,pt :set invpaste
noremap ,fb viB:g!#^.*//#Tabularize /,
noremap ,u hgUiwe
noremap ,tcd :call ClearDb()
noremap ,pl :call PushLarge()
noremap ,py :call PushYlzhao()
vnoremap ,cp :call CopySelectionLines()
vnoremap ,p :call EchoSelectionLines()
noremap ,m :make
noremap ,cd :call CdToProjectRoot()
map ,wp :call SwitchToProject("PROVIDER")
map ,wr :call SwitchToProject("RES")
map ,wf :call SwitchToProject("FRA")
map ,wh :call SwitchToProject("CALL_HISTORY")
map ,wc :call SwitchToProject("CONTACTS")
map <silent> ,bt :!ctags -R --exclude=\.* 
noremap ,vcg :e =language_dir/zh.txt
noremap ,veg :e =language_dir/en.txt
noremap ,vcs :e res/values-zh-rCN/strings.xml
noremap ,ves :e res/values/strings.xml
noremap ,do :call DebugOuterClass()
noremap ,di :call DebugInnerClass()
noremap ,tc :!adb_connect
noremap ,tr :!adb shell stop; sleep 2; adb shell start
map ,z <Plug>ZoomWin
noremap <silent> ,bc :!find . -name *.java > cscope.files && cscope -b -q
noremap ,ts :!target_sync
map ,vs :so ~/.vimrc
map ,vv :e ~/.vimrc
noremap ,vp :let @p=expand("%:p")
map ,ac :!adb_connect && pactive $TARGET
map ,al :!adb_connect&&adb logcat
map ,vxs :sp ~/.vim/snippets/xml.snippets
map ,vjs :sp ~/.vim/snippets/java.snippets
nmap ,rr :call ReloadSnippets(snippets_dir, &filetype)
nmap ,et :exec "e ~/.vim/ftplugin/".&filetype.".vim"
nmap ,es :call EditSnippet()
map ,y :YRShow
map ,s? z=
map ,sa zg
map ,sp [
map ,sn ]
map ,q :e ~/buffer
nmap ,fu :se ff=unix
nmap ,fd :se ff=dos
nmap ,w :w!
nmap ,x :xa!
map 0 ^
cnoremap è 
cnoremap ä <S-Right>
cmap æ <S-Right>
cmap â <S-Left>
xmap S <Plug>VSurround
snoremap U b<BS>U
vmap [% [%m'gv``
snoremap \ b<BS>\
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
onoremap <silent> aC :call TextObjWordBasedColumn("aW")
onoremap <silent> ac :call TextObjWordBasedColumn("aw")
xnoremap <silent> aC :call TextObjWordBasedColumn("aW")
xnoremap <silent> ac :call TextObjWordBasedColumn("aw")
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
onoremap <silent> iC :call TextObjWordBasedColumn("iW")
onoremap <silent> ic :call TextObjWordBasedColumn("iw")
xnoremap <silent> iC :call TextObjWordBasedColumn("iW")
xnoremap <silent> ic :call TextObjWordBasedColumn("iw")
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>VCSVimDiff :VCSVimDiff
nnoremap <silent> <Plug>VCSUpdate :VCSUpdate
nnoremap <silent> <Plug>VCSUnlock :VCSUnlock
nnoremap <silent> <Plug>VCSStatus :VCSStatus
nnoremap <silent> <Plug>VCSSplitAnnotate :VCSAnnotate!
nnoremap <silent> <Plug>VCSReview :VCSReview
nnoremap <silent> <Plug>VCSRevert :VCSRevert
nnoremap <silent> <Plug>VCSLog :VCSLog
nnoremap <silent> <Plug>VCSLock :VCSLock
nnoremap <silent> <Plug>VCSInfo :VCSInfo
nnoremap <silent> <Plug>VCSClearAndGotoOriginal :VCSGotoOriginal!
nnoremap <silent> <Plug>VCSGotoOriginal :VCSGotoOriginal
nnoremap <silent> <Plug>VCSDiff :VCSDiff
nnoremap <silent> <Plug>VCSDelete :VCSDelete
nnoremap <silent> <Plug>VCSCommit :VCSCommit
nnoremap <silent> <Plug>VCSAnnotate :VCSAnnotate
nnoremap <silent> <Plug>VCSAdd :VCSAdd
nmap <Nul><Nul>d :vert scs find d =expand("<cword>")
nmap <Nul><Nul>i :vert scs find i ^=expand("<cfile>")$ 
nmap <Nul><Nul>f :vert scs find f =expand("<cfile>")   
nmap <Nul><Nul>e :vert scs find e =expand("<cword>")
nmap <Nul><Nul>t :vert scs find t =expand("<cword>")
nmap <Nul><Nul>c :vert scs find c =expand("<cword>")
nmap <Nul><Nul>g :vert scs find g =expand("<cword>")
nmap <Nul><Nul>s :vert scs find s =expand("<cword>")
nmap <Nul>d :scs find d =expand("<cword>")     
nmap <Nul>i :scs find i ^=expand("<cfile>")$   
nmap <Nul>f :scs find f =expand("<cfile>")     
nmap <Nul>e :scs find e =expand("<cword>")     
nmap <Nul>t :scs find t =expand("<cword>")     
nmap <Nul>c :scs find c =expand("<cword>")     
nmap <Nul>g :scs find g =expand("<cword>")     
nmap <Nul>s :scs find s =expand("<cword>")     
nnoremap <silent> <Plug>CalendarH :cal Calendar(1)
nnoremap <silent> <Plug>CalendarV :cal Calendar(0)
vnoremap <Plug>ZenCodingCodePretty :call zencoding#codePretty()
vnoremap <Plug>ZenCodingMergeLines :call zencoding#mergeLines()
vnoremap <Plug>ZenCodingBalanceTagOutwardVisual :call zencoding#balanceTag(-2)
vnoremap <Plug>ZenCodingBalanceTagInwardVisual :call zencoding#balanceTag(2)
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2,"")
nnoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)
nnoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)
nnoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()
nnoremap <Plug>ZenCodingSplitJoinTagNormal :call zencoding#splitJoinTag()
nnoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()
nnoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()
nnoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
nnoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
nnoremap <Plug>ZenCodingBalanceTagOutwardNormal :call zencoding#balanceTag(-1)
nnoremap <Plug>ZenCodingBalanceTagInwardNormal :call zencoding#balanceTag(1)
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1,"")
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3,"")
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <silent> <Plug>SurroundRepeat .
noremap <F2> :NERDTreeToggle
noremap <F3> :NumbersToggle
map <F9> ggVGg?
cmap  <Home>
cmap  <Left>
cnoremap  <Del>
cmap  <End>
cmap  <Right>
imap S <Plug>ISurround
imap s <Plug>Isurround
cnoremap  <BS>
inoremap <silent> 	 =TriggerSnippet()
cnoremap  
imap  <Plug>SuperTabForward
cmap  <Down>
imap  <Plug>SuperTabBackward
cmap  <Up>
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap A <Plug>ZenCodingAnchorizeSummary
imap a <Plug>ZenCodingAnchorizeURL
imap k <Plug>ZenCodingRemoveTag
imap j <Plug>ZenCodingSplitJoinTagInsert
imap / <Plug>ZenCodingToggleComment
imap i <Plug>ZenCodingImageSize
imap N <Plug>ZenCodingPrev
imap n <Plug>ZenCodingNext
imap D <Plug>ZenCodingBalanceTagOutwardInsert
imap d <Plug>ZenCodingBalanceTagInwardInsert
imap ; <Plug>ZenCodingExpandWord
imap , <Plug>ZenCodingExpandAbbr
cnoremap $td tabnew ~/Desktop/
cnoremap $th tabnew ~/
vmap ë :m'<-2`>my`<mzgv`yo`z
vmap ê :m'>+`<my`>mzgv`yo`z
nmap ë mz:m-2`z
nmap ê mz:m+`z
cabbr rename =getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"
cabbr <expr> %$ expand('%:t:r')
cabbr <expr> %% expand('%:h')
iabbr xdate =strftime("%d/%m/%y %H:%M:%S")
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set autoread
set autowrite
set background=dark
set backspace=2
set balloonexpr=JavaBrowser_Show_Prototype()
set cindent
set cinoptions=l1
set cmdheight=2
set cscopeverbose
set errorformat=%A\ %#[javac]\ %f:%l:\ %m,%A\ %#[aapt]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%C\ %#[javac]\ %m,%-C%.%#
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
set guitablabel=%{TabGuiCaptionLabel()}
set helplang=en
set hidden
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set matchtime=8
set mouse=a
set path=.,/usr/include,,,res/layout,res/layout-finger,res/values,res/drawable,res/drawable-mdpi,res/drawable-hdpi,res/menu,assets,js,css,img
set ruler
set runtimepath=~/.vim/bundle/vundle,~/.vim/bundle/vim-fugitive,~/.vim/bundle/command-t,~/.vim/bundle/vim-powerline,~/.vim/bundle/vim-surround,~/.vim/bundle/Conque-Shell,~/.vim/bundle/numbers.vim,~/.vim/bundle/tabular,~/.vim/bundle/nerdcommenter,~/.vim/bundle/glsl.vim,~/.vim/bundle/tabular,~/.vim/bundle/logcat,~/.vim/bundle/glsl.vim,~/.vim/bundle/vim-java-get-set,~/.vim/bundle/zencoding-vim,~/.vim/bundle/jshint.vim,~/.vim/bundle/textobj-word-column.vim,~/.vim/bundle/renamer.vim,~/.vim/bundle/rename.vim,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/tagbar,~/.vim/bundle/vim-indent-guides,~/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/vundle/,~/.vim/bundle/vundle/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/command-t/after,~/.vim/bundle/vim-powerline/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/Conque-Shell/after,~/.vim/bundle/numbers.vim/after,~/.vim/bundle/tabular/after,~/.vim/bundle/nerdcommenter/after,~/.vim/bundle/glsl.vim/after,~/.vim/bundle/tabular/after,~/.vim/bundle/logcat/after,~/.vim/bundle/glsl.vim/after,~/.vim/bundle/vim-java-get-set/after,~/.vim/bundle/zencoding-vim/after,~/.vim/bundle/jshint.vim/after,~/.vim/bundle/textobj-word-column.vim/after,~/.vim/bundle/renamer.vim/after,~/.vim/bundle/rename.vim/after,~/.vim/bundle/vim-colors-solarized/after,~/.vim/bundle/tagbar/after,~/.vim/bundle/vim-indent-guides/after
set scrolloff=7
set sessionoptions=options
set shell=bash\ -l
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set suffixesadd=.java,.xml,.9.png,.png,.py
set noswapfile
set tabline=%!TabCaptionLineFunction()
set tabstop=4
set termencoding=utf-8
set visualbell
set wildmenu
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
silent! argdel *
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
