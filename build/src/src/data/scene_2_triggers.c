#pragma bank 255

// Scene: Scene 2
// Triggers

#include "gbs_types.h"
#include "data/trigger_3_interact.h"
#include "data/trigger_4_interact.h"

BANKREF(scene_2_triggers)

const struct trigger_t scene_2_triggers[] = {
    {
        // Trigger 1,
        .x = 14,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 8,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
