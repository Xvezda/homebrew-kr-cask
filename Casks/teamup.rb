cask "teamup" do
  arch intel: "x86_64"

  version "4.0.6.29"
  sha256 intel: "674fe14d9973bae6e5b115f42cfa558f2fd8e69ed0514c51d1f5bbcc90cd8b7d"

  url "https://advert.estsoft.com/?event=201702222151584"
  name "TeamUP"
  homepage "https://tmup.com/main/download"

  livecheck do
    url :url
    strategy :header_match
    regex(/TeamUPSetup(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "TeamUP.app"
end