#pragma bank 255

// Palette: 2

#include "gbs_types.h"

BANKREF(palette_2)

const struct palette_t palette_2 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 23, 17), RGB(31, 11, 12), RGB(17, 0, 8)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(18, 18, 26), RGB(31, 23, 17), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 31, 31), RGB(31, 31, 31), RGB(31, 31, 31)),
        CGB_PALETTE(RGB(18, 18, 26), RGB(18, 18, 26), RGB(3, 3, 3), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(18, 18, 26), RGB(31, 31, 31), RGB(3, 3, 3)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 21, 13), RGB(31, 7, 8), RGB(17, 0, 8)),
        CGB_PALETTE(RGB(29, 31, 28), RGB(22, 30, 17), RGB(10, 19, 15), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 17, 1), RGB(22, 5, 1), RGB(0, 0, 1))
    }
};
