vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_open_on_warning = 0
vim.cmd([[ 
    let g:vimtex_compiler_latexmk_engines = {
        \ '_'   : '-xelatex',
	\}
	]])
vim.cmd([[
	let g:vimtex_compiler_latexmk = {
        \ 'build_dir' : 'build',
\}
	]])
