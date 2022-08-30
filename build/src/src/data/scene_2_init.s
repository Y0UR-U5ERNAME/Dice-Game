.module scene_2_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_2_init = 255
.globl ___bank_scene_2_init

_scene_2_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 5
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_cursor2, _sprite_cursor2

        ; Overlay Hide
        VM_OVERLAY_HIDE

        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_8, _script_input_8
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_9, _script_input_9
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_10, _script_input_10
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_11, _script_input_11
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_12, _script_input_12
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_13, _script_input_13
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input_14, _script_input_14
        VM_INPUT_ATTACH         64, ^/(2 | .OVERRIDE_DEFAULT)/

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Variable Set To False
        VM_SET_CONST            VAR_MOVING, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_DIRECTION, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  .LOCAL_ACTOR, 255

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_15, _script_input_15
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
