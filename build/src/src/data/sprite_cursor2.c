#pragma bank 255
// SpriteSheet: cursor2

#include "gbs_types.h"
#include "data/sprite_cursor2_tileset.h"

BANKREF(sprite_cursor2)

#define SPRITE_2_STATE_DEFAULT 0
#define SPRITE_2_STATE_NEW_STATE 0
#define SPRITE_2_STATE_E 0
#define SPRITE_2_STATE_F 0

const metasprite_t sprite_cursor2_metasprite_0[]  = {
    { 0, 0, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor2_metasprite_1[]  = {
    { 0, -2, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor2_metasprite_2[]  = {
    { 0, -3, 0, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_cursor2_metasprites[] = {
    sprite_cursor2_metasprite_0,
    sprite_cursor2_metasprite_1,
    sprite_cursor2_metasprite_2,
    sprite_cursor2_metasprite_1
};

const struct animation_t sprite_cursor2_animations[] = {
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    }
};

const UWORD sprite_cursor2_animations_lookup[] = {
    SPRITE_2_STATE_DEFAULT
};

const struct spritesheet_t sprite_cursor2 = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_cursor2_metasprites,
    .animations = sprite_cursor2_animations,
    .animations_lookup = sprite_cursor2_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_cursor2_tileset),
    .cgb_tileset = { NULL, NULL }
};
