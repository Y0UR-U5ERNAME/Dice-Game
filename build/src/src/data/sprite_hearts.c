#pragma bank 255
// SpriteSheet: hearts

#include "gbs_types.h"
#include "data/sprite_hearts_tileset.h"

BANKREF(sprite_hearts)

#define SPRITE_1_STATE_DEFAULT 0
#define SPRITE_1_STATE_NEW_STATE 0
#define SPRITE_1_STATE_E 0
#define SPRITE_1_STATE_F 0

const metasprite_t sprite_hearts_metasprite_0[]  = {
    { 0, 8, 0, 2 }, { 0, -8, 2, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_1[]  = {
    { 0, 8, 4, 2 }, { 0, -8, 6, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_2[]  = {
    { 0, 8, 8, 2 }, { 0, -8, 10, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_3[]  = {
    { 0, 8, 12, 2 }, { 0, -8, 14, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_4[]  = {
    { 0, 8, 16, 2 }, { 0, -8, 18, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_5[]  = {
    { 0, 8, 20, 2 }, { 0, -8, 22, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_6[]  = {
    { 0, 8, 24, 2 }, { 0, -8, 26, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_7[]  = {
    { 0, 8, 10, 34 }, { 0, -8, 28, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_8[]  = {
    { 0, 8, 14, 34 }, { 0, -8, 30, 2 },
    {metasprite_end}
};

const metasprite_t sprite_hearts_metasprite_9[]  = {
    { 0, 8, 18, 2 }, { 0, -8, 32, 2 },
    {metasprite_end}
};

const metasprite_t * const sprite_hearts_metasprites[] = {
    sprite_hearts_metasprite_0,
    sprite_hearts_metasprite_1,
    sprite_hearts_metasprite_2,
    sprite_hearts_metasprite_3,
    sprite_hearts_metasprite_4,
    sprite_hearts_metasprite_5,
    sprite_hearts_metasprite_6,
    sprite_hearts_metasprite_7,
    sprite_hearts_metasprite_8,
    sprite_hearts_metasprite_9
};

const struct animation_t sprite_hearts_animations[] = {
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    },
    {
        .start = 0,
        .end = 9
    }
};

const UWORD sprite_hearts_animations_lookup[] = {
    SPRITE_1_STATE_DEFAULT
};

const struct spritesheet_t sprite_hearts = {
    .n_metasprites = 10,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_hearts_metasprites,
    .animations = sprite_hearts_animations,
    .animations_lookup = sprite_hearts_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_hearts_tileset),
    .cgb_tileset = { NULL, NULL }
};
