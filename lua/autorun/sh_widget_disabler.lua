hook.Add("Initialize", "WidgetDisabler_optim", function()
	hook.Remove("PlayerTick", "TickWidgets")
	hook.Remove("PlayerInitialSpawn", "PlayerAuthSpawn") -- Вшито в DarkRP
	timer.Remove("HostnameThink")
	
	hook.Remove("PlayerSay", "ULXMeCheck") -- удаляет /me из ulx
	if SERVER then
		if timer.Exists("CheckHookTimes") then
			timer.Remove("CheckHookTimes")
		end
	else
		hook.Remove("RenderScreenspaceEffects", "RenderColorModify")
		hook.Remove("RenderScreenspaceEffects", "RenderBloom")
		hook.Remove("RenderScreenspaceEffects", "RenderToyTown")
		hook.Remove("RenderScreenspaceEffects", "RenderTexturize")
		hook.Remove("RenderScreenspaceEffects", "RenderSunbeams")
		hook.Remove("RenderScreenspaceEffects", "RenderSobel")
		hook.Remove("RenderScreenspaceEffects", "RenderSharpen")
		hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay")
		hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur")
		hook.Remove("RenderScene", "RenderStereoscopy")
		hook.Remove("RenderScene", "RenderSuperDoF")
		hook.Remove("GUIMousePressed", "SuperDOFMouseDown")
		hook.Remove("GUIMouseReleased", "SuperDOFMouseUp")
		hook.Remove("PreventScreenClicks", "SuperDOFPreventClicks")
		hook.Remove("PostRender", "RenderFrameBlend")
		hook.Remove("PreRender", "PreRenderFrameBlend")
		hook.Remove("Think", "DOFThink")
		hook.Remove("RenderScreenspaceEffects", "RenderBokeh")
		hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
		hook.Remove("PostDrawEffects", "RenderWidgets")
		
		-- Could screw with people's point shops but whatever.
		hook.Remove("PostDrawEffects", "RenderHalos")
		hook.Remove("PlayerBindPress", "PlayerOptionInput")
		hook.Remove("HUDPaint", "PlayerOptionDraw")
		hook.Remove("Think", "NotificationThink")
		hook.Remove("DrawOverlay", "VGUIShowLayoutPaint")
		hook.Remove("PreDrawHalos", "PropertiesHover")
	end
	MsgN("Widgets disabled!\n")
end)