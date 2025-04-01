local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("A")
local serv = win:Server("Main", "")
local othergui = serv:Channel("Other gui")
othergui:Button("explode all", function ()
    for _, names in pairs(game.Players:GetChildren()) do
      game.GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":explode", names.names)
      wait(1)
    end
end)
