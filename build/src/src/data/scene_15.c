#pragma bank 255

// Scene: Scene 2

#include "gbs_types.h"
#include "data/bg_tl4_copy.h"
#include "data/scene_15_collisions.h"
#include "data/palette_1.h"
#include "data/palette_9.h"
#include "data/sprite_dice.h"
#include "data/scene_15_actors.h"
#include "data/scene_15_triggers.h"
#include "data/scene_15_sprites.h"
#include "data/scene_15_projectiles.h"
#include "data/scene_15_init.h"

BANKREF(scene_15)

const struct scene_t scene_15 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_tl4_copy),
    .collisions = TO_FAR_PTR_T(scene_15_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_1),
    .sprite_palette = TO_FAR_PTR_T(palette_9),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_dice),
    .n_actors = 2,
    .n_triggers = 3,
    .n_sprites = 2,
    .n_projectiles = 1,
    .actors = TO_FAR_PTR_T(scene_15_actors),
    .triggers = TO_FAR_PTR_T(scene_15_triggers),
    .sprites = TO_FAR_PTR_T(scene_15_sprites),
    .projectiles = TO_FAR_PTR_T(scene_15_projectiles),
    .script_init = TO_FAR_PTR_T(scene_15_init)
};
