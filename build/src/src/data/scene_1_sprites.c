#pragma bank 255

// Scene: Scene 1
// Sprites

#include "gbs_types.h"
#include "data/sprite_actor.h"
#include "data/sprite_title_dice.h"
#include "data/sprite_heart.h"
#include "data/sprite_cursor.h"

BANKREF(scene_1_sprites)

const far_ptr_t scene_1_sprites[] = {
    TO_FAR_PTR_T(sprite_actor),
    TO_FAR_PTR_T(sprite_title_dice),
    TO_FAR_PTR_T(sprite_heart),
    TO_FAR_PTR_T(sprite_cursor)
};
