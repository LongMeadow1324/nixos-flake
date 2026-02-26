{
  gamescope,
  fetchFromGitHub,
}:
let
  rev = "9416ca9334da7ff707359e5f6aa65dcfff66aa01";
in
gamescope.overrideAttrs (old: {
  version = "unstable-20251206105151-9416ca";
  NIX_CFLAGS_COMPILE = [ "-fno-fast-math" ];

  src = fetchFromGitHub {
    inherit rev;
    owner = "ValveSoftware";
    repo = "gamescope";
    fetchSubmodules = true;
    hash = "sha256-bZXyNmhLG1ZcD9nNKG/BElp6I57GAwMSqAELu2IZnqA=";
  };

  # Unsure if this bit is necessary, though I guess it's nice to have the version gamescope shows match
  postPatch = (old.postPatch or "") + ''
    substituteInPlace src/meson.build \
      --replace-fail "'git', 'describe', '--always', '--tags', '--dirty=+'" "'echo', '${rev}'"

    patchShebangs default_extras_install.sh
  '';
})

