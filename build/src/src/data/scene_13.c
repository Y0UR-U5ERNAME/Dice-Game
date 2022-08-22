#pragma bank 255

// Scene: Scene 2

#include "gbs_types.h"
#include "data/bg_level1_copy_0.h"
#include "data/scene_13_collisions.h"
#include "data/palette_7.h"
#include "data/palette_11.h"
#include "data/sprite_dice.h"
#include "data/scene_13_actors.h"
#include "data/scene_13_sprites.h"
#include "data/scene_13_projectiles.h"
#include "data/scene_13_init.h"

BANKREF(scene_13)

const struct scene_t scene_13 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_level1_copy_0),
    .collisions = TO_FAR_PTR_T(scene_13_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_7),
    .sprite_palette = TO_FAR_PTR_T(palette_11),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_dice),
    .n_actors = 3,
    .n_triggers = 0,
    .n_sprites = 2,
    .n_projectiles = 1,
    .actors = TO_FAR_PTR_T(scene_13_actors),
    .sprites = TO_FAR_PTR_T(scene_13_sprites),
    .projectiles = TO_FAR_PTR_T(scene_13_projectiles),
    .script_init = TO_FAR_PTR_T(scene_13_init)
};
