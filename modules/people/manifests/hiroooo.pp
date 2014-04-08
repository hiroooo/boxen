class people::hiroooo {
  include macvim_kaoriya
  include iterm2::stable
  include skype
  include evernote
  include filezilla

  package {
    'XtraFinder':
      source   => "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg",
      provider => pkgdmg;
    'GoogleJapaneseInput':
      source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      provider => pkgdmg;
  }

  $home = "/Users/{$::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  file { $home:
    ensure  => directory
  }

}
