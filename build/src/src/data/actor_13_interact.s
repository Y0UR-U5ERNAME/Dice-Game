.module actor_13_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_4, _scene_4

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_ACTOR = -4

___bank_actor_13_interact = 255
.globl ___bank_actor_13_interact

_actor_13_interact::
        VM_RESERVE              4

        ; If Parameter 0 Equals 4
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 4, 1$, 0
        VM_JUMP                 2$
1$:
        VM_SET_CONST            .LOCAL_ACTOR, 1
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S3A2_LOCAL_0, ^/(.LOCAL_ACTOR + 1)/

        ; If VAR_S3A2_LOCAL_0!=5
        VM_RPN
            .R_REF      VAR_S3A2_LOCAL_0
            .R_INT16    5
            .R_OPERATOR .NE
            .R_STOP
        VM_IF_CONST             .GT, .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 512
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1408
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_4

4$:

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
