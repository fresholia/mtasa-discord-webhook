WebhookClass = setmetatable({
        constructor = function()
            
        end;

        send = function()
        

        end;
    }, {
    __call = function(cls, ...)
        local self = {}
        setmetatable(self, {
            __index = cls
        })

        self:constructor(...)

        return self
    end
});