sub init()
	m.title = m.top.FindNode("title")
	m.overview = m.top.FindNode("overview")
	m.poster_path = m.top.FindNode("poster_path")
	m.play_button = m.top.FindNode("play_button")
	m.top.observeField("visible", "onVisibleChange")
	m.play_button.setFocus(true)
end sub

sub onVisibleChange()
	if m.top.visible = true then
		m.play_button.setFocus(true)
	end if
end sub

sub OnContentChange(obj)
	item = obj.getData()
	m.title.text = item.title
	m.overview.text = item.overview
	m.poster_path.uri = item.HDGRIDPOSTERURL
end sub