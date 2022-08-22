#pragma bank 255

// Palette: 11

#include "gbs_types.h"

BANKREF(palette_11)

const struct palette_t palette_11 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_BLACK),
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(18, 18, 26), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(18, 18, 26), RGB(18, 18, 26), RGB(12, 12, 14), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(31, 11, 12), RGB(17, 0, 8)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(18, 18, 26), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(18, 18, 26), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(18, 18, 26), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(18, 18, 26), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(18, 18, 26), RGB(3, 3, 3))
    }
};
