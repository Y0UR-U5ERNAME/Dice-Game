#pragma bank 255

// Scene: TL6

#include "gbs_types.h"
#include "data/bg_tl5_copy.h"
#include "data/scene_16_collisions.h"
#include "data/palette_6.h"
#include "data/palette_9.h"
#include "data/sprite_dice.h"
#include "data/scene_16_actors.h"
#include "data/scene_16_triggers.h"
#include "data/scene_16_sprites.h"
#include "data/scene_16_projectiles.h"
#include "data/scene_16_init.h"

BANKREF(scene_16)

const struct scene_t scene_16 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_tl5_copy),
    .collisions = TO_FAR_PTR_T(scene_16_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_6),
    .sprite_palette = TO_FAR_PTR_T(palette_9),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_dice),
    .n_actors = 4,
    .n_triggers = 2,
    .n_sprites = 2,
    .n_projectiles = 1,
    .actors = TO_FAR_PTR_T(scene_16_actors),
    .triggers = TO_FAR_PTR_T(scene_16_triggers),
    .sprites = TO_FAR_PTR_T(scene_16_sprites),
    .projectiles = TO_FAR_PTR_T(scene_16_projectiles),
    .script_init = TO_FAR_PTR_T(scene_16_init)
};
