local utils = {}

---Returns path to standard neovim "data" folder
---@return string|string[]
function utils.get_data_folder_path()
	return vim.fn.stdpath("data")
end

---Returns path to Mason data folder
---@return string
function utils.get_mason_folder_path()
	return utils.get_data_folder_path() .. "/mason"
end

--- Returns path to the folder of a package that was installed with Mason
---@param package_name string
---@return string
function utils.get_mason_package_folder_path(package_name)
	return utils.get_mason_folder_path() .. "/packages/" .. package_name
end

---Returns Lazy package folder path
---@param package_name string
---@return string
function utils.get_lazy_package_folder_path(package_name)
	return utils.get_lazy_folder_path() .. "/" .. package_name
end

---Returns path to the Lazy data folder
---@return string
function utils.get_lazy_folder_path()
	return utils.get_data_folder_path() .. "/lazy"
end

return utils
