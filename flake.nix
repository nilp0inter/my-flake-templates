{
  inputs.templates.url = "github:NixOS/templates";

  description = "The Nix Flakes templates that I use";

  outputs = { self, templates }: {

    templates = {
      pipenv = {
        path = ./pipenv;
        description = "A python environment managed with pipenv for NixOS systems";
      };
      kaa = {
        path = ./kaa;
        description = "A kaa environment for NixOS systems";
      };
      poetry = {
        path = ./poetry;
        description = "A python environment managed with poetry for NixOS systems";
      };
      cheatsheet = {
        path = ./cheatsheet;
        description = "A LaTeX template for a cheatsheet";
      };
    };

    defaultTemplate = templates.defaultTemplate;  # fallback to default nixos template

  };
}
