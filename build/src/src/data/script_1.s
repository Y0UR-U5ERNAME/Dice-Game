.module script_1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_1 = 255
.globl ___bank_script_1

_script_1::
        ; Variable 6 = 1-VAR_SPIKES
        VM_RPN
            .R_INT16    1
            .R_REF      VAR_SPIKES
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_SPIKES, .ARG0
        VM_POP                  1

        ; If Variable True
        VM_IF_CONST             .GT, VAR_SPIKES, 0, 1$, 0
        VM_LOAD_PALETTE         24, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                18, 18, 26, 18, 18, 26, 3, 3, 3, 3, 3, 3
        .CGB_PAL                31, 31, 31, 18, 18, 26, 31, 31, 31, 3, 3, 3
        VM_JUMP                 2$
1$:
        VM_LOAD_PALETTE         24, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                31, 31, 31, 18, 18, 26, 31, 31, 31, 3, 3, 3
        .CGB_PAL                18, 18, 26, 18, 18, 26, 3, 3, 3, 3, 3, 3
2$:

        VM_RET_FAR
