function Image(elem)
	elem.attributes = {
		["fig-alt"] = "Sample alt text. To be replaced!",
	}
	elem.caption = "A sample caption. Image source: unknown."
	elem.title = "A sample title."
	return elem
end
