.module actor_28_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_actor_28_update = 255
.globl ___bank_actor_28_update

_actor_28_update::
        VM_RESERVE              5

1$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_DIRECTION, 0, 2$, 0
        VM_JUMP                 3$
2$:
        ; Switch Variable
        VM_SWITCH               VAR_DIRECTION, 4, 0
        .dw 1, 4$
        .dw 2, 5$
        .dw 3, 6$
        .dw 4, 7$

        VM_JUMP                 8$
        ; case 1:
4$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 9$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    -256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        VM_JUMP                 10$
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    -256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

10$:

        VM_JUMP                 8$
        ; case 2:
5$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 11$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

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
        VM_SET_CONST            .LOCAL_ACTOR, 1

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

        VM_JUMP                 8$
        ; case 3:
6$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 13$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        VM_JUMP                 14$
13$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

14$:

        VM_JUMP                 8$
        ; case 4:
7$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 15$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        VM_JUMP                 16$
15$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    256
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

16$:

        VM_JUMP                 8$
8$:

        ; Variable Set To False
        VM_SET_CONST            VAR_DIRECTION, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Launch Projectile In Direction
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    64
            .R_INT16    .PROJECTILE_STRONG
            .R_STOP
        VM_PROJECTILE_LAUNCH    0, .ARG3
        VM_POP                  4

3$:

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
        VM_SET                  VAR_S9A0_LOCAL_0, .ARG1
        VM_SET                  VAR_S9A0_LOCAL_1, .ARG0
        VM_POP                  2

        ; If abs(VAR_VARIABLE_3-VAR_S9A0_LOCAL_0)+abs(VAR_VARIABLE_4-VAR_S9A0_LOCAL_1)==2
        VM_RPN
            .R_REF      VAR_VARIABLE_3
            .R_REF      VAR_S9A0_LOCAL_0
            .R_OPERATOR .SUB
            .R_OPERATOR .ABS
            .R_REF      VAR_VARIABLE_4
            .R_REF      VAR_S9A0_LOCAL_1
            .R_OPERATOR .SUB
            .R_OPERATOR .ABS
            .R_OPERATOR .ADD
            .R_INT16    2
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 17$, 1
        VM_JUMP                 18$
17$:
        VM_SET_CONST            .LOCAL_ACTOR, 0
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S9A0_LOCAL_2, ^/(.LOCAL_ACTOR + 1)/

        VM_SET_CONST            .LOCAL_ACTOR, 1
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S9A0_LOCAL_3, ^/(.LOCAL_ACTOR + 1)/

        ; If VAR_S9A0_LOCAL_2+VAR_S9A0_LOCAL_3==5
        VM_RPN
            .R_REF      VAR_S9A0_LOCAL_2
            .R_REF      VAR_S9A0_LOCAL_3
            .R_OPERATOR .ADD
            .R_INT16    5
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 19$, 1
        VM_JUMP                 20$
19$:
        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_54, _script_input_54
        VM_INPUT_ATTACH         15, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_55, _script_input_55
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; If Variable True
        VM_IF_CONST             .GT, VAR_ROLL_ANIMATION, 0, 21$, 0
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 2
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        VM_JUMP                 22$
21$:
22$:

        VM_SET_CONST            .LOCAL_ACTOR, 1
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S9A0_LOCAL_0, ^/(.LOCAL_ACTOR + 1)/

        ; Variable L0 = VAR_S9A0_LOCAL_0+6
        VM_RPN
            .R_REF      VAR_S9A0_LOCAL_0
            .R_INT16    6
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_S9A0_LOCAL_0, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_S9A0_LOCAL_0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_UNLOCK

        ; Call Script: transition
        VM_PUSH_CONST           VAR_S9A0_LOCAL_1 ; Variable V1
        VM_PUSH_CONST           VAR_S9A0_LOCAL_0 ; Variable V0
        VM_CALL_FAR             ___bank_script_3, _script_3

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_56, _script_input_56
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Wait For Input
        VM_INPUT_WAIT           208

20$:

18$:

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
