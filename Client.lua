function sendMessage(channel, message)
	triggerServerEvent("discord.sendMessage", localPlayer, channel, message);
end;