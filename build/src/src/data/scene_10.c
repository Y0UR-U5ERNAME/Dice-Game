#pragma bank 255

// Scene: Scene 5

#include "gbs_types.h"
#include "data/bg_level4.h"
#include "data/scene_10_collisions.h"
#include "data/palette_4.h"
#include "data/palette_9.h"
#include "data/sprite_dice.h"
#include "data/scene_10_actors.h"
#include "data/scene_10_triggers.h"
#include "data/scene_10_sprites.h"
#include "data/scene_10_projectiles.h"
#include "data/scene_10_init.h"

BANKREF(scene_10)

const struct scene_t scene_10 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_level4),
    .collisions = TO_FAR_PTR_T(scene_10_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_4),
    .sprite_palette = TO_FAR_PTR_T(palette_9),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_dice),
    .n_actors = 3,
    .n_triggers = 9,
    .n_sprites = 2,
    .n_projectiles = 1,
    .actors = TO_FAR_PTR_T(scene_10_actors),
    .triggers = TO_FAR_PTR_T(scene_10_triggers),
    .sprites = TO_FAR_PTR_T(scene_10_sprites),
    .projectiles = TO_FAR_PTR_T(scene_10_projectiles),
    .script_init = TO_FAR_PTR_T(scene_10_init)
};
