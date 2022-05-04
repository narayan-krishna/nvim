require('telescope').load_extension('projects')
require('telescope').setup {
  defaults = {
		--
		-- layout_strategy = "horizontal",
		-- layout_config = {
		--  horizontal = {
		--    prompt_position = "top",
		--  },
    -- }
		 vertical = {
		   mirror = false,
		 },
		--  width = 0.87,
		--  height = 0.80,
		--  preview_cutoff = 120,
		-- },
		-- border = {},
		-- color_devicons = true,
		-- use_less = true,
  }
}

