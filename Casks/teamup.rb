cask "teamup" do
  version "4.0.6.29"
  sha256 :no_check

  url "https://advert.estsoft.com/?event=201702222151584",
    verified: "advert.estsoft.com/",
    user_agent: :fake
  name "TeamUP"
  homepage "https://tmup.com/main/download"

  livecheck do
    url :url
    strategy :header_match
    regex(/TeamUPSetup(\d+(?:\.\d+)*)\.dmg/i)
  end

  container type: :dmg
  app "TeamUP.app"

  zap trash: [
    "~/Library/Preferences/com.estsoft.TeamUP.plist",
    "~/Library/Preferences/com.estsoft.mac.teamup.plist",
    "~/Library/Saved Application State/com.estsoft.mac.teamup.savedState",
  ]
end
