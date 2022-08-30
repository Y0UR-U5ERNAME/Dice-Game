.module script_input_44

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input_44 = 255
.globl ___bank_script_input_44

_script_input_44::
        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    640
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 1$, 1

        VM_SET_CONST            .LOCAL_ACTOR, 2
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S8_LOCAL_0, ^/(.LOCAL_ACTOR + 1)/

        ; If VAR_S8_LOCAL_0!=3
        VM_RPN
            .R_REF      VAR_S8_LOCAL_0
            .R_INT16    3
            .R_OPERATOR .NE
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
        ; Variable L0 = VAR_S8_LOCAL_0+1
        VM_RPN
            .R_REF      VAR_S8_LOCAL_0
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_S8_LOCAL_0, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_S8_LOCAL_0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

4$:

        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Move To
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1408
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 896
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Variable Set To True
        VM_SET_CONST            VAR_ROLL_ANIMATION, 1

2$:

        ; Stop Script
        VM_STOP
