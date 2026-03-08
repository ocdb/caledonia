if exists("b:current_syntax")
	finish
endif

syn match caledoniaDate /\d\{4}-\d\{2}-\d\{2}/ contained
syn keyword caledoniaRangeTo to contained

syn match caledoniaSimpleDate /^\d\{4}-\d\{2}-\d\{2}:/ contains=caledoniaDate,caledoniaSeparator
syn match caledoniaRangeDate /^\d\{4}-\d\{2}-\d\{2}\s\+to\s\+\d\{4}-\d\{2}-\d\{2}:/ contains=caledoniaDate,caledoniaRangeTo,caledoniaSeparator
syn match caledoniaRelativeDate /^\d\{4}-\d\{2}-\d\{2}\s\++\d\+[dwmy]:/ contains=caledoniaDate,caledoniaRelativeOperator,caledoniaDuration,caledoniaSeparator
syn match caledoniaRecurringDate /^\d\{4}-\d\{2}-\d\{2}\s\+\*\d\+[dwmy]:/ contains=caledoniaDate,caledoniaRecurringOperator,caledoniaDuration,caledoniaSeparator

syn match caledoniaRelativeOperator /+/ contained
syn match caledoniaRecurringOperator /\*/ contained
syn match caledoniaDuration /\d\+[dwmy]/ contained
syn match caledoniaSeparator /:/ contained

syn match caledoniaTime /(@ \d\{2}:\d\{2} [AP]M)/ contains=caledoniaTimeMarker,caledoniaTimePeriod
syn match caledoniaTimeMarker /@/ contained
syn match caledoniaTimePeriod /[AP]M/ contained

syn region caledoniaTags start=/\[/ end=/\]/ contains=caledoniaTagString,caledoniaTagComma
syn region caledoniaTagString start=/"/ end=/"/ contained
syn match caledoniaTagComma /,/ contained

syn match caledoniaComment /^#.*$/

hi def link caledoniaDate Constant
hi def link caledoniaRangeTo Keyword
hi def link caledoniaSeparator Delimiter

hi def link caledoniaRelativeOperator Operator
hi def link caledoniaRecurringOperator Special
hi def link caledoniaDuration Number

hi def link caledoniaTime Special
hi def link caledoniaTimeMarker Operator
hi def link caledoniaTimePeriod Type

hi def link caledoniaTags Type
hi def link caledoniaTagString String
hi def link caledoniaTagComma Delimiter

hi def link caledoniaComment Comment

let b:current_syntax = "caledonia"
