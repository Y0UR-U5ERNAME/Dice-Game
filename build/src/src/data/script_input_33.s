.module script_input_33

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_ACTOR_DIR = -5

___bank_script_input_33 = 255
.globl ___bank_script_input_33

_script_input_33::
        VM_RESERVE              5

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; If Actor Facing Direction
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP1_ACTOR_DIR
        VM_IF_CONST             .NE, .LOCAL_TMP1_ACTOR_DIR, .DIR_RIGHT, 1$, 0

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        VM_PUSH_CONST 64
        VM_PUSH_CONST 0
        
        VM_CAMERA_MOVE_TO .ARG1, 1, .CAMERA_LOCK
        
        VM_POP 2

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Position
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 256
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 2176
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_E

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
