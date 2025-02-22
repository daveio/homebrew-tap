# frozen_string_literal: true

cask 'vue-designer' do
  arch arm: 'ARM64', intel: 'X64'

  version '1.6'
  sha256 \
    arm: '19eab3a42fb561d709b3e2c2ed3e39c8d61d06c908fbff369fda33f916d05d99',
    intel: '487a25ac14fc453d79548669842bdf33fd7ed7e91377faabeca3714b112c60c1'

  url "https://github.com/Pinegrow/PinegrowReleases/releases/download/vd1.6/VueDesigner#{arch}.#{version}.dmg"
  name 'Vue Designer'
  desc 'Web editor'
  homepage 'https://vuedesigner.com'

  # livecheck do
  #   url 'https://docs.pinegrow.com/wp-json/wp/v2/pages/1698'
  #   regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  # end

  depends_on macos: '>= :catalina'

  app 'Vue Designer.app'

  zap trash: [
    '~/Library/Application Support/Vue Designer',
    '~/Library/Caches/Vue Designer',
    '~/Library/Preferences/Vue Designer.plist',
    '~/Library/Saved Application State/Vue Designer.savedState'
  ]
end
