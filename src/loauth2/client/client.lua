--- Module for client side OAuth implementations
--@module loauth2.client


-- Protect the healer! I mean... protect the global scope!
local mt = {__index = _ENV}
local new_ENV = {}
setmetatable(new_ENV, mt)
_ENV = new_ENV
local client = {
    requests = require('requests')
}

return client
