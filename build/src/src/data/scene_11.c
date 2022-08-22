#pragma bank 255

// Scene: Scene 11

#include "gbs_types.h"
#include "data/bg_tl3_copy_2_.h"
#include "data/scene_11_collisions.h"
#include "data/palette_6.h"
#include "data/palette_11.h"
#include "data/sprite_dice.h"
#include "data/scene_11_actors.h"
#include "data/scene_11_sprites.h"
#include "data/scene_11_init.h"

BANKREF(scene_11)

const struct scene_t scene_11 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_tl3_copy_2_),
    .collisions = TO_FAR_PTR_T(scene_11_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_6),
    .sprite_palette = TO_FAR_PTR_T(palette_11),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_dice),
    .n_actors = 4,
    .n_triggers = 0,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_11_actors),
    .sprites = TO_FAR_PTR_T(scene_11_sprites),
    .script_init = TO_FAR_PTR_T(scene_11_init)
};
