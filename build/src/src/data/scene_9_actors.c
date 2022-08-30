#pragma bank 255

// Scene: Settings
// Actors

#include "gbs_types.h"
#include "data/sprite_onoff.h"
#include "data/sprite_volume.h"
#include "data/actor_27_update.h"

BANKREF(scene_9_actors)

const struct actor_t scene_9_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 88 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_onoff),
        .move_speed = 64,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 88 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_volume),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_27_update),
        .reserve_tiles = 0
    }
};
