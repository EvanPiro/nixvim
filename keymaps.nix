{
  keymaps = [
    {
      action = ":vsp<CR>";
      key = "t";
      options = {
        silent = true;
      };
    }
    {
      action = ":q<CR>";
      key = "<C-q>";
      options = {
        silent = true;
      };
    }
    {
      action = ":w<CR>:!fourmolu -i .<CR>";
      key = "<C-s>";
      options = {
        silent = true;
      };
    }
  ];
}

