.module script_input_89

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_89 = 255
.globl ___bank_script_input_89

_script_input_89::
        ; Stop Script
        VM_STOP
