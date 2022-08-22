.module script_input_6

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_input_6 = 255
.globl ___bank_script_input_6

_script_input_6::
        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_NEW_STATE

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN

        ; Stop Script
        VM_STOP
