--[[--
 Summary. A description
 @module loauth2.client.requests
]]


-- Protect the healer! I mean... protect the global scope!
local mt = {__index = _ENV}
local new_ENV = {}
setmetatable(new_ENV, mt)
_ENV = new_ENV
local requests = {}


local function build_request(request)
    local new_request = {}
    for k, v in pairs(request) do
        if type(v) == 'function' then
            --TODO allow for arguements
            v = v()
        end
        new_request[k] = v
    end
    if new_request.scopes and not type(new_request.scopes) == 'string' then
        if new_request.provider then
           local  resolved_scopes, unknown_names = provider:resolve_scopes(new_request.scopes)
           for _, scope in ipairs(unknown_names) do
               resolved_scopes[#resolved_scopes +1] = scope
           end
           new_request.scopes = resolved_scopes
       end
       new_request.scopes = table.concat(new_request.scopes, ' ')
   end
   return new_request
end


return requests 

