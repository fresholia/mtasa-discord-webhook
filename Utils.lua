Utils = {
	sendChat = function(channel)
		addEventHandler("onPlayerChat", root,
			function(message, type)
				sendMessage(channel, getPlayerName(source).." says: "..message);
			end
		);
	end;

	joinQuit = function(channel)
		addEventHandler("onPlayerJoin", root,
			function()
				sendMessage(channel, getPlayerName(source).." joined the server.");
			end
		);

		addEventHandler("onPlayerQuit", root,
			function()
				sendMessage(channel, getPlayerName(source).." leaved the server.");
			end
		);
	end;

	commandFlow = function(channel)
		addEventHandler("onPlayerCommand", root,
			function(command)
				sendMessage(channel, getPlayerName(source).." uses the command: /"..command);
			end
		);
	end;
}