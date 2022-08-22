#pragma bank 255
// SpriteSheet: actor

#include "gbs_types.h"
#include "data/sprite_actor_tileset.h"

BANKREF(sprite_actor)

#define SPRITE_0_STATE_DEFAULT 0
#define SPRITE_0_STATE_NEW_STATE 0
#define SPRITE_0_STATE_E 0
#define SPRITE_0_STATE_F 0

const metasprite_t sprite_actor_metasprite_0[]  = {
    {metasprite_end}
};

const metasprite_t * const sprite_actor_metasprites[] = {
    sprite_actor_metasprite_0
};

const struct animation_t sprite_actor_animations[] = {
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
    },
    {
        .start = 0,
        .end = 0
    }
};

const UWORD sprite_actor_animations_lookup[] = {
    SPRITE_0_STATE_DEFAULT
};

const struct spritesheet_t sprite_actor = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_actor_metasprites,
    .animations = sprite_actor_animations,
    .animations_lookup = sprite_actor_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_actor_tileset),
    .cgb_tileset = { NULL, NULL }
};
