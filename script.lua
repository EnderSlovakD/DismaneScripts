local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield:Notify({
   Title = "You are Executing The Script",
   Content = "Thanks for using Dismane Scripts",
   Duration = 2.5,
   Image = nil,
})

local Window = Rayfield:CreateWindow({
   Name = "Dismane Scripts",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Script Hub",
   LoadingSubtitle = "by DismaneScripts",
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "DismaneScripts | Key",
      Subtitle = "Chceck Out Our Discord",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/EnderSlovakD/DismaneScripts/refs/heads/main/KeySystem"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "You Succesfully Executed",
   Content = "Your Executor Support The Script",
   Duration = 3.5,
   Image = 0,
})

-- 🏡 TAB
local Tab = Window:CreateTab("🏡 Home", nil) -- Title, Image

local Toggle = Tab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      _G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
      local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function enableNoclip()
    RunService.Stepped:Connect(function()
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end)
end

player.CharacterAdded:Connect(function(char)
    character = char
    enableNoclip()
end)

if character then
    enableNoclip()
end

   end,
})

local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 10000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(SValue)
      local Value = SValue

local player = game.Players.LocalPlayer

-- Czekaj na Character i Humanoid
if not player.Character or not player.Character:FindFirstChild("Humanoid") then
    player.CharacterAdded:Wait()
end

-- Ustaw WalkSpeed
player.Character:WaitForChild("Humanoid").WalkSpeed = Value

   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})

-- 🎮 TAB
local Tab = Window:CreateTab("🎮 Games", nil)

local Button = Tab:CreateButton({
   Name = "Dead Rails",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DeadRails", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Grow a Garden",
   Callback = function()
      loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8f14c1806369f8ae3db39eafc954d76d.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Fisch",
   Callback = function()
      loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/aa63ce25cd44fa60f0b155dcc3593445.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Bubble Gum Simulator Infinity",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Bed Wars",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Arsenal",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Nickyangtpe/Vapa-v2/refs/heads/main/Vapav2-Arsenal.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Dig It",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/alyssagithub/Scripts/refs/heads/main/FrostByte/Initiate.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "The Strongest Battleground",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Murder Mystery 2",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/rblxscriptsdotnet/roblox-scripts/refs/heads/main/mm2adminpanelsource'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Rivals",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/blackowl1231/ZYPHERION/refs/heads/main/main.lua')))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blue Lock Rivals",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Hitbox Extender",
   Callback = function()
      _G.HeadSize = 20 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.Head.Transparency = 1 v.Character.Head.BrickColor = BrickColor.new("Red") v.Character.Head.Material = "Neon" v.Character.Head.CanCollide = false v.Character.Head.Massless = true end) end end end end)
   end,
})
