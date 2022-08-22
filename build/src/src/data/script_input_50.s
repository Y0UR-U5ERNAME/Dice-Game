.module script_input_50

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_50 = 255
.globl ___bank_script_input_50

_script_input_50::
        ; Stop Script
        VM_STOP
