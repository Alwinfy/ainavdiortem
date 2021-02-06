return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 3,
  nextobjectid = 18,
  properties = {},
  tilesets = {
    {
      name = "tileset",
      firstgid = 1,
      filename = "tileset.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 9,
      image = "textures.png",
      imagewidth = 144,
      imageheight = 48,
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
      id = 1,
      name = "tiles",
      x = 0,
      y = 0,
      width = 20,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 15,
        16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 15,
        16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 15,
        16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 15,
        16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 15,
        16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 26, 26, 26, 26, 26, 15,
        16, 17, 17, 17, 17, 26, 26, 26, 26, 14, 26, 26, 26, 27, 1, 2, 2, 2, 2, 3,
        16, 17, 26, 26, 27, 1, 2, 2, 2, 2, 2, 2, 2, 2, 11, 11, 11, 11, 11, 12,
        25, 27, 2, 2, 2, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12,
        1, 2, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21
      }
    }
  }
}