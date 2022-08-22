#pragma bank 255

// Background: level7

#include "gbs_types.h"
#include "data/bg_level7_tileset.h"
#include "data/bg_level7_tilemap.h"
#include "data/bg_level7_tilemap_attr.h"

BANKREF(bg_level7)

const struct background_t bg_level7 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_level7_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_level7_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_level7_tilemap_attr)
};
