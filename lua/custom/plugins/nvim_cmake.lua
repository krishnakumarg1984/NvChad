-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

-- local status_ok_plenary, Path = pcall(require, "plenary.path")
-- if not status_ok_plenary then
--   return
-- end

local status_ok_cmake, cmake = pcall(require, "cmake")
if not status_ok_cmake then
  return
end

cmake.setup {
  -- cmake_executable = "cmake", -- CMake executable to run.
  -- parameters_file = "neovim.json", -- JSON file to store information about selected target, run arguments and build type.
  -- build_dir = tostring(Path:new("{cwd}", "build", "{os}-{build_type}")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
  -- samples_path = tostring(script_path:parent():parent():parent() / "samples"), -- Folder with samples. `samples` folder from the plugin directory is used by default.
  -- default_projects_path = tostring(Path:new(vim.loop.os_homedir(), "Projects")), -- Default folder for creating project.
  -- configure_args = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
  -- build_args = {}, -- Default arguments that will be always passed at cmake build step.
  -- quickfix_height = 10, -- Height of the opened quickfix.
  -- dap_configuration = { type = "cpp", request = "launch" }, -- DAP configuration. By default configured to work with `lldb-vscode`.
  -- dap_open_command = require("dap").repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
}
