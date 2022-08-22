.module actor_17_update

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_15, _scene_15

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5
.LOCAL_TMP2_WAIT_ARGS = -6

___bank_actor_17_update = 255
.globl ___bank_actor_17_update

_actor_17_update::
        VM_RESERVE              6

1$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_MOVING, 0, 2$, 0
        VM_JUMP                 3$
2$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    768
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    1152
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 4$, 1

        ; Variable L0 = 1-VAR_SPIKES
        VM_RPN
            .R_INT16    1
            .R_REF      VAR_SPIKES
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S14A14_LOCAL_0, .ARG0
        VM_POP                  1

        VM_JUMP                 5$
4$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1280
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    1152
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 6$, 1

        ; Variable L0 = VAR_SPIKES
        VM_RPN
            .R_REF      VAR_SPIKES
            .R_STOP
        VM_SET                  VAR_S14A14_LOCAL_0, .ARG0
        VM_POP                  1

        VM_JUMP                 7$
6$:
7$:

5$:

        ; If VAR_S14A14_LOCAL_0
        VM_RPN
            .R_REF      VAR_S14A14_LOCAL_0
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 8$, 1
        VM_JUMP                 9$
8$:
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 2
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 512
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1152
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_15

9$:

3$:

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP