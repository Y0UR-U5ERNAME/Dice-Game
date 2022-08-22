.module actor_31_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_CAMERA_MOVE_ARGS = -4
.LOCAL_ACTOR = -4

___bank_actor_31_interact = 255
.globl ___bank_actor_31_interact

_actor_31_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Camera Move To
        VM_SET_CONST            .LOCAL_TMP0_CAMERA_MOVE_ARGS, 240
        VM_SET_CONST            ^/(.LOCAL_TMP0_CAMERA_MOVE_ARGS + 1)/, 72
        VM_CAMERA_SET_POS       .LOCAL_TMP0_CAMERA_MOVE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Position
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 3072
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1536
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_4, _script_input_4
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_5, _script_input_5
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_6, _script_input_6
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_7, _script_input_7
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Stop Script
        VM_STOP
