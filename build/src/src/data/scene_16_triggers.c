#pragma bank 255

// Scene: Scene 2
// Triggers

#include "gbs_types.h"
#include "data/trigger_23_interact.h"
#include "data/trigger_26_interact.h"

BANKREF(scene_16_triggers)

const struct trigger_t scene_16_triggers[] = {
    {
        // Trigger 1,
        .x = 8,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_23_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 6,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_26_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
