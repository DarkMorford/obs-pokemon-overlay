-- Utility functions for dealing with text

local function tokenize(text)
  local tokens = {}
  for word in text:gmatch("%S+") do
    tokens[#tokens + 1] = word
  end
  return tokens
end

local function wraptext(text, limit)
  limit = limit or 75
  
  local remainingspace = limit
  local paragraph = {}
  local line = {}
  
  for _, word in ipairs(tokenize(text)) do
    if (string.len(word) + 1) > remainingspace then
      paragraph[#paragraph + 1] = table.concat(line, " ")
      line = { word }
      remainingspace = limit - string.len(word)
    else
      line[#line + 1] = word
      remainingspace = remainingspace - (string.len(word) + 1)
    end
  end
  
  paragraph[#paragraph + 1] = table.concat(line, " ")
  return table.concat(paragraph, "\n")
end

-- Send public functions back to caller
return {
  wraptext = wraptext,
}
