#pragma bank 255

// Scene: TL5
// Triggers

#include "gbs_types.h"
#include "data/trigger_24_interact.h"
#include "data/trigger_25_interact.h"
#include "data/trigger_22_interact.h"

BANKREF(scene_15_triggers)

const struct trigger_t scene_15_triggers[] = {
    {
        // Trigger 1,
        .x = 6,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_24_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 14,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_25_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 10,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_22_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
