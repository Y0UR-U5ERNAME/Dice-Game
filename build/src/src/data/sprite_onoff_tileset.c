#pragma bank 255

// Tileset: sprite_onoff_tileset

#include "gbs_types.h"

BANKREF(sprite_onoff_tileset)

const struct tileset_t sprite_onoff_tileset = {
    .n_tiles = 2,
    .tiles = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x7E, 0x7E, 0xBD, 0xC3, 0xFF, 0x81, 0xFF, 0x81, 0xBD, 0xC3, 0x81, 0xFF, 0x81, 0xFF, 0x7E, 0x7E
    }
};