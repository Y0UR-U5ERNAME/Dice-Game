#pragma bank 255
// SpriteSheet: dice2

#include "gbs_types.h"
#include "data/sprite_dice2_tileset.h"

BANKREF(sprite_dice2)

#define SPRITE_8_STATE_DEFAULT 0
#define SPRITE_8_STATE_NEW_STATE 0
#define SPRITE_8_STATE_E 0
#define SPRITE_8_STATE_F 0

const metasprite_t sprite_dice2_metasprite_0[]  = {
    { -2, 8, 0, 1 }, { 0, -8, 0, 33 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_1[]  = {
    { -2, 8, 2, 1 }, { 0, -8, 4, 1 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_2[]  = {
    { -2, 8, 6, 1 }, { 0, -8, 8, 1 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_3[]  = {
    { -2, 8, 10, 1 }, { 0, -8, 10, 33 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_4[]  = {
    { -2, 8, 12, 1 }, { 0, -8, 12, 33 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_5[]  = {
    { -2, 8, 14, 1 }, { 0, -8, 14, 33 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_6[]  = {
    { -2, 8, 0, 0 }, { 0, -8, 0, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_7[]  = {
    { -2, 8, 2, 0 }, { 0, -8, 4, 0 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_8[]  = {
    { -2, 8, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_9[]  = {
    { -2, 8, 10, 0 }, { 0, -8, 10, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_10[]  = {
    { -2, 8, 12, 0 }, { 0, -8, 12, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice2_metasprite_11[]  = {
    { -2, 8, 14, 0 }, { 0, -8, 14, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_dice2_metasprites[] = {
    sprite_dice2_metasprite_0,
    sprite_dice2_metasprite_1,
    sprite_dice2_metasprite_2,
    sprite_dice2_metasprite_3,
    sprite_dice2_metasprite_4,
    sprite_dice2_metasprite_5,
    sprite_dice2_metasprite_6,
    sprite_dice2_metasprite_7,
    sprite_dice2_metasprite_8,
    sprite_dice2_metasprite_9,
    sprite_dice2_metasprite_10,
    sprite_dice2_metasprite_11
};

const struct animation_t sprite_dice2_animations[] = {
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    },
    {
        .start = 0,
        .end = 11
    }
};

const UWORD sprite_dice2_animations_lookup[] = {
    SPRITE_8_STATE_DEFAULT
};

const struct spritesheet_t sprite_dice2 = {
    .n_metasprites = 12,
    .emote_origin = {
        .x = 0,
        .y = -18
    },
    .metasprites = sprite_dice2_metasprites,
    .animations = sprite_dice2_animations,
    .animations_lookup = sprite_dice2_animations_lookup,
    .bounds = {
        .left = 1,
        .bottom = 6,
        .right = 14,
        .top = -7
    },
    .tileset = TO_FAR_PTR_T(sprite_dice2_tileset),
    .cgb_tileset = { NULL, NULL }
};
