#pragma bank 255

// Scene: Scene 11
// Sprites

#include "gbs_types.h"
#include "data/sprite_cursor.h"
#include "data/sprite_dice2.h"

BANKREF(scene_11_sprites)

const far_ptr_t scene_11_sprites[] = {
    TO_FAR_PTR_T(sprite_cursor),
    TO_FAR_PTR_T(sprite_dice2)
};
