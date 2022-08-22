.module script_input_65

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_65 = 255
.globl ___bank_script_input_65

_script_input_65::
        ; Stop Script
        VM_STOP
