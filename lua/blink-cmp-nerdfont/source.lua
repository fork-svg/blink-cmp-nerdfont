-- blink-cmp-nerdfont source for blink.cmp v2
-- Nerd Font icon completion with Chinese pinyin support

--- @module 'blink.cmp'
--- @class blink.cmp.Source
local source = {}

local icons = require('blink-cmp-nerdfont.icons')

local default_config = {
  trigger = '\\nf',  -- Trigger sequence
  max_items = 100,   -- Maximum items to show
  show_category = true,  -- Show category in menu
  pinyin_enabled = true, -- Enable pinyin search
}

--- Create a new source instance
---@param opts table Source options from config
---@return table source
function source.new(opts)
  local self = setmetatable({}, { __index = source })
  self.config = vim.tbl_deep_extend('force', default_config, opts or {})
  self.trigger = self.config.trigger
  self.trigger_len = #self.trigger
  return self
end

--- Check if source is enabled in current context
---@return boolean
function source:enabled()
  return true
end

--- Get trigger characters for this source
---@return string[]
function source:get_trigger_characters()
  return { '\\', 'n', 'f' }
end

--- Get completions for the current context
---@param context blink.cmp.Context
---@param resolve fun(response?: blink.cmp.CompletionResponse)
function source:get_completions(context, resolve)
  local line = context.line
  local col = context.cursor[2]

  -- Check if we're after the trigger sequence
  local trigger_start = col - self.trigger_len
  if trigger_start < 0 then
    resolve({ items = {}, is_incomplete_forward = false, is_incomplete_backward = false })
    return
  end

  local before_trigger = line:sub(trigger_start + 1, col)
  if before_trigger ~= self.trigger then
    resolve({ items = {}, is_incomplete_forward = false, is_incomplete_backward = false })
    return
  end

  -- Get the keyword after the trigger
  local after_trigger = line:sub(col + 1)
  local keyword = after_trigger:match('^[%w_]*') or ''

  -- Search for matching icons
  local search_results = {}
  if keyword == '' then
    -- Show all icons if no keyword
    search_results = icons.data
  else
    search_results = icons.search(keyword)
  end

  -- Build completion items
  local items = {}
  local limit = math.min(#search_results, self.config.max_items)

  for i = 1, limit do
    local entry = search_results[i]
    local icon = entry[1]
    local name = entry[2]
    local description = entry[3]
    local category = entry[4] or ''

    -- Build label with icon and name
    local label = icon .. ' ' .. name

    -- Build menu text
    local menu = ''
    if self.config.show_category then
      menu = '[' .. category .. ']'
    end

    -- Create completion item
    --- @type lsp.CompletionItem
    local item = {
      label = label,
      kind = require('blink.cmp.types').CompletionItemKind.Text,
      filterText = name .. ' ' .. description,
      sortText = string.format('%04d', i),
      insertText = icon,
      insertTextFormat = vim.lsp.protocol.InsertTextFormat.PlainText,
      textEdit = {
        newText = icon,
        range = {
          start = { line = context.cursor[1] - 1, character = col + 1 },
          ['end'] = { line = context.cursor[1] - 1, character = col + 1 + #keyword },
        },
      },
      labelDetails = {
        detail = ' ' .. icon,
        description = menu,
      },
      data = {
        icon = icon,
        name = name,
        description = description,
        category = category,
      },
    }

    table.insert(items, item)
  end

  resolve({
    items = items,
    is_incomplete_forward = true,
    is_incomplete_backward = true,
  })
end

--- Resolve additional item details
---@param item lsp.CompletionItem
---@param resolve fun(item: lsp.CompletionItem)
function source:resolve(item, resolve)
  local data = item.data or {}

  -- Build documentation
  local doc_parts = {}
  table.insert(doc_parts, '# ' .. (data.name or 'Icon'))
  table.insert(doc_parts, '')
  table.insert(doc_parts, '## Preview')
  table.insert(doc_parts, '')
  table.insert(doc_parts, '```')
  table.insert(doc_parts, data.icon or '')
  table.insert(doc_parts, '```')
  table.insert(doc_parts, '')
  table.insert(doc_parts, '## Details')
  table.insert(doc_parts, '')
  table.insert(doc_parts, '- **Name**: `' .. (data.name or '') .. '`')
  table.insert(doc_parts, '- **Description**: ' .. (data.description or ''))
  table.insert(doc_parts, '- **Category**: ' .. (data.category or ''))
  table.insert(doc_parts, '')
  table.insert(doc_parts, '## Usage')
  table.insert(doc_parts, '')
  table.insert(doc_parts, 'Type `' .. self.trigger .. '` followed by a search term to find icons.')
  table.insert(doc_parts, 'Supports both English and Chinese pinyin.')

  item.documentation = {
    kind = 'markdown',
    value = table.concat(doc_parts, '\n'),
  }

  item.detail = data.icon .. ' ' .. data.description

  resolve(item)
end

return source
