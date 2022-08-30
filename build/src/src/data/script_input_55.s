.module script_input_55

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_55 = 255
.globl ___bank_script_input_55

_script_input_55::
        ; Stop Script
        VM_STOP
