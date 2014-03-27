class people::hiroooo {
  include macvim_kaoriya
  include iterm2::stable

  $home = "/Users/{$::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  file { $home:
    ensure  => directory
  }

}

package {
  'GoogleJapaneseInput':
    source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
    provider => pkgdmg;
}
