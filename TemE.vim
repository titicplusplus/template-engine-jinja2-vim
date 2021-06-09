command WW call s:TemE2()

function s:TemE() range abort
        w
        let l:file = getline(0,'$')
        let l:all = ""

        echo l:file



        for i in l:file
                let l:all = l:all . i . "\n"
        endfor

        echo l:all

        let s = system( "python3 ~/.vim/plugin/TemE.py '" .  expand('%:p') . "' '" . l:all . "'")
endfunction

function s:TemE2() range abort
        w
        let s = system( "python3 ~/.vim/plugin/TemE.py '" .  expand('%:p') . "'" )
endfunction
