local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/Sigmna/refs/heads/main/Souce.lua"))()
local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()
local Window = redzlib:MakeWindow({"A Star Client | It's time to win", "", ""})
Window:AddMinimizeButton({
  Button = { Image = redzlib:GetIcon("Apple"), BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})
local esp = Window:MakeTab({'ESP' , 'Home'})
local loadbasesection = esp:AddSection({"ESP"})
local alldroppedfruitsfolder = workspace.AllDroppedFruit
local player = game.Players.LocalPlayer
local camerafield = workspace.CurrentCamera
local name =  "PassiveTree"
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
            wait(0.1)
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


local walkspeed = playersetting:AddSlider({
  Name = "Select field of view",
  Flag = "Slider Teste",
  Min = 16,
  Max = 120,
  Default = 16,
  Callback = function (field2ofview)
    player.Character.Humanoid.WalkSpeed = field2ofview
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



local buttonteleport = Autoraid:AddButton({"Teleport to raid" , function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4598.44678, 222.365601, -75.3019409, -0.472656518, 0.00902395137, 0.881200552, 0.0046504885, 0.999959171, -0.00774568273, -0.881234527, 0.000436973205, -0.472679228)
end})
local ggetdailyrewards = misc:AddButton({"Get daily reward" , function ()
  local a = "Dont used"
  if a == "Dont used" then
    a = "used"
  game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Reward:InvokeServer()
  l:Notify("Success" , "" , 3)
  else
    l:Notify("Already used" , "" , 3)
    return
  end
end})
local stop3 = false
local espallplayers = esp:AddToggle({
  Name = "Esp all players",
  Description = "Icon is Star",
  Default = false,
  Callback = function (espallplayerss)
    if espallplayerss == true then
      for _, v in pairs(folderplayerinworkspace:GetDescendants()) do
        if v.Name == player.Name then
          
          else
            while wait(1.3) do
              local function espallfunction()
                local BillboardGui = Instance.new("BillboardGui")
                local ImageLabel = Instance.new("ImageLabel")
              --Properties:
               BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
               BillboardGui.Active = true
              BillboardGui.AlwaysOnTop = true
              BillboardGui.LightInfluence = 1.000
              BillboardGui.Name = "ESP22"
              BillboardGui.Size = UDim2.new(0, 100, 0, 50)
              ImageLabel.Parent = BillboardGui
              ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              ImageLabel.BackgroundTransparency = 1.000
              ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
              ImageLabel.BorderSizePixel = 0
              ImageLabel.Position = UDim2.new(0, 30, 0, 10)
              ImageLabel.Size = UDim2.new(0, 35, 0, 35)
              ImageLabel.Image = "rbxassetid://14915583580"
              ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 0)
              end
              stop3 = false
              if stop3 == true then
                
              else
                if v.Name == "UpperTorso" then
                  espallfunction(v)
                end
              end
            end
        end
      end
    else
      for _, v in pairs(folderplayerinworkspace:GetDescendants()) do
        if v.Name == "ESP22" then
          v:Destroy()
        end
      end
    end
  end
})
