.module script_3

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -4
.SCRIPT_ARG_INDIRECT_1_VARIABLE = -5
.LOCAL_TMP0_VALUE_TMP = -1
.LOCAL_TMP1_VALUE_TMP = -1
.LOCAL_TMP2_VALUE_TMP = -1
.LOCAL_TMP3_VALUE_TMP = -1
.LOCAL_TMP4_WAIT_ARGS = -1

___bank_script_3 = 255
.globl ___bank_script_3

_script_3::
        VM_RESERVE              1

        ; Variable Set To True
        VM_SET_CONST            VAR_TRANSITION, 1

        VM_SET_UINT8 _show_actors_on_overlay, 1

        VM_OVERLAY_CLEAR 0, 0, 20, 18, .UI_COLOR_WHITE, 0
        ;VM_SET_CONST_UINT8 _win_dest_pos_y, 0
        VM_SET_CONST_UINT8 _overlay_cut_scanline, 87

        ; Variable Set To Value
        VM_SET_CONST            .LOCAL_TMP0_VALUE_TMP, 4
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_1_VARIABLE, .LOCAL_TMP0_VALUE_TMP

        ; Variable Set To Value
        VM_SET_CONST            .LOCAL_TMP1_VALUE_TMP, 0
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_0_VARIABLE, .LOCAL_TMP1_VALUE_TMP

2$:
        ; If Variable .LTE Value
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_0_VARIABLE
        VM_IF_CONST             .LTE, .ARG0, 48, 3$, 1
        VM_JUMP                 4$
3$:
        ; Variable 10 = 80-$V0$
        VM_RPN
            .R_INT16    80
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_10, .ARG0
        VM_POP                  1

        ; Variable 11 = $V0$+87
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_INT16    87
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_11, .ARG0
        VM_POP                  1

        VM_SET_UINT8 _win_dest_pos_y, VAR_10
        VM_SET_UINT8 _win_pos_y, VAR_10
        VM_SET_UINT8 _overlay_cut_scanline, VAR_11

        ; If $V0$>=24
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_INT16    24
            .R_OPERATOR .GTE
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 5$, 1
        ; If $V0$>=36
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_INT16    36
            .R_OPERATOR .GTE
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 7$, 1
        VM_JUMP                 8$
7$:
        ; Variable Set To True
        VM_SET_CONST            .LOCAL_TMP2_VALUE_TMP, 1
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_1_VARIABLE, .LOCAL_TMP2_VALUE_TMP

8$:

        VM_JUMP                 6$
5$:
        ; Variable Set To Value
        VM_SET_CONST            .LOCAL_TMP3_VALUE_TMP, 2
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_1_VARIABLE, .LOCAL_TMP3_VALUE_TMP

6$:

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP4_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP4_WAIT_ARGS

        ; Variables .ADD
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_1_VARIABLE
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_0_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        VM_JUMP                 2$
4$:

        VM_LOCK
        
        VM_OVERLAY_SETPOS 0, 0
        
        VM_OVERLAY_SET_SUBMAP 0, 0, 6, 2, 0, 0
        VM_OVERLAY_SET_SUBMAP 1, 2, 3, 2, 1, 2
        VM_OVERLAY_SET_SUBMAP 9, 0, 8, 3, 9, 0
        
        VM_UNLOCK
        
        VM_SET_CONST_UINT8 _overlay_cut_scanline, 143

        VM_LOAD_PALETTE         4, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                31, 31, 31, 31, 23, 17, 31, 11, 12, 17, 0, 8
        VM_OVERLAY_SET_SUBMAP 3, 8, 14, 2, 6, 3
        
        VM_LOAD_TEXT 0
        .asciz "\003\011\015\001\001Next Level"
        VM_DISPLAY_TEXT

        ; Variable Set To False
        VM_SET_CONST            VAR_TRANSITION, 0

        VM_RESERVE              -1
        VM_RET_FAR_N            2
