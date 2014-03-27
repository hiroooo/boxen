class people::hiroooo {
  include macvim_kaoriya
  include iterm2::stable
  include skype
  include emacs

  $home = "/Users/{$::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  file { $home:
    ensure  => directory
  }

}
