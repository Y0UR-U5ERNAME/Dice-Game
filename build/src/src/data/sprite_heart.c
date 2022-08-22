#pragma bank 255
// SpriteSheet: heart

#include "gbs_types.h"
#include "data/sprite_heart_tileset.h"

BANKREF(sprite_heart)

#define SPRITE_6_STATE_DEFAULT 0
#define SPRITE_6_STATE_NEW_STATE 0
#define SPRITE_6_STATE_E 0
#define SPRITE_6_STATE_F 0

const metasprite_t sprite_heart_metasprite_0[]  = {
    { -5, 8, 0, 2 }, { 0, -8, 2, 2 },
    {metasprite_end}
};

const metasprite_t sprite_heart_metasprite_1[]  = {
    { -5, 8, 4, 2 }, { 0, -8, 6, 2 },
    {metasprite_end}
};

const metasprite_t * const sprite_heart_metasprites[] = {
    sprite_heart_metasprite_0,
    sprite_heart_metasprite_1
};

const struct animation_t sprite_heart_animations[] = {
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    },
    {
        .start = 0,
        .end = 1
    }
};

const UWORD sprite_heart_animations_lookup[] = {
    SPRITE_6_STATE_DEFAULT
};

const struct spritesheet_t sprite_heart = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_heart_metasprites,
    .animations = sprite_heart_animations,
    .animations_lookup = sprite_heart_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_heart_tileset),
    .cgb_tileset = { NULL, NULL }
};
