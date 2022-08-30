.module script_input_66

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_66 = 255
.globl ___bank_script_input_66

_script_input_66::
        ; Stop Script
        VM_STOP
