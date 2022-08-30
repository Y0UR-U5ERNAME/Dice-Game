.module script_input_107

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_107 = 255
.globl ___bank_script_input_107

_script_input_107::
        ; Stop Script
        VM_STOP
