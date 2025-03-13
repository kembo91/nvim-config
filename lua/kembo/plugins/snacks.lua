return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	keys = {
		{ "<leader>pf", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
		{
			"<leader>pr",
			function()
				Snacks.picker.recent({
					on_show = function()
						vim.cmd.stopinsert()
					end,
				})
			end,
			desc = "Find recent files"
		},
		{ "<leader>ps", function() Snacks.picker.grep() end,  desc = "Grep" },
		{ "<leader>gs", function()
			Snacks.lazygit()
		end },
	},
	opts = {
		bigfile = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true },
		rename = { enabled = true },
		lazygit = {
			enabled = true,
		},
		picker = {
			enabled = true,
			matcher = {
				frecency = true,
				cwd_bonus = true,
			}

		},
		statuscolumn = { enabled = true },
		dashboard = {
			formats = {
				key = function(item)
					return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
				end,
			},
			sections = {
				{ section = "header" },
				{ section = "keys",   gap = 1, padding = 1 },
				{ section = "startup" },
				{
					section = "terminal",
					cmd = "fortune -s | cowsay",
					hl = "header",
					random = 10,
					pane = 2,
					indent = 4,
					height = 30,
				},
			},
		}
	}
}
