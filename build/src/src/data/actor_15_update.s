.module actor_15_update

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_10, _scene_10

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_actor_15_update = 255
.globl ___bank_actor_15_update

_actor_15_update::
        VM_RESERVE              5

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

        ; Variable L0 = VAR_SPIKES
        VM_RPN
            .R_REF      VAR_SPIKES
            .R_STOP
        VM_SET                  VAR_S9A9_LOCAL_0, .ARG0
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

        ; Variable L0 = 1-VAR_SPIKES
        VM_RPN
            .R_INT16    1
            .R_REF      VAR_SPIKES
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S9A9_LOCAL_0, .ARG0
        VM_POP                  1

        VM_JUMP                 7$
6$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1536
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    1408
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 8$, 1

        ; Variable L0 = VAR_SPIKES
        VM_RPN
            .R_REF      VAR_SPIKES
            .R_STOP
        VM_SET                  VAR_S9A9_LOCAL_0, .ARG0
        VM_POP                  1

        VM_JUMP                 9$
8$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1280
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    1664
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 10$, 1

        ; Variable L0 = 1-VAR_SPIKES
        VM_RPN
            .R_INT16    1
            .R_REF      VAR_SPIKES
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S9A9_LOCAL_0, .ARG0
        VM_POP                  1

        VM_JUMP                 11$
10$:
11$:

9$:

7$:

5$:

        ; If VAR_S9A9_LOCAL_0
        VM_RPN
            .R_REF      VAR_S9A9_LOCAL_0
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 12$, 1
        VM_JUMP                 13$
12$:
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 2
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 512
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1664
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_10

13$:

3$:

        ; Idle
        VM_IDLE

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
