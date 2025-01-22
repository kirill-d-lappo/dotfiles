return {
	"GustavEikaas/easy-dotnet.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		local function get_secret_path(secret_guid)
			local path = ""
			local home_dir = vim.fn.expand("~")
			if require("easy-dotnet.extensions").isWindows() then
				local secret_path = home_dir
					.. "\\AppData\\Roaming\\Microsoft\\UserSecrets\\"
					.. secret_guid
					.. "\\secrets.json"
				path = secret_path
			else
				local secret_path = home_dir .. "/.microsoft/usersecrets/" .. secret_guid .. "/secrets.json"
				path = secret_path
			end
			return path
		end

		local dotnet = require("easy-dotnet")
		-- Options are not required
		dotnet.setup({
			---@type TestRunnerOptions
			test_runner = {
				---@type "split" | "float" | "buf"
				viewmode = "split",
				noBuild = true,
				noRestore = true,
				--- Optional table of extra args e.g "--blame crash"
				additional_args = {},
			},
			---@param action "test" | "restore" | "build" | "run"
			terminal = function(path, action)
				local commandBuilders = {
					run = function(p)
						return "dotnet run --project " .. p.projectPath
					end,
					test = function(p)
						return "dotnet test " .. p.projectPath
					end,
					restore = function(p)
						return "dotnet restore " .. p.projectPath .. " --interactive"
					end,
					build = function(p)
						return "dotnet build " .. p.projectPath .. " --interactive"
					end,
				}

				local commandParams = {
					projectPath = path,
				}

				local command = commandBuilders[action](commandParams)

				vim.cmd("split")
				vim.cmd("term " .. command .. "\n")

				vim.notify(command)
			end,
			secrets = {
				path = get_secret_path,
			},
			csproj_mappings = true,
			auto_bootstrap_namespace = true,
		})

		-- Example command
		vim.api.nvim_create_user_command("Secrets", function()
			dotnet.secrets()
		end, {})

		local function run_with_profile_latest(dotnet_package)
			return function()
				dotnet_package.run_with_profile(true)
			end
		end

		local map = vim.keymap.set

		map("n", "<leader>br", dotnet.run_with_profile, { desc = "Run dotnet project" })
		map("n", "<leader>bl", run_with_profile_latest(dotnet), { desc = "Run latest dotnet project" })
		map("n", "<leader>bs", dotnet.build_solution, { desc = "Build solution" })
		map("n", "<leader>bp", dotnet.build_default, { desc = "Build default roject" })
		map("n", "<leader>bn", dotnet.restore, { desc = "Restore nuget packages" })
	end,
}
