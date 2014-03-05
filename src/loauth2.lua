--[[--
 Base module
 @module loauth2
]]

-- Protect the healer! I mean... protect the global scope!
local mt = {__index = _ENV}
local new_ENV = {}
setmetatable(new_ENV, mt)
_ENV = new_ENV

--requests = require('requests')

--local http = require("socket.http")

--- A provider is simply a holder for oauth information.
-- @field name The name of the provider.
-- @field scopes Name and URI of available scopes.
-- @field auth_uri The URI to obtain the Auth Token
-- @field revoke_uri
-- @field token_uri
local Provider = {}
Provider.__index = Provider

---Create a new, empty provider.
--@param name The new provider's name (e.g. Google)
--@param o A table to turn into a Provider
--@return The new provider
function Provider:new(name, o)
    o = o or {}
    o.name = name
    setmetatable(o, self)
    return o
end

---Takes a list of scope names and resolves them into URIs
--via the provider's scope field.
--@param scopes A list of scope names to resolve.
--@return A list of resolved scope URIs.
--@return A list of scope names that couldn't be resolved.
function Provider:resolve_scopes(scopes)
    local uris = {}
    local failed_scopes = {}
    for _,scope in scopes do
        if self.scopes[scope] then
            uris[#uris+1] = self.scopes[scope]
        else
            failed_scopes[#failed_scopes+1] = scope
        end
    end
    return uris, failed_scopes
end

local Credentials = {}
Credentials.__index = Credentials 


loauth2 = {
    Provider = Provider,
    Credentials = Credentials,
    client = require('client'),
}

return loauth2

