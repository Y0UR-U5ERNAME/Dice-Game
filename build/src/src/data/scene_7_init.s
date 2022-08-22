.module scene_7_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, _fade_style, ___bank_scene_1, _scene_1, ___bank_scene_3, _scene_3

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_TMP1_WAIT_ARGS = -4
.LOCAL_TMP2_INPUT = -4
.LOCAL_TMP3_IS_CGB = -4
.LOCAL_ACTOR = -4

___bank_scene_7_init = 255
.globl ___bank_scene_7_init

_scene_7_init::
        VM_LOCK

        VM_RESERVE              4

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 150
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Variable Set To Value
        VM_SET_CONST            VAR_MASTER_VOLUME, 3

        ; Variable Set To True
        VM_SET_CONST            VAR_ROLL_ANIMATION, 1

        ; Engine Field Set To Value
        VM_SET_CONST_INT8       _fade_style, 0

        VM_SET_UINT8 _show_actors_on_overlay, 1

        ; If Input
        VM_GET_INT8             .LOCAL_TMP2_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP2_INPUT
            .R_INT8     32
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
        ; Seed RNG
        VM_RANDOMIZE

2$:

        ; If Color Supported
        VM_GET_UINT8            .LOCAL_TMP3_IS_CGB, __is_CGB
        VM_IF_CONST             .NE, .LOCAL_TMP3_IS_CGB, 1, 3$, 0

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1152
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1536
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_UP
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_1

        VM_JUMP                 4$
3$:
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_3

4$:

        ; Stop Script
        VM_STOP
