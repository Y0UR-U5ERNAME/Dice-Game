#pragma bank 255

// Scene: Scene 8
// Actors

#include "gbs_types.h"
#include "data/sprite_cursor.h"
#include "data/actor_36_update.h"

BANKREF(scene_8_actors)

const struct actor_t scene_8_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 128 * 16,
            .y = 136 * 16
        },
        .bounds = {
            .left = 1,
            .bottom = 6,
            .right = 14,
            .top = -7
        },
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(sprite_cursor),
        .move_speed = 16,
        .anim_tick = 7,
        .pinned = TRUE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .script_update = TO_FAR_PTR_T(actor_36_update),
        .reserve_tiles = 0
    }
};
