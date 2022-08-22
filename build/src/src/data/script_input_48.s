.module script_input_48

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_48 = 255
.globl ___bank_script_input_48

_script_input_48::
        ; Stop Script
        VM_STOP
