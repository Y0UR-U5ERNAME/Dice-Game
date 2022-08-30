.module script_input_36

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_36 = 255
.globl ___bank_script_input_36

_script_input_36::
        ; Stop Script
        VM_STOP
