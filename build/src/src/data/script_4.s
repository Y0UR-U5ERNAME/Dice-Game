.module script_4

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -7
.SCRIPT_ARG_INDIRECT_1_VARIABLE = -8
.SCRIPT_ARG_INDIRECT_2_VARIABLE = -9
.SCRIPT_ARG_INDIRECT_3_VARIABLE = -10
.SCRIPT_ARG_INDIRECT_4_VARIABLE = -11
.SCRIPT_ARG_INDIRECT_5_VARIABLE = -12
.SCRIPT_ARG_INDIRECT_6_VARIABLE = -13
.SCRIPT_ARG_7_ACTOR = -14
.SCRIPT_ARG_8_ACTOR = -15
.LOCAL_TMP0_VALUE_TMP = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_WAIT_ARGS = -4

___bank_script_4 = 255
.globl ___bank_script_4

_script_4::
        VM_RESERVE              4

        ; Variable Set To Value
        VM_SET_CONST            .LOCAL_TMP0_VALUE_TMP, 0
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_1_VARIABLE, .LOCAL_TMP0_VALUE_TMP

2$:
        ; If Variable .LTE Value
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_1_VARIABLE
        VM_IF_CONST             .LTE, .ARG0, 18, 3$, 1
        VM_JUMP                 4$
3$:
        ; Variable [object Object] = 64-$V0$*(18-$V1$)/18
        VM_RPN
            .R_INT16    64
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_INT16    18
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_OPERATOR .SUB
            .R_OPERATOR .MUL
            .R_INT16    18
            .R_OPERATOR .DIV
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_2_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        ; Variable [object Object] = 56-$V7$*(18-$V1$)/18
        VM_RPN
            .R_INT16    56
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_4_VARIABLE
            .R_INT16    18
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_OPERATOR .SUB
            .R_OPERATOR .MUL
            .R_INT16    18
            .R_OPERATOR .DIV
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_3_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_7_ACTOR

        ; Actor Set Position To Variables
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    16
            .R_OPERATOR .MUL
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    16
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Variable [object Object] = 80-$V8$*(18-$V1$)/18
        VM_RPN
            .R_INT16    80
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_5_VARIABLE
            .R_INT16    18
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_OPERATOR .SUB
            .R_OPERATOR .MUL
            .R_INT16    18
            .R_OPERATOR .DIV
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_2_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        ; Variable [object Object] = 56-$V9$*(18-$V1$)/18
        VM_RPN
            .R_INT16    56
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_6_VARIABLE
            .R_INT16    18
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_OPERATOR .SUB
            .R_OPERATOR .MUL
            .R_INT16    18
            .R_OPERATOR .DIV
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_3_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_8_ACTOR

        ; Actor Set Position To Variables
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    16
            .R_OPERATOR .MUL
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    16
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Variables .ADD Value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_1_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        VM_JUMP                 2$
4$:

        VM_RESERVE              -4
        VM_RET_FAR_N            9
