.module scene_10_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_10_init = 255
.globl ___bank_scene_10_init

_scene_10_init::
        VM_LOCK

        VM_RESERVE              4

        ; Variable Set To False
        VM_SET_CONST            VAR_S9A9_LOCAL_0, 0

        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_41, _script_input_41
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_42, _script_input_42
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_43, _script_input_43
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_44, _script_input_44
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_45, _script_input_45
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_46, _script_input_46
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input_47, _script_input_47
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

        ; Variable Set To False
        VM_SET_CONST            VAR_SPIKES, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_S9_LOCAL_0, 0

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP