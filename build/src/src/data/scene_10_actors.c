#pragma bank 255

// Scene: Scene 5
// Actors

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/actor_28_update.h"
#include "data/actor_28_interact.h"
#include "data/sprite_actor.h"
#include "data/actor_29_update.h"
#include "data/sprite_actor.h"
#include "data/actor_15_update.h"

BANKREF(scene_10_actors)

const struct actor_t scene_10_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 32 * 16,
            .y = 56 * 16
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
        .script_update = TO_FAR_PTR_T(actor_28_update),
        .script = TO_FAR_PTR_T(actor_28_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 104 * 16,
            .y = 32 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_29_update),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 64 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_15_update),
        .reserve_tiles = 0
    }
};
