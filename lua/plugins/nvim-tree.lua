require 'nvim-tree'.setup({
    -- 关闭文件时自动关闭
    auto_close = true,
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

--[[
    nvim-tree 用法
    o 打开关闭文件夹
    a 创建文件
    r 重命名
    x 剪切
    c 拷贝
    p 粘贴
    d 删除
]] --
