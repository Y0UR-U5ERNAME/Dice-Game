.module actor_36_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_actor_36_update = 255
.globl ___bank_actor_36_update

_actor_36_update::
        VM_RESERVE              1

1$:
        ; Call Script: conveyor animation
        VM_CALL_FAR             ___bank_script_2, _script_2

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
