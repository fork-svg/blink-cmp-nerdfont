-- Nerd Font Icons for blink.cmp
-- Format: { icon, name, description, category }
local M = {}

M.data = {
  -- File Types
  { "", "file", "File", "file" },
  { "", "file_document", "Document File", "file" },
  { "", "file_code", "Code File", "file" },
  { "", "file_source", "Source File", "file" },
  { "", "file_mute", "Muted File", "file" },
  { "", "file_directory", "Directory", "file" },
  { "", "folder", "Folder", "file" },
  { "", "folder_open", "Open Folder", "file" },
  { "", "folder_filled", "Folder (filled)", "file" },
  { "", "folder_open_filled", "Open Folder (filled)", "file" },
  { "", "folder_config", "Config Folder", "file" },
  { "", "folder_git", "Git Folder", "file" },
  { "", "folder_github", "GitHub Folder", "file" },
  { "", "folder_node", "Node Folder", "file" },
  { "", "folder_npm", "NPM Folder", "file" },
  { "", "folder_src", "Source Folder", "file" },
  { "", "folder_test", "Test Folder", "file" },
  { "", "folder_build", "Build Folder", "file" },

  -- Programming Languages
  { "", "lua", "Lua", "lang" },
  { "", "python", "Python", "lang" },
  { "", "javascript", "JavaScript", "lang" },
  { "", "typescript", "TypeScript", "lang" },
  { "", "html5", "HTML5", "lang" },
  { "", "css3", "CSS3", "lang" },
  { "", "sass", "Sass", "lang" },
  { "", "json", "JSON", "lang" },
  { "", "yaml", "YAML", "lang" },
  { "", "xml", "XML", "lang" },
  { "", "markdown", "Markdown", "lang" },
  { "", "rust", "Rust", "lang" },
  { "", "go", "Go", "lang" },
  { "", "java", "Java", "lang" },
  { "", "c", "C", "lang" },
  { "", "cpp", "C++", "lang" },
  { "", "csharp", "C#", "lang" },
  { "", "ruby", "Ruby", "lang" },
  { "", "php", "PHP", "lang" },
  { "", "swift", "Swift", "lang" },
  { "", "kotlin", "Kotlin", "lang" },
  { "", "scala", "Scala", "lang" },
  { "", "haskell", "Haskell", "lang" },
  { "", "elixir", "Elixir", "lang" },
  { "", "erlang", "Erlang", "lang" },
  { "", "clojure", "Clojure", "lang" },
  { "", "fsharp", "F#", "lang" },
  { "", "r", "R", "lang" },
  { "", "julia", "Julia", "lang" },
  { "", "perl", "Perl", "lang" },
  { "", "perl6", "Perl 6", "lang" },
  { "", "bash", "Bash", "lang" },
  { "", "powershell", "PowerShell", "lang" },
  { "", "shell", "Shell", "lang" },
  { "", "vim", "Vim", "lang" },
  { "", "dart", "Dart", "lang" },
  { "", "zig", "Zig", "lang" },
  { "", "nim", "Nim", "lang" },
  { "", "ocaml", "OCaml", "lang" },
  { "", "lua_alt", "Lua (alt)", "lang" },
  { "", "vue", "Vue", "lang" },
  { "", "angular", "Angular", "lang" },
  { "", "react", "React", "lang" },
  { "", "svelte", "Svelte", "lang" },

  -- DevOps & Cloud
  { "", "docker", "Docker", "devops" },
  { "", "kubernetes", "Kubernetes", "devops" },
  { "", "aws", "AWS", "devops" },
  { "", "azure", "Azure", "devops" },
  { "", "gcp", "Google Cloud", "devops" },
  { "", "terraform", "Terraform", "devops" },
  { "", "ansible", "Ansible", "devops" },
  { "", "jenkins", "Jenkins", "devops" },
  { "", "gitlab", "GitLab", "devops" },
  { "", "github", "GitHub", "devops" },
  { "", "bitbucket", "Bitbucket", "devops" },
  { "", "circleci", "CircleCI", "devops" },
  { "", "travis", "Travis CI", "devops" },
  { "", "heroku", "Heroku", "devops" },
  { "", "vercel", "Vercel", "devops" },
  { "", "netlify", "Netlify", "devops" },

  -- Git
  { "", "git", "Git", "git" },
  { "", "git_branch", "Branch", "git" },
  { "", "git_commit", "Commit", "git" },
  { "", "git_compare", "Compare", "git" },
  { "", "git_merge", "Merge", "git" },
  { "", "git_pull_request", "Pull Request", "git" },
  { "", "git_pull_request_draft", "Draft PR", "git" },
  { "", "git_pull_request_closed", "Closed PR", "git" },
  { "", "git_pull_request_new", "New PR", "git" },
  { "", "git_fork", "Fork", "git" },
  { "", "git_add", "Git Add", "git" },
  { "", "git_delete", "Git Delete", "git" },
  { "", "git_rename", "Git Rename", "git" },
  { "", "git_copy", "Git Copy", "git" },
  { "", "git_commit_alt", "Commit (alt)", "git" },
  { "", "git_revert", "Revert", "git" },
  { "", "git_untracked", "Untracked", "git" },
  { "", "git_ignored", "Ignored", "git" },
  { "", "git_staged", "Staged", "git" },
  { "", "git_modified", "Modified", "git" },
  { "", "git_stash", "Stash", "git" },
  { "", "git_stash_apply", "Stash Apply", "git" },
  { "", "git_tag", "Tag", "git" },
  { "", "git_release", "Release", "git" },

  -- Editors & IDEs
  { "", "neovim", "Neovim", "editor" },
  { "", "vscode", "VS Code", "editor" },
  { "", "vscode_insiders", "VS Code Insiders", "editor" },
  { "", "vim", "Vim", "editor" },
  { "", "emacs", "Emacs", "editor" },
  { "", "jetbrains", "JetBrains", "editor" },
  { "", "intellij", "IntelliJ", "editor" },
  { "", "pycharm", "PyCharm", "editor" },
  { "", "webstorm", "WebStorm", "editor" },
  { "", "goland", "GoLand", "editor" },
  { "", "phpstorm", "PhpStorm", "editor" },
  { "", "rubymine", "RubyMine", "editor" },
  { "", "clion", "CLion", "editor" },
  { "", "rider", "Rider", "editor" },
  { "", "rustrover", "RustRover", "editor" },

  -- Terminals
  { "", "terminal", "Terminal", "terminal" },
  { "", "bash", "Bash", "terminal" },
  { "", "fish", "Fish", "terminal" },
  { "", "zsh", "Zsh", "terminal" },
  { "", "powershell", "PowerShell", "terminal" },
  { "", "cmd", "CMD", "terminal" },
  { "", "screen", "Screen", "terminal" },
  { "", "tmux", "Tmux", "terminal" },
  { "", "alacritty", "Alacritty", "terminal" },
  { "", "iterm", "iTerm2", "terminal" },
  { "", "hyper", "Hyper", "terminal" },
  { "", "wezterm", "WezTerm", "terminal" },
  { "", "kitty", "Kitty", "terminal" },
  { "", "tabby", "Tabby", "terminal" },

  -- Web & Network
  { "", "globe", "Globe", "web" },
  { "", "link", "Link", "web" },
  { "", "link_alt", "Link (alt)", "web" },
  { "", "unlink", "Unlink", "web" },
  { "", "rss", "RSS", "web" },
  { "", "mail", "Email", "web" },
  { "", "mail_open", "Open Mail", "web" },
  { "", "inbox", "Inbox", "web" },
  { "", "server", "Server", "web" },
  { "", "database", "Database", "web" },
  { "", "firewall", "Firewall", "web" },
  { "", "cloud", "Cloud", "web" },
  { "", "cloud_download", "Cloud Download", "web" },
  { "", "cloud_upload", "Cloud Upload", "web" },
  { "", "wifi", "WiFi", "web" },
  { "", "bluetooth", "Bluetooth", "web" },
  { "", "usb", "USB", "web" },
  { "", "network", "Network", "web" },
  { "", "api", "API", "web" },
  { "", "graphql", "GraphQL", "web" },
  { "", "rest", "REST", "web" },
  { "", "websocket", "WebSocket", "web" },

  -- UI Elements
  { "", "search", "Search", "ui" },
  { "", "filter", "Filter", "ui" },
  { "", "sort", "Sort", "ui" },
  { "", "refresh", "Refresh", "ui" },
  { "", "reload", "Reload", "ui" },
  { "", "settings", "Settings", "ui" },
  { "", "gear", "Gear", "ui" },
  { "", "cog", "Cog", "ui" },
  { "", "wrench", "Wrench", "ui" },
  { "", "hammer", "Hammer", "ui" },
  { "", "tool", "Tool", "ui" },
  { "", "tools", "Tools", "ui" },
  { "", "brush", "Brush", "ui" },
  { "", "palette", "Palette", "ui" },
  { "", "color", "Color", "ui" },
  { "", "theme", "Theme", "ui" },
  { "", "layout", "Layout", "ui" },
  { "", "grid", "Grid", "ui" },
  { "", "list", "List", "ui" },
  { "", "table", "Table", "ui" },
  { "", "menu", "Menu", "ui" },
  { "", "sidebar", "Sidebar", "ui" },
  { "", "panel", "Panel", "ui" },
  { "", "window", "Window", "ui" },
  { "", "tab", "Tab", "ui" },
  { "", "button", "Button", "ui" },
  { "", "checkbox", "Checkbox", "ui" },
  { "", "radio", "Radio", "ui" },
  { "", "input", "Input", "ui" },
  { "", "form", "Form", "ui" },
  { "", "dialog", "Dialog", "ui" },
  { "", "modal", "Modal", "ui" },
  { "", "toast", "Toast", "ui" },
  { "", "notification", "Notification", "ui" },
  { "", "alert", "Alert", "ui" },
  { "", "bell", "Bell", "ui" },
  { "", "bell_off", "Bell Off", "ui" },
  { "", "info", "Info", "ui" },
  { "", "warning", "Warning", "ui" },
  { "", "error", "Error", "ui" },
  { "", "success", "Success", "ui" },
  { "", "question", "Question", "ui" },
  { "", "help", "Help", "ui" },

  -- Status & States
  { "", "check", "Check", "status" },
  { "", "check_circle", "Check Circle", "status" },
  { "", "close", "Close", "status" },
  { "", "close_circle", "Close Circle", "status" },
  { "", "plus", "Plus", "status" },
  { "", "plus_circle", "Plus Circle", "status" },
  { "", "minus", "Minus", "status" },
  { "", "minus_circle", "Minus Circle", "status" },
  { "", "star", "Star", "status" },
  { "", "star_filled", "Star (filled)", "status" },
  { "", "heart", "Heart", "status" },
  { "", "heart_filled", "Heart (filled)", "status" },
  { "", "bookmark", "Bookmark", "status" },
  { "", "bookmark_filled", "Bookmark (filled)", "status" },
  { "", "flag", "Flag", "status" },
  { "", "flag_filled", "Flag (filled)", "status" },
  { "", "pin", "Pin", "status" },
  { "", "lock", "Lock", "status" },
  { "", "unlock", "Unlock", "status" },
  { "", "key", "Key", "status" },
  { "", "shield", "Shield", "status" },
  { "", "eye", "Eye", "status" },
  { "", "eye_off", "Eye Off", "status" },
  { "", "visible", "Visible", "status" },
  { "", "hidden", "Hidden", "status" },
  { "", "loading", "Loading", "status" },
  { "", "spinner", "Spinner", "status" },
  { "", "sync", "Sync", "status" },
  { "", "sync_alt", "Sync (alt)", "status" },
  { "", "progress", "Progress", "status" },
  { "", "pending", "Pending", "status" },
  { "", "active", "Active", "status" },
  { "", "inactive", "Inactive", "status" },
  { "", "online", "Online", "status" },
  { "", "offline", "Offline", "status" },

  -- Arrows & Navigation
  { "", "arrow_up", "Arrow Up", "arrow" },
  { "", "arrow_down", "Arrow Down", "arrow" },
  { "", "arrow_left", "Arrow Left", "arrow" },
  { "", "arrow_right", "Arrow Right", "arrow" },
  { "", "arrow_up_left", "Arrow Up Left", "arrow" },
  { "", "arrow_up_right", "Arrow Up Right", "arrow" },
  { "", "arrow_down_left", "Arrow Down Left", "arrow" },
  { "", "arrow_down_right", "Arrow Down Right", "arrow" },
  { "", "arrow_both", "Arrow Both", "arrow" },
  { "", "double_arrow_up", "Double Arrow Up", "arrow" },
  { "", "double_arrow_down", "Double Arrow Down", "arrow" },
  { "", "double_arrow_left", "Double Arrow Left", "arrow" },
  { "", "double_arrow_right", "Double Arrow Right", "arrow" },
  { "", "return", "Return", "arrow" },
  { "", "undo", "Undo", "arrow" },
  { "", "redo", "Redo", "arrow" },
  { "", "expand", "Expand", "arrow" },
  { "", "collapse", "Collapse", "arrow" },
  { "", "fullscreen", "Fullscreen", "arrow" },
  { "", "exit_fullscreen", "Exit Fullscreen", "arrow" },
  { "", "chevron_up", "Chevron Up", "arrow" },
  { "", "chevron_down", "Chevron Down", "arrow" },
  { "", "chevron_left", "Chevron Left", "arrow" },
  { "", "chevron_right", "Chevron Right", "arrow" },
  { "", "caret_up", "Caret Up", "arrow" },
  { "", "caret_down", "Caret Down", "arrow" },
  { "", "caret_left", "Caret Left", "arrow" },
  { "", "caret_right", "Caret Right", "arrow" },
  { "", "triangle_up", "Triangle Up", "arrow" },
  { "", "triangle_down", "Triangle Down", "arrow" },
  { "", "triangle_left", "Triangle Left", "arrow" },
  { "", "triangle_right", "Triangle Right", "arrow" },

  -- Media & Audio/Video
  { "", "play", "Play", "media" },
  { "", "pause", "Pause", "media" },
  { "", "stop", "Stop", "media" },
  { "", "record", "Record", "media" },
  { "", "skip_forward", "Skip Forward", "media" },
  { "", "skip_back", "Skip Back", "media" },
  { "", "fast_forward", "Fast Forward", "media" },
  { "", "rewind", "Rewind", "media" },
  { "", "volume", "Volume", "media" },
  { "", "volume_mute", "Volume Mute", "media" },
  { "", "volume_low", "Volume Low", "media" },
  { "", "volume_high", "Volume High", "media" },
  { "", "mic", "Microphone", "media" },
  { "", "mic_mute", "Mic Mute", "media" },
  { "", "camera", "Camera", "media" },
  { "", "video", "Video", "media" },
  { "", "film", "Film", "media" },
  { "", "music", "Music", "media" },
  { "", "headphones", "Headphones", "media" },
  { "", "speaker", "Speaker", "media" },
  { "", "radio", "Radio", "media" },
  { "", "podcast", "Podcast", "media" },
  { "", "broadcast", "Broadcast", "media" },
  { "", "live", "Live", "media" },

  -- Actions
  { "", "edit", "Edit", "action" },
  { "", "delete", "Delete", "action" },
  { "", "trash", "Trash", "action" },
  { "", "restore", "Restore", "action" },
  { "", "copy", "Copy", "action" },
  { "", "paste", "Paste", "action" },
  { "", "cut", "Cut", "action" },
  { "", "save", "Save", "action" },
  { "", "download", "Download", "action" },
  { "", "upload", "Upload", "action" },
  { "", "import", "Import", "action" },
  { "", "export", "Export", "action" },
  { "", "share", "Share", "action" },
  { "", "send", "Send", "action" },
  { "", "print", "Print", "action" },
  { "", "scan", "Scan", "action" },
  { "", "preview", "Preview", "action" },
  { "", "open", "Open", "action" },
  { "", "close_tab", "Close Tab", "action" },
  { "", "new_file", "New File", "action" },
  { "", "new_folder", "New Folder", "action" },
  { "", "rename", "Rename", "action" },
  { "", "move", "Move", "action" },
  { "", "archive", "Archive", "action" },
  { "", "compress", "Compress", "action" },
  { "", "extract", "Extract", "action" },
  { "", "zip", "ZIP", "action" },
  { "", "unzip", "Unzip", "action" },
  { "", "install", "Install", "action" },
  { "", "uninstall", "Uninstall", "action" },
  { "", "update", "Update", "action" },
  { "", "upgrade", "Upgrade", "action" },
  { "", "deploy", "Deploy", "action" },
  { "", "publish", "Publish", "action" },
  { "", "build", "Build", "action" },
  { "", "run", "Run", "action" },
  { "", "debug", "Debug", "action" },
  { "", "test", "Test", "action" },
  { "", "lint", "Lint", "action" },
  { "", "format", "Format", "action" },

  -- Math & Logic
  { "", "infinity", "Infinity", "math" },
  { "", "pi", "Pi", "math" },
  { "", "sigma", "Sigma", "math" },
  { "", "lambda", "Lambda", "math" },
  { "", "delta", "Delta", "math" },
  { "", "theta", "Theta", "math" },
  { "", "omega", "Omega", "math" },
  { "", "alpha", "Alpha", "math" },
  { "", "beta", "Beta", "math" },
  { "", "gamma", "Gamma", "math" },
  { "", "function", "Function", "math" },
  { "", "variable", "Variable", "math" },
  { "", "constant", "Constant", "math" },
  { "", "operator", "Operator", "math" },
  { "", "percent", "Percent", "math" },
  { "", "hash", "Hash", "math" },
  { "", "ampersand", "Ampersand", "math" },
  { "", "at", "At", "math" },
  { "", "asterisk", "Asterisk", "math" },
  { "", "tilde", "Tilde", "math" },

  -- Symbols & Decorations
  { "", "fire", "Fire", "symbol" },
  { "", "zap", "Zap/Lightning", "symbol" },
  { "", "lightning", "Lightning", "symbol" },
  { "", "sun", "Sun", "symbol" },
  { "", "moon", "Moon", "symbol" },
  { "", "star_symbol", "Star Symbol", "symbol" },
  { "", "sparkle", "Sparkle", "symbol" },
  { "", "gem", "Gem", "symbol" },
  { "", "diamond", "Diamond", "symbol" },
  { "", "circle", "Circle", "symbol" },
  { "", "circle_filled", "Circle (filled)", "symbol" },
  { "", "square", "Square", "symbol" },
  { "", "square_filled", "Square (filled)", "symbol" },
  { "", "triangle", "Triangle", "symbol" },
  { "", "triangle_filled", "Triangle (filled)", "symbol" },
  { "", "hexagon", "Hexagon", "symbol" },
  { "", "hexagon_filled", "Hexagon (filled)", "symbol" },
  { "", "octagon", "Octagon", "symbol" },
  { "", "octagon_filled", "Octagon (filled)", "symbol" },
  { "", "cross", "Cross", "symbol" },
  { "", "skull", "Skull", "symbol" },
  { "", "ghost", "Ghost", "symbol" },
  { "", "robot", "Robot", "symbol" },
  { "", "alien", "Alien", "symbol" },
  { "", "bug", "Bug", "symbol" },
  { "", "rocket", "Rocket", "symbol" },
  { "", "ufo", "UFO", "symbol" },
  { "", "planet", "Planet", "symbol" },
  { "", "comet", "Comet", "symbol" },

  -- Time & Calendar
  { "", "clock", "Clock", "time" },
  { "", "alarm", "Alarm", "time" },
  { "", "timer", "Timer", "time" },
  { "", "stopwatch", "Stopwatch", "time" },
  { "", "calendar", "Calendar", "time" },
  { "", "date", "Date", "time" },
  { "", "schedule", "Schedule", "time" },
  { "", "deadline", "Deadline", "time" },
  { "", "history", "History", "time" },
  { "", "future", "Future", "time" },
  { "", "now", "Now", "time" },
  { "", "today", "Today", "time" },

  -- User & Social
  { "", "user", "User", "user" },
  { "", "user_add", "User Add", "user" },
  { "", "user_remove", "User Remove", "user" },
  { "", "users", "Users", "user" },
  { "", "team", "Team", "user" },
  { "", "organization", "Organization", "user" },
  { "", "profile", "Profile", "user" },
  { "", "avatar", "Avatar", "user" },
  { "", "account", "Account", "user" },
  { "", "login", "Login", "user" },
  { "", "logout", "Logout", "user" },
  { "", "signup", "Sign Up", "user" },
  { "", "password", "Password", "user" },
  { "", "permission", "Permission", "user" },
  { "", "admin", "Admin", "user" },
  { "", "member", "Member", "user" },
  { "", "guest", "Guest", "user" },
  { "", "follower", "Follower", "user" },
  { "", "following", "Following", "user" },
  { "", "friend", "Friend", "user" },
  { "", "contact", "Contact", "user" },
  { "", "chat", "Chat", "user" },
  { "", "message", "Message", "user" },
  { "", "comment", "Comment", "user" },
  { "", "like", "Like", "user" },
  { "", "dislike", "Dislike", "user" },

  -- Misc
  { "", "package", "Package", "misc" },
  { "", "box", "Box", "misc" },
  { "", "cube", "Cube", "misc" },
  { "", "home", "Home", "misc" },
  { "", "office", "Office", "misc" },
  { "", "school", "School", "misc" },
  { "", "hospital", "Hospital", "misc" },
  { "", "church", "Church", "misc" },
  { "", "store", "Store", "misc" },
  { "", "shop", "Shop", "misc" },
  { "", "cart", "Cart", "misc" },
  { "", "bag", "Bag", "misc" },
  { "", "wallet", "Wallet", "misc" },
  { "", "credit_card", "Credit Card", "misc" },
  { "", "money", "Money", "misc" },
  { "", "dollar", "Dollar", "misc" },
  { "", "euro", "Euro", "misc" },
  { "", "bitcoin", "Bitcoin", "misc" },
  { "", "chart", "Chart", "misc" },
  { "", "graph", "Graph", "misc" },
  { "", "pie_chart", "Pie Chart", "misc" },
  { "", "bar_chart", "Bar Chart", "misc" },
  { "", "line_chart", "Line Chart", "misc" },
  { "", "dashboard", "Dashboard", "misc" },
  { "", "analytics", "Analytics", "misc" },
  { "", "metrics", "Metrics", "misc" },
  { "", "stats", "Statistics", "misc" },
  { "", "report", "Report", "misc" },
  { "", "document", "Document", "misc" },
  { "", "note", "Note", "misc" },
  { "", "memo", "Memo", "misc" },
  { "", "clipboard", "Clipboard", "misc" },
  { "", "paperclip", "Paperclip", "misc" },
  { "", "attachment", "Attachment", "misc" },
  { "", "image", "Image", "misc" },
  { "", "photo", "Photo", "misc" },
  { "", "picture", "Picture", "misc" },
  { "", "video_file", "Video File", "misc" },
  { "", "audio_file", "Audio File", "misc" },
  { "", "archive_file", "Archive File", "misc" },
  { "", "pdf", "PDF", "misc" },
  { "", "excel", "Excel", "misc" },
  { "", "word", "Word", "misc" },
  { "", "powerpoint", "PowerPoint", "misc" },
}

-- Chinese pinyin aliases for common icons
M.pinyin_aliases = {
  -- File types
  ["wenjian"] = "file",
  ["mulu"] = "folder",
  ["wenjianjia"] = "folder",
  ["wjj"] = "folder",

  -- Languages
  ["daima"] = "file_code",
  ["lua"] = "lua",
  ["python"] = "python",
  ["javascript"] = "javascript",
  ["js"] = "javascript",
  ["typescript"] = "typescript",
  ["ts"] = "typescript",
  ["html"] = "html5",
  ["css"] = "css3",

  -- Git
  ["fenzi"] = "git_fork",
  ["hebing"] = "git_merge",
  ["shujia"] = "git_branch",
  ["lajitong"] = "trash",
  ["laji"] = "trash",
  ["tijiao"] = "git_commit",
  ["biaoqian"] = "git_tag",
  ["gengxin"] = "sync",
  ["xiazai"] = "download",
  ["shangchuan"] = "upload",

  -- Actions
  ["bianji"] = "edit",
  ["qianbi"] = "edit",
  ["shanchu"] = "delete",
  ["fuzhi"] = "copy",
  ["niantie"] = "paste",
  ["chexiao"] = "undo",
  ["chongzuo"] = "redo",
  ["baocun"] = "save",
  ["chazhao"] = "search",
  ["sousuo"] = "search",

  -- Arrows
  ["zuo"] = "arrow_left",
  ["you"] = "arrow_right",
  ["shang"] = "arrow_up",
  ["xia"] = "arrow_down",
  ["fanhui"] = "return",
  ["jinru"] = "enter",
  ["tuichu"] = "exit",

  -- Status
  ["xinxi"] = "info",
  ["jinggao"] = "warning",
  ["cuowu"] = "error",
  ["tishi"] = "info",
  ["bangzhu"] = "help",
  ["duihao"] = "check",
  ["gouxuan"] = "check",

  -- Dev
  ["zhongduan"] = "terminal",
  ["minglinghang"] = "terminal",
  ["fuwuqi"] = "server",
  ["shujuku"] = "database",
  ["yun"] = "cloud",
  ["rongqi"] = "docker",

  -- Symbols
  ["shandian"] = "zap",
  ["huoyan"] = "fire",
  ["taiyang"] = "sun",
  ["yueliang"] = "moon",
  ["xingxing"] = "star",
  ["xintai"] = "heart",

  -- UI
  ["shezhi"] = "settings",
  ["peizhi"] = "settings",
  ["yonghu"] = "user",
  ["mima"] = "lock",
  ["yuechi"] = "key",
  ["quanxian"] = "shield",

  -- Time
  ["shizhong"] = "clock",
  ["naozhong"] = "alarm",
  ["rili"] = "calendar",

  -- Misc
  ["shubiao"] = "cursor",
  ["dianhua"] = "phone",
  ["youjian"] = "mail",
  ["xiaoxi"] = "message",
  ["tongzhi"] = "notification",
  ["lingdang"] = "bell",
}

-- Get icon by name (supports both English and pinyin)
function M.get_icon(name)
  -- First try pinyin alias
  if M.pinyin_aliases[name] then
    name = M.pinyin_aliases[name]
  end

  for _, entry in ipairs(M.data) do
    if entry[2] == name then
      return entry[1]
    end
  end
  return nil
end

-- Search icons by partial name
function M.search(query)
  query = string.lower(query)
  local results = {}

  -- Search English names
  for _, entry in ipairs(M.data) do
    local name = string.lower(entry[2])
    local desc = string.lower(entry[3])
    if string.find(name, query) or string.find(desc, query) then
      table.insert(results, entry)
    end
  end

  -- Search pinyin aliases
  for pinyin, name in pairs(M.pinyin_aliases) do
    if string.find(pinyin, query) then
      -- Find the icon
      for _, entry in ipairs(M.data) do
        if entry[2] == name then
          -- Add with pinyin as filter text
          local result = { entry[1], pinyin, entry[3] .. " (" .. pinyin .. ")", entry[4] }
          table.insert(results, result)
          break
        end
      end
    end
  end

  return results
end

-- Get all icons in a category
function M.get_by_category(category)
  local results = {}
  for _, entry in ipairs(M.data) do
    if entry[4] == category then
      table.insert(results, entry)
    end
  end
  return results
end

-- Get all categories
function M.get_categories()
  local cats = {}
  local seen = {}
  for _, entry in ipairs(M.data) do
    local cat = entry[4]
    if not seen[cat] then
      table.insert(cats, cat)
      seen[cat] = true
    end
  end
  return cats
end

return M
