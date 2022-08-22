.module actor_34_update

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_12, _scene_12

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5
.LOCAL_TMP2_WAIT_ARGS = -5
.LOCAL_TMP3_WAIT_ARGS = -7

___bank_actor_34_update = 255
.globl ___bank_actor_34_update

_actor_34_update::
        VM_RESERVE              7

1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Store Position In Variables
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_VARIABLE_3, .ARG1
        VM_SET                  VAR_VARIABLE_4, .ARG0
        VM_POP                  2

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Store Position In Variables
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_S10A1_LOCAL_0, .ARG1
        VM_SET                  VAR_S10A1_LOCAL_1, .ARG0
        VM_POP                  2

        ; If abs(VAR_VARIABLE_3-VAR_S10A1_LOCAL_0)+abs(VAR_VARIABLE_4-VAR_S10A1_LOCAL_1)==2
        VM_RPN
            .R_REF      VAR_VARIABLE_3
            .R_REF      VAR_S10A1_LOCAL_0
            .R_OPERATOR .SUB
            .R_OPERATOR .ABS
            .R_REF      VAR_VARIABLE_4
            .R_REF      VAR_S10A1_LOCAL_1
            .R_OPERATOR .SUB
            .R_OPERATOR .ABS
            .R_OPERATOR .ADD
            .R_INT16    2
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 2$, 1
        VM_JUMP                 3$
2$:
        VM_SET_CONST            .LOCAL_ACTOR, 0
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S10A1_LOCAL_2, ^/(.LOCAL_ACTOR + 1)/

        VM_SET_CONST            .LOCAL_ACTOR, 2
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S10A1_LOCAL_3, ^/(.LOCAL_ACTOR + 1)/

        ; If VAR_S10A1_LOCAL_2+VAR_S10A1_LOCAL_3==5
        VM_RPN
            .R_REF      VAR_S10A1_LOCAL_2
            .R_REF      VAR_S10A1_LOCAL_3
            .R_OPERATOR .ADD
            .R_INT16    5
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 4$, 1
        VM_JUMP                 5$
4$:
        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_57, _script_input_57
        VM_INPUT_ATTACH         223, ^/(1 | .OVERRIDE_DEFAULT)/

        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 6$, 0
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 2
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        VM_JUMP                 7$
6$:
7$:

        VM_LOAD_PALETTE         2, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31
        VM_SET_CONST            .LOCAL_ACTOR, 2
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S10A1_LOCAL_0, ^/(.LOCAL_ACTOR + 1)/

        ; Variable L0 = VAR_S10A1_LOCAL_0+6
        VM_RPN
            .R_REF      VAR_S10A1_LOCAL_0
            .R_INT16    6
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_S10A1_LOCAL_0, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_S10A1_LOCAL_0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_UNLOCK

        ; Call Script: transition
        VM_PUSH_CONST           VAR_S10A1_LOCAL_1 ; Variable V1
        VM_PUSH_CONST           VAR_S10A1_LOCAL_0 ; Variable V0
        VM_CALL_FAR             ___bank_script_3, _script_3

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 180
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Overlay Hide
        VM_OVERLAY_HIDE

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 512
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1152
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_12

5$:

3$:

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
