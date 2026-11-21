# blink-cmp-nerdfont

> 🎨 Nerd Font 图标补全插件 - 支持 blink.cmp v2 和中文拼音搜索

[![Lua](https://img.shields.io/badge/Lua-5.1%2B-blue?logo=lua)](https://www.lua.org)
[![blink.cmp](https://img.shields.io/badge/blink.cmp-v2-green)](https://github.com/Saghen/blink.cmp)

## ✨ 特性

- 🚀 **blink.cmp v2 支持** - 完全兼容最新版 blink.cmp
- 🔤 **中文拼音搜索** - 输入拼音即可找到图标（如 `wenjian` → 📄）
- 📦 **300+ 图标** - 覆盖文件、语言、Git、UI、状态等分类
- 🎯 **智能过滤** - 支持英文和拼音混合搜索
- 📖 **详细文档** - 补全菜单显示图标预览和使用说明
- 🏷️ **分类显示** - 按类别组织，方便查找

## 📋 要求

- Neovim >= 0.10
- [blink.cmp](https://github.com/Saghen/blink.cmp) v2
- 已安装 [Nerd Font](https://www.nerdfonts.com/)

## 📦 安装

### lazy.nvim

```lua
{
  'saghen/blink.cmp',
  dependencies = {
    'fork-svg/blink-cmp-nerdfont',
  },
  opts = {
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'nerdfont' },
      providers = {
        nerdfont = {
          name = 'NerdFont',
          module = 'blink-cmp-nerdfont.source',
          enabled = true,
          opts = {
            trigger = '\\nf',  -- 触发序列
            max_items = 100,   -- 最大显示数量
            show_category = true,  -- 显示分类
            pinyin_enabled = true, -- 启用拼音搜索
          },
        },
      },
    },
  },
}
```

### packer.nvim

```lua
use {
  'saghen/blink.cmp',
  requires = { 'fork-svg/blink-cmp-nerdfont' },
  config = function()
    require('blink.cmp').setup({
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'nerdfont' },
        providers = {
          nerdfont = {
            name = 'NerdFont',
            module = 'blink-cmp-nerdfont.source',
            opts = {
              trigger = '\\nf',
            },
          },
        },
      },
    })
  end
}
```

## 🎯 使用方法

### 基本使用

1. 输入触发序列 `\nf`（默认为 `\nf`）
2. 开始输入搜索词（英文或拼音）
3. 从补全菜单选择图标

### 搜索示例

| 输入 | 结果 |
|------|------|
| `\nf file` | 文件相关图标 |
| `\nf wenjian` | 📄 文件图标（拼音） |
| `\nf git` | Git 相关图标 |
| `\nf fenzi` | 🔀 Git Fork（拼音） |
| `\nf python` | 🐍 Python 图标 |
| `\nf arrow` | 箭头图标 |
| `\nf zuo` | ← 左箭头（拼音） |
| `\nf clock` | ⏰ 时钟图标 |
| `\nf shizhong` | ⏰ 时钟图标（拼音） |

### 触发序列自定义

```lua
opts = {
  trigger = ':nf',  -- 改用 :nf 触发
  -- 或
  trigger = '<leader>n',  -- 使用 leader 键
}
```

## 📁 图标分类

| 分类 | 描述 | 示例 |
|------|------|------|
| `file` | 文件和文件夹 | 📄 📁 📂 |
| `lang` | 编程语言 | 🐍 🌙 💎 |
| `devops` | DevOps & 云 | 🐳 ☸️ ☁️ |
| `git` | Git 相关 | 🔀 📌 🏷️ |
| `editor` | 编辑器和 IDE | 💚 📘 |
| `terminal` | 终端 | 🖥️ |
| `web` | Web & 网络 | 🌐 🔗 📡 |
| `ui` | UI 元素 | 🔍 ⚙️ 🎨 |
| `status` | 状态和标记 | ✅ ❌ ⭐ |
| `arrow` | 箭头和导航 | ↑ ↓ ← → |
| `media` | 媒体控制 | ▶️ ⏸️ 🔊 |
| `action` | 操作 | ✏️ 🗑️ 💾 |
| `math` | 数学和逻辑 | ∞ π λ |
| `symbol` | 符号和装饰 | ⚡ 🔥 ☀️ |
| `time` | 时间和日历 | ⏰ 📅 |
| `user` | 用户和社交 | 👤 👥 💬 |
| `misc` | 其他 | 📦 💰 📊 |

## 🔤 拼音对照表

### 常用拼音

| 拼音 | 图标 | 说明 |
|------|------|------|
| `wenjian` | 📄 | 文件 |
| `mulu` / `wjj` | 📁 | 文件夹 |
| `daima` | 💻 | 代码 |
| `fenzi` | 🔀 | Fork |
| `hebing` | 🔀 | 合并 |
| `shujia` | 🌿 | 分支 |
| `laji` / `lajitong` | 🗑️ | 垃圾/删除 |
| `tijiao` | 📝 | 提交 |
| `biaoqian` | 🏷️ | 标签 |
| `bianji` | ✏️ | 编辑 |
| `shanchu` | 🗑️ | 删除 |
| `fuzhi` | 📋 | 复制 |
| `niantie` | 📋 | 粘贴 |
| `chazhao` / `sousuo` | 🔍 | 搜索 |
| `shezhi` | ⚙️ | 设置 |
| `yonghu` | 👤 | 用户 |
| `shizhong` | ⏰ | 时钟 |
| `rili` | 📅 | 日历 |
| `shandian` | ⚡ | 闪电 |
| `huoyan` | 🔥 | 火焰 |
| `taiyang` | ☀️ | 太阳 |
| `yueliang` | 🌙 | 月亮 |
| `xingxing` | ⭐ | 星星 |
| `xintai` | ❤️ | 心形 |

## 🔧 API

### 编程接口

```lua
local nerdfont = require('blink-cmp-nerdfont')

-- 获取图标
local icon = nerdfont.get_icon('python')  -- 返回 🐍
local icon = nerdfont.get_icon('python')  -- 拼音也支持

-- 搜索图标
local results = nerdfont.search('git')
-- 返回: { {icon, name, desc, category}, ... }

-- 获取分类
local categories = nerdfont.get_categories()
-- 返回: { 'file', 'lang', 'git', ... }

-- 按分类获取
local git_icons = nerdfont.get_by_category('git')
```

## 🎨 自定义

### 添加自定义图标

```lua
-- 在 setup 前添加
local icons = require('blink-cmp-nerdfont.icons')

-- 添加新图标
table.insert(icons.data, {
  '',     -- 图标字符
  'my_icon',  -- 名称
  'My Custom Icon',  -- 描述
  'misc'  -- 分类
})

-- 添加拼音别名
icons.pinyin_aliases['wode'] = 'my_icon'
```

### 修改触发方式

```lua
{
  nerdfont = {
    module = 'blink-cmp-nerdfont.source',
    opts = {
      trigger = ':icon:',  -- 使用 :icon: 触发
      max_items = 50,      -- 限制显示数量
      show_category = false,  -- 隐藏分类
    },
  },
}
```

## 🐛 故障排除

### 图标显示为方块

确保你已安装并配置 Nerd Font：
- 推荐: [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)
- 在终端和 Neovim 中使用同一字体

### 补全不触发

1. 检查触发序列是否正确（默认 `\nf`）
2. 确认 blink.cmp 已正确配置
3. 检查 sources.default 包含 'nerdfont'

```lua
-- 调试配置
vim.print(require('blink.cmp.config').sources)
```

## 📊 与旧版对比

| 特性 | blink-nerdfont (旧) | blink-cmp-nerdfont (新) |
|------|---------------------|-------------------------|
| blink.cmp v2 | ❌ | ✅ |
| 中文拼音 | ❌ | ✅ |
| 图标数量 | ~50 | 300+ |
| 分类系统 | ❌ | ✅ |
| 详细文档 | ❌ | ✅ |
| 编程接口 | 有限 | ✅ |

## 🔗 相关链接

- [blink.cmp](https://github.com/Saghen/blink.cmp) - 补全引擎
- [Nerd Fonts](https://www.nerdfonts.com/) - 图标字体
- [blink-cmp-emoji](https://github.com/fork-svg/blink-cmp-pinyin-emoji.nvim) - Emoji 补全插件

## 📝 License

MIT

---

Made with ❤️ for the Neovim community
