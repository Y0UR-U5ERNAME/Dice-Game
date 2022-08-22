#pragma bank 255
// SpriteSheet: dice

#include "gbs_types.h"
#include "data/sprite_dice_tileset.h"

BANKREF(sprite_dice)

#define SPRITE_7_STATE_DEFAULT 0
#define SPRITE_7_STATE_NEW_STATE 0
#define SPRITE_7_STATE_E 0
#define SPRITE_7_STATE_F 0

const metasprite_t sprite_dice_metasprite_0[]  = {
    { -2, 8, 0, 0 }, { 0, -8, 0, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_1[]  = {
    { -2, 8, 2, 0 }, { 0, -8, 4, 0 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_2[]  = {
    { -2, 8, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_3[]  = {
    { -2, 8, 10, 0 }, { 0, -8, 10, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_4[]  = {
    { -2, 8, 12, 0 }, { 0, -8, 12, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_5[]  = {
    { -2, 8, 14, 0 }, { 0, -8, 14, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_6[]  = {
    { -2, 10, 16, 0 }, { 0, -8, 18, 0 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_7[]  = {
    { -2, 6, 20, 0 }, { 0, -8, 22, 0 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_8[]  = {
    { -2, 8, 24, 0 }, { 0, -8, 24, 32 },
    {metasprite_end}
};

const metasprite_t sprite_dice_metasprite_9[]  = {
    { -4, 8, 24, 64 }, { 0, -8, 24, 96 },
    {metasprite_end}
};

const metasprite_t * const sprite_dice_metasprites[] = {
    sprite_dice_metasprite_0,
    sprite_dice_metasprite_1,
    sprite_dice_metasprite_2,
    sprite_dice_metasprite_3,
    sprite_dice_metasprite_4,
    sprite_dice_metasprite_5,
    sprite_dice_metasprite_6,
    sprite_dice_metasprite_7,
    sprite_dice_metasprite_8,
    sprite_dice_metasprite_9
};

const struct animation_t sprite_dice_animations[] = {
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

const UWORD sprite_dice_animations_lookup[] = {
    SPRITE_7_STATE_DEFAULT
};

const struct spritesheet_t sprite_dice = {
    .n_metasprites = 10,
    .emote_origin = {
        .x = 0,
        .y = -20
    },
    .metasprites = sprite_dice_metasprites,
    .animations = sprite_dice_animations,
    .animations_lookup = sprite_dice_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_dice_tileset),
    .cgb_tileset = { NULL, NULL }
};
