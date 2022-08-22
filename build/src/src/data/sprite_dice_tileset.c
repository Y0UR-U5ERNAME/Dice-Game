#pragma bank 255

// Tileset: sprite_dice_tileset

#include "gbs_types.h"

BANKREF(sprite_dice_tileset)

const struct tileset_t sprite_dice_tileset = {
    .n_tiles = 26,
    .tiles = {
        0xF8, 0xF8, 0xF4, 0x0C, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x84, 0xFC, 0x84, 0xFC, 0x04,
        0xFC, 0x04, 0xFC, 0x04, 0xF4, 0x0C, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0xF8, 0xF8,
        0xF8, 0xF8, 0xF4, 0x0C, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04,
        0xFC, 0x34, 0xFC, 0x34, 0xF4, 0x0C, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0xF8, 0xF8,
        0x1F, 0x1F, 0x2F, 0x30, 0x3F, 0x2C, 0x3F, 0x2C, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20,
        0x3F, 0x20, 0x3F, 0x20, 0x2F, 0x30, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x1F, 0x1F,
        0xF8, 0xF8, 0xF4, 0x0C, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x84, 0xFC, 0x84, 0xFC, 0x04,
        0xFC, 0x34, 0xFC, 0x34, 0xF4, 0x0C, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0xF8, 0xF8,
        0x1F, 0x1F, 0x2F, 0x30, 0x3F, 0x2C, 0x3F, 0x2C, 0x3F, 0x20, 0x3F, 0x21, 0x3F, 0x21, 0x3F, 0x20,
        0x3F, 0x20, 0x3F, 0x20, 0x2F, 0x30, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x1F, 0x1F,
        0xF8, 0xF8, 0xF4, 0x0C, 0xFC, 0x34, 0xFC, 0x34, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04,
        0xFC, 0x34, 0xFC, 0x34, 0xF4, 0x0C, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0xF8, 0xF8,
        0xF8, 0xF8, 0xF4, 0x0C, 0xFC, 0x34, 0xFC, 0x34, 0xFC, 0x04, 0xFC, 0x84, 0xFC, 0x84, 0xFC, 0x04,
        0xFC, 0x34, 0xFC, 0x34, 0xF4, 0x0C, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0xF8, 0xF8,
        0xF8, 0xF8, 0xF4, 0x0C, 0xFC, 0x34, 0xFC, 0x34, 0xFC, 0x04, 0xFC, 0x34, 0xFC, 0x34, 0xFC, 0x04,
        0xFC, 0x34, 0xFC, 0x34, 0xF4, 0x0C, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0xF8, 0xF8,
        0xE0, 0xE0, 0xD8, 0x38, 0xC4, 0x3C, 0xC4, 0x3C, 0xC4, 0x3C, 0xC4, 0x3C, 0xC4, 0x3C, 0xC4, 0x3C,
        0xC4, 0x3C, 0x34, 0xCC, 0x0C, 0xF4, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x18, 0xF8, 0xE0, 0xE0,
        0x03, 0x03, 0x1F, 0x1C, 0x2F, 0x30, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20,
        0x3F, 0x20, 0x3C, 0x23, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x1C, 0x1F, 0x03, 0x03,
        0xC0, 0xC0, 0x38, 0xF8, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC,
        0xC4, 0x3C, 0x3C, 0xC4, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x38, 0xF8, 0xC0, 0xC0,
        0x07, 0x07, 0x1C, 0x1B, 0x3C, 0x23, 0x3C, 0x23, 0x3C, 0x23, 0x3C, 0x23, 0x3C, 0x23, 0x3C, 0x23,
        0x3F, 0x20, 0x3C, 0x23, 0x30, 0x2F, 0x20, 0x3F, 0x20, 0x3F, 0x20, 0x3F, 0x18, 0x1F, 0x07, 0x07,
        0xF0, 0xF0, 0xE8, 0x18, 0xF8, 0x08, 0xF8, 0x08, 0xF8, 0x08, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x04,
        0xFC, 0x04, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFC, 0x08, 0xF8, 0x08, 0xF8, 0x08, 0xF8, 0xF0, 0xF0
    }
};
