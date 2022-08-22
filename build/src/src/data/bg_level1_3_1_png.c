#pragma bank 255

// Background: level1-3_1.png

#include "gbs_types.h"
#include "data/bg_level1_3_1_png_tileset.h"
#include "data/bg_level1_3_1_png_tilemap.h"
#include "data/bg_level1_3_1_png_tilemap_attr.h"

BANKREF(bg_level1_3_1_png)

const struct background_t bg_level1_3_1_png = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_level1_3_1_png_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_level1_3_1_png_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_level1_3_1_png_tilemap_attr)
};
