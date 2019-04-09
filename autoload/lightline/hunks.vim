if !get(g:, 'loaded_gitgutter', 0) && !exists('*fugitive#head')
  finish
endif

let s:branch_symbol = get(g:, 'lightline#hunks#branch_symbol', ' ')
let s:hunk_symbols = get(g:, 'lightline#hunks#hunk_symbols', ['+', '~', '-'])

function! s:get_hunks_gitgutter()
  if !get(g:, 'gitgutter_enabled', 0)
    return ''
  endif
  return GitGutterGetHunkSummary()
endfunction

function! lightline#hunks#composer()
  let hunks = s:get_hunks_gitgutter()
  let compose = ''
  if exists('*fugitive#head') && !empty(hunks)
    for i in [0, 1, 2]
      if hunks[i] > 0
        let compose .= printf('%s%s', s:hunk_symbols[i], hunks[i]).' '
      endif
    endfor
    let branch = fugitive#head()
    return branch !=# '' ? compose . s:branch_symbol . branch : ''
  endif
endfunction
