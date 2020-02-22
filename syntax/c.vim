" By yongcong.wang @ 03/12/2019

" *Comment

" *Constant
" String
" Character
" Number
" Boolean
" Float

" *Identifier
" Function
" ansi-standard functions
syntax keyword c_ansi_function main typeof
syntax keyword c_ansi_function	MULU_ DIVU_ MODU_ MUL_ DIV_ MOD_
syntax keyword c_ansi_function	main typeof
syntax keyword c_ansi_function	open close read write lseek dup dup2
syntax keyword c_ansi_function	fcntl ioctl
syntax keyword c_ansi_function	wctrans towctrans towupper
syntax keyword c_ansi_function	towlower wctype iswctype
syntax keyword c_ansi_function	iswxdigit iswupper iswspace
syntax keyword c_ansi_function	iswpunct iswprint iswlower
syntax keyword c_ansi_function	iswgraph iswdigit iswcntrl
syntax keyword c_ansi_function	iswalpha iswalnum wcsrtombs
syntax keyword c_ansi_function	mbsrtowcs wcrtomb mbrtowc
syntax keyword c_ansi_function	mbrlen mbsinit wctob
syntax keyword c_ansi_function	btowc wcsfxtime wcsftime
syntax keyword c_ansi_function	wmemset wmemmove wmemcpy
syntax keyword c_ansi_function	wmemcmp wmemchr wcstok
syntax keyword c_ansi_function	wcsstr wcsspn wcsrchr
syntax keyword c_ansi_function	wcspbrk wcslen wcscspn
syntax keyword c_ansi_function	wcschr wcsxfrm wcsncmp
syntax keyword c_ansi_function	wcscoll wcscmp wcsncat
syntax keyword c_ansi_function	wcscat wcsncpy wcscpy
syntax keyword c_ansi_function	wcstoull wcstoul wcstoll
syntax keyword c_ansi_function	wcstol wcstold wcstof
syntax keyword c_ansi_function	wcstod ungetwc putwchar
syntax keyword c_ansi_function	putwc getwchar getwc
syntax keyword c_ansi_function	fwide fputws fputwc
syntax keyword c_ansi_function	fgetws fgetwc wscanf
syntax keyword c_ansi_function	wprintf vwscanf vwprintf
syntax keyword c_ansi_function	vswscanf vswprintf vfwscanf
syntax keyword c_ansi_function	vfwprintf swscanf swprintf
syntax keyword c_ansi_function	fwscanf fwprintf zonetime
syntax keyword c_ansi_function	strfxtime strftime localtime
syntax keyword c_ansi_function	gmtime ctime asctime
syntax keyword c_ansi_function	time mkxtime mktime
syntax keyword c_ansi_function	difftime clock strlen
syntax keyword c_ansi_function	strerror memset strtok
syntax keyword c_ansi_function	strstr strspn strrchr
syntax keyword c_ansi_function	strpbrk strcspn strchr
syntax keyword c_ansi_function	memchr strxfrm strncmp
syntax keyword c_ansi_function	strcoll strcmp memcmp
syntax keyword c_ansi_function	strncat strcat strncpy
syntax keyword c_ansi_function	strcpy memmove memcpy
syntax keyword c_ansi_function	wcstombs mbstowcs wctomb
syntax keyword c_ansi_function	mbtowc mblen lldiv
syntax keyword c_ansi_function	ldiv div llabs
syntax keyword c_ansi_function	labs abs qsort

" *Statement
" Conditional
" Repeat
" Label
" Operator
" Keyword
" Exception

" *PreProc
" Include
" Define
" Macro
" PreCondit

" *Type
" StorageClass
" Structure
" Typedef

" *Special
" SpecialChar
" Tag
" Delimiter
" SpecialComment
" Debug

" *Underlined
" *Ignore
" *Error
" *Todo

" define hilight
hi def link c_ansi_function Function
