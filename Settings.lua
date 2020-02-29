Webhooks = {
	["general"] = {
		link = "https://discordapp.com/api/webhooks/683272443351400489/dg0dqCD4IYE90n-F1OPv-Z2xju6UbRd2l70d4lW6pauG_4CbO_QodPhZ-6m622xIa8IM",
		avatar = "https://pbs.twimg.com/profile_images/674667854403383296/jtOOmrTF_400x400.png", -- if u want to empty, enter nil
		username = "Donald Trump"
	}
}

CallbackUtils = {
	Utils.sendChat("general"), -- Chat flow will be transferred on the channel called ["general"]
	Utils.joinQuit("general"),
	Utils.commandFlow("general")
}