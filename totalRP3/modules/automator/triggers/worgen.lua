----------------------------------------------------------------------------------
--- Total RP 3
--- Automator shapeshifting module
--- ---------------------------------------------------------------------------
--- Copyright 2017 Renaud "Ellypse" Parize <ellypse@totalrp3.info> @EllypseCelwe
---
--- Licensed under the Apache License, Version 2.0 (the "License");
--- you may not use this file except in compliance with the License.
--- You may obtain a copy of the License at
---
--- http://www.apache.org/licenses/LICENSE-2.0
---
--- Unless required by applicable law or agreed to in writing, software
--- distributed under the License is distributed on an "AS IS" BASIS,
--- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--- See the License for the specific language governing permissions and
--- limitations under the License.
----------------------------------------------------------------------------------

---@type Automator
local Automator = TRP3_API.automator;

local format = string.format;
local loc = TRP3_API.locale.getText;

-- WoW API imports
local UnitRace, UnitClassBase = UnitRace, UnitClassBase;
local select = select;
local HasAlternateForm = HasAlternateForm;

local testFunctionParameters = {
	shouldBeInWorgenForm = true
}
local function testFunction(testFunctionParameters)
	return testFunctionParameters.shouldBeInWorgenForm == not select(2, HasAlternateForm());
end

---@type ColorMixin
local variableColor = TRP3_API.utils.color.CreateColor(1, 0.82, 0);

local function listDecorator(testFunctionParameters)
	local desiredForm = testFunctionParameters.shouldBeInWorgenForm and loc("ATM_WORG_WORG") or loc("ATM_WORG_HUMAN");

	return format(
	loc("ATM_WORG_DECORATOR"),
	variableColor:WrapTextInColorCode(loc("ATM_WORG_DECORATOR_VERB")),
	variableColor:WrapTextInColorCode(desiredForm)
	);
end

local function isAvailable()
	return select(2, UnitRace("player")) == "Worgen";
end

Automator.registerTrigger(
{
	["description"]   = loc("ATM_WORG_NAME"),
	["name"]          = loc("ATM_WORG_DESCRIPTION"),
	["id"]            = "worgen_form",
	["icon"]          = "achievement_worganhead",
	["events"]        = { "UNIT_PORTRAIT_UPDATE" },

	["testFunction"]  = testFunction,
	["listDecorator"] = listDecorator,
	["isAvailable"]   = isAvailable
}
);