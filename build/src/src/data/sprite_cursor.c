#pragma bank 255
// SpriteSheet: cursor

#include "gbs_types.h"
#include "data/sprite_cursor_tileset.h"

BANKREF(sprite_cursor)

#define SPRITE_3_STATE_DEFAULT 0
#define SPRITE_3_STATE_NEW_STATE 8
#define SPRITE_3_STATE_E 16
#define SPRITE_3_STATE_F 24

const metasprite_t sprite_cursor_metasprite_0[]  = {
    { -3, 4, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_1[]  = {
    { -1, 4, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_2[]  = {
    { 0, 4, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_3[]  = {
    { 0, 4, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_4[]  = {
    { -2, 4, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_5[]  = {
    { -3, 4, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_6[]  = {
    { 0, -12, 4, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_7[]  = {
    { 0, -10, 4, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_8[]  = {
    { 0, -9, 4, 0 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_9[]  = {
    { 0, 20, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_10[]  = {
    { 0, 18, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_11[]  = {
    { 0, 17, 4, 32 },
    {metasprite_end}
};

const metasprite_t sprite_cursor_metasprite_12[]  = {
    { 0, 19, 4, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_cursor_metasprites[] = {
    sprite_cursor_metasprite_0,
    sprite_cursor_metasprite_1,
    sprite_cursor_metasprite_2,
    sprite_cursor_metasprite_1,
    sprite_cursor_metasprite_3,
    sprite_cursor_metasprite_4,
    sprite_cursor_metasprite_5,
    sprite_cursor_metasprite_4,
    sprite_cursor_metasprite_6,
    sprite_cursor_metasprite_7,
    sprite_cursor_metasprite_8,
    sprite_cursor_metasprite_7,
    sprite_cursor_metasprite_9,
    sprite_cursor_metasprite_10,
    sprite_cursor_metasprite_11,
    sprite_cursor_metasprite_12
};

const struct animation_t sprite_cursor_animations[] = {
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
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 4,
        .end = 7
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 8,
        .end = 11
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    },
    {
        .start = 12,
        .end = 15
    }
};

const UWORD sprite_cursor_animations_lookup[] = {
    SPRITE_3_STATE_DEFAULT,
    SPRITE_3_STATE_NEW_STATE,
    SPRITE_3_STATE_E,
    SPRITE_3_STATE_F
};

const struct spritesheet_t sprite_cursor = {
    .n_metasprites = 16,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = sprite_cursor_metasprites,
    .animations = sprite_cursor_animations,
    .animations_lookup = sprite_cursor_animations_lookup,
    .bounds = {
        .left = 1,
        .bottom = 6,
        .right = 14,
        .top = -7
    },
    .tileset = TO_FAR_PTR_T(sprite_cursor_tileset),
    .cgb_tileset = { NULL, NULL }
};
