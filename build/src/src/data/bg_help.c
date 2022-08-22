#pragma bank 255

// Background: help

#include "gbs_types.h"
#include "data/bg_help_tileset.h"
#include "data/bg_help_tilemap.h"
#include "data/bg_help_tilemap_attr.h"

BANKREF(bg_help)

const struct background_t bg_help = {
    .width = 28,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_help_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_help_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_help_tilemap_attr)
};
