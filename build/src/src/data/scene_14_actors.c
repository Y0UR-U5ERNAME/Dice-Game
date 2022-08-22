#pragma bank 255

// Scene: Scene 2
// Actors

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/actor_38_update.h"

BANKREF(scene_14_actors)

const struct actor_t scene_14_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 80 * 16,
            .y = 120 * 16
        },
        .bounds = {
            .left = 1,
            .bottom = 6,
            .right = 14,
            .top = -7
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_dice2),
        .move_speed = 128,
        .anim_tick = 255,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_38_update),
        .reserve_tiles = 0
    }
};