.module script_input_27

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_27 = 255
.globl ___bank_script_input_27

_script_input_27::
        ; Stop Script
        VM_STOP
