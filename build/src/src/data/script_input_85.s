.module script_input_85

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_85 = 255
.globl ___bank_script_input_85

_script_input_85::
        ; Stop Script
        VM_STOP
