-- ccls for C , C++ and Objctive-C
require'lspconfig'.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-Wno-everything"} ;
    };
  }
}
-- cmake-language-server
require'lspconfig'.cmake.setup{}

-- jedi-language-server for python
require'lspconfig'.jedi_language_server.setup{}

-- rls for rust
require'lspconfig'.rls.setup {
  settings = {
    rust = {
      unstable_features = true,
      build_on_save = false,
      all_features = true,
    },
  },
}

-- texlab for (La)Tex
require'lspconfig'.texlab.setup{}

-- fortls for Fortran --installed py "yay -S fortls"
require'lspconfig'.fortls.setup{}
