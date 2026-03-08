au BufRead,BufNewFile *.txt call s:DetectCaledonia()

function! s:DetectCaledonia()
	let l:calendar_location = !empty($CALEDONIA_CALENDAR_LOCATION) ? $CALEDONIA_CALENDAR_LOCATION : "Calendar"
	let l:pattern = substitute(l:calendar_location, "/", "-", "g") . "\.txt$"
	if expand("%:t") =~# l:pattern
		set filetype=caledonia
	endif
endfunction
