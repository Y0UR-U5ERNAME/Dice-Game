.module script_input_97

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_97 = 255
.globl ___bank_script_input_97

_script_input_97::
        ; Stop Script
        VM_STOP
