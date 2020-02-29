# mta-discord-webhook
MTA:SA Discord Webhook Integration

**Documentation**

Send message:
```lua
  -- Both export:
  exports["mta-discord-webhook"]:sendMessage(channel, message)
```

Create channel:
`Settings.lua` ->

Add like this:
```lua
Webhooks = {
	["general"] = {
		link = "https://discordapp.com/api/webhooks/683272443351400489/dg0dqCD4IYE90n-F1OPv-Z2xju6UbRd2l70d4lW6pauG_4CbO_QodPhZ-6m622xIa8IM",
		avatar = "https://pbs.twimg.com/profile_images/674667854403383296/jtOOmrTF_400x400.png", -- if u want to empty, write false
		username = "Donald Trump"
	}
}
```
