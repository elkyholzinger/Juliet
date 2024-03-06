local open_terminal = function()
	local app = hs.application.get('kitty')
	if app then
		if not app:mainWindow() then
			app:selectMenuItem({ 'kitty', 'New OS window' })
		elseif app:isFrontmost() then
			app:hide()
		else
			app:activate()
		end
	else
		hs.application.launchOrFocus('kitty')
	end
end

local open_neovide = function()
	local app = hs.application.get('Neovide')
	if app then
		if not app:mainWindow() then
			app:quit()
			hs.application.launchOrFocus('Neovide')
		elseif app:isFrontmost() then
			app:hide()
		else
			app:activate()
		end
	else
		hs.application.launchOrFocus('Neovide')
	end
end

hs.hotkey.bind({}, 'f14', open_neovide)
hs.hotkey.bind({ 'ctrl' }, 'space', open_terminal)

hs.hotkey.bind({}, 'f15', function()
	hs.caffeinate.lockScreen()
end)
