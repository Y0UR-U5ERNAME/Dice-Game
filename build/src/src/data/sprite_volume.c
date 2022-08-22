#pragma bank 255
// SpriteSheet: volume

#include "gbs_types.h"
#include "data/sprite_volume_tileset.h"

BANKREF(sprite_volume)

#define SPRITE_10_STATE_DEFAULT 0
#define SPRITE_10_STATE_NEW_STATE 0
#define SPRITE_10_STATE_E 0
#define SPRITE_10_STATE_F 0

const metasprite_t sprite_volume_metasprite_0[]  = {
    { 0, -8, 0, 0 }, { 0, 16, 2, 0 }, { 0, -8, 4, 0 },
    {metasprite_end}
};

const metasprite_t sprite_volume_metasprite_1[]  = {
    { 0, 8, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t sprite_volume_metasprite_2[]  = {
    { 0, 8, 10, 0 }, { 0, -8, 12, 0 },
    {metasprite_end}
};

const metasprite_t sprite_volume_metasprite_3[]  = {
    { 0, 16, 0, 0 }, { 0, -8, 14, 0 }, { 0, -8, 16, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_volume_metasprites[] = {
    sprite_volume_metasprite_0,
    sprite_volume_metasprite_1,
    sprite_volume_metasprite_2,
    sprite_volume_metasprite_3
};

const struct animation_t sprite_volume_animations[] = {
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

const UWORD sprite_volume_animations_lookup[] = {
    SPRITE_10_STATE_DEFAULT
};

const struct spritesheet_t sprite_volume = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_volume_metasprites,
    .animations = sprite_volume_animations,
    .animations_lookup = sprite_volume_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_volume_tileset),
    .cgb_tileset = { NULL, NULL }
};
