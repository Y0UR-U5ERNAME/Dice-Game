#pragma bank 255

// Scene: Scene 6

#include "gbs_types.h"
#include "data/bg_level7.h"
#include "data/scene_6_collisions.h"
#include "data/palette_2.h"
#include "data/palette_10.h"
#include "data/sprite_actor_animated.h"
#include "data/scene_6_init.h"

BANKREF(scene_6)

const struct scene_t scene_6 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_level7),
    .collisions = TO_FAR_PTR_T(scene_6_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_2),
    .sprite_palette = TO_FAR_PTR_T(palette_10),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_actor_animated),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(scene_6_init)
};
