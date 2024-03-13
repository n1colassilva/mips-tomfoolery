.data   :

char:       .byte   a           # size:1
short:      .half   32767       # size:2
int:        .word   2147483647  # size:4
float:      .float  2.35        # size:4
double:     .double 42          # size:8
string_st:  .ascii  "hello"     # string sans \0
string_wt:  .asciiz "hello"     # string with \0
void:       .space  30          # typeless, unitinialized space, can be used for any type/array
    # void is used to allocate space for things it seems