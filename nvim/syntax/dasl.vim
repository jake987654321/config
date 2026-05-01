" Vim syntax file
" Language: DASL (drisco assembler)
" Mirrors parse rules in drisco/assembler.py.

if exists("b:current_syntax")
    finish
endif

syntax case match

" Strings are parsed before comments so // inside quotes is not treated as comment.
syntax region daslString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=NONE
syntax region daslString start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=NONE

" Comments: line comments beginning with // (full-line or trailing).
syntax match daslComment +//.*$+

" Label definitions (only legal at beginning of instruction line in assembler).
syntax match daslLabel /^\s*\zs[A-Za-z_][A-Za-z0-9_]*\ze:/

" Precondition clause tokens: [optional label:] precond_var ? opcode
syntax match daslPrecondVar /^\s*\%([A-Za-z_][A-Za-z0-9_]*\s*:\s*\)\?\zs[A-Za-z_][A-Za-z0-9_]*\ze\s*[?]\s*[A-Za-z_][A-Za-z0-9_.]\+/
syntax match daslPrecondSymbol /\%(^\s*\%([A-Za-z_][A-Za-z0-9_]*\s*:\s*\)\?[A-Za-z_][A-Za-z0-9_]*\s*\)\@<=[?]\ze\s*[A-Za-z_][A-Za-z0-9_.]\+/

" Opcode token. First match handles preconditioned opcodes; second handles normal lines.
syntax match daslOpcode /\%(^\s*\%([A-Za-z_][A-Za-z0-9_]*\s*:\s*\)\?[A-Za-z_][A-Za-z0-9_]*\s*[?]\s*\)\@<=[A-Za-z_][A-Za-z0-9_.]\+/
syntax match daslOpcode /\%(^\s*\%([A-Za-z_][A-Za-z0-9_]*\s*:\s*\)\?\)\@<=\%([A-Za-z_][A-Za-z0-9_]*\s*[?]\s*\)\@!\%([A-Za-z_][A-Za-z0-9_.]\+\s*:\)\@![A-Za-z_][A-Za-z0-9_.]\+/

" Argument token classes from assembler second-pass rules.
syntax match daslTarget /\$[A-Za-z_][A-Za-z0-9_]*/
syntax match daslPcRelative /@[+-]\d\+/
syntax match daslImmediate /#[-+]\?\d\+\(\.\d\+\)\?/
syntax match daslPyRef /![^,|[:space:]]\([^,|]*[^,|[:space:]]\)\?/
syntax match daslRegister /\<r\d\+\>/

" Structural separators.
syntax match daslSeparator /[,]/

highlight def link daslComment Comment
highlight def link daslString String
highlight def link daslOpcode Keyword
highlight def link daslTarget Function
highlight def link daslPcRelative Number
highlight def link daslImmediate Number
highlight def link daslPyRef Special
highlight def link daslRegister PreProc
highlight def link daslSeparator Default
highlight def link daslPrecondVar PreProc
highlight def link daslPrecondSymbol Added
highlight def link daslLabel Special

let b:current_syntax = "dasl"
