local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "YBA GUI V2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "AutoFarm"
})
OrionLib:MakeNotification({
	Name = "Привет, Владик!",
	Content = "Спасибо что юзаешь моё GUI!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
Tab:AddButton({
	Name = "Авто прокачачка деревья скилов",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperNagibatorFunt3000/YBA-autofarm-script/main/autofarm%20skill%20tree%20script.lua"))()
  	end    
})
