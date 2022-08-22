#pragma bank 255

// Scene: Scene 2
// Triggers

#include "gbs_types.h"
#include "data/trigger_15_interact.h"
#include "data/trigger_16_interact.h"

BANKREF(scene_12_triggers)

const struct trigger_t scene_12_triggers[] = {
    {
        // Trigger 1,
        .x = 10,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_15_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 8,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_16_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
