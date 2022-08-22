#pragma bank 255

// Background: settings

#include "gbs_types.h"
#include "data/bg_help_copy_tileset.h"
#include "data/bg_help_copy_tilemap.h"
#include "data/bg_help_copy_tilemap_attr.h"

BANKREF(bg_help_copy)

const struct background_t bg_help_copy = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_help_copy_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_help_copy_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_help_copy_tilemap_attr)
};
