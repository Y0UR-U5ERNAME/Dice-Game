#pragma bank 255

// Scene: L3
// Triggers

#include "gbs_types.h"
#include "data/trigger_5_interact.h"
#include "data/trigger_6_interact.h"
#include "data/trigger_8_interact.h"
#include "data/trigger_10_interact.h"
#include "data/trigger_12_interact.h"
#include "data/trigger_13_interact.h"
#include "data/trigger_7_interact.h"

BANKREF(scene_5_triggers)

const struct trigger_t scene_5_triggers[] = {
    {
        // Trigger 1,
        .x = 8,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_5_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 4,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_6_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 8,
        .y = 6,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_8_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 10,
        .y = 14,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_10_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 14,
        .y = 6,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_12_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .x = 12,
        .y = 6,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_13_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .x = 16,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_7_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
