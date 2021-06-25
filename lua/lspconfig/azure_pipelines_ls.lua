local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local server_name = "azure_pipelines_ls"
local bin_name = "azure-pipelines-language-server"

configs[server_name] = {
  default_config = {
    cmd = {bin_name, "--stdio"};
    filetypes = {"yaml"};
    root_dir = util.root_pattern(".git", vim.fn.getcwd());
  };
  docs = {
    package_json = "https://github.com/microsoft/azure-pipelines-language-server/blob/main/language-server/package.json";
    description = [[
https://github.com/microsoft/azure-pipelines-language-server/tree/main/language-server

`azure-pipelines-language-server` can be installed via `npm`:
```sh
npm install -g azure-pipelines-language-server
```
]];
    default_config = {
      root_dir = [[root_pattern(".git", vim.fn.getcwd())]];
    };
  };
}

-- vim:et ts=2 sw=2
