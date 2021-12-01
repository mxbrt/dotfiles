with import <nixpkgs> {}; [
    # shell
    fd
    fzf
    git
    htop
    lazygit
    python
    ranger
    ripgrep
    unzip
    wget
    # neovim & vim alias
    (neovim.override {
      vimAlias = true;
    })
    nodejs # for coc.vim

    # desktop
    grim
    mako
    rofi
    sway
    swaylock
    wl-clipboard
    xwayland
    iosevka

    # GUI programs
    firefox
    alacritty
    zathura
    pavucontrol
]
