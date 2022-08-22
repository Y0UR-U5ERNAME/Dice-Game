.module script_input_34

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_ACTOR_DIR = -5

___bank_script_input_34 = 255
.globl ___bank_script_input_34

_script_input_34::
        VM_RESERVE              5

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; If Actor Facing Direction
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP1_ACTOR_DIR
        VM_IF_CONST             .NE, .LOCAL_TMP1_ACTOR_DIR, .DIR_LEFT, 1$, 0

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        VM_PUSH_CONST 0
        VM_PUSH_CONST 0
        
        VM_CAMERA_MOVE_TO .ARG1, 0, .CAMERA_LOCK
        
        VM_POP 2

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Position
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 2048
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 2176
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_F

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT

        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
