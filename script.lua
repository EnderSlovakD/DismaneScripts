local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Dismane Scripts",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Thanks for Using",
   LoadingSubtitle = "by Dismane Scripts",
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = DismaneScripts, -- Create a custom folder for your hub/game
      FileName = "Script Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Dismane Scripts | Key",
      Subtitle = "Get The Key From Our Discord Server",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/EnderSlovakD/DismaneScripts/refs/heads/main/KeySystem"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "You Executed The Script",
    Content = "Thanks for using the DismaneScripts",
   Duration = 3.5,
   Image = nil,
})

local GTab = Window:CreateTab("🎮 Games", nil) -- Title, Image
local GSection = Tab:CreateSection("Section Example")

local Button = GTab:CreateButton({
   Name = "Grow a Garden",
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua')))()
   -- The function that takes place when the button is pressed
   end,
})
