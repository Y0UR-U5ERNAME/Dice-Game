.module script_2

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1
.LOCAL_TMP1_WAIT_ARGS = -1
.LOCAL_TMP2_WAIT_ARGS = -1
.LOCAL_TMP3_WAIT_ARGS = -1

___bank_script_2 = 255
.globl ___bank_script_2

_script_2::
        VM_RESERVE              1

        VM_LOAD_PALETTE         2, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                9, 24, 23, 9, 24, 23, 5, 13, 24, 5, 13, 24
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        VM_LOAD_PALETTE         2, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                9, 24, 23, 5, 13, 24, 5, 13, 24, 9, 24, 23
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        VM_LOAD_PALETTE         2, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                5, 13, 24, 5, 13, 24, 9, 24, 23, 9, 24, 23
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        VM_LOAD_PALETTE         2, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                5, 13, 24, 9, 24, 23, 9, 24, 23, 5, 13, 24
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        VM_RESERVE              -1
        VM_RET_FAR
