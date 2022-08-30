.module script_input_106

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_106 = 255
.globl ___bank_script_input_106

_script_input_106::
        ; Stop Script
        VM_STOP
