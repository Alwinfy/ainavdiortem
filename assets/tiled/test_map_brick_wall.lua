return {
  version = "1.4",
  luaversion = "5.1",
  tiledversion = "2021.01.13",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 10,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 3,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "brick",
      firstgid = 1,
      filename = "brick.tsx"
    },
    {
      name = "wall",
      firstgid = 10,
      filename = "wall.tsx"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      id = 2,
      name = "Tile Layer 2",
      visible = true,
      opacity = 0.4,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        10, 11, 11, 11, 11, 11, 11, 11, 11, 12,
        10, 14, 14, 14, 14, 14, 14, 14, 14, 15,
        10, 14, 14, 14, 14, 14, 14, 14, 14, 15,
        10, 14, 14, 14, 14, 14, 14, 14, 14, 15,
        10, 14, 14, 14, 14, 14, 14, 14, 14, 15,
        10, 14, 14, 14, 14, 14, 14, 14, 14, 15,
        10, 14, 14, 14, 14, 14, 14, 14, 0, 0,
        10, 14, 14, 14, 14, 14, 0, 0, 0, 0,
        10, 14, 14, 14, 14, 14, 14, 14, 0, 0,
        16, 17, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1, 3,
        0, 0, 0, 0, 0, 0, 1, 2, 5, 6,
        0, 0, 0, 0, 1, 2, 5, 5, 5, 6,
        0, 0, 8, 8, 8, 8, 8, 8, 8, 9
      }
    }
  }
}
