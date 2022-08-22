#pragma bank 255

// Scene: Scene 2
// Triggers

#include "gbs_types.h"
#include "data/trigger_17_interact.h"
#include "data/trigger_18_interact.h"
#include "data/trigger_19_interact.h"
#include "data/trigger_20_interact.h"
#include "data/trigger_21_interact.h"

BANKREF(scene_14_triggers)

const struct trigger_t scene_14_triggers[] = {
    {
        // Trigger 1,
        .x = 10,
        .y = 6,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_17_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 12,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_18_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 6,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_19_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 10,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_20_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 8,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_21_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
