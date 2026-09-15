return {
  plugin = {
    src = "https://github.com/3rd/image.nvim",
    -- vim.pack no tiene "build", así que no pongas esa opción
  },

  config = function()
    require("image").setup({
      processor = "magick_cli",  -- usa el comando del sistema (ImageMagick)
      backend = "kitty",         -- cambia a "wezterm" si usas WezTerm
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
    })
  end,
} 
