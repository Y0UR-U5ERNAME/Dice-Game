#pragma bank 255

// Scene: Scene 8

#include "gbs_types.h"
#include "data/bg_help.h"
#include "data/scene_8_collisions.h"
#include "data/palette_4.h"
#include "data/palette_10.h"
#include "data/sprite_actor.h"
#include "data/scene_8_actors.h"
#include "data/scene_8_sprites.h"
#include "data/scene_8_init.h"

BANKREF(scene_8)

const struct scene_t scene_8 = {
    .width = 28,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_help),
    .collisions = TO_FAR_PTR_T(scene_8_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0, 7, 128), PARALLAX_STEP(7, 0, 0), PARALLAX_STEP(18, 0, 0)
    },
    .palette = TO_FAR_PTR_T(palette_4),
    .sprite_palette = TO_FAR_PTR_T(palette_10),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_actor),
    .n_actors = 1,
    .n_triggers = 0,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_8_actors),
    .sprites = TO_FAR_PTR_T(scene_8_sprites),
    .script_init = TO_FAR_PTR_T(scene_8_init)
};
