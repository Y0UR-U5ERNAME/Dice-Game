#pragma bank 255

// Scene: Settings

#include "gbs_types.h"
#include "data/bg_help_copy.h"
#include "data/scene_9_collisions.h"
#include "data/palette_5.h"
#include "data/palette_10.h"
#include "data/sprite_cursor2.h"
#include "data/scene_9_actors.h"
#include "data/scene_9_sprites.h"
#include "data/scene_9_init.h"

BANKREF(scene_9)

const struct scene_t scene_9 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_help_copy),
    .collisions = TO_FAR_PTR_T(scene_9_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_5),
    .sprite_palette = TO_FAR_PTR_T(palette_10),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_cursor2),
    .n_actors = 2,
    .n_triggers = 0,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_9_actors),
    .sprites = TO_FAR_PTR_T(scene_9_sprites),
    .script_init = TO_FAR_PTR_T(scene_9_init)
};
