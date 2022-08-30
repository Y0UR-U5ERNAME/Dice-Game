#pragma bank 255

// Scene: L3
// Actors

#include "gbs_types.h"
#include "data/sprite_dice2.h"
#include "data/actor_12_update.h"
#include "data/sprite_actor.h"
#include "data/actor_51_update.h"
#include "data/sprite_actor.h"

BANKREF(scene_5_actors)

const struct actor_t scene_5_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 128 * 16,
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
        .script_update = TO_FAR_PTR_T(actor_12_update),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
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
        .script_update = TO_FAR_PTR_T(actor_51_update),
        .reserve_tiles = 34
    },
    {
        // Actor 3,
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
        .reserve_tiles = 2
    }
};
