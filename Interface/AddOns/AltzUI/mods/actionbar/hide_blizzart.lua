local T, C, L, G = unpack(select(2, ...))

local blizzHider = CreateFrame('Frame', nil, _G['UIParent'], 'SecureFrameTemplate')
blizzHider:Hide()

--hide micro menu

local buttonList = {
	--CharacterMicroButton,
	--SpellbookMicroButton,
	---TalentMicroButton,
	--AchievementMicroButton,
	--QuestLogMicroButton,
	--GuildMicroButton,
	--PVPMicroButton,
	--LFDMicroButton,
	--CompanionsMicroButton,
	--EJMicroButton,
	--MainMenuMicroButton,
	HelpMicroButton,
	}

for _, button in pairs(buttonList) do
	button:SetParent(blizzHider)
end

--	hide main menu bar frames
ActionBarDownButton:SetParent(blizzHider)
ActionBarUpButton:SetParent(blizzHider)

--	get rid of blizzard alerts
function MainMenuMicroButton_PositionAlert(alert)
	return false;
end

function MainMenuMicroButton_AreAlertsEffectivelyEnabled()
	return false;
end

--	hide xp bar
StatusTrackingBarManager:Hide()

--	bag
MicroButtonAndBagsBar:SetParent(blizzHider)

--	hide override actionbar frames
OverrideActionBarExpBar:SetParent(blizzHider)
OverrideActionBarHealthBar:SetParent(blizzHider)
OverrideActionBarPowerBar:SetParent(blizzHider)
OverrideActionBarPitchFrame:SetParent(blizzHider) --maybe we can use that frame later for pitchig and such
OverrideActionBarExpBarOverlayFrame:SetParent(blizzHider)	
MainMenuBarArtFrame.PageNumber:SetParent(blizzHider)
MainMenuBarArtFrameBackground:SetParent(blizzHider)
MainMenuBarArtFrame.RightEndCap:SetParent(blizzHider)
MainMenuBarArtFrame.LeftEndCap:SetParent(blizzHider)

  -----------------------------
  -- HIDE TEXTURES
  -----------------------------

  --remove some the default background textures
  StanceBarLeft:SetTexture(nil)
  StanceBarMiddle:SetTexture(nil)
  StanceBarRight:SetTexture(nil)
  SlidingActionBarTexture0:SetTexture(nil)
  SlidingActionBarTexture1:SetTexture(nil)
  PossessBackground1:SetTexture(nil)
  PossessBackground2:SetTexture(nil)
  
  --remove OverrideBar textures

    local textureList =  {
	"_BG",
	"EndCapL",
	"EndCapR",
	"_Border",
	"Divider1",
	"Divider2",
	"Divider3",
	"ExitBG",
	"MicroBGL",
	"MicroBGR",
	"_MicroBGMid",
	"ButtonBGL",
	"ButtonBGR",
	"_ButtonBGMid",
	"PitchOverlay",
	"PitchButtonBG",
	"PitchBG",
	"PitchMarker",
	"PitchUpUp",
	"PitchUpDown",
	"PitchUpHighlight",
	"PitchDownUp",
	"PitchDownDown",
	"PitchDownHighlight",
	"LeaveUp",
	"LeaveDown",
	"LeaveHighlight",
	"HealthBarBG",
	"HealthBarOverlay",
	"PowerBarBG",
	"PowerBarOverlay",
    }

    for _,tex in pairs(textureList) do
      OverrideActionBar[tex]:SetAlpha(0)
    end