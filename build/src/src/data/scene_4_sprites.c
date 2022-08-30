#pragma bank 255

// Scene: L2
// Sprites

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/sprite_actor.h"

BANKREF(scene_4_sprites)

const far_ptr_t scene_4_sprites[] = {
    TO_FAR_PTR_T(sprite_dice2),
    TO_FAR_PTR_T(sprite_actor)
};
