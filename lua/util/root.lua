-- Get the root dir to open pickers in root context
local M = {}

function M.get_project_root()
  local root_pattern = require('lspconfig.util').root_pattern('.git', 'package.json', 'Makefile', 'go.mod', 'Cargo.toml')
  return root_pattern(vim.fn.expand '%:p:h') or vim.fn.getcwd()
end

return M
