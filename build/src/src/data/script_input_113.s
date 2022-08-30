.module script_input_113

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_16, _scene_16

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input_113 = 255
.globl ___bank_script_input_113

_script_input_113::
        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST             .GT, VAR_TRANSITION, 0, 1$, 0
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1536
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1408
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_16

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
