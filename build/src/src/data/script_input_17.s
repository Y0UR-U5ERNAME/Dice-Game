.module script_input_17

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_17 = 255
.globl ___bank_script_input_17

_script_input_17::
        ; Stop Script
        VM_STOP
