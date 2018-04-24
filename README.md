# Jailbreak-API

An API written for Jailbreak exploiters.

Contact me for any questions/concerns/ideas;
Discord - Josh#0903

# Hashes
Jailbreak's current hashes.

# Hash Conversion
```lua
local Hashes = game:HttpGet('https://raw.githubusercontent.com/Integration-Services/Jailbreak-API/master/Hashes', true); Hashes = game:GetService'HttpService':JSONDecode(Hashes)

local HashConversion
for _,v in next,getreg() do
    if type(v) == 'function' then
        if getfenv(v).script == game:GetService'Players'.LocalPlayer.PlayerScripts.LocalScript then
            local uv = debug.getupvalues(v)
            if type(uv) == 'table' then
                pcall(function()
                    if uv.R then
                        HashConversion = debug.getupvalues(uv.R[Hashes.HashConversion]).Cd
                    end
                end)
            end
        end
    end
end

-- Example
local Remote = game:GetService'ReplicatedStorage'.Resource:FindFirstChildWhichIsA'RemoteEvent'
Remote:FireServer(HashConversion[Hashes.Punch])
```

# Jailbreak Client.lua
Jailbreak's current client script.