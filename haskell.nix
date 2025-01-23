{pkgs, ...}: {
  plugins.haskell-scope-highlighting = {
    enable = true;
  };

  plugins.treesitter.enable = true;

  plugins.treesitter.settings = {
          ensure_installed = [ "haskell" ];
          highlight = {
            enable = true;
          };
          incremental_selection = {
            enable = true;
          };
  };

  plugins.lsp.enable = true;

  plugins.lsp.servers.hls.enable = true;
  plugins.lsp.servers.hls.installGhc = false;

  extraPlugins = [
      pkgs.vimPlugins.haskell-tools-nvim
  ];

  extraPackages = [
      pkgs.haskellPackages.fast-tags
      pkgs.haskellPackages.haskell-debug-adapter
  ];
}

