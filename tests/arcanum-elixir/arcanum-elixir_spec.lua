require("plenary.reload").reload_module("arcanum-elixir", true)
local arcanum_elixir = require("arcanum-elixir")
local default = arcanum_elixir.config

local function clear_term_colors()
  for item = 0, 15 do
    vim.g["terminal_color_" .. item] = nil
  end
end

describe("tests", function()
  it("works with default values", function()
    arcanum_elixir.setup()
    assert.are.same(arcanum_elixir.config, default)
  end)

  it("works with config overrides", function()
    local expected = {
      terminal_colors = true,
      undercurl = false,
      underline = false,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      inverse = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      contrast = "",
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    }

    arcanum_elixir.setup({ undercurl = false, underline = false })
    assert.are.same(arcanum_elixir.config, expected)
  end)

  it("should override a hightlight color", function()
    local config = {
      overrides = {
        Search = { fg = "#ff9900", bg = "#000000" },
        ColorColumn = { bg = "#ff9900" },
      },
    }

    arcanum_elixir.setup(config)
    arcanum_elixir.load()

    local search_group_id = vim.api.nvim_get_hl_id_by_name("Search")
    local search_values = {
      background = vim.fn.synIDattr(search_group_id, "bg", "gui"),
      foreground = vim.fn.synIDattr(search_group_id, "fg", "gui"),
    }

    assert.are.same(search_values, { background = "#000000", foreground = "#ff9900" })

    local color_column_group_id = vim.api.nvim_get_hl_id_by_name("ColorColumn")
    local color_column_values = {
      background = vim.fn.synIDattr(color_column_group_id, "bg", "gui"),
    }

    assert.are.same(color_column_values, { background = "#ff9900" })
  end)

  it("should create new hightlights colors if they dont exist", function()
    local config = {
      overrides = {
        Search = { fg = "#ff9900", bg = "#000000" },
        New = { bg = "#ff9900" },
      },
    }

    arcanum_elixir.setup(config)
    arcanum_elixir.load()

    local search_group_id = vim.api.nvim_get_hl_id_by_name("Search")
    local search_values = {
      background = vim.fn.synIDattr(search_group_id, "bg", "gui"),
      foreground = vim.fn.synIDattr(search_group_id, "fg", "gui"),
    }

    assert.are.same(search_values, { background = "#000000", foreground = "#ff9900" })

    local new_group_id = vim.api.nvim_get_hl_id_by_name("New")
    local new_group_values = {
      background = vim.fn.synIDattr(new_group_id, "bg", "gui"),
    }

    assert.are.same(new_group_values, { background = "#ff9900" })
  end)

  it("should override links", function()
    local config = {
      overrides = {
        TelescopePreviewBorder = { fg = "#990000", bg = nil },
      },
    }
    arcanum_elixir.setup(config)
    arcanum_elixir.load()

    local group_id = vim.api.nvim_get_hl_id_by_name("TelescopePreviewBorder")
    local values = {
      fg = vim.fn.synIDattr(group_id, "fg", "gui"),
    }

    local expected = {
      fg = "#990000",
    }
    assert.are.same(expected, values)
  end)

  it("should override palette", function()
    local config = {
      palette_overrides = {
        gray = "#ff9900",
        dark_gray = "#ff9900", -- For dark theme
      },
    }

    -- Test with light background
    vim.opt.background = "light"
    arcanum_elixir.setup(config)
    arcanum_elixir.load()

    local group_id = vim.api.nvim_get_hl_id_by_name("Comment")
    local values = {
      fg = vim.fn.synIDattr(group_id, "fg", "gui"):lower(),
    }
    assert.are.same(values, { fg = "#ff9900" })

    -- Test with dark background
    vim.opt.background = "dark"
    arcanum_elixir.setup(config)
    arcanum_elixir.load()

    local dark_group_id = vim.api.nvim_get_hl_id_by_name("Comment")
    local dark_values = {
      fg = vim.fn.synIDattr(dark_group_id, "fg", "gui"):lower(),
    }
    assert.are.same(dark_values, { fg = "#ff9900" })
  end)

  it("does not set terminal colors when terminal_colors is false", function()
    clear_term_colors()
    arcanum_elixir.setup({ terminal_colors = false })
    arcanum_elixir.load()
    assert.is_nil(vim.g.terminal_color_0)
  end)

  it("sets terminal colors when terminal_colors is true", function()
    clear_term_colors()
    arcanum_elixir.setup({ terminal_colors = true })

    -- light bg
    vim.opt.background = "light"
    arcanum_elixir.load()
    local colors = require("arcanum_elixir").palette
    assert.are.same(vim.g.terminal_color_0, colors.light0)

    -- dark bg
    clear_term_colors()
    vim.opt.background = "dark"
    arcanum_elixir.load()
    assert.are.same(vim.g.terminal_color_0, colors.dark_bg0)
  end)

  it("works with dark theme colors", function()
    vim.opt.background = "dark"
    arcanum_elixir.setup({ terminal_colors = false })
    arcanum_elixir.load()

    local normal_group_id = vim.api.nvim_get_hl_id_by_name("Normal")
    local normal_bg = vim.fn.synIDattr(normal_group_id, "bg", "gui"):lower()
    local normal_fg = vim.fn.synIDattr(normal_group_id, "fg", "gui"):lower()

    -- Should use dark theme colors
    local colors = require("arcanum_elixir").palette
    assert.are.same(normal_bg, colors.dark_bg0:lower())
    assert.are.same(normal_fg, colors.light_fg1:lower())
  end)

  it("works with light theme colors", function()
    vim.opt.background = "light"
    arcanum_elixir.setup({ terminal_colors = false })
    arcanum_elixir.load()

    local normal_group_id = vim.api.nvim_get_hl_id_by_name("Normal")
    local normal_bg = vim.fn.synIDattr(normal_group_id, "bg", "gui"):lower()
    local normal_fg = vim.fn.synIDattr(normal_group_id, "fg", "gui"):lower()

    -- Should use light theme colors
    local colors = require("arcanum_elixir").palette
    assert.are.same(normal_bg, colors.light0:lower())
    assert.are.same(normal_fg, colors.dark1:lower())
  end)
end)
