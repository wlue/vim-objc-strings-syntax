" Vim syntax file
" Language:     strings
" Maintainer:   Wen-Hao Lue <me@wenhaolue.com>
" Last Change:  2013 Jan 3

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = ''
unlet b:current_syntax

syn sync fromstart

syn region    sString             start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell,sFormat
syn match     sFormat             display contained '%.'
syn match     sFormat             display contained '%[0-9]\+\$.'

syn region    sComment            start="/\*" end="\*/" contains=@Spell extend
syn match     sEquals             '='

" Define the default highlighting.
hi def link   sString             String
hi def link   sFormat             Special
hi def link   sComment            Comment

let b:current_syntax = "strings"

