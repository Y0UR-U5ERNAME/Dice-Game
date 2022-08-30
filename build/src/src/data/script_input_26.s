.module script_input_26

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_26 = 255
.globl ___bank_script_input_26

_script_input_26::
        ; Stop Script
        VM_STOP
