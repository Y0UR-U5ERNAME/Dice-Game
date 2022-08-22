.module script_input_32

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_32 = 255
.globl ___bank_script_input_32

_script_input_32::
        ; Stop Script
        VM_STOP
