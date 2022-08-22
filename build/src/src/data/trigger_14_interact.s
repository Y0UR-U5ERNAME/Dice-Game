.module trigger_14_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_14_interact = 255
.globl ___bank_trigger_14_interact

_trigger_14_interact::
        VM_LOCK

        ; Overlay Show
        VM_OVERLAY_SHOW         0, 0, 0, 0

        VM_PUSH_CONST 20
        VM_PUSH_CONST 18
        VM_PUSH_CONST 21
        VM_PUSH_CONST 19
        VM_PUSH_CONST 20
        VM_PUSH_CONST 18
        VM_OVERLAY_SET_SUBMAP_EX .ARG0
        
        VM_LOAD_TEXT 0
        .asciz "\009"

        ; Stop Script
        VM_STOP
