-- Codam header
use {
		"BeerB34r/codam-header.nvim",
		cmd = { "Stdheader" },
		config = function()
				require("codamheader").setup {
						--default_map = true, -- Default mapping <F1> in normal mode.
						auto_update = true, -- Update header when saving.
						user = "dponte", -- Your user.
						mail = "dponte@student.codam.nl", -- Your mail.
						---Git config.
						git = {
								---Enable Git support.
								enabled = false,
								---PATH to the Git binary.
								bin = "git",
								---Use global user.name, otherwise use local user.name.
								user_global = true,
								---Use global user.email, otherwise use local user.email.
								email_global = true,
						},
						exascii = {
						},
						exascii_left = false --left-justified?
				}
		end,
}


