.module script_input_42

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP3_WAIT_ARGS = -4
.LOCAL_TMP1_WAIT_ARGS = -5
.LOCAL_TMP2_WAIT_ARGS = -5

___bank_script_input_42 = 255
.globl ___bank_script_input_42

_script_input_42::
        VM_RESERVE              5

        ; If Variable True
        VM_IF_CONST             .GT, VAR_MOVING, 0, 1$, 0
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
        VM_SET                  VAR_S9_LOCAL_0, .ARG1
        VM_SET                  VAR_S9_LOCAL_1, .ARG0
        VM_POP                  2

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

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
        VM_SET                  VAR_S9_LOCAL_2, .ARG1
        VM_SET                  VAR_S9_LOCAL_3, .ARG0
        VM_POP                  2

        ; Variable Set To True
        VM_SET_CONST            VAR_MOVING, 1

        ; Variable T0 = VAR_S9_LOCAL_0
        VM_RPN
            .R_REF      VAR_S9_LOCAL_0
            .R_STOP
        VM_SET                  VAR_TEMP_0, .ARG0
        VM_POP                  1

        ; Variable T1 = VAR_S9_LOCAL_1-3
        VM_RPN
            .R_REF      VAR_S9_LOCAL_1
            .R_INT16    3
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_TEMP_1, .ARG0
        VM_POP                  1

        VM_GET_TILE_XY          VAR_S9_LOCAL_4, VAR_TEMP_0, VAR_TEMP_1
        ; If VAR_S9_LOCAL_4%256>25
        VM_RPN
            .R_REF      VAR_S9_LOCAL_4
            .R_INT16    256
            .R_OPERATOR .MOD
            .R_INT16    25
            .R_OPERATOR .GT
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
        ; If VAR_S9_LOCAL_1-2==VAR_S9_LOCAL_3&&VAR_S9_LOCAL_0==VAR_S9_LOCAL_2
        VM_RPN
            .R_REF      VAR_S9_LOCAL_1
            .R_INT16    2
            .R_OPERATOR .SUB
            .R_REF      VAR_S9_LOCAL_3
            .R_OPERATOR .EQ
            .R_REF      VAR_S9_LOCAL_0
            .R_REF      VAR_S9_LOCAL_2
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 5$, 1
        ; Call Script: swap spikes
        VM_CALL_FAR             ___bank_script_1, _script_1

        VM_SET_CONST            .LOCAL_ACTOR, 0
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S9_LOCAL_0, ^/(.LOCAL_ACTOR + 1)/

        ; Variable 1 = (VAR_S9_LOCAL_0+1)%6
        VM_RPN
            .R_REF      VAR_S9_LOCAL_0
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_INT16    6
            .R_OPERATOR .MOD
            .R_STOP
        VM_SET                  VAR_ANIMATION_FRAME, .ARG0
        VM_POP                  1

        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 7$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -128
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 8
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Variable 1 = (VAR_S9_LOCAL_0+1)%6
        VM_RPN
            .R_REF      VAR_S9_LOCAL_0
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_INT16    6
            .R_OPERATOR .MOD
            .R_STOP
        VM_SET                  VAR_ANIMATION_FRAME, .ARG0
        VM_POP                  1

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 3
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 9
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 3
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -128
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

8$:

        ; Variable L0 = (VAR_S9_LOCAL_0+1)%6
        VM_RPN
            .R_REF      VAR_S9_LOCAL_0
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_INT16    6
            .R_OPERATOR .MOD
            .R_STOP
        VM_SET                  VAR_S9_LOCAL_0, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_S9_LOCAL_0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 6$
5$:
        ; Variable T0 = VAR_S9_LOCAL_2
        VM_RPN
            .R_REF      VAR_S9_LOCAL_2
            .R_STOP
        VM_SET                  VAR_TEMP_0, .ARG0
        VM_POP                  1

        ; Variable T1 = VAR_S9_LOCAL_3-3
        VM_RPN
            .R_REF      VAR_S9_LOCAL_3
            .R_INT16    3
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_TEMP_1, .ARG0
        VM_POP                  1

        VM_GET_TILE_XY          VAR_S9_LOCAL_4, VAR_TEMP_0, VAR_TEMP_1
        ; If VAR_S9_LOCAL_4%256>25
        VM_RPN
            .R_REF      VAR_S9_LOCAL_4
            .R_INT16    256
            .R_OPERATOR .MOD
            .R_INT16    25
            .R_OPERATOR .GT
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 9$, 1
        VM_JUMP                 10$
9$:
        ; Call Script: swap spikes
        VM_CALL_FAR             ___bank_script_1, _script_1

        ; Variable Set To Value
        VM_SET_CONST            VAR_DIRECTION, 2

        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 11$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        VM_JUMP                 12$
11$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

12$:

10$:

6$:

4$:

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        ; Variable Set To False
        VM_SET_CONST            VAR_MOVING, 0

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
