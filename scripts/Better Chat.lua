-- STORE IN AUTOEXEC FOLDER
repeat wait() until game:IsLoaded()

local Settings = {
    DarkTheme = true,
    NewBubbleChatEnabled = true,
    BubbleChatSettings = {
        BackgroundColor3 = Color3.fromRGB(20, 20, 20),
        TextColor3 = Color3.fromRGB(255, 255, 255)
    },
    ChatSettings = {
        BubbleChatEnabled = false,
        ChatWindowBackgroundFadeOutTime = .1,
        MessageHistoryLengthPerChannel = 5000,
        PlayerDisplayNamesEnabled = false
    }
}

local CoreGui = game:GetService("CoreGui")
local ChatService = game:GetService("Chat")
local ChatModule = ChatService:WaitForChild("ClientChatModules", 1/0):WaitForChild("ChatSettings", 1/0)

if Settings.NewBubbleChatEnabled and not ChatService.BubbleChatEnabled then
    ChatService.BubbleChatEnabled = true
end

for _, x in next, Settings.ChatSettings do
    require(ChatModule)[_] = x
end

if Settings.DarkTheme and Settings.NewBubbleChatEnabled then
    ChatService:SetBubbleChatSettings(Settings.BubbleChatSettings)
end
