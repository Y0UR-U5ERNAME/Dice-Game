.module script_input_96

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_96 = 255
.globl ___bank_script_input_96

_script_input_96::
        ; Stop Script
        VM_STOP
