local this = 'plugins.'
local export = function(plugin_names)
    for _, plugin_name in pairs(plugin_names) do
        require(this .. plugin_name)
    end
end

export({
    'lsp',
    'packer',
    'nvim-tree',
    'bufferline',
    'nvim-treesitter',
    'dashboard',
})
