#pragma bank 255

// Scene: L2
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"
#include "data/trigger_1_interact.h"
#include "data/trigger_2_interact.h"
#include "data/trigger_9_interact.h"

BANKREF(scene_4_triggers)

const struct trigger_t scene_4_triggers[] = {
    {
        // Trigger 1,
        .x = 8,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 14,
        .y = 6,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 14,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 14,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_9_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
