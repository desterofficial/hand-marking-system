-- github.com/cleoppa & github.com/desterofficial

---------------------------------------------------------
txd = engineLoadTXD("files/invisible.txd", 352)
engineImportTXD(txd, 352 )
dff = engineLoadDFF("files/invisible.dff", 352)
engineReplaceModel(dff, 352 )
----------------------------------------------------------

bindKey("mouse2", "down", 
	function() 
	if getPedOccupiedVehicle(localPlayer) then 
		return
	end
	if getPedMoveState(localPlayer) == "crouch" then 
		return
	end
	if getPlayerWeapon(localPlayer) == 0 then 
		triggerServerEvent("addApontar", getRootElement(), localPlayer)
	end
end
)

bindKey("mouse2", "up", 
	function() 
	if getPlayerWeapon(localPlayer) == 22 then 
				triggerServerEvent("removerApontar", getRootElement(), localPlayer)
			end
	end
)


addEventHandler("onClientPlayerWeaponFire",localPlayer,function()
	if (getPedWeapon(localPlayer) == 22) then 
      cancelEvent() 
    end
