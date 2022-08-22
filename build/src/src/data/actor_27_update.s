.module actor_27_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_actor_27_update = 255
.globl ___bank_actor_27_update

_actor_27_update::
        VM_RESERVE              5

1$:
        VM_SET_CONST            .LOCAL_ACTOR, 2
        ; Store Frame In Variable
        VM_ACTOR_GET_ANIM_FRAME .LOCAL_ACTOR
        VM_SET                  VAR_S8A1_LOCAL_0, ^/(.LOCAL_ACTOR + 1)/

        ; Variable Copy
        VM_SET                  VAR_MASTER_VOLUME, VAR_S8A1_LOCAL_0

        ; If Variable True
        VM_IF_CONST             .GT, VAR_S8A1_LOCAL_0, 0, 2$, 0
        VM_MUSIC_MUTE 0b1111

        VM_JUMP                 3$
2$:
        VM_MUSIC_MUTE 0b0000

        ; Switch Variable
        VM_SWITCH               VAR_S8A1_LOCAL_0, 4, 0
        .dw 0, 4$
        .dw 1, 5$
        .dw 2, 6$
        .dw 3, 7$

        VM_JUMP                 8$
        ; case 0:
4$:
        VM_JUMP                 8$
        ; case 1:
5$:
        VM_SOUND_MASTERVOL 0b10101010

        VM_JUMP                 8$
        ; case 2:
6$:
        VM_SOUND_MASTERVOL 0b01010101

        VM_JUMP                 8$
        ; case 3:
7$:
        VM_SOUND_MASTERVOL 0b11111111

        VM_JUMP                 8$
8$:

3$:

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
