local M = {}  

function M.setup()  
    vim.api.nvim_create_augroup('MyFileTypeSettings', { clear = true })  

    vim.api.nvim_create_autocmd('FileType', {  
        group = 'MyFileTypeSettings',  
        pattern = {'c', 'cpp'},  
        callback = function()  
            local set = vim.opt_local  
            set.shiftwidth = 4  
            set.tabstop = 4  
            set.commentstring = '/*%s*/'  
        end,  
    })  
end  

return M  
