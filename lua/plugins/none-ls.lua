return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.formatting.terraform_fmt,
        null_ls.builtins.formatting.yamlfmt,
        null_ls.builtins.diagnostics.glslc,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.completion.spell,
      },
    })
    vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, { desc = "[f]ormat [f]ile" })
  end
}
