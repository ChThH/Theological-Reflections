-- columns.lua
-- Pandoc Lua filter to convert ::: columns and ::: column divs into LaTeX paracol environments

local paracol_level = 0

function Div(el)
  if el.classes:includes('columns') then
    if FORMAT:match 'latex' then
      paracol_level = paracol_level + 1
      local body = pandoc.List()
      table.insert(body, pandoc.RawBlock('latex', '\\begin{paracol}{2}'))
      for _, content in ipairs(el.content) do
        table.insert(body, content)
      end
      table.insert(body, pandoc.RawBlock('latex', '\\end{paracol}'))
      paracol_level = paracol_level - 1
      return body
    end
  elseif el.classes:includes('column') then
    if FORMAT:match 'latex' and paracol_level > 0 then
      local body = pandoc.List()
      table.insert(body, pandoc.RawBlock('latex', '\\switchcolumn'))
      for _, content in ipairs(el.content) do
        table.insert(body, content)
      end
      return body
    end
  end
end
