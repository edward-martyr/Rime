-- 日付
date_translator = require("datetime")

-- append_blank_filter: 在单词后增加空格
-- 详见 `lua/easy_en.lua`
local easy_en = require("easy_en")
append_blank_filter = easy_en.append_blank_filter

--[[
number_translator: 将 `/` + 阿拉伯数字 翻译为大小写汉字
--]]
number_translator = require("number")
