# general setup
TILE_SIZE = 64
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
ANIMATION_SPEED = 8

# editor graphics
EDITOR_DATA = {
  0 => {style: "player", type: "object", menu: nil, menu_surf: nil, preview: nil, graphics: "sprites/player/idle_right"},
  1 => {style: "sky", type: "object", menu: nil, menu_surf: nil, preview: nil, graphics: nil},

  2 => {style: "terrain", type: "tile", menu: "terrain", menu_surf: "sprites/menu/land.png", preview: "sprites/preview/land.png", graphics: nil},
  3 => {style: "water", type: "tile", menu: "terrain", menu_surf: "sprites/menu/water.png", preview: "sprites/preview/water.png", graphics: "sprites/terrain/water/animation"},

  4 => {style: "coin", type: "tile", menu: "coin", menu_surf: "sprites/menu/gold.png", preview: "sprites/preview/gold.png", graphics: "sprites/items/gold"},
  5 => {style: "coin", type: "tile", menu: "coin", menu_surf: "sprites/menu/silver.png", preview: "sprites/preview/silver.png", graphics: "sprites/items/silver"},
  6 => {style: "coin", type: "tile", menu: "coin", menu_surf: "sprites/menu/diamond.png", preview: "sprites/preview/diamond.png", graphics: "sprites/items/diamond"},

  7 => {style: "enemy", type: "tile", menu: "enemy", menu_surf: "sprites/menu/spikes.png", preview: "sprites/preview/spikes.png", graphics: "sprites/enemies/spikes"},
  8 => {style: "enemy", type: "tile", menu: "enemy", menu_surf: "sprites/menu/tooth.png", preview: "sprites/preview/tooth.png", graphics: "sprites/enemies/tooth/idle"},
  9 => {style: "enemy", type: "tile", menu: "enemy", menu_surf: "sprites/menu/shell_left.png", preview: "sprites/preview/shell_left.png", graphics: "sprites/enemies/shell_left/idle"},
  10 => {style: "enemy", type: "tile", menu: "enemy", menu_surf: "sprites/menu/shell_right.png", preview: "sprites/preview/shell_right.png", graphics: "sprites/enemies/shell_right/idle"},

  11 => {style: "palm_fg", type: "object", menu: "palm fg", menu_surf: "sprites/menu/small_fg.png", preview: "sprites/preview/small_fg.png", graphics: "sprites/terrain/palm/small_fg"},
  12 => {style: "palm_fg", type: "object", menu: "palm fg", menu_surf: "sprites/menu/large_fg.png", preview: "sprites/preview/large_fg.png", graphics: "sprites/terrain/palm/large_fg"},
  13 => {style: "palm_fg", type: "object", menu: "palm fg", menu_surf: "sprites/menu/left_fg.png", preview: "sprites/preview/left_fg.png", graphics: "sprites/terrain/palm/left_fg"},
  14 => {style: "palm_fg", type: "object", menu: "palm fg", menu_surf: "sprites/menu/right_fg.png", preview: "sprites/preview/right_fg.png", graphics: "sprites/terrain/palm/right_fg"},

  15 => {style: "palm_bg", type: "object", menu: "palm bg", menu_surf: "sprites/menu/small_bg.png", preview: "sprites/preview/small_bg.png", graphics: "sprites/terrain/palm/small_bg"},
  16 => {style: "palm_bg", type: "object", menu: "palm bg", menu_surf: "sprites/menu/large_bg.png", preview: "sprites/preview/large_bg.png", graphics: "sprites/terrain/palm/large_bg"},
  17 => {style: "palm_bg", type: "object", menu: "palm bg", menu_surf: "sprites/menu/left_bg.png", preview: "sprites/preview/left_bg.png", graphics: "sprites/terrain/palm/left_bg"},
  18 => {style: "palm_bg", type: "object", menu: "palm bg", menu_surf: "sprites/menu/right_bg.png", preview: "sprites/preview/right_bg.png", graphics: "sprites/terrain/palm/right_bg"}
}

NEIGHBOR_DIRECTIONS = {
  "A" => [0, -1],
  "B" => [1, -1],
  "C" => [1, 0],
  "D" => [1, 1],
  "E" => [0, 1],
  "F" => [-1, 1],
  "G" => [-1, 0],
  "H" => [-1, -1]
}

LEVEL_LAYERS = {
  clouds: 1,
  ocean: 2,
  bg: 3,
  water: 4,
  main: 5
}

SKY_COLOR = [221, 198, 161] # #ddc6a1
SEA_COLOR = [146, 169, 206] # #92a9ce
HORIZON_COLOR = [245, 241, 222] # #f5f1de
HORIZON_TOP_COLOR = [209, 170, 157] # #d1aa9d
LINE_COLOR = [17, 24, 39] # #111827
BUTTON_BG_COLOR = [51, 50, 61] # #33323d
BUTTON_LINE_COLOR = [245, 241, 222] # #f5f1de
