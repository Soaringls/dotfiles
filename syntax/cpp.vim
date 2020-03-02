" By yongcong.wang @ 27/02/2020
if exists('g:cpp_class_scope_highlight') && g:cpp_class_scope_highlight
    syn match   cCustomScope    "::"
    syn match   cCustomClass    "\w\+\s*::" contains=cCustomScope
    hi def link cCustomClass Function
endif

if exists('g:cpp_member_variable_highlight') && g:cpp_member_variable_highlight
    syn match   cCustomDot    "\." contained
    syn match   cCustomPtr    "->" contained
    syn match   cCustomMemVar "\(\.\|->\)\h\w*" contains=cCustomDot,cCustomPtr
    hi def link cCustomMemVar Function
endif

if exists('g:cpp_class_decl_highlight') && g:cpp_class_decl_highlight
	syn match cCustomClassKey "\<class\>"
	hi def link cCustomClassKey cppStructure

	" Clear cppAccess entirely and redefine as matches
"	syn clear cppAccess
	syn match cCustomAccessKey "\<private\>"
	syn match cCustomAccessKey "\<public\>"
	syn match cCustomAccessKey "\<protected\>"
	hi def link cCustomAccessKey cppAccess

	" Match the parts of a class declaration
	syn match cCustomClassName "\<class\_s\+\w\+\>"
				\ contains=cCustomClassKey
	syn match cCustomClassName "\<private\_s\+\w\+\>"
				\ contains=cCustomAccessKey
	syn match cCustomClassName "\<public\_s\+\w\+\>"
				\ contains=cCustomAccessKey
	syn match cCustomClassName "\<protected\_s\+\w\+\>"
				\ contains=cCustomAccessKey
	hi def link cCustomClassName Function
endif

if exists('g:cpp_function_highlight') && g:cpp_function_highlight
    syn match    cCustomParen    transparent "(" contains=cParen contains=cCppParen
    syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
    hi def link cCustomFunc  Function
endif

" std

syntax keyword cppSTLconstant nullptr

" containers (array, vector, list, *map, *set, ...)
syntax keyword cppSTLtype array vector list *map *set string

syntax keyword cppSTLfunction cbegin cend
syntax keyword cppSTLfunction crbegin crend
syntax keyword cppSTLfunction shrink_to_fit
syntax keyword cppSTLfunction emplace
syntax keyword cppSTLfunction emplace_back
syntax keyword cppSTLfunction emplace_front
syntax keyword cppSTLfunction emplace_hint

" algorithm
syntax keyword cppSTLfunction all_of any_of none_of
syntax keyword cppSTLfunction find_if_not
syntax keyword cppSTLfunction copy_if
syntax keyword cppSTLfunction copy_n
syntax keyword cppSTLfunction move
syntax keyword cppSTLfunction move_backward
syntax keyword cppSTLfunction shuffle
syntax keyword cppSTLfunction is_partitioned
syntax keyword cppSTLfunction partition_copy
syntax keyword cppSTLfunction partition_point
syntax keyword cppSTLfunction is_sorted
syntax keyword cppSTLfunction is_sorted_until
syntax keyword cppSTLfunction is_heap
syntax keyword cppSTLfunction is_heap_until
syntax keyword cppSTLfunction minmax
syntax keyword cppSTLfunction minmax_element
syntax keyword cppSTLfunction is_permutation
syntax keyword cppSTLfunction itoa

" memory
syntax keyword cppSTLtype unique_ptr
syntax keyword cppSTLtype shared_ptr
syntax keyword cppSTLtype weak_ptr
syntax keyword cppSTLtype owner_less
syntax keyword cppSTLtype enable_shared_from_this
syntax keyword cppSTLtype default_delete
syntax keyword cppSTLtype allocator_traits
syntax keyword cppSTLtype allocator_type
syntax keyword cppSTLtype allocator_arg_t
syntax keyword cppSTLtype uses_allocator
syntax keyword cppSTLtype scoped_allocator_adaptor
syntax keyword cppSTLtype pointer_safety
syntax keyword cppSTLtype pointer_traits
syntax keyword cppSTLconstant allocator_arg
syntax keyword cppSTLexception bad_weak_ptr
syntax keyword cppSTLcast static_pointer_cast
syntax keyword cppSTLcast dynamic_pointer_cast
syntax keyword cppSTLcast const_pointer_cast
syntax keyword cppSTLfunction make_shared
syntax keyword cppSTLfunction declare_reachable
syntax keyword cppSTLfunction undeclare_reachable
syntax keyword cppSTLfunction declare_no_pointers
syntax keyword cppSTLfunction undeclare_no_pointers
syntax keyword cppSTLfunction get_pointer_safety
syntax keyword cppSTLfunction addressof
syntax keyword cppSTLfunction allocate_shared
syntax keyword cppSTLfunction get_deleter

" memory
syntax keyword cppSTLtype unique_ptr
syntax keyword cppSTLtype shared_ptr
syntax keyword cppSTLtype weak_ptr
syntax keyword cppSTLtype owner_less
syntax keyword cppSTLtype enable_shared_from_this
syntax keyword cppSTLtype default_delete
syntax keyword cppSTLtype allocator_traits
syntax keyword cppSTLtype allocator_type
syntax keyword cppSTLtype allocator_arg_t
syntax keyword cppSTLtype uses_allocator
syntax keyword cppSTLtype scoped_allocator_adaptor
syntax keyword cppSTLtype pointer_safety
syntax keyword cppSTLtype pointer_traits
syntax keyword cppSTLconstant allocator_arg
syntax keyword cppSTLexception bad_weak_ptr
syntax keyword cppSTLcast static_pointer_cast
syntax keyword cppSTLcast dynamic_pointer_cast
syntax keyword cppSTLcast const_pointer_cast
syntax keyword cppSTLfunction make_shared
syntax keyword cppSTLfunction declare_reachable
syntax keyword cppSTLfunction undeclare_reachable
syntax keyword cppSTLfunction declare_no_pointers
syntax keyword cppSTLfunction undeclare_no_pointers
syntax keyword cppSTLfunction get_pointer_safety
syntax keyword cppSTLfunction addressof
syntax keyword cppSTLfunction allocate_shared
syntax keyword cppSTLfunction get_deleter

" set highlight
hi def link c_ansi_function Function
hi def link cppSTLbool         Boolean
hi def link cppStorageClass    StorageClass
hi def link cppStatement       Statement
hi def link cppSTLfunction     Function
hi def link cppSTLfunctional   Typedef
hi def link cppSTLconstant     Constant
hi def link cppSTLnamespace    Constant
hi def link cppSTLtype         Typedef
hi def link cppSTLexception    Exception
hi def link cppSTLiterator     Typedef
hi def link cppSTLiterator_tag Typedef
hi def link cppSTLenum         Typedef
hi def link cppSTLconcept      Typedef
hi def link cppSTLios          Function
hi def link cppSTLcast         Statement 
