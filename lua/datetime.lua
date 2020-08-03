local function translator(input, seg)
   if (input == "date") then
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("date", seg.start, seg._end, os.date("%d %b %Y"), "日期"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "日期"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y/%m/%d"), "日期"))
      yield(Candidate("date", seg.start, seg._end, os.date("%c"), "日期"))
      yield(Candidate("date", seg.start, seg._end, os.date("%m/%d"), "日期"))
   end
   if (input == "time") then
      --- Candidate(type, start, end, text, comment)
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), "時間"))
      yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), "時間"))
      yield(Candidate("time", seg.start, seg._end, os.date("%Y/%m/%d %H:%M:%S"), "時間"))
   end
end

return translator
