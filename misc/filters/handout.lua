-- see: https://pandoc.org/lua-filters.html#creating-a-handout-from-a-paper
-- creates a handout from an article, using its headings,
-- blockquotes, numbered examples, figures, and any
-- Divs with class "handout"

function Pandoc(doc)
	local hblocks = {}
	for i, el in pairs(doc.blocks) do
		if
			(el.t == "Div" and el.classes[1] == "handout")
			or (el.t == "BlockQuote")
			or (el.t == "OrderedList" and el.style == "Example")
			or (el.t == "Para" and #el.c == 1 and el.c[1].t == "Image")
			or (el.t == "Header")
		then
			table.insert(hblocks, el)
		end
	end
	return pandoc.Pandoc(hblocks, doc.meta)
end
