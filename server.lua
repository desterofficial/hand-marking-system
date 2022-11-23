-- github.com/cleoppa & github.com/desterofficial
-- Sistem düzenlenme aşamasındadır!

WeaponID = {
	[22] = true,
}

addEventHandler('onPlayerWeaponSwitch', getRootElement(),
	function(previousWeaponID, currentWeaponID)
		if (WeaponID[currentWeaponID] ) then
			toggleControl(source, 'fire', false)
			toggleControl(source, 'action', false) 
			setPlayerHudComponentVisible(source, "crosshair", false) 
		else
			toggleControl(source, 'fire', true) 
			toggleControl(source, 'action', true) 
			setPlayerHudComponentVisible(source, "crosshair", true) 
		end
	end
)
