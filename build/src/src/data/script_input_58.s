.module script_input_58

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_58 = 255
.globl ___bank_script_input_58

_script_input_58::
        ; Stop Script
        VM_STOP
