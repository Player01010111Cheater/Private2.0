local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/Sigmna/refs/heads/main/Souce.lua"))()
local ff = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()
local Window = redzlib:MakeWindow({"A Star Client | It's time to win", "", ""})
Window:AddMinimizeButton({
  Button = { Image = redzlib:GetIcon("Apple"), BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})
local player = game.Players.LocalPlayer
local esp = Window:MakeTab({'ESP' , 'Home'})
local loadbasesection = esp:AddSection({"ESP"})
local player = game.Players.LocalPlayer
local alldroppedfruitsfolder = workspace.AllDroppedFruit
local camerafield = workspace.CurrentCamera
local allnpc = workspace.AllNPC
local folderplayerinworkspace = workspace.PlayerCharacters
local stop = false
local fruitesp = esp:AddToggle({
  Name = "dropped fruit esp",
  Default = false,
  Flag = "dropfruitesp",
  Callback = function (fruitespmaintoggle)
    if fruitespmaintoggle == true then
    local function fruitesp(part)
      local a = Instance.new("BillboardGui" ,part)
      a.AlwaysOnTop = true
      a.MaxDistance = 999999999999
      a.Enabled = true
      a.ResetOnSpawn = false
      a.Active = true
      a.Size = UDim2.new(0,5,0,25)
      a.Name = "ESP"
      local b = Instance.new("TextLabel" , a)
      local camera = workspace.Camera
      b.Size = UDim2.new(0,1,0,1)
      b.BackgroundTransparency = 1
      b.TextSize = 12
      b.Text = b.Parent.Parent.Name
      b.Position = UDim2.new(0,0,0,0)
      b.TextColor = BrickColor.new("White")
    end
    stop = true
    while wait(1.3) do
      if stop == false then
        
      else
        for _, deletefruitofplayers in pairs(game.Players:GetDescendants()) do
              if deletefruitofplayers.Name == "ESP" then
                deletefruitofplayers:Destroy()
          end
        end
        for _, deletefruitininvent in pairs(folderplayerinworkspace:GetDescendants()) do
              if deletefruitininvent.Name == "ESP" then
                deletefruitininvent:Destroy()
          end
        end
        for _, v in pairs(alldroppedfruitsfolder:GetDescendants()) do
          if v.Name  == "ESP" then
            v:Destroy()
          else
            if v.Name == "Handle" then
            fruitesp(v.Parent)
            end
          end
          end
        end
      end
  else
    for _, v in pairs(workspace:GetDescendants()) do
      if v.Name  == "ESP" then
        v:Destroy()
      end
    end
    stop = false
  end
  end})

local GetlastCFrame = nil
local stop2 = true
  local Items = Window:MakeTab({'Items' , 'database'})
  local itemssection = Items:AddSection({"Items"})
local toggleitems = Items:AddToggle({
  Name = "Get all dropped fruit",
  Flag = "",
  Default = false,
  Callback = function (toggleitemsget)
    if toggleitemsget == true then
      stop2 = true
    while wait(0.2) do
      if stop2 == true then
        for _, t in pairs(alldroppedfruitsfolder:GetDescendants()) do
          if t.Name == "Handle" then
            GetlastCFrame = player.Character.HumanoidRootPart.CFrame
            wait(0.01)
            player.Character.HumanoidRootPart.CFrame = t.CFrame
            wait(1)
            player.Character.HumanoidRootPart.CFrame = GetlastCFrame
          end
        end
      else

      end
    end
  else
    stop2 = false
    end
  end
})


local playersetting = Window:MakeTab({'Player Setting' , 'database'})
local sectionplayersetting = playersetting:AddSection({"Player Setting"})

local FieldOfviewchanger = playersetting:AddSlider({
  Name = "Select field of view",
  Flag = "Slider Teste",
  Min = 70,
  Max = 120,
  Default = 70,
  Callback = function (fieldofview)
    camerafield.MaxAxisFieldOfView = 155.55
    camerafield.FieldOfView = fieldofview
  end
})

local misc = Window:MakeTab({'Misc' , 'database'})
local sectionmisc = misc:AddSection({'Misc'})
local reedemallcodes = misc:AddButton({'Redeem all new codes' , function ()
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Peodiz")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("FruitAwakeningTime")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Update7.1")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Halloween2024")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("<3LEEPUNGG")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("PlayKingLegacyFor5Gems")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("RainbowDragon")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("DragonColorRefund")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("PassiveMaste")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("InfernoKingAwait")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("SKGames")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Update7.0.4")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("EpicAdventure")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("TelekinesisFruitPower")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Update7Release")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("OWNERMETEOR")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("WELCOMETOKINGLEGACY")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("PLAYKINGLEGACYFOR10GEMS")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("FREESTATSRESET")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("UPDATE6")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("DOUGHAWAKENING")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("ExperienceDoubling")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("10KYZX-4LPQ8-WFJ")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("YT10K")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("UPDATE5")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("shutdownhotfix")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("UPDATE5SILVERKEY")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("10KYZX-4LPQ8-WFJ")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Peodiz10k")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Halloween2023")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Sub2Leepungg")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("2MFAV")
  wait(0.1)
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.redeemcode:InvokeServer("Update4.7")
end})

local Autoraid = Window:MakeTab({'Auto Raid' , 'Sword'})
local sectionautoraid = Autoraid:AddSection("Auto Raid")
local AutoBoss = Window:MakeTab({'Auto Boss' , 'Sword'})
local sectionaautoboss = AutoBoss:AddSection("Auto boss")



if game.PlaceId == 4520749081 then
  local buttonteleport = Autoraid:AddButton({"Teleport to raid(Sea 1)" , function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4598.44678, 222.365601, -75.3019409, -0.472656518, 0.00902395137, 0.881200552, 0.0046504885, 0.999959171, -0.00774568273, -0.881234527, 0.000436973205, -0.472679228)
  end})
elseif game.PlaceId == 6381829480 then
  local buttonteleport = Autoraid:AddButton({"Teleport to raid(Sea 2)" , function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4598.44678, 222.365601, -75.3019409, -0.472656518, 0.00902395137, 0.881200552, 0.0046504885, 0.999959171, -0.00774568273, -0.881234527, 0.000436973205, -0.472679228)
  end})
end
-- raid menu = 5931540094

--sea 1 = 4520749081
local stoptrader = false
local whatugive = "None"
local player2 = game.Players.LocalPlayer
local whatothergiveforu = "None"
local trader = Window:MakeTab({'Trader(BETA)' , 'Sword'})
local sectiontrader = trader:AddSection({'Trader'})
local autoacceptt2rade = trader:AddToggle({
  Name = "Start auto offer and accept" ,
  Default = false,
  Callback = function (Shownormtraifdorno)
    while wait(2) do
      if Shownormtraifdorno == true then
        if whatugive == "Gas" then
          whatugive = "GasFruit"
       elseif whatugive == "Gold" then
          whatugive = "GoldFruit"
       elseif whatugive == "Magnet" then
          whatugive = "MagnetFruit"
       elseif whatugive == "Spirit" then
          whatugive = "SpiritFruit"
       elseif whatugive == "Quake" then
          whatugive = "QuakeFruit"
       elseif whatugive == "Snow" then
          whatugive = "SnowFruit"
       elseif whatugive == "Light" then
          whatugive = "LightFruit"
       elseif whatugive == "Ice" then
          whatugive = "IceFruit"
      elseif whatugive == "Magma" then
          whatugive = "MagmaFruit"
      elseif whatugive == "Flame" then
          whatugive = "FlameFruit"
      elseif whatugive == "Rumble" then
          whatugive = "RumbleFruit"
      elseif whatugive == "Gate" then
          whatugive = "GateFruit"
      elseif whatugive == "Dragon" then
          whatugive = "DragonFruit"
      elseif whatugive == "Toy" then
          whatugive = "ToyFruit"
      elseif whatugive == "Phoenix" then
          whatugive = "PhoenixFruit"
      elseif whatugive == "Dough" then
          whatugive = "DoughFruit"
      end
      if whatothergiveforu == "Gas" then
          whatothergiveforu = "GasFruit"
       elseif whatothergiveforu == "Gold" then
          whatothergiveforu = "GoldFruit"
       elseif whatothergiveforu == "Magnet" then
          whatothergiveforu = "MagnetFruit"
       elseif whatothergiveforu == "Spirit" then
          whatothergiveforu = "SpiritFruit"
       elseif whatothergiveforu == "Quake" then
          whatothergiveforu = "QuakeFruit"
       elseif whatothergiveforu == "Snow" then
          whatothergiveforu = "SnowFruit"
       elseif whatothergiveforu == "Light" then
          whatothergiveforu = "LightFruit"
       elseif whatothergiveforu == "Ice" then
          whatothergiveforu = "IceFruit"
      elseif whatothergiveforu == "Magma" then
          whatothergiveforu = "MagmaFruit"
      elseif whatothergiveforu == "Flame" then
          whatothergiveforu = "FlameFruit"
      elseif whatothergiveforu == "Rumble" then
          whatothergiveforu = "RumbleFruit"
      elseif whatothergiveforu == "Gate" then
          whatothergiveforu = "GateFruit"
      elseif whatothergiveforu == "Dragon" then
          whatothergiveforu = "DragonFruit"
      elseif whatothergiveforu == "Toy" then
          whatothergiveforu = "ToyFruit"
      elseif whatothergiveforu == "Phoenix" then
          whatothergiveforu = "PhoenixFruit"
      elseif whatothergiveforu == "Dough" then
          whatothergiveforu = "DoughFruit"
      end
      
          for _, v  in pairs(player2.PlayerGui:GetDescendants()) do
              if v.Name == "Player1_Offer" then
                  for _, t in pairs(v:GetDescendants()) do
                      if t.Name == whatugive then
                          for _, checkfruit in pairs(player2.PlayerGui:GetDescendants()) do
                              if checkfruit.Name == "Player2_Offfer" then
                                  for _, l in pairs(checkfruit:GetDescendants()) do
                                      if l.Name == whatothergiveforu then
                                          game:GetService("ReplicatedStorage").Chest.Remotes.Functions.TradeFunction:InvokeServer("Ready")
                                      end
                                  end
                              end
                          end
                      else
                          game:GetService("ReplicatedStorage").Chest.Remotes.Functions.TradeFunction:InvokeServer("RemoveItem",{["ItemName"] = t})
                          wait(0.5)
                          game:GetService("ReplicatedStorage").Chest.Remotes.Functions.TradeFunction:InvokeServer("PutItem",{["ItemName"] = whatugive,["Amt"] = "1",["Add"] = true})
                      end
                  end
              end
          end
      else

      end
    end
end})
local needoffer = trader:AddTextBox({
  Name = "What You give",
  PlaceholderText = "Type here",
  Description = "Maybe Gas , Gold",
  Callback = function (whatigive)
    whatugive = whatigive
  end
})
local whatothergive = trader:AddTextBox({
  Name = "What other give",
  Description = "Maybe Gas ,  Light",
  PlaceholderText = "Type here",
  Callback = function (whatothergive)
    whatothergiveforu = whatothergive
  end
})
