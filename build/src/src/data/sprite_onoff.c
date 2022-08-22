#pragma bank 255
// SpriteSheet: onoff

#include "gbs_types.h"
#include "data/sprite_onoff_tileset.h"

BANKREF(sprite_onoff)

#define SPRITE_9_STATE_DEFAULT 0
#define SPRITE_9_STATE_NEW_STATE 0
#define SPRITE_9_STATE_E 0
#define SPRITE_9_STATE_F 0

const metasprite_t sprite_onoff_metasprite_0[]  = {
    { 0, 0, 0, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_onoff_metasprites[] = {
    sprite_onoff_metasprite_0
};

const struct animation_t sprite_onoff_animations[] = {
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

const UWORD sprite_onoff_animations_lookup[] = {
    SPRITE_9_STATE_DEFAULT
};

const struct spritesheet_t sprite_onoff = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_onoff_metasprites,
    .animations = sprite_onoff_animations,
    .animations_lookup = sprite_onoff_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_onoff_tileset),
    .cgb_tileset = { NULL, NULL }
};
