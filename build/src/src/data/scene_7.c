#pragma bank 255

// Scene: Splash Screen

#include "gbs_types.h"
#include "data/bg_pre_title.h"
#include "data/scene_7_collisions.h"
#include "data/palette_3.h"
#include "data/palette_10.h"
#include "data/sprite_actor.h"
#include "data/scene_7_init.h"

BANKREF(scene_7)

const struct scene_t scene_7 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_pre_title),
    .collisions = TO_FAR_PTR_T(scene_7_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_3),
    .sprite_palette = TO_FAR_PTR_T(palette_10),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_actor),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(scene_7_init)
};
