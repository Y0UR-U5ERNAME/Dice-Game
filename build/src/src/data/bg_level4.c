#pragma bank 255

// Background: level4

#include "gbs_types.h"
#include "data/bg_level4_tileset.h"
#include "data/bg_level4_tilemap.h"
#include "data/bg_level4_tilemap_attr.h"

BANKREF(bg_level4)

const struct background_t bg_level4 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_level4_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_level4_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_level4_tilemap_attr)
};
