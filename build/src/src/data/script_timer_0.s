.module script_timer_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_timer_0 = 255
.globl ___bank_script_timer_0

_script_timer_0::
        ; Call Script: swap spikes
        VM_CALL_FAR             ___bank_script_1, _script_1

        ; Stop Script
        VM_STOP
