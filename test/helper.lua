local helper = {}

helper.file_exists = function(filename)
    local f = io.open(filename, "r")
    if f ~= nil then io.close(f) return true else return false end
end

return helper