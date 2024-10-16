local getCurrFileParentDirectory = function()
    local current_buf = vim.api.nvim_get_current_buf()
    local current_file_path = vim.api.nvim_buf_get_name(current_buf)

    if current_file_path == '' then
        return ''
    end

    current_file_path = string.gsub(current_file_path, "C:\\Users\\bueva", "~")

    current_file_path = current_file_path:match(".*" .. '\\')
    return current_file_path
end

return {
    getCurrFileParentDirectory = getCurrFileParentDirectory,
}
