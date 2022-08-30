.module actor_17_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_17_update = 255
.globl ___bank_actor_17_update

_actor_17_update::
        VM_RESERVE              4

1$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_TRANSITION, 0, 2$, 0
        VM_JUMP                 3$
2$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Store Position In Variables
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    16
            .R_OPERATOR .DIV
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    16
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_0, .ARG1
        VM_SET                  VAR_S15A3_LOCAL_1, .ARG0
        VM_POP                  2

        ; Variable L3 = 56-VAR_S15A3_LOCAL_1
        VM_RPN
            .R_INT16    56
            .R_REF      VAR_S15A3_LOCAL_1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_3, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Store Position In Variables
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    16
            .R_OPERATOR .DIV
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    16
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_2, .ARG1
        VM_SET                  VAR_S15A3_LOCAL_4, .ARG0
        VM_POP                  2

        ; Variable L5 = 56-VAR_S15A3_LOCAL_4
        VM_RPN
            .R_INT16    56
            .R_REF      VAR_S15A3_LOCAL_4
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_5, .ARG0
        VM_POP                  1

        ; If VAR_S15A3_LOCAL_0<VAR_S15A3_LOCAL_2||((VAR_S15A3_LOCAL_1!=VAR_S15A3_LOCAL_4)&&(VAR_S15A3_LOCAL_1<VAR_S15A3_LOCAL_4)==(VAR_S15A3_LOCAL_0<10))
        VM_RPN
            .R_REF      VAR_S15A3_LOCAL_0
            .R_REF      VAR_S15A3_LOCAL_2
            .R_OPERATOR .LT
            .R_REF      VAR_S15A3_LOCAL_1
            .R_REF      VAR_S15A3_LOCAL_4
            .R_OPERATOR .NE
            .R_REF      VAR_S15A3_LOCAL_1
            .R_REF      VAR_S15A3_LOCAL_4
            .R_OPERATOR .LT
            .R_REF      VAR_S15A3_LOCAL_0
            .R_INT16    10
            .R_OPERATOR .LT
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_OPERATOR .OR
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 4$, 1
        ; Variable L4 = 64-VAR_S15A3_LOCAL_2
        VM_RPN
            .R_INT16    64
            .R_REF      VAR_S15A3_LOCAL_2
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_4, .ARG0
        VM_POP                  1

        ; Variable L2 = 80-VAR_S15A3_LOCAL_0
        VM_RPN
            .R_INT16    80
            .R_REF      VAR_S15A3_LOCAL_0
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_2, .ARG0
        VM_POP                  1

        ; Call Script: dice transition
        VM_PUSH_CONST           0 ; Actor 1
        VM_PUSH_CONST           1 ; Actor 0
        VM_PUSH_CONST           VAR_S15A3_LOCAL_3 ; Variable V9
        VM_PUSH_CONST           VAR_S15A3_LOCAL_2 ; Variable V8
        VM_PUSH_CONST           VAR_S15A3_LOCAL_5 ; Variable V7
        VM_PUSH_CONST           VAR_TEMP_0 ; Variable V3
        VM_PUSH_CONST           VAR_S15A3_LOCAL_1 ; Variable V2
        VM_PUSH_CONST           VAR_S15A3_LOCAL_0 ; Variable V1
        VM_PUSH_CONST           VAR_S15A3_LOCAL_4 ; Variable V0
        VM_CALL_FAR             ___bank_script_4, _script_4

        VM_JUMP                 5$
4$:
        ; Variable L4 = 80-VAR_S15A3_LOCAL_2
        VM_RPN
            .R_INT16    80
            .R_REF      VAR_S15A3_LOCAL_2
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_4, .ARG0
        VM_POP                  1

        ; Variable L2 = 64-VAR_S15A3_LOCAL_0
        VM_RPN
            .R_INT16    64
            .R_REF      VAR_S15A3_LOCAL_0
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_S15A3_LOCAL_2, .ARG0
        VM_POP                  1

        ; Call Script: dice transition
        VM_PUSH_CONST           1 ; Actor 1
        VM_PUSH_CONST           0 ; Actor 0
        VM_PUSH_CONST           VAR_S15A3_LOCAL_5 ; Variable V9
        VM_PUSH_CONST           VAR_S15A3_LOCAL_4 ; Variable V8
        VM_PUSH_CONST           VAR_S15A3_LOCAL_3 ; Variable V7
        VM_PUSH_CONST           VAR_TEMP_0 ; Variable V3
        VM_PUSH_CONST           VAR_S15A3_LOCAL_1 ; Variable V2
        VM_PUSH_CONST           VAR_S15A3_LOCAL_0 ; Variable V1
        VM_PUSH_CONST           VAR_S15A3_LOCAL_2 ; Variable V0
        VM_CALL_FAR             ___bank_script_4, _script_4

5$:

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 4

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_hearts, _sprite_hearts

        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_TRANSITION, 0

3$:

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
