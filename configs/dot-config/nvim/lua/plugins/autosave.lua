return {
	"okuuva/auto-save.nvim",
	version = "^1.0.0",
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
	opts = {
		enabled = true,
		execute_message = {
			enabled = true,
			message = function()
				return ("saved at " .. vim.fn.strftime("%H:%M:%S"))
			end,
			dim = 0.18,
			cleaning_interval = 1250,
		},
		trigger_events = { -- See :h events
			immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend" },
			defer_save = { "InsertLeave", "TextChanged" },
			cancel_deferred_save = { "InsertEnter" },
		},
		condition = nil,
		write_all_buffers = false,
		noautocmd = false,
		lockmarks = false,
		debounce_delay = 1500,
		debug = false,
	},
}
