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
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 1,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 2,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 3,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 4,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 5,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 6,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 7,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 8,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 9,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 10,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 11,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 12,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 13,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 14,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 15,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 16,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 17,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 18,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 19,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 20,
          properties = {
            ["collidable"] = true,
            ["damaging"] = false
          }
        },
        {
          id = 21,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 22,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 23,
          properties = {
            ["collidable"] = true,
            ["damaging"] = true
          }
        },
        {
          id = 24,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 25,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
          }
        },
        {
          id = 26,
          properties = {
            ["collidable"] = false,
            ["damaging"] = false
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
      name = "tiles",
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
