-- blink-cmp-nerdfont - Nerd Font icon completion for blink.cmp v2
-- Supports Chinese pinyin search

local M = {}

M.config = {
  trigger = '\\nf',
  max_items = 100,
  show_category = true,
  pinyin_enabled = true,
}

--- Setup the nerdfont source with blink.cmp
---@param opts? table Configuration options
function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', M.config, opts or {})

  -- Register source with blink.cmp
  require('blink.cmp').setup({
    sources = {
      providers = {
        nerdfont = {
          name = 'NerdFont',
          module = 'blink-cmp-nerdfont.source',
          enabled = true,
          opts = M.config,
        },
      },
    },
  })
end

--- Get the source module for manual configuration
---@return table source module
function M.get_source()
  return require('blink-cmp-nerdfont.source')
end

--- Get icon by name (supports English and pinyin)
---@param name string Icon name or pinyin
---@return string|nil icon
function M.get_icon(name)
  return require('blink-cmp-nerdfont.icons').get_icon(name)
end

--- Search icons by keyword
---@param query string Search query
---@return table[] results
function M.search(query)
  return require('blink-cmp-nerdfont.icons').search(query)
end

--- Get all available categories
---@return string[] categories
function M.get_categories()
  return require('blink-cmp-nerdfont.icons').get_categories()
end

--- Get icons by category
---@param category string Category name
---@return table[] icons
function M.get_by_category(category)
  return require('blink-cmp-nerdfont.icons').get_by_category(category)
end

return M
