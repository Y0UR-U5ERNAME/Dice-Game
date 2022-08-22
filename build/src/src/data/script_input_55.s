.module script_input_55

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input_55 = 255
.globl ___bank_script_input_55

_script_input_55::
        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST             .GT, VAR_MOVING, 0, 1$, 0
        VM_SET_CONST            .LOCAL_ACTOR, 0
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S10_LOCAL_4, ^/(.LOCAL_ACTOR + 1)/

        VM_SET_CONST            .LOCAL_ACTOR, 2
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S10_LOCAL_5, ^/(.LOCAL_ACTOR + 1)/

        ; If VAR_CAN_SWAP
        VM_RPN
            .R_REF      VAR_CAN_SWAP
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
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
        VM_SET                  VAR_S10_LOCAL_0, .ARG1
        VM_SET                  VAR_S10_LOCAL_1, .ARG0
        VM_POP                  2

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
        VM_SET                  VAR_S10_LOCAL_2, .ARG1
        VM_SET                  VAR_S10_LOCAL_3, .ARG0
        VM_POP                  2

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Position To Variables
        VM_RPN
            .R_REF      VAR_S10_LOCAL_2
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF      VAR_S10_LOCAL_3
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Variable Copy
        VM_SET                  VAR_ANIMATION_FRAME, VAR_S10_LOCAL_5

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Position To Variables
        VM_RPN
            .R_REF      VAR_S10_LOCAL_0
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF      VAR_S10_LOCAL_1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_S10_LOCAL_5
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_S10_LOCAL_4
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Variable Set To False
        VM_SET_CONST            VAR_CAN_SWAP, 0

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        VM_LOAD_PALETTE         2, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                31, 31, 31, 31, 31, 31, 31, 31, 31, 3, 3, 3
4$:

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
