local ChatSound = {}

ChatSound.OnPlayerSendMessage = function(eventstatus, pid, message)
	if Players[pid] ~= nil and Players[pid]:IsLoggedIn() then
		tes3mp.PlaySpeech(pid, "Fx/miss.wav")
	end
end

customEventHooks.registerHandler("OnPlayerSendMessage", ChatSound.OnPlayerSendMessage)

return ChatSound







