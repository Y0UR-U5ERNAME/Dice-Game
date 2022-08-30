#pragma bank 255

// Scene: How to Play
// Sprites

#include "gbs_types.h"
#include "data/sprite_cursor.h"

BANKREF(scene_8_sprites)

const far_ptr_t scene_8_sprites[] = {
    TO_FAR_PTR_T(sprite_cursor)
};
