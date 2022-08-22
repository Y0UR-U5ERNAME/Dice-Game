#pragma bank 255

// Scene: Scene 1

#include "gbs_types.h"
#include "data/bg_title.h"
#include "data/scene_1_collisions.h"
#include "data/palette_0.h"
#include "data/palette_8.h"
#include "data/sprite_cursor.h"
#include "data/scene_1_actors.h"
#include "data/scene_1_sprites.h"
#include "data/scene_1_init.h"

BANKREF(scene_1)

const struct scene_t scene_1 = {
    .width = 40,
    .height = 18,
    .type = SCENE_TYPE_ADVENTURE,
    .background = TO_FAR_PTR_T(bg_title),
    .collisions = TO_FAR_PTR_T(scene_1_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0, 6, 128), PARALLAX_STEP(6, 0, 0), PARALLAX_STEP(18, 0, 0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_8),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_cursor),
    .n_actors = 13,
    .n_triggers = 0,
    .n_sprites = 4,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_1_actors),
    .sprites = TO_FAR_PTR_T(scene_1_sprites),
    .script_init = TO_FAR_PTR_T(scene_1_init)
};
