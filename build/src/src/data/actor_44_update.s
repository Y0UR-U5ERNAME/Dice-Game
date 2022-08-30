.module actor_44_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_44_update = 255
.globl ___bank_actor_44_update

_actor_44_update::
1$:
        ; Call Script: conveyor animation
        VM_CALL_FAR             ___bank_script_2, _script_2

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
