#pragma bank 255
// SpriteSheet: title_dice

#include "gbs_types.h"
#include "data/sprite_title_dice_tileset.h"

BANKREF(sprite_title_dice)

#define SPRITE_5_STATE_DEFAULT 0
#define SPRITE_5_STATE_NEW_STATE 0
#define SPRITE_5_STATE_E 0
#define SPRITE_5_STATE_F 0

const metasprite_t sprite_title_dice_metasprite_0[]  = {
    { 0, 12, 0, 1 }, { -16, 0, 2, 1 }, { 16, -8, 4, 1 }, { -16, 0, 6, 1 }, { 16, -8, 8, 1 }, { -16, 0, 10, 1 },
    {metasprite_end}
};

const metasprite_t * const sprite_title_dice_metasprites[] = {
    sprite_title_dice_metasprite_0
};

const struct animation_t sprite_title_dice_animations[] = {
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

const UWORD sprite_title_dice_animations_lookup[] = {
    SPRITE_5_STATE_DEFAULT
};

const struct spritesheet_t sprite_title_dice = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_title_dice_metasprites,
    .animations = sprite_title_dice_animations,
    .animations_lookup = sprite_title_dice_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_title_dice_tileset),
    .cgb_tileset = { NULL, NULL }
};
