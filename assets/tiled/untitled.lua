return {
  version = "1.4",
  luaversion = "5.1",
  tiledversion = "1.4.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 2,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "textures",
      firstgid = 1,
      filename = "textures.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 9,
      image = "textures.png",
      imagewidth = 144,
      imageheight = 48,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 27,
      tiles = {
        {
          id = 0,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 1,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 2,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 3,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 4,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 5,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 6,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 7,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 8,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 9,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 10,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 11,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 12,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 13,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 14,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 15,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 16,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 17,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 18,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 19,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 20,
          properties = {
            ["damaging"] = false,
            ["solid"] = true
          }
        },
        {
          id = 21,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 22,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 23,
          properties = {
            ["damaging"] = true,
            ["solid"] = true
          }
        },
        {
          id = 24,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 25,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        },
        {
          id = 26,
          properties = {
            ["damaging"] = false,
            ["solid"] = false
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 10,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 14, 14, 14, 14, 14, 0, 0,
        0, 0, 0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 11, 11, 11, 11, 11, 11, 11,
        0, 0, 0, 17, 17, 17, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
        0, 0, 0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 24,
        0, 0, 0, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 24,
        11, 11, 11, 11, 11, 11, 11, 11, 17, 17, 17, 11, 11, 11, 11, 11, 11, 11, 11, 11,
        11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
        11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11
      }
    }
  }
}
