function Div(el)
  if #el.classes > 0 then
    local env = el.classes[1]  -- use the first class as the environment name
    return {
        pandoc.RawBlock("latex", "\\begin{" .. env .. "}"),
        el,
        pandoc.RawBlock("latex", "\\end{" .. env .. "}")
    }
  end
end
