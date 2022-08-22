#pragma bank 255

// Background: tl1

#include "gbs_types.h"
#include "data/bg_tl3_copy_2__tileset.h"
#include "data/bg_tl3_copy_2__tilemap.h"
#include "data/bg_tl3_copy_2__tilemap_attr.h"

BANKREF(bg_tl3_copy_2_)

const struct background_t bg_tl3_copy_2_ = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_tl3_copy_2__tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_tl3_copy_2__tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_tl3_copy_2__tilemap_attr)
};
