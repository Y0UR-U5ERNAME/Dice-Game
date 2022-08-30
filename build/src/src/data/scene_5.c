#pragma bank 255

// Scene: L3

#include "gbs_types.h"
#include "data/bg_level1_3_1_png.h"
#include "data/scene_5_collisions.h"
#include "data/palette_1.h"
#include "data/palette_9.h"
#include "data/sprite_dice.h"
#include "data/scene_5_actors.h"
#include "data/scene_5_triggers.h"
#include "data/scene_5_sprites.h"
#include "data/scene_5_projectiles.h"
#include "data/scene_5_init.h"

BANKREF(scene_5)

const struct scene_t scene_5 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_level1_3_1_png),
    .collisions = TO_FAR_PTR_T(scene_5_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_1),
    .sprite_palette = TO_FAR_PTR_T(palette_9),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_dice),
    .n_actors = 3,
    .n_triggers = 7,
    .n_sprites = 2,
    .n_projectiles = 1,
    .actors = TO_FAR_PTR_T(scene_5_actors),
    .triggers = TO_FAR_PTR_T(scene_5_triggers),
    .sprites = TO_FAR_PTR_T(scene_5_sprites),
    .projectiles = TO_FAR_PTR_T(scene_5_projectiles),
    .script_init = TO_FAR_PTR_T(scene_5_init)
};
