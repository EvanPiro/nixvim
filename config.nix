{ pkgs, ... }: {
  # Import all your configuration modules here
  imports =
    [ (import ./haskell.nix {inherit pkgs;})
      ./cmp.nix
      ./keymaps.nix
    ];

  opts.number = true;

  colorschemes.gruvbox.enable = true;

  plugins.oil = {
    enable = true;
    settings = {
      view_options = {
        show_hidden = true;
      };
    };
  };

  plugins.web-devicons.enable = true;
  plugins.lsp.servers.nil_ls.enable = true;
  plugins.bufferline.enable = true;
  plugins.lsp.servers.ts_ls.enable = true;
  plugins.spectre.enable = true;
  plugins.autoclose.enable = true;
  plugins.fzf-lua = {
    enable = true;
    keymaps = {
      "<C-a>" = "live_grep";
      "<C-x>" = "files";
    };
  };
  plugins.harpoon = {
    enable = true;
    keymaps = {
      addFile = "<leader>a";
      toggleQuickMenu = "<C-e>";
    };
  };
  plugins.nix.enable = true;
  plugins.nvim-tree.enable = true;
  plugins.trouble.enable = true;

  globalOpts = {
    autoread = true;
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;
    signcolumn = "yes";
    mouse = "a";
    ignorecase = true;
    splitright = true;
    splitbelow = true;
    clipboard = {
      providers = {
        wl-copy.enable = true; # Wayland
        xsel.enable = true; # For X11
      };
      register = "unnamedplus";
    };
    undofile = true;
    cursorline = true;
    ruler = true;
    gdefault = true;
  };
}

