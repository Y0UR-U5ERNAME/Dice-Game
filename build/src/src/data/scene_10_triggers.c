#pragma bank 255

// Scene: Scene 5
// Triggers

#include "gbs_types.h"
#include "data/trigger_11_interact.h"
#include "data/trigger_14_interact.h"
#include "data/trigger_27_interact.h"
#include "data/trigger_28_interact.h"
#include "data/trigger_29_interact.h"
#include "data/trigger_30_interact.h"
#include "data/trigger_31_interact.h"
#include "data/trigger_32_interact.h"
#include "data/trigger_33_interact.h"

BANKREF(scene_10_triggers)

const struct trigger_t scene_10_triggers[] = {
    {
        // Trigger 1,
        .x = 8,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_11_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 14,
        .y = 6,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_14_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 4,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_27_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 6,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_28_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 8,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_29_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 6,
        .x = 6,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_30_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 7,
        .x = 12,
        .y = 10,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_31_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 8,
        .x = 10,
        .y = 8,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_32_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 9,
        .x = 10,
        .y = 12,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(trigger_33_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
