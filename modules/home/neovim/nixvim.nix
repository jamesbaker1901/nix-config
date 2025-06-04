{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
    };
  };

  # Settings
  opts = {
    encoding = "utf-8";
    number = true;
    mouse = "a";
    laststatus = 2;
    autoread = true;
    autoindent = true;
    backspace = ["indent" "eol" "start"];
    incsearch = true;
    hlsearch = true;
    showcmd = true;
    autowrite = true;
    hidden = true;
    fileformats = ["unix" "dos" "mac"];
    ignorecase = true;
    smartcase = true;
    lazyredraw = true;
    softtabstop = 2;
    updatetime = 300;
    completeopt = "menuone";
    cursorline = true;
    expandtab = true;
    shiftwidth = 2;
    smartindent = true;
    tabstop = 2;
    clipboard = "unnamedplus";
  };

  extraConfigLua = ''
  vim.api.nvim_command("autocmd InsertEnter * norm zz")
  vim.cmd "set nocompatible"
  vim.cmd "set t_Co=256"
  vim.cmd "let &t_ut='''"
  vim.cmd "filetype off"
  vim.cmd "filetype plugin indent on"
  vim.cmd "filetype plugin on"
  vim.cmd "set noerrorbells"
  vim.cmd "set noswapfile"
  vim.cmd "set nobackup"
  vim.cmd "set splitright"
  vim.cmd "set splitbelow"
  vim.cmd "set noshowmatch"
  vim.cmd "set noshowmode"
  vim.cmd "set nocursorcolumn"
  vim.cmd "set completeopt+=noinsert"
  vim.cmd "set completeopt-=preview"
  vim.cmd "set shortmess+=c"
  vim.cmd "set nofoldenable"
  vim.cmd "let base16colorspace=256"
  vim.cmd "let g:indent_blankline_enabled = v:false"
  '';

  # Keymaps
  globals = {
    mapleader = " ";
  };

  plugins = {
    web-devicons.enable = true;
    lualine.enable = true;
    bufferline.enable = true;
    treesitter.enable = true;
    nvim-tree.enable = true;
    which-key = {
      enable = true;
    };
    noice = {
      enable = false;
      settings.presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
      };
    };
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = {
          options.desc = "file finder";
          action = "find_files";
        };
        "<leader>fg" = {
          options.desc = "find via grep";
          action = "live_grep";
        };
      };
      extensions = {
        file-browser.enable = true;
      };
    };

    snacks = {
      enable = true;
      settings = {
        bigfile.enable = true;
        notifier = {
          enable = true;
          style = "compact";
        };
        quickfile.enable = true;
      };
    };

    # Dev
    lsp = {
      enable = true;
      servers = {
        hls = {
          enable = true;
          installGhc = false; # Managed by Nix devShell
        };
        marksman.enable = true;
        nil_ls.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };
    };
    lazygit.enable = true;
  };
  keymaps = [
    {
      key = ";";
      action = ":w<CR>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = ";;";
      action = "<Esc>";
      mode = "i";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<leader>q";
      action = ":q<CR>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    # previous buffer
    {
      key = "<C-k>";
      action = ":bp<CR>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    # close buffer
    {
      key = "<C-d>";
      action = ":bd<CR>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    # next buffer
    {
      key = "<C-j>";
      action = ":bn<CR>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<C-n>";
      action = ":NvimTreeToggle<CR>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    # exit normal mode
    {
      key = "<RightMouse>";
      action = "i<LeftMouse>";
      mode = "n";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<RightMouse>";
      action = "<Esc>";
      mode = "i";
      options = {
        silent = true;
        noremap = true;
      };
    }
  ];
}
