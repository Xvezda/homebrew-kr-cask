cask "teamup" do
  version "4.0.6.29"
  sha256 "674fe14d9973bae6e5b115f42cfa558f2fd8e69ed0514c51d1f5bbcc90cd8b7d"

  url "https://advert.estsoft.com/?event=201702222151584"
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
