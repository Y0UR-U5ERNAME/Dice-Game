.module script_input_76

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_76 = 255
.globl ___bank_script_input_76

_script_input_76::
        ; Stop Script
        VM_STOP
