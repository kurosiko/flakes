{
  description = "Reusable Nix flake templates";

  outputs =
    { self }:
    {
      templates = rec {
        default = dev-shell;

        dev-shell = {
          path = ./templates/dev-shell;
          description = "A simple, extensible development shell";
        };
      };
    };
}
