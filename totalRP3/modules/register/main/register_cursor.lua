----------------------------------------------------------------------------------
--- Total RP 3
--- Register cursor
---
--- Implements right-click on a player in the 3D world to open their profile
---
---	---------------------------------------------------------------------------
---	Copyright 2014 Sylvain Cossement (telkostrasz@telkostrasz.be)
---
---	Licensed under the Apache License, Version 2.0 (the "License");
---	you may not use this file except in compliance with the License.
---	You may obtain a copy of the License at
---
---		http://www.apache.org/licenses/LICENSE-2.0
---
---	Unless required by applicable law or agreed to in writing, software
---	distributed under the License is distributed on an "AS IS" BASIS,
---	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
---	See the License for the specific language governing permissions and
---	limitations under the License.
----------------------------------------------------------------------------------

---@type TRP3_API
local _, TRP3_API = ...;

-- Lua API imports
local insert = table.insert;

-- WoW API imports
local InCombatLockdown = InCombatLockdown;
local GetCursorPosition = GetCursorPosition;
local UIParent = UIParent;
local IsShiftKeyDown = IsShiftKeyDown;
local IsControlKeyDown = IsControlKeyDown;
local IsAltKeyDown = IsAltKeyDown;

-- Total RP 3 imports
local isUnitIDKnown = TRP3_API.register.isUnitIDKnown;
local hasProfile = TRP3_API.register.hasProfile;
local openMainFrame = TRP3_API.navigation.openMainFrame;
local openPageByUnitID = TRP3_API.register.openPageByUnitID;
local registerConfigKey = TRP3_API.configuration.registerConfigKey;
local getConfigValue = TRP3_API.configuration.getValue;
local isUnitIDIgnored = TRP3_API.register.isIDIgnored;

--- Create a new Ellyb Unit for the mouseover unit
---@type Unit
local Mouseover = TRP3_API.Ellyb.Unit("mouseover");

---Check if we can view the unit profile by using the cursor
---@param unitID string @ A valid unit ID (probably mouseover here)
local function canInteractWithUnit(unit)

	if
	not Mouseover:Exists()
	or InCombatLockdown() -- We don't want to open stuff in combat
	or not Mouseover:IsPlayer() -- Unit has to be a player
	or Mouseover:IsMountable() -- Avoid unit on multi seats mounts
	or Mouseover:IsAttackable() -- Unit must not be attackable
	then
		return false;
	end

	local unitID = Mouseover:GetUnitID();
	if
	unitID == TRP3_API.globals.player_id -- Unit is not the player
	or not isUnitIDKnown(unitID) -- Unit is known by TRP3
	or hasProfile(unitID) == nil -- Unit has a RP profile available
	or isUnitIDIgnored(unitID) -- Unit has been ignored
	then
		return false;
	end

	return true;
end

---@type Frame
local CursorFrame = TRP3_CursorFrame;

local function placeCursorFrameOnMouse()
	local scale = 1 / UIParent:GetEffectiveScale();
	local x, y = GetCursorPosition();
	CursorFrame:SetPoint("CENTER", UIParent, "BOTTOMLEFT", x * scale + 33, y * scale - 30);
end

local function onMouseOverUnit()
	if canInteractWithUnit() then
		local unitID = Mouseover:GetUnitID();
		CursorFrame.unitID = unitID;
		placeCursorFrameOnMouse();
		CursorFrame:Show();
	else
		CursorFrame:Hide();
	end
end

CursorFrame:SetScript("OnUpdate", function(self)
	if not Mouseover:Exists() then
		self:Hide();
	else
		placeCursorFrameOnMouse()
	end
end)

TRP3_API.events.listenToEvent(TRP3_API.events.WORKFLOW_ON_LOADED, function()

	local loc = TRP3_API.locale.getText;

	local CONFIG_RIGHT_CLICK_OPEN_PROFILE = "CONFIG_RIGHT_CLICK_OPEN_PROFILE";
	local CONFIG_RIGHT_CLICK_OPEN_PROFILE_MODIFIER_KEY = "CONFIG_RIGHT_CLICK_OPEN_PROFILE_MODIFIER_KEY";

	registerConfigKey(CONFIG_RIGHT_CLICK_OPEN_PROFILE, true);
	registerConfigKey(CONFIG_RIGHT_CLICK_OPEN_PROFILE_MODIFIER_KEY, 1);

	local function isModifierKeyPressed()
		local option = getConfigValue(CONFIG_RIGHT_CLICK_OPEN_PROFILE_MODIFIER_KEY);
		if option == 1 then
			return true;
		elseif option == 2 then
			return IsShiftKeyDown();
		elseif option == 3 then
			return IsControlKeyDown();
		elseif option == 4 then
			return IsAltKeyDown();
		end
	end

	-- Hook function called on right-click on player
	hooksecurefunc("TurnOrActionStart", function()
		if not getConfigValue(CONFIG_RIGHT_CLICK_OPEN_PROFILE) or not isModifierKeyPressed() then return end
		if CursorFrame:IsVisible() then
			openMainFrame()
			openPageByUnitID(CursorFrame.unitID);
		end
	end)

	-- Listen to the mouse over event and register data update to event to show the cursor icon
	TRP3_API.utils.event.registerHandler("UPDATE_MOUSEOVER_UNIT", onMouseOverUnit);
	TRP3_API.events.listenToEvent(TRP3_API.events.REGISTER_DATA_UPDATED, onMouseOverUnit)

	-- Configuration header
	insert(TRP3_API.register.CONFIG_STRUCTURE.elements, {
		inherit = "TRP3_ConfigH1",
		title = loc("CO_CURSOR_TITLE"),
	});

	-- Main checkbox to toggle this feature
	insert(TRP3_API.register.CONFIG_STRUCTURE.elements, {
		inherit = "TRP3_ConfigCheck",
		title = loc("CO_CURSOR_RIGHT_CLICK"),
		help = loc("CO_CURSOR_RIGHT_CLICK_TT"),
		configKey = CONFIG_RIGHT_CLICK_OPEN_PROFILE,
		dependentOnOptions = { "register_auto_add" },
	});

	-- Modifier key dropdown option
	insert(TRP3_API.configuration.CONFIG_FRAME_PAGE.elements, {
		inherit = "TRP3_ConfigDropDown",
		widgetName = "TRP3_ConfigCursor_ModifierKey",
		title = loc("CO_CURSOR_MODIFIER_KEY"),
		help = loc("CO_CURSOR_MODIFIER_KEY_TT"),
		listContent = {
			{ NONE, 1 },
			{ SHIFT_KEY_TEXT, 2 },
			{ CTRL_KEY_TEXT, 3 },
			{ ALT_KEY_TEXT, 4 }
		},
		configKey = CONFIG_RIGHT_CLICK_OPEN_PROFILE_MODIFIER_KEY,
		listWidth = nil,
		listCancel = true,
		dependentOnOptions = { CONFIG_RIGHT_CLICK_OPEN_PROFILE, "register_auto_add" },
	});

end)