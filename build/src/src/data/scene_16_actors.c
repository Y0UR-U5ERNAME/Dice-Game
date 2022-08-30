#pragma bank 255

// Scene: TL6
// Actors

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/actor_40_update.h"
#include "data/sprite_actor.h"
#include "data/actor_44_update.h"
#include "data/sprite_actor.h"
#include "data/actor_41_interact.h"
#include "data/sprite_actor.h"
#include "data/actor_17_update.h"

BANKREF(scene_16_actors)

const struct actor_t scene_16_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 96 * 16,
            .y = 72 * 16
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
        .script_update = TO_FAR_PTR_T(actor_40_update),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 48 * 16,
            .y = 96 * 16
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
        .anim_tick = 7,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_44_update),
        .reserve_tiles = 2
    },
    {
        // Actor 3,
        .pos = {
            .x = 64 * 16,
            .y = 72 * 16
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
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_41_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 72 * 16,
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
        .anim_tick = 7,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_17_update),
        .reserve_tiles = 34
    }
};
