" Willow ColorScheme
"
"
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'Willow'

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guibg=#2d2d2d ctermbg=236
  hi CursorColumn guibg=#2d2d2d ctermbg=236
  hi MatchParen   guifg=#d0ffc0 guibg=#2f2f2f gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu 		    guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel 	  guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		  guifg=NONE    guibg=#626262 gui=none ctermbg=241
hi Normal 		  guifg=#e2e2e5 guibg=#444444 gui=none ctermfg=253 ctermbg=238
hi NonText 		  guifg=#808080 guibg=#464646 gui=none ctermfg=244 ctermbg=238
hi LineNr 		  guifg=#808080 guibg=#464646 gui=none ctermfg=244 ctermbg=238
hi StatusLine 	guifg=#d3d3d5 guibg=#444444 gui=italic ctermfg=253 ctermbg=238 cterm=italic
hi StatusLineNC guifg=#939395 guibg=#444444 gui=none ctermfg=246 ctermbg=238
hi VertSplit 	  guifg=#444444 guibg=#444444 gui=none ctermfg=238 ctermbg=238
hi Folded 		  guibg=#384048 guifg=#a0a8b0 gui=none ctermbg=4 ctermfg=248
hi Title		    guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi Visual		    guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=4
hi SpecialKey	  guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236

" Syntax highlighting
hi Comment 		  guifg=#6f6f6f gui=italic ctermfg=242
hi Todo 		    guifg=#8f8f8f gui=italic ctermfg=245
hi Boolean      guifg=#89c61f gui=none ctermfg=112
hi String 		  guifg=#fefbb7 gui=italic ctermfg=229
hi Identifier 	guifg=#b1d631 gui=none ctermfg=242
hi Function 	  guifg=#fefbb7 gui=bold ctermfg=229 cterm=bold
hi Type 		    guifg=#7e8aa2 gui=none ctermfg=103
hi Statement 	  guifg=#7e8aa2 gui=none ctermfg=103
hi Keyword		  guifg=#6f6f6f gui=none ctermfg=242
hi Constant 	  guifg=#ff9800 gui=none  ctermfg=208
hi Number		    guifg=#ff9800 gui=none ctermfg=208
hi Special		  guifg=#ff9800 gui=none ctermfg=208
hi PreProc 		  guifg=#faf4c6 gui=none ctermfg=230
hi Todo         guifg=#000000 guibg=#e6ea50 gui=italic

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103

hi Search     guifg=white	guibg=NONE	cterm=NONE	gui=underline
