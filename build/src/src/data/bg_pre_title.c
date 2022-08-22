#pragma bank 255

// Background: pre_title

#include "gbs_types.h"
#include "data/bg_pre_title_tileset.h"
#include "data/bg_pre_title_tilemap.h"
#include "data/bg_pre_title_tilemap_attr.h"

BANKREF(bg_pre_title)

const struct background_t bg_pre_title = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_pre_title_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_pre_title_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_pre_title_tilemap_attr)
};
