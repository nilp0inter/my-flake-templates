{
  inputs.templates.url = "github:NixOS/templates";

  description = "The Nix Flakes templates that I use";

  outputs = { self, templates }: {

    templates = {
      pipenv = {
        path = ./pipenv;
        description = "A python environment managed with pipenv for NixOS systems";
      };
    };

    defaultTemplate = templates.trivial;  # fallback to default nixos template

  };
}
