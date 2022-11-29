local this = 'user.'
local export = function(plugin_names)
    for _, plugin_name in pairs(plugin_names) do
        require(this .. plugin_name)
    end
end

export({
    'basic',
    'keymaps',
})
