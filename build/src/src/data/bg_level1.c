#pragma bank 255

// Background: level1

#include "gbs_types.h"
#include "data/bg_level1_tileset.h"
#include "data/bg_level1_tilemap.h"
#include "data/bg_level1_tilemap_attr.h"

BANKREF(bg_level1)

const struct background_t bg_level1 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_level1_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_level1_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_level1_tilemap_attr)
};
