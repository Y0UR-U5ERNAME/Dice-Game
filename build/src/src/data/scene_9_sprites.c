#pragma bank 255

// Scene: Scene 9
// Sprites

#include "gbs_types.h"
#include "data/sprite_onoff.h"
#include "data/sprite_volume.h"

BANKREF(scene_9_sprites)

const far_ptr_t scene_9_sprites[] = {
    TO_FAR_PTR_T(sprite_onoff),
    TO_FAR_PTR_T(sprite_volume)
};
