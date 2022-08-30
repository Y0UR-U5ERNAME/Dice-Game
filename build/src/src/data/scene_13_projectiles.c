#pragma bank 255

// Scene: TL3
// Projectiles

#include "gbs_types.h"
#include "data/sprite_actor.h"

BANKREF(scene_13_projectiles)

const struct projectile_def_t scene_13_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 0,
        .life_time = 60,
        .collision_group = COLLISION_GROUP_2,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 255,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    }
};
