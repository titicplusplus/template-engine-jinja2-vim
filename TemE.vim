command WW call s:TemE()

function s:TemE() range abort
	w
	let l:file = getline(0,'$')
	let l:all = ""

	for i in l:file
		let l:all = l:all . i . "\n"
	endfor

	let s = system( "python3 ~/.vim/plugin/TemE.py '" .  expand('%:p') . "' '" . l:all . "'")
endfunction



