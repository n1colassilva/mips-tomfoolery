.data   :

    #making a ripoff of data_types

char:       .byte   a           # size:1
short:      .half   32767       # size:2
int:        .word   2147483647  # size:4
float:      .float  2.35        # size:4
double:     .double 42          # size:8
string_st:  .ascii  "hello"     # string sans \0
string_wt:  .asciiz "hello"     # string with \0
void:       .space  30          # typeless, unitinialized space, can be used for any type/array

.text   :
main:       
    # these are the spim supported syscalls
    # The os reads $v0, that is what determines what the syscall does

    # PRINTING DATA
    la      $a0,    int
    li      $v0,    1           # Code 1 prints an integer
    syscall 

    la      $f12,   float
    li      $v0,    2           # Code 2 prints a float
    syscall 

    la      $f12,   double
    li      $v0,    3           # Code 3 prints a double
    syscall 

    la      $a0,    string
    li      $v0,    4           # Code 4 prints a string
    syscall 

    # READING DATA
    li      $v0,    5           # Code 5 reads an integer
    syscall                     # read integer goes into $v0
    li      $v0,    1           # Printing what we read
    syscall 

    li      $v0,    6           # Code 6 reads a float
    syscall                     # Read float goes into $f0
    li      $v0,    2           # printing the read float
    syscall 

    li      $v0,    7           # Code 7 prints a double
    syscall                     # Read double goes into $f0
    li      $v0,    3           # printing the read double
    syscall