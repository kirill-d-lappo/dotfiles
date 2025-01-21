return {
	"mfussenegger/nvim-dap",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local dap = require("dap")
		local utils = require("klappo.utils")

		-- For Windows, set noshellslash might be required in order for netcoredbg to find source references for breakpoints.
		local netcoredbg_path = utils.get_mason_package_folder_path("netcoredbg") .. "/netcoredbg"
		dap.adapters.coreclr = {
			type = "executable",
			command = netcoredbg_path,
			args = { "--interpreter=vscode" },
		}

		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = function()
					local dotnet = require("easy-dotnet")
					local debug_info = dotnet.get_debug_dll()
					return debug_info.dll_path
				end,
			},
		}

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("DAPInit", {}),
			callback = function(ev)
				local dap = require("dap")
				local map = vim.keymap.set

				local opts = {
					buffer = ev.buf,
					silent = true,
					desc = "Default DAP Command",
				}

				opts.desc = "Debug: Toggle breakpoint"
				map("n", "<leader>bp", dap.toggle_breakpoint, opts)

				opts.desc = "Debug: Start/continue exectuion"
				map("n", "<F5>", dap.continue, opts)

				opts.desc = "Debug: Step Over"
				map("n", "<F10>", dap.step_over, opts)
			end,
		})
	end,
}
