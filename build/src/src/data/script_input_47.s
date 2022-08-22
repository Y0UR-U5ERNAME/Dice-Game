.module script_input_47

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_1, _scene_1

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input_47 = 255
.globl ___bank_script_input_47

_script_input_47::
        VM_RESERVE              4

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1152
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1536
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_UP
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_1

        ; Stop Script
        VM_STOP