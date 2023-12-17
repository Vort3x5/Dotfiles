require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.after.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.after.event_exited["dapui_config"] = function()
	dapui.close()
end

vim.keymap.set("n", "<Leader>db", ':DapToggleBreakpoint<CR>')
vim.keymap.set("n", "<Leader>dx", ':DapTerminate<CR>')
vim.keymap.set("n", "<Leader>dn", ':DapStepOver<CR>')
vim.keymap.set("n", "<Leader>ds", ':DapStepInto<CR>')
vim.keymap.set("n", "<Leader>do", ':DapStepOut<CR>')
vim.keymap.set("n", "<Leader>dc", ':DapContinue<CR>')
vim.keymap.set("n", "<Leader>dr", ':DapRestart<CR>')

dap.configurations.c = {
	{
		name = 'launch',
		type = 'lldb',
		request = 'launch',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {},
	},
}

dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = dap.configurations.c
