#pragma bank 255

// Scene: L3
// Sprites

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/sprite_actor.h"

BANKREF(scene_5_sprites)

const far_ptr_t scene_5_sprites[] = {
    TO_FAR_PTR_T(sprite_dice2),
    TO_FAR_PTR_T(sprite_actor)
};
