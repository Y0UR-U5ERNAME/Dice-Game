.module scene_8_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4
.LOCAL_TMP2_CAMERA_MOVE_ARGS = -4

___bank_scene_8_init = 255
.globl ___bank_scene_8_init

_scene_8_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_F

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Camera Move To
        VM_SET_CONST            .LOCAL_TMP2_CAMERA_MOVE_ARGS, 80
        VM_SET_CONST            ^/(.LOCAL_TMP2_CAMERA_MOVE_ARGS + 1)/, 72
        VM_CAMERA_SET_POS       .LOCAL_TMP2_CAMERA_MOVE_ARGS

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_33, _script_input_33
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_34, _script_input_34
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        ; Variable Set To False
        VM_SET_CONST            VAR_SPIKES, 0

        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer_0, _script_timer_0
        VM_TIMER_SET            1, 3

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_35, _script_input_35
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Stop Script
        VM_STOP
