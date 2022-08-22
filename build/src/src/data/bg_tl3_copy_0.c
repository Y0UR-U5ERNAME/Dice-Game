#pragma bank 255

// Background: tl4

#include "gbs_types.h"
#include "data/bg_tl3_copy_0_tileset.h"
#include "data/bg_tl3_copy_0_tilemap.h"
#include "data/bg_tl3_copy_0_tilemap_attr.h"

BANKREF(bg_tl3_copy_0)

const struct background_t bg_tl3_copy_0 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_tl3_copy_0_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_tl3_copy_0_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_tl3_copy_0_tilemap_attr)
};
