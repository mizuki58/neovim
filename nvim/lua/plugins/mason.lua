vim.pack.add({
  { src = "https://github.com/williamboman/mason.nvim" },
})

local mason = require("mason")

mason.setup()

local registry = require("mason-registry")

local ensure = {
  "lua-language-server",
  "bash-language-server",
  "html-lsp",
  "json-lsp",
  "css-lsp",
  "typescript-language-server",
  "eslint-lsp",
}

local function ensure_installed()
  for _, name in ipairs(ensure) do
    local ok_pkg, pkg = pcall(registry.get_package, name)
    if ok_pkg and not pkg:is_installed() then
      pkg:install()
    end
  end
end

registry.refresh(ensure_installed)
