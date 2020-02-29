WebhookList = {};
WebhookDebug = false; -- true: giving debug messages // false: release mode
WebhookClass = setmetatable({
        constructor = function(self, args)
            self.username = Webhooks.args.username;
            self.link = Webhooks.args.link;
            self.avatar = Webhooks.args.avatar;
            if WebhookDebug then
                outputDebugString("DiscordWebhook: Created channel '"..args.."'");
            end;
        end;

        send = function(self, message)
            local sendOptions = {
                content = message:gsub("#%x%x%x%x%x%x", ""),
			    username = self.username,
                avatar = self.avatar
			};
            fetchRemote(self.link, sendOptions,
		        function(responseData)
		            if WebhookDebug then
                        outputDebugString("DiscordWebhook: "..responseData);
                    end;
                end;
	        );
        end;
    }, {
    __call = function(cls, ...)
        local self = {}
        setmetatable(self, {
            __index = cls
        })

        self:constructor(...)

        return self
    end;
});

addEventHandler("onResourceStart", resourceRoot,
    function()
        for name, data in pairs(Webhooks) do
            WebhookList[name] = WebhookClass(name);
        end;
    end;
);

function sendMessage(channel, message)
    if WebhookList[channel] then
        WebhookList[channel]:send(message);
        if WebhookDebug then
            outputDebugString("DiscordWebhook: Send message '"..message.."' from '"..channel.."' channel.");
        end;
    else
        outputDebugString("DiscordWebhook: Couldn't find the Discord Webhook Channel.");
    end;
end;
addEvent("discord.sendMessage", true);
addEventHandler("discord.sendMessage", root, sendMessage);

sendMessage("general", "hello dudes.")