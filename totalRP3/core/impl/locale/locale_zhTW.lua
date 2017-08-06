----------------------------------------------------------------------------------
-- Total RP 3
-- Traditional Chinese locale
--	---------------------------------------------------------------------------
--	Copyright 2014 Sylvain Cossement (telkostrasz@telkostrasz.be)
--
--	Licensed under the Apache License, Version 2.0 (the "License");
--	you may not use this file except in compliance with the License.
--	You may obtain a copy of the License at
--
--		http://www.apache.org/licenses/LICENSE-2.0
--
--	Unless required by applicable law or agreed to in writing, software
--	distributed under the License is distributed on an "AS IS" BASIS,
--	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--	See the License for the specific language governing permissions and
--	limitations under the License.
----------------------------------------------------------------------------------

local LOCALE = {
	locale = "zhTW",
	localeText = "Traditional Chinese",
    localeContent =
    --@localization(locale="zhTW", format="lua_table", handle-unlocalized="ignore")@
    --@do-not-package@
	{
		["ABOUT_TITLE"] = "關於",
		["BINDING_NAME_TRP3_TOGGLE"] = "開啟主頁面",
		["BINDING_NAME_TRP3_TOOLBAR_TOGGLE"] = "開啟工具欄",
		["BROADCAST_10"] = "|cffff9900你已經加入了十個頻道，Total RP 3 無法將您連接到廣播頻道，且無法使用地圖上顯示玩家位置的功能。",
		["BROADCAST_PASSWORD"] = [=[|cffff0000廣播頻道被設置了密碼 (%s).
|cffff9900Total RP 3不會繼續嘗試連結到廣播頻道，你將無法使用地圖顯示玩家位置的功能。
|cff00ff00你可以在一般設定中關閉或修改廣播頻道。]=],
		["BROADCAST_PASSWORDED"] = [=[|cffff0000玩家 |r%s|cffff0000 剛剛修改了廣播頻道的密碼 (%s).
|cffff9900如果你不知道密碼，你將無法使用顯示地圖上玩家的功能。]=],
		["BW_COLOR_CODE"] = "顏色代碼",
		["BW_COLOR_CODE_ALERT"] = "十六進制碼錯誤",
		["BW_COLOR_CODE_TT"] = "您可以在這裡貼上6位數的十六進制顏色代碼，然後按Enter。",
		["CM_ACTIONS"] = "動作",
		["CM_APPLY"] = "套用",
		["CM_CANCEL"] = "取消",
		["CM_CLASS_DEATHKNIGHT"] = "死亡騎士",
		["CM_CLASS_DRUID"] = "德魯伊",
		["CM_CLASS_HUNTER"] = "獵人",
		["CM_CLASS_MAGE"] = "法師",
		["CM_CLASS_MONK"] = "武僧",
		["CM_CLASS_PALADIN"] = "聖騎士",
		["CM_CLASS_PRIEST"] = "牧師",
		["CM_CLASS_ROGUE"] = "盜賊",
		["CM_CLASS_SHAMAN"] = "薩滿",
		["CM_CLASS_UNKNOWN"] = "未知",
		["CM_CLASS_WARLOCK"] = "術士",
		["CM_CLASS_WARRIOR"] = "戰士",
		["CM_CLICK"] = "點擊",
		["CM_COLOR"] = "顏色",
		["CM_CTRL"] = "Ctrl",
		["CM_DOUBLECLICK"] = "雙擊",
		["CM_DRAGDROP"] = "拖曳＆丟棄",
		["CM_EDIT"] = "編輯",
		["CM_IC"] = "IC（進入角色）",
		["CM_ICON"] = "圖標",
		["CM_IMAGE"] = "圖像",
		["CM_L_CLICK"] = "左鍵點擊",
		["CM_LEFT"] = "左",
		["CM_LINK"] = "連結",
		["CM_LOAD"] = "載入",
		["CM_MOVE_DOWN"] = "下移",
		["CM_MOVE_UP"] = "上移",
		["CM_NAME"] = "名稱",
		["CM_OOC"] = "OOC（脫離角色）",
		["CM_OPEN"] = "打開",
		["CM_R_CLICK"] = "右鍵點擊",
		["CM_REMOVE"] = "清除",
		["CM_RESIZE"] = "調整尺寸",
		["CM_RESIZE_TT"] = "拖曳以縮放視窗大小。",
		["CM_RIGHT"] = "右",
		["CM_SAVE"] = "儲存",
		["CM_SELECT"] = "選擇",
		["CM_SHIFT"] = "Shift",
		["CM_SHOW"] = "顯示",
		["CM_STOP"] = "停止",
		["CM_TWEET"] = "發送推特",
		["CM_TWEET_PROFILE"] = "顯示推特資料網址",
		["CM_UNKNOWN"] = "不明",
		["CM_VALUE"] = "值",
		["CO_CHAT"] = "聊天設定",
		["CO_CHAT_INCREASE_CONTRAST"] = "增強顏色對比",
		["CO_CHAT_MAIN_EMOTE_YELL_TT"] = "大喊時，不顯示*表情* 或 <表情>",
		["CO_CHAT_USE_ICONS"] = "顯示玩家圖示",
		["CO_CONFIGURATION"] = "設定",
		["CO_GENERAL"] = "一般設定",
		["CO_GENERAL_MISC"] = "雜項",
		["CO_TOOLBAR_MAX"] = "單行圖示最大數量",
		["CO_TOOLTIP_RACE"] = "顯示種族、職業及等級",
		["CO_TOOLTIP_REALM"] = "顯示伺服器",
		["CO_TOOLTIP_TITLE"] = "顯示標題",
		["DB_HTML_GOTO"] = "點擊以開啟",
		["DB_STATUS_CURRENTLY"] = "當前活動 (IC)",
		["DB_STATUS_CURRENTLY_OOC"] = "其他資訊 (OOC)",
		["GEN_WELCOME_MESSAGE"] = "感謝您使用Total RP 3  (v %s) ! 祝您玩得開心!",
		["MAP_SCAN_CHAR"] = "搜尋區域內角色",
		["MAP_SCAN_CHAR_TITLE"] = "角色",
		["MM_SHOW_HIDE_SHORTCUT"] = "顯示/隱藏插件工具列",
		["NPC_TALK_NAME"] = "NPC 名稱",
		["NPC_TALK_SAY_PATTERN"] = "說:",
		["NPC_TALK_SEND"] = "送出",
		["NPC_TALK_YELL_PATTERN"] = "大喊:",
		["PR_CO_BATTLE"] = "戰寵",
		["PR_CO_MOUNT"] = "坐騎",
		["PR_IMPORT"] = "匯入",
		["REG_COMPANION_BOUND_TO_TARGET"] = "目標",
		["REG_COMPANION_INFO"] = "資訊",
		["REG_COMPANION_NAME"] = "名稱",
		["REG_COMPANION_NAME_COLOR"] = "名稱顏色",
		["REG_COMPANION_TF_CREATE"] = "創建新角色擋",
		["REG_COMPANION_TF_OWNER"] = "擁有者：%s",
		["REG_COMPANION_TITLE"] = "標題",
		["REG_DELETE_WARNING"] = [=[你確定你要刪除 %s 的角色檔？
]=],
		["REG_LIST_CHAR_EMPTY"] = "無角色",
		["REG_LIST_CHAR_IGNORED"] = "忽略",
		["REG_LIST_CHAR_SEL"] = "選擇角色",
		["REG_LIST_CHAR_TITLE"] = "角色列表",
		["REG_LIST_CHAR_TT_GLANCE"] = "第一印象",
		["REG_LIST_CHAR_TT_IGNORE"] = "已忽略的角色",
		["REG_LIST_CHAR_TT_NEW_ABOUT"] = "資訊未讀",
		["REG_LIST_GUILD"] = "角色公會",
		["REG_LIST_IGNORE_EMPTY"] = "無已忽略的角色",
		["REG_LIST_IGNORE_TITLE"] = "忽略名單",
		["REG_LIST_NAME"] = "角色名稱",
		["REG_PLAYER"] = "角色",
		["REG_PLAYER_ABOUT"] = "關於",
		["REG_PLAYER_ABOUT_MUSIC"] = "角色主題曲",
		["REG_PLAYER_ABOUT_MUSIC_LISTEN"] = "播放主題曲",
		["REG_PLAYER_ABOUT_MUSIC_REMOVE"] = "取消已選擇的主題曲",
		["REG_PLAYER_ABOUT_MUSIC_SELECT"] = "選擇角色主題曲",
		["REG_PLAYER_ABOUT_MUSIC_SELECT2"] = "選擇主題曲",
		["REG_PLAYER_ABOUT_MUSIC_STOP"] = "停止播放主題曲",
		["REG_PLAYER_ABOUT_T1_YOURTEXT"] = "由此鍵入文字",
		["REG_PLAYER_ABOUTS"] = "關於%s",
		["REG_PLAYER_ADD_NEW"] = "新建",
		["REG_PLAYER_AGE"] = "年齡",
		["REG_PLAYER_BIRTHPLACE"] = "出生地",
		["REG_PLAYER_CARACT"] = "特徵",
		["REG_PLAYER_CHARACTERISTICS"] = "特徵",
		["REG_PLAYER_CLASS"] = "職業",
		["REG_PLAYER_COLOR_CLASS"] = "職業顏色",
		["REG_PLAYER_COLOR_CLASS_TT"] = "此選項同時也會更改名字的顏色。",
		["REG_PLAYER_EYE"] = "眼睛顏色",
		["REG_PLAYER_PSYCHO_Pieux"] = "迷信",
		["REG_PLAYER_PSYCHO_Rationnel"] = "理性",
		["REG_PLAYER_PSYCHO_Reflechi"] = "謹慎",
		["REG_PLAYER_PSYCHO_Sincere"] = "誠實",
		["REG_PLAYER_PSYCHO_Trompeur"] = "虛假",
		["REG_PLAYER_PSYCHO_Valeureux"] = "勇敢",
		["REG_PLAYER_RACE"] = "種族",
		["REG_PLAYER_RESIDENCE_SHOW_TT"] = [=[|cff00ff00%s 
|r點擊以在地圖上顯示]=],
		["REG_PLAYER_SHOWPSYCHO"] = "顯示個性資料欄",
		["REG_PLAYER_SHOWPSYCHO_TT"] = [=[如果你想使用角色個性描述，請勾選。

如果你不想以這種方式來向其他玩家展示您的角色，請不要勾選此欄，描述框將會完全隱藏。]=],
		["REG_PLAYER_STYLE_BATTLE"] = "角色扮演戰鬥解決方式",
		["REG_PLAYER_STYLE_BATTLE_1"] = "使用遊戲ＰＶＰ戰鬥",
		["REG_PLAYER_STYLE_BATTLE_3"] = "使用擲骰戰鬥",
		["REG_PLAYER_STYLE_BATTLE_4"] = "使用表情戰鬥",
		["REG_PLAYER_STYLE_DEATH"] = "允許角色死亡",
		["REG_PLAYER_STYLE_FREQ"] = "ＩＣ頻率",
		["REG_PLAYER_STYLE_FREQ_1"] = "全時間角色扮演狀態",
		["REG_PLAYER_STYLE_FREQ_2"] = "大部分時間",
		["REG_PLAYER_STYLE_FREQ_3"] = "半數時間",
		["REG_PLAYER_STYLE_FREQ_4"] = "不規律",
		["REG_PLAYER_STYLE_FREQ_5"] = "全時間狀況外，非角色扮演玩家。",
		["REG_PLAYER_STYLE_GUILD"] = "公會成員",
		["REG_PLAYER_STYLE_GUILD_IC"] = "成員皆為角色扮演玩家",
		["REG_PLAYER_STYLE_GUILD_OOC"] = "成員皆為非角色扮演玩家",
		["REG_PLAYER_STYLE_HIDE"] = "不予顯示",
		["REG_PLAYER_STYLE_INJURY"] = "允許角色受到傷害的狀況",
		["REG_PLAYER_STYLE_PERMI"] = "需要經過玩家許可",
		["REG_PLAYER_STYLE_ROMANCE"] = "允許角色之間發展戀愛關係",
		["REG_PLAYER_TITLE"] = "稱號",
		["REG_PLAYER_TRP2_PIERCING"] = "穿環打孔",
		["REG_PLAYER_TRP2_TATTOO"] = "刺青",
		["REG_PLAYER_TRP2_TRAITS"] = "面相",
		["REG_PLAYER_WEIGHT"] = "體態",
		["REG_REGISTER"] = "目錄",
		["REG_REGISTER_CHAR_LIST"] = "角色名單",
		["REG_RELATION"] = "人際關係",
		["REG_RELATION_BUSINESS"] = "工作",
		["REG_RELATION_BUSINESS_TT"] = "%s 和 %s 之間是生意上的關係。",
		["REG_RELATION_FAMILY"] = "家人",
		["REG_RELATION_FAMILY_TT"] = "%s 與 %s 的關係血濃於水。",
		["REG_RELATION_FRIEND"] = "友善",
		["REG_RELATION_FRIEND_TT"] = "%s 將 %s 視為朋友。",
		["REG_RELATION_LOVE"] = "愛戀",
		["REG_RELATION_LOVE_TT"] = "%s正與%s陷入愛河！",
		["REG_RELATION_NEUTRAL"] = "中立",
		["REG_RELATION_NEUTRAL_TT"] = "%s 對 %s 沒什麼特別的感覺。",
		["REG_RELATION_NONE"] = "無",
		["REG_RELATION_NONE_TT"] = "%s 不認識 %s。",
		["REG_RELATION_TARGET"] = "|cffffff00Click: |r變更關係",
		["REG_RELATION_UNFRIENDLY"] = "不友善",
		["REG_RELATION_UNFRIENDLY_TT"] = "看來 %s 不太喜歡 %s。",
		["REG_TT_IGNORED"] = "<角色已忽略>",
		["REG_TT_IGNORED_OWNER"] = "<主人已忽略>",
		["REG_TT_LEVEL"] = "等級 %s %s",
		["REG_TT_REALM"] = "區域: |cffff9900%s",
		["REG_TT_TARGET"] = "目標： |cffff9900%s",
		["SCRIPT_ERROR"] = "腳本錯誤",
		["TB_AFK_MODE"] = "離開",
		["TB_DND_MODE"] = "請勿打擾",
		["TB_GO_TO_MODE"] = "切換至 %s 模式",
		["TB_LANGUAGE"] = "語言",
		["TB_LANGUAGES_TT"] = "變更語言",
		["TB_STATUS"] = "玩家",
		["TB_TOOLBAR"] = "工具列",
		["TF_IGNORE"] = "忽略玩家",
		["TF_IGNORE_TT"] = "|cffffff00Click:|r 忽略玩家",
		["TF_OPEN_CHARACTER"] = "顯示角色頁面",
		["TF_OPEN_COMPANION"] = "顯示夥伴頁面",
		["TF_OPEN_MOUNT"] = "顯示坐騎頁面",
		["TF_PLAY_THEME"] = "播放角色主題曲",
		["TF_PLAY_THEME_TT"] = [=[|cffffff00Click:|r 播放 |cff00ff00%s
|cffffff00Right-click:|r 停止播放]=],
		["UI_CLOSE_ALL"] = "全部關閉",
		["UI_COLOR_BROWSER"] = "顏色瀏覽器",
		["UI_COLOR_BROWSER_SELECT"] = "選擇顏色",
		["UI_COMPANION_BROWSER_HELP"] = "請選擇一隻戰寵",
		["UI_COMPANION_BROWSER_HELP_TT"] = [=[|cffffff00警告: |r只有已經被重新命名的戰寵才能與簡介連結。 
|cff00ff00此處僅列出符合此條件的戰寵。]=],
		["UI_FILTER"] = "過濾器",
		["UI_ICON_BROWSER"] = "圖示瀏覽器",
		["UI_ICON_BROWSER_HELP"] = "複製圖示",
		["UI_ICON_SELECT"] = "選擇圖示",
		["UI_IMAGE_SELECT"] = "選擇圖片",
		["UI_LINK_TEXT"] = "於此處輸入文字",
		["UI_LINK_URL"] = "http://your.url.here",
		["UI_MUSIC_BROWSER"] = "音樂瀏覽器",
		["UI_MUSIC_SELECT"] = "選擇音樂",
		["UI_TUTO_BUTTON"] = "教學模式",
		["UI_TUTO_BUTTON_TT"] = "點擊以開啟／關閉教學模式"
	}
    --@end-do-not-package@
};

TRP3_API.locale.registerLocale(LOCALE);