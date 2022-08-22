export const id = "EVENT_GET_TILE_XY";
export const name = "get tile xy";

export const fields = [
  {
    key: "v1",
    type: "variable",
    defaultValue: "LAST_VARIABLE",
  },
  {
    key: "v2",
    type: "variable",
    defaultValue: "LAST_VARIABLE",
  },
  {
    key: "v3",
    type: "variable",
    defaultValue: "LAST_VARIABLE",
  },
];

export const compile = (input, helpers) => {
  const { _addCmd, getVariableAlias } = helpers;
  const {v1, v2, v3} = input;
  
  _addCmd("VM_GET_TILE_XY", getVariableAlias(v1), getVariableAlias(v2), getVariableAlias(v3))
};