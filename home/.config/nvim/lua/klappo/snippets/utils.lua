local M = {}

function M.get_user_name()
    return os.getenv('USER') or os.getenv('USERNAME')
end

function M.get_today_date()
    return os.date("%Y-%m-%d")
end

return M
