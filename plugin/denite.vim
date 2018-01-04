"=============================================================================
" FILE: denite.vim
" AUTHOR:  Shougo Matsushita <Shougo.Matsu at gmail.com>
" License: MIT license
"=============================================================================

if exists('g:loaded_denite')
  finish
endif
let g:loaded_denite = 1

""
" @command(Denite)
" Call a Denite source with arguments and completion via |denite#helper#complete|.
command! -nargs=+ -range -complete=customlist,denite#helper#complete
      \ Denite
      \ call denite#helper#call_denite('Denite',
      \                                <q-args>, <line1>, <line2>)
""
" @command(DeniteCursorWord)
" Call a Denite source and pass the word under the cursor as an argument.
command! -nargs=+ -range -complete=customlist,denite#helper#complete
      \ DeniteCursorWord
      \ call denite#helper#call_denite('DeniteCursorWord',
      \                                <q-args>, <line1>, <line2>)
""
" @command(DeniteBufferDir)
" Call a Denite source and pass the active buffer's directory as an argument.
command! -nargs=+ -range -complete=customlist,denite#helper#complete
      \ DeniteBufferDir
      \ call denite#helper#call_denite('DeniteBufferDir',
      \                                <q-args>, <line1>, <line2>)
""
" @command(DeniteProjectDir)
" Call a Denite source and pass a project's root directory as an argument.
command! -nargs=+ -range -complete=customlist,denite#helper#complete
      \ DeniteProjectDir
      \ call denite#helper#call_denite('DeniteProjectDir',
      \                                <q-args>, <line1>, <line2>)
