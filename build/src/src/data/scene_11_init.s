.module scene_11_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_11_init = 255
.globl ___bank_scene_11_init

_scene_11_init::
        VM_LOCK

        VM_RESERVE              4

        ; Overlay Hide
        VM_OVERLAY_HIDE

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    64
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -64
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_cursor2, _sprite_cursor2

        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_57, _script_input_57
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_59, _script_input_59
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_60, _script_input_60
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_61, _script_input_61
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_62, _script_input_62
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_63, _script_input_63
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input_64, _script_input_64
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
        VM_SET_CONST            VAR_CAN_SWAP, 0

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
