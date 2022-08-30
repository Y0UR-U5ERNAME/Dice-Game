.module script_input_60

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_60 = 255
.globl ___bank_script_input_60

_script_input_60::
        ; Stop Script
        VM_STOP
