#pragma bank 255

// Scene: TL3
// Sprites

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/sprite_actor.h"

BANKREF(scene_13_sprites)

const far_ptr_t scene_13_sprites[] = {
    TO_FAR_PTR_T(sprite_dice2),
    TO_FAR_PTR_T(sprite_actor)
};
