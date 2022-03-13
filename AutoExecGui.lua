if not game:IsLoaded() then game["Loaded"]:wait() end

local Opened = false

local CoreGui = game:GetService("CoreGui")

local MainGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Holder = Instance.new("ScrollingFrame")
local TemplateButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Utilities = Instance.new("Frame")
local BoxExtension = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Search = Instance.new("ImageLabel")
local SearchBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")

--Anthony watermark
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

syn.protect_gui(MainGui)

MainGui.Name = "MainGui"
MainGui.Parent = CoreGui
MainGui.DisplayOrder = 100000

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGui
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 1.000
MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(1, -MainGui.AbsoluteSize.X + -151, 1, -295)
MainFrame.Size = UDim2.new(0, 151, 0, 274)

Holder.Name = "Holder"
Holder.Parent = MainFrame
Holder.Active = true
Holder.BackgroundColor3 = Color3.fromRGB(13,13,13)
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 0, 0, 20)
Holder.Size = UDim2.new(0, 151, 0, 221)
Holder.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder.ScrollBarThickness = 2

TemplateButton.Name = "TemplateButton"
TemplateButton.Parent = Holder
TemplateButton.BackgroundColor3 = Color3.fromRGB(32,32,32)
TemplateButton.Position = UDim2.new(0, 8, 0, 11)
TemplateButton.Size = UDim2.new(0, 134, 0, 17)
TemplateButton.Font = Enum.Font.SourceSansItalic
TemplateButton.Text = "Text"
TemplateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateButton.TextScaled = true
TemplateButton.TextSize = 15.000
TemplateButton.TextWrapped = true
TemplateButton.Visible = false

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = TemplateButton

UIListLayout.Parent = Holder
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 7)

UIPadding.Parent = Holder
UIPadding.PaddingTop = UDim.new(0, 5)

Utilities.Name = "Utilities"
Utilities.Parent = MainFrame
Utilities.BackgroundColor3 = Color3.fromRGB(10,10,10)
Utilities.BorderColor3 = Color3.fromRGB(27, 42, 53)
Utilities.BorderSizePixel = 0
Utilities.Position = UDim2.new(0, 0, 0, 241)
Utilities.Size = UDim2.new(0, 151, 0, 30)

BoxExtension.Name = "BoxExtension"
BoxExtension.Parent = Utilities
BoxExtension.BackgroundColor3 = Color3.fromRGB(32,32,32)
BoxExtension.BorderSizePixel = 0
BoxExtension.Position = UDim2.new(0, 32, 0, 4)
BoxExtension.Size = UDim2.new(0, 110, 0, 20)

UICorner_2.Parent = BoxExtension

Search.Name = "Search"
Search.Parent = Utilities
Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Search.BackgroundTransparency = 1.000
Search.Position = UDim2.new(0, 6, 0, 4)
Search.Rotation = 90.000
Search.Size = UDim2.new(0, 20, 0, 20)
Search.Image = "rbxassetid://3229196465"

SearchBox.Name = "SearchBox"
SearchBox.Parent = Utilities
SearchBox.BackgroundColor3 = Color3.fromRGB(38,38,38)
SearchBox.BorderColor3 = Color3.fromRGB(129, 159, 255)
SearchBox.BorderSizePixel = 0
SearchBox.Position = UDim2.new(0, 42, 0, 4)
SearchBox.Size = UDim2.new(0, 100, 0, 20)
SearchBox.ClearTextOnFocus = false
SearchBox.Font = Enum.Font.SourceSansLight
SearchBox.PlaceholderText = "User/Display Name"
SearchBox.PlaceholderColor3 = Color3.fromRGB(200,200,200)
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255,255,255)
SearchBox.TextSize = 14.000
SearchBox.TextWrapped = true
SearchBox.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.Parent = SearchBox

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(10,10,10)
Title.BorderColor3 = Color3.fromRGB(255, 255, 255)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 151, 0, 20)
Title.Font = Enum.Font.Code
Title.Text = "AutoExec GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000
Title.TextWrapped = true

Frame.Parent = MainGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 1, -25)
Frame.Size = UDim2.new(0, 120, 0, 25)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.Oswald
TextButton.Text = "Anthony Is Here"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextWrapped = true

Holder.AutomaticCanvasSize = Enum.AutomaticSize.Y

local RainbowLoop = coroutine.wrap(function()
    local Cooldown = 10
    while true do
        local Hue = tick() % Cooldown / Cooldown
        local Color = Color3.fromHSV(Hue,1,1)
        TextButton.TextColor3 = Color
        wait()
    end
end)()

MainGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
    if Opened then
        MainFrame.Position = UDim2.new(1, -MainGui.AbsoluteSize.X + 7.5, MainFrame.Position.Y.Scale, MainFrame.Position.Y.Offset)
    else
        MainFrame.Position = UDim2.new(1, -MainGui.AbsoluteSize.X + -151, MainFrame.Position.Y.Scale, MainFrame.Position.Y.Offset)
    end
end)

TextButton.MouseButton1Click:Connect(function()
    if not Opened then
        Opened = true
        game:GetService("TweenService"):Create(MainFrame,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = UDim2.new(1, -MainGui.AbsoluteSize.X + 7.5, 1, -295)}):Play()
    else
        Opened = false
        game:GetService("TweenService"):Create(MainFrame,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = UDim2.new(1, -MainGui.AbsoluteSize.X + -151, 1, -295)}):Play()
    end
end)

local AddButton = function(func, ...)
    func(...)
end

local CreateButton = function(Name)
    local ClonedButton = TemplateButton:Clone()
    ClonedButton.Parent = Holder
    ClonedButton.Visible = true
    ClonedButton.Text = tostring(Name)
    return ClonedButton
end

--[[
HOW TO CREATE BUTTONS FOR NOOBS:

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        print("CODE GOES HERE")"
    end)
end, "NAME OF BUTTON)

]]--

getgenv().FPDH = workspace.FallenPartsDestroyHeight

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
end, "Infinite Yield")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
    end)
end, "Remote Spy")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/fPP8bZ8Z"))()
    end)
end, "Dex v4")


AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/m5HUithC"))()
    end)
end, "Audio Logger")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGetAsync('https://riptxde.dev/u/hub/script.lua'))()
    end)
end, "BoomBox Hub")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local Target = SearchBox.Text
        
        if Target == "" then
            return
        end

        local Amount = 1000
        
        local Players = game:GetService("Players")
        
        local GetPlayer = function(Name)
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            Name = Name:lower():gsub(" ","")
            for _,x in next, Players:GetPlayers() do
                if x ~= LocalPlayer then
                    if x.Name:lower():match("^"..Name) then
                        return x
                    elseif x.DisplayName:lower():match("^"..Name) then
                        return x
                    end
                end
            end
        end
        
        local TPlayer = GetPlayer(Target)
        if TPlayer == Players.LocalPlayer then return end
        
        for i = 1, Amount do
            Players:ReportAbuse(TPlayer, "Inappropriate Language", "")
            Players:ReportAbuse(TPlayer, "Bullying", "")
        end
    end)
end, "Mass Report")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local Targets = {}
        
        if SearchBox.Text ~= "" then
            for _,x in next, string.split(SearchBox.Text, " ") do
                table.insert(Targets, x)
            end
        else
            return
        end
        
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        
        local AllBool = false
        
        local OldFPDH = workspace.FallenPartsDestroyHeight
        
        local function GetPlayer(Name)
            Name = Name:lower()
            if Name == "all" or Name == "others" then
                AllBool = true
                return
            elseif Name == "random" then
                local GetPlayers = Players:GetPlayers()
                if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
                return GetPlayers[math.random(#GetPlayers)]
            elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
                for _,x in next, Players:GetPlayers() do
                    if x ~= Player then
                        if x.Name:lower():match(Name) then
                            return x;
                        elseif x.DisplayName:lower():match(Name) then
                            return x;
                        end
                    end
                end
            else
                return
            end
        end
        local function Message(MTitle,MText,Time)
            game:GetService("StarterGui"):SetCore("SendNotification",{Title = MTitle, Text = MText, Icon = "rbxassetid://2541869220", Duration = Time}) 
        end
        
        local function SkidFling(TargetPlayer)
            local Character = Player.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local RootPart = Humanoid.RootPart
            local OldPos
            
            local TCharacter = TargetPlayer.Character
            local THumanoid
            local TRootPart
            local THead
            local Accessory
            local Handle
            
            if TCharacter:FindFirstChildOfClass("Humanoid") then
                THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
            end
            if THumanoid and THumanoid.RootPart then
                TRootPart = THumanoid.RootPart
            end
            if TCharacter:FindFirstChild("Head") then
                THead = TCharacter.Head
            end
            if TCharacter:FindFirstChildOfClass("Accessory") then
                Accessory = TCharacter:FindFirstChildOfClass("Accessory")
            end
            if Accessoy and Accessory:FindFirstChild("Handle") then
                Handle = Accessory.Handle
            end
            
            if Character and Humanoid and RootPart then
                OldPos = RootPart.CFrame
                if not TRootPart then Message("Error Occurred","Target missing RootPart",5) end
                if not THead then Message("Error Occurred","Target missing Head",5) end
                if not Accessory and not Handle then Message("Error Occurred","Target missing accessories",5) end
                if THumanoid and THumanoid.Sit and not AllBool then
                    return Message("Error Occurred", "Targeting is sitting",5)
                end
                if THead then
                    workspace.CurrentCamera.CameraSubject = THead
                elseif not THead and Handle then
                    workspace.CurrentCamera.CameraSubject = Handle
                else
                    workspace.CurrentCamera.CameraSubject = THumanoid
                end
                if not TCharacter:FindFirstChildWhichIsA("BasePart") then
                    return
                end
                local function FPos(BasePart,Pos,Ang)
                    RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
                    RootPart.Velocity = Vector3.new(9e8,9e8,9e8)
                    RootPart.RotVelocity = Vector3.new(9e8,9e8,9e8)
                end
                local function SFBasePart(BasePart)
                    local TimeToWait = 3.5
                    local Time = tick()
                    local Angle = 0
                    
                    repeat
                        if RootPart and THumanoid then
                            if BasePart.Velocity.Magnitude < 30 then
                                Angle = Angle + 50
                                
                                FPos(BasePart,CFrame.new(0,1.5,0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(Angle),0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,-1.5,0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(Angle),0,0))
                                game:GetService("RunService").Heartbeat:wait()
                                
                                FPos(BasePart,CFrame.new(2.25,1.5,-2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(Angle),0,0))
                                game:GetService("RunService").Heartbeat:wait()
                                
                                FPos(BasePart,CFrame.new(-2.25,-1.5,2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25,CFrame.Angles(math.rad(Angle),0,0))
                                game:GetService("RunService").Heartbeat:wait()
                                
                                FPos(BasePart,CFrame.new(0,1.5,0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle),0,0))
                                game:GetService("RunService").Heartbeat:wait()
                                
                                FPos(BasePart,CFrame.new(0,-1.5,0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle),0,0))
                                game:GetService("RunService").Heartbeat:wait()
                            else
                                FPos(BasePart,CFrame.new(0,1.5,THumanoid.WalkSpeed),CFrame.Angles(math.rad(90),0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,-1.5,-THumanoid.WalkSpeed),CFrame.Angles(0,0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,1.5,THumanoid.WalkSpeed),CFrame.Angles(math.rad(90),0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,-1.5,0),CFrame.Angles(math.rad(90),0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,-1.5,0),CFrame.Angles(0,0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,-1.5,0),CFrame.Angles(math.rad(-90),0,0))
                                game:GetService("RunService").Heartbeat:wait()
        
                                FPos(BasePart,CFrame.new(0,-1.5,0),CFrame.Angles(0,0,0))
                                game:GetService("RunService").Heartbeat:wait()
                            end
                        else
                            break
                        end
                    until BasePart.Velocity.Magnitude > 1000 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
                end
                workspace.FallenPartsDestroyHeight = 0/0
                local BV = Instance.new("BodyVelocity")
                BV.Parent = RootPart
                BV.Velocity = Vector3.new(9e9,9e9,9e9)
                BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
                if TRootPart and THead then
                    if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                        SFBasePart(THead)
                    else
                        SFBasePart(TRootPart)
                    end
                elseif TRootPart and not THead then
                    SFBasePart(TRootPart)
                elseif not TRootPart and THead then
                    SFBasePart(THead)
                elseif not TRootPart and not THead and Accessory and Handle then
                    SFBasePart(Handle)
                else
                    return Message("Error Occurred","Target is missing everything",5)
                end
                BV:Destroy()
                for _,x in next, Character:GetDescendants() do
                    if x:IsA("BasePart") then
                        x.Velocity,x.RotVelocity = Vector3.new(),Vector3.new()
                    end
                end
                Humanoid:ChangeState("GettingUp")
                RootPart.CFrame = OldPos * CFrame.new(0,.5,0)
                workspace.CurrentCamera.CameraSubject = Humanoid
                workspace.FallenPartsDestroyHeight = OldFPDH
            else
                return Message("Error Occurred","Random error",5)
            end
        end
        
        if not Welcome then Message("Script by AnthonyIsntHere","Discord: Anthony.#3348",5) end
        getgenv().Welcome = true
        if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
        
        if AllBool then
            for _,x in next, Players:GetPlayers() do
                SkidFling(x)
            end
        end
        
        for _,x in next, Targets do
            if GetPlayer(x) and GetPlayer(x) ~= Player then
                if GetPlayer(x).UserId ~= 1414978355 and GetPlayer(x).UserId ~= 2678442134 and GetPlayer(x).UserId ~= 6386092 then
                    local TPlayer = GetPlayer(x)
                    if TPlayer then
                        SkidFling(TPlayer)
                    end
                else
                    Message("Error Occurred","This user is whitelisted! (Owner)",5)
                end
            elseif not GetPlayer(x) and not AllBool then
                Message("Error Occurred","Username Invalid",5)
            end
        end
    end)
end, "Fling")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local Target = SearchBox.Text
        
        if Target == "" then
            return
        end
        
        local function GetPlayer(Name)
            local Players = game:GetService("Players");
            local LocalPlayer = Players.LocalPlayer;
            Name = Name:lower():gsub("%s","")
            for _,x in next, Players:GetPlayers() do
                if x ~= LocalPlayer then
                    if x.Name:lower():match(Name) then
                        return x;
                    elseif x.DisplayName:lower():match(Name) then
                        return x;
                    end
                end
            end
        end
        local function Message(MTitle,MText,Time)
            game:GetService("StarterGui"):SetCore("SendNotification",{Title = MTitle, Text = MText, Icon = "rbxassetid://2541869220", Duration = Time}) 
        end
        
        local function Kill()
            if not GetPlayer(Target) then
                return Message("Error",">   Player does not exist.",5)
            end
            
            repeat game:GetService("RunService").Heartbeat:wait() until GetPlayer(Target).Character and GetPlayer(Target).Character:FindFirstChildOfClass("Humanoid") and GetPlayer(Target).Character:FindFirstChildOfClass("Humanoid").Health > 0
            local Player = game:GetService("Players").LocalPlayer
            local Character
            local Humanoid
            local RootPart
            local Tool
            local Handle
            
            local TPlayer = GetPlayer(Target)
            local TCharacter = TPlayer.Character
            local THumanoid
            local TRootPart
            
            if Player.Character ~= nil and Player.Character and Player.Character.Name == Player.Name then
                Character = Player.Character
            else
                return Message("Error",">   Missing Character")
            end
            if Character:FindFirstChildOfClass("Humanoid") then
                Humanoid = Character:FindFirstChildOfClass("Humanoid")
            else
                return Message("Error",">   Missing Humanoid")
            end
            if Humanoid and Humanoid.RootPart then
                RootPart = Humanoid.RootPart
            else
                return Message("Error",">   Missing RootPart")
            end
            if Character:FindFirstChildOfClass("Tool") then
                Tool = Character:FindFirstChildOfClass("Tool")
            elseif Player.Backpack:FindFirstChildOfClass("Tool") and Humanoid then
                Tool = Player.Backpack:FindFirstChildOfClass("Tool")
                Humanoid:EquipTool(Player.Backpack:FindFirstChildOfClass("Tool"))
            else
                return Message("Error",">   Missing Tool")
            end
            if Tool and Tool:FindFirstChild("Handle") then
                Handle = Tool.Handle
            else
                return Message("Error",">   Missing Tool's Handle")
            end
            
            --Target
            if TCharacter:FindFirstChildOfClass("Humanoid") then
                THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
            else
                return Message("Error",">   Missing Target Humanoid")
            end
            if THumanoid.RootPart then
                TRootPart = THumanoid.RootPart
            else
                return Message("Error",">   Missing Target RootPart")
            end
            
            if THumanoid.Sit then
                return Message("Error",">   Target is seated")
            end
            
            local OldCFrame = RootPart.CFrame
            
            Humanoid:Destroy()
            local NewHumanoid = Humanoid:Clone()
            NewHumanoid.Parent = Character
            NewHumanoid:UnequipTools()
            NewHumanoid:EquipTool(Tool)
            Tool.Parent = workspace
            
            local Timer = tick()
            
            repeat
                if (TRootPart.CFrame.p - RootPart.CFrame.p).Magnitude < 500 then
                    Tool.Grip = CFrame.new()
                    Tool.Grip = Handle.CFrame:ToObjectSpace(TRootPart.CFrame):Inverse()
                end
                firetouchinterest(Handle,TRootPart,0)
                firetouchinterest(Handle,TRootPart,1)
                game:GetService("RunService").Heartbeat:wait()
            until Tool.Parent ~= Character or not TPlayer or not TRootPart or THumanoid.Health <= 0 or os.time() > Timer + .20
            Player.Character = nil
            NewHumanoid.Health = 0
            repeat task.wait() until THumanoid.Health <= 0 or tick() > Timer + .20
            Player.Character = Character
            table.foreach(NewHumanoid:GetAccessories(), function(_, x)
                x.Handle:Destroy()
            end)
            Player.Character = Character:Destroy()
            Player.CharacterAdded:wait()
            repeat task.wait() until Player.Character:FindFirstChild("HumanoidRootPart")
            Player.Character.HumanoidRootPart.CFrame = OldCFrame
        end
        Kill()
    end)
end, "Kill")

-- AddButton(function(Name)
--     local ClonedButton = CreateButton(Name)
--     ClonedButton.MouseButton1Click:Connect(function()
--         local Target = SearchBox.Text
        
--         if Target == "" then
--             return
--         end
        
--         local function GetPlayer(Name)
--             local Players = game:GetService("Players");
--             local LocalPlayer = Players.LocalPlayer;
--             Name = Name:lower():gsub(" ","")
--             for _,x in next, Players:GetPlayers() do
--                 if x ~= LocalPlayer then
--                     if x.Name:lower():match("^"..Name) then
--                         return x;
--                     elseif x.DisplayName:lower():match("^"..Name) then
--                         return x;
--                     end
--                 end
--             end
--         end
--         local function Message(MTitle,MText,Time)
--             game:GetService("StarterGui"):SetCore("SendNotification",{Title = MTitle, Text = MText, Icon = "rbxassetid://2541869220", Duration = Time}) 
--         end
        
--         local function Kill()
--             if not GetPlayer(Target) then
--                 return Message("Error",">   Player does not exist.",5)
--             end
            
--             repeat game:GetService("RunService").Heartbeat:wait() until GetPlayer(Target).Character and GetPlayer(Target).Character:FindFirstChildOfClass("Humanoid") and GetPlayer(Target).Character:FindFirstChildOfClass("Humanoid").Health > 0
--             local Player = game:GetService("Players").LocalPlayer
--             local Character
--             local Humanoid
--             local RootPart
--             local Tool
--             local Handle
            
--             local TPlayer = GetPlayer(Target)
--             local TCharacter = TPlayer.Character
--             local THumanoid
--             local TRootPart
            
--             if Player.Character ~= nil and Player.Character and Player.Character.Name == Player.Name then
--                 Character = Player.Character
--             else
--                 return Message("Error",">   Missing Character")
--             end
--             if Character:FindFirstChildOfClass("Humanoid") then
--                 Humanoid = Character:FindFirstChildOfClass("Humanoid")
--             else
--                 return Message("Error",">   Missing Humanoid")
--             end
--             if Humanoid and Humanoid.RootPart then
--                 RootPart = Humanoid.RootPart
--             else
--                 return Message("Error",">   Missing RootPart")
--             end
--             if Character:FindFirstChildOfClass("Tool") then
--                 Tool = Character:FindFirstChildOfClass("Tool")
--             elseif Player.Backpack:FindFirstChildOfClass("Tool") and Humanoid then
--                 Tool = Player.Backpack:FindFirstChildOfClass("Tool")
--                 Humanoid:EquipTool(Player.Backpack:FindFirstChildOfClass("Tool"))
--             else
--                 return Message("Error",">   Missing Tool")
--             end
--             if Tool and Tool:FindFirstChild("Handle") then
--                 Handle = Tool.Handle
--             else
--                 return Message("Error",">   Missing Tool's Handle")
--             end
            
--             --Target
--             if TCharacter:FindFirstChildOfClass("Humanoid") then
--                 THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
--             else
--                 return Message("Error",">   Missing Target Humanoid")
--             end
--             if THumanoid.RootPart then
--                 TRootPart = THumanoid.RootPart
--             else
--                 return Message("Error",">   Missing Target RootPart")
--             end
            
--             if THumanoid.Sit then
--                 return Message("Error",">   Target is seated")
--             end
            
--             local OldCFrame = RootPart.CFrame
            
--             Humanoid:Destroy()
--             local NewHumanoid = Humanoid:Clone()
--             NewHumanoid.Parent = Character
--             NewHumanoid:UnequipTools()
--             NewHumanoid:EquipTool(Tool)
--             --Tool.Parent = workspace
            
--             THumanoid.BreakJointsOnDeath = false
            
--             if (TRootPart.CFrame.p - RootPart.CFrame.p).Magnitude < 500 then
--                 Tool.Grip = CFrame.new()
--                 Tool.Grip = Handle.CFrame:ToObjectSpace(TRootPart.CFrame):Inverse()
--             end
--             firetouchinterest(Handle,TRootPart,0)
--             firetouchinterest(Handle,TRootPart,1)
--             Tool.AncestryChanged:wait()
--             Player.Character = nil
--             THumanoid.Health = 0
--             --THumanoid:ChangeState("Dead")
--             local Timer = os.time()
--             repeat task.wait() until THumanoid.Health <= 0 or os.time() > Timer + .20
--             THumanoid.Health = 100
--             if THumanoid.Health <= 0 then
--                 THumanoid.BreakJointsOnDeath = true
--             end
--             Player.Character = Character
--             Player.Character = Character:Destroy()
--             Player.CharacterAdded:wait()
--             repeat game:GetService("RunService").Heartbeat:wait() until Player.Character:FindFirstChild("HumanoidRootPart")
--             Player.Character.HumanoidRootPart.CFrame = OldCFrame
--         end
--         Kill()
--     end)
-- end, "HumanoidFFlag Kill")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local Target = SearchBox.Text
        
        if Target == "" then
            return
        end

        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        
        local Player = Players.LocalPlayer
        
        local Message = function(MTitle,MText,Time)
            game:GetService("StarterGui"):SetCore("SendNotification",{Title = MTitle,Text = MText,Icon = "rbxassetid://2541869220",Duration = Time})
        end
        
        local GetPlayer = function(Name)
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            Name = Name:lower():gsub("%s","")
            for _,x in next, Players:GetPlayers() do
                if x ~= LocalPlayer then
                    if x.Name:lower():match(Name) then
                        return x
                    elseif x.DisplayName:lower():match("^"..Name) then
                        return x
                    end
                end
            end
        end
        
        if not GetPlayer(Target) then
            return Message("Error:","Target not valid.")
        elseif GetPlayer(Target).Name == Player.Name then
            return Message("Error:","Target is equal to Player.")
        end
        
        local PlayerMetaVars = {}
        local TargetMetaVars = {}
        
        local RenewVariables = true
        
        local Variables = function(ReturnError)
            PlayerMetaVars["Character"] = Player.Character or false
            PlayerMetaVars["Humanoid"] = PlayerMetaVars["Character"] and PlayerMetaVars["Character"]:FindFirstChildOfClass("Humanoid") or false
            PlayerMetaVars["RootPart"] = PlayerMetaVars["Humanoid"] and PlayerMetaVars["Humanoid"].RootPart or false
            PlayerMetaVars["Tool"] = PlayerMetaVars["Character"] and PlayerMetaVars["Character"]:FindFirstChildOfClass("Tool") or Player.Backpack:FindFirstChildOfClass("Tool") or false
            PlayerMetaVars["Handle"] = PlayerMetaVars["Tool"] and PlayerMetaVars["Tool"]:FindFirstChild("Handle", true) or false
            
            TargetMetaVars["TPlayer"] = GetPlayer(Target)
            TargetMetaVars["TCharacter"] = TargetMetaVars["TPlayer"].Character or false
            TargetMetaVars["THumanoid"] = TargetMetaVars["TCharacter"] and TargetMetaVars["TCharacter"]:FindFirstChildOfClass("Humanoid") or false
            TargetMetaVars["TRootPart"] = TargetMetaVars["THumanoid"] and TargetMetaVars["THumanoid"].RootPart or false
        
            local ErrorCheck = false
            
            for _,x in next, PlayerMetaVars do
                if not x then
                    if ReturnError then
                        Message("Error:", _.." not valid.")
                    end
                    ErrorCheck = true
                end
            end
            
            for _,x in next, TargetMetaVars do
                if not x then
                    if ReturnError then
                        Message("Error:", "Target".._.." not valid.")
                    end
                    ErrorCheck = true
                end
            end
            
            if ErrorCheck then return end
        end
        Variables(false)
        
        if RenewVariables then
            Player.CharacterAdded:Connect(function(Character)
                repeat RunService.Heartbeat:wait() until Character and Character:FindFirstChildWhichIsA("Humanoid") and Character:FindFirstChildWhichIsA("Humanoid").RootPart
                Variables(false)
            end)
            TargetMetaVars.TPlayer.CharacterAdded:Connect(function(TCharacter)
                repeat RunService.Heartbeat:wait() until TCharacter and TCharacter:FindFirstChildWhichIsA("Humanoid") and TCharacter:FindFirstChildWhichIsA("Humanoid").RootPart
                Variables(false)
            end)
        end
        
        local Void = function()
            local Tools = {}
            local Old = PlayerMetaVars.RootPart.CFrame
            local OldTime = tick()
        
            workspace.FallenPartsDestroyHeight = 0/0
            
            PlayerMetaVars.RootPart.CFrame = TargetMetaVars.TRootPart.CFrame
            PlayerMetaVars.Character:SetPrimaryPartCFrame(TargetMetaVars.TRootPart.CFrame)
            
            PlayerMetaVars.Humanoid:Destroy()
            local NewHumanoid = PlayerMetaVars.Humanoid:Clone()
            NewHumanoid.Parent = PlayerMetaVars.Character
            NewHumanoid:UnequipTools()
            
            table.foreach(Player.Backpack:GetChildren(), function(_, x)
                x.Parent = PlayerMetaVars.Character
                if x:FindFirstChild("Handle") then
                    table.insert(Tools, x.Handle)
                end
            end)
            
            PlayerMetaVars.Humanoid:SetStateEnabled("FallingDown", false)
            workspace.CurrentCamera.CameraSubject = TargetMetaVars.THumanoid
            PlayerMetaVars.RootPart.CFrame = CFrame.new(0, -10000, 0)
            PlayerMetaVars.Character:SetPrimaryPartCFrame(CFrame.new(0, -10000, 0))
            
            coroutine.wrap(function()
                for i = 1, 3 do task.wait() end
                workspace.FallenPartsDestroyHeight = -500
                wait(.20)
                if TargetMetaVars.THumanoid.Health > 0 then
                    table.foreach(NewHumanoid:GetAccessories(), function(_, x)
                        if x:FindFirstChild("Handle") then
                            x.Handle:Destroy()
                        end
                    end)
                    Player.Character = PlayerMetaVars.Character:Destroy()
                end
            end)()
            coroutine.wrap(function()
                repeat
                    if TargetMetaVars.THumanoid.Health <= 0 then
                        Message("Success", "Target has died. Took "..tostring(tick() - OldTime):sub(1, 5).." seconds.", 5)
                        break
                    end
                    task.wait()
                until tick() - OldTime > 5
            end)()
            for _,x in next, Tools do
                repeat
                    firetouchinterest(TargetMetaVars.TRootPart, x, 0)
                    firetouchinterest(TargetMetaVars.TRootPart, x, 1)
                    RunService.Heartbeat:wait()
                until x.Parent.Parent ~= Character or not TargetMetaVars.TPlayer or not TargetMetaVars.TRootPart or TargetMetaVars.THumanoid.Health <= 0
            end
            PlayerMetaVars.Character = Player.CharacterAdded:wait()
            repeat RunService.Heartbeat:wait() until PlayerMetaVars.Character and PlayerMetaVars.Character.PrimaryPart
            RunService.Heartbeat:wait()
            PlayerMetaVars.Character:SetPrimaryPartCFrame(Old)
        end
        Void()
    end)
end, "Void")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    local Debounce = false
    local StrokeSelection
    local TempConnections = {}
    ClonedButton.MouseButton1Click:Connect(function()
        if not Debounce then
            Debounce = true
            ClonedButton.BackgroundColor3 = Color3.fromRGB(15,15,15)
            StrokeSelection = Instance.new("UIStroke", ClonedButton)
            StrokeSelection.ApplyStrokeMode = "Border"
            StrokeSelection.Color = Color3.fromRGB(255,255,255)
            StrokeSelection.Thickness = 1.5
            local RunService = game:GetService("RunService")
            local UserInputService = game:GetService("UserInputService")
            local Players = game:GetService("Players")
            
            local Player = Players.LocalPlayer
            local Mouse = Player:GetMouse()
            
            local AntiKill = function()
                if Player.Character and Player.Character:FindFirstChildWhichIsA("Humanoid") and Player.Character:FindFirstChildWhichIsA("Humanoid").RootPart and workspace.CurrentCamera then
                    local Humanoid = Player.Character:FindFirstChildWhichIsA("Humanoid")
                    local RootPart = Humanoid.RootPart
                    if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter and not RootPart:FindFirstChildWhichIsA("BodyMover") then
                        local X, Y, Z = workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
            	        RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, Y, 0)
                    end
                    Humanoid.Sit = true
                    Humanoid:SetStateEnabled("Seated", false)
                    TempConnections["Humanoid"] = Humanoid
                end
            end
            
            local WhitelistedTools = {}
            
            local AntiVoid = function(Character)
                table.foreach(Player.Backpack:GetChildren(), function(_, x)
                    if x:IsA("Tool") then
                        table.insert(WhitelistedTools, x)
                    end
                end)
                TempConnections["AntiTool"] = Character.ChildAdded:Connect(function(Tool)
                    local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false
                    local PrimaryPart = Character and Character.PrimaryPart or false
                    local CurrentPosition = PrimaryPart and PrimaryPart.CFrame or false
                    if Tool:IsA("Tool") and not table.find(WhitelistedTools, Tool) then
                        if workspace["FallenPartsDestroyHeight"] ~= 0/0 then workspace["FallenPartsDestroyHeight"] = 0/0 end
                        coroutine.wrap(function()
                            repeat task.wait() until Tool
                            Tool.Parent = Player.Backpack
                        end)()
                        if Character and PrimaryPart and Humanoid and CurrentPosition then
                            task.wait()
                            Character:SetPrimaryPartCFrame(CurrentPosition)
                            PrimaryPart.Velocity = Vector3.new()
                            Humanoid:ChangeState("GettingUp")
                        end
                        table.insert(WhitelistedTools, Tool)
                    end
                end)
            end
            
            TempConnections["AntiKill"] = RunService.RenderStepped:Connect(AntiKill)
            AntiVoid(Player.Character)
            TempConnections["ReAntiVoid"] = Player.CharacterAdded:Connect(AntiVoid)
        else
            Debounce = false
            StrokeSelection:Destroy()
            ClonedButton.BackgroundColor3 = Color3.fromRGB(32,32,32)
            table.foreach(TempConnections, function(_, x)
                if typeof(x) == "RBXScriptConnection" then
                    x:Disconnect()
                elseif typeof(x) == "Instance" and x:IsA("Humanoid") then
                    x.Sit = false
                    x:SetStateEnabled("Seated", true)
                end
            end)
        end
    end)
end, "Anti Kill")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    
    local RunService = game:GetService("RunService")
    
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    local Debounce = false
    local TempConnection
    local StrokeSelection
    ClonedButton.MouseButton1Click:Connect(function()
        if not Debounce then
            Debounce = true
            ClonedButton.BackgroundColor3 = Color3.fromRGB(15,15,15)
            StrokeSelection = Instance.new("UIStroke", ClonedButton)
            StrokeSelection.ApplyStrokeMode = "Border"
            StrokeSelection.Color = Color3.fromRGB(255,255,255)
            StrokeSelection.Thickness = 1.5
            TempConnection = RunService.Stepped:Connect(function()
                for _,x in next, Players:GetPlayers() do
                    if x and x ~= Player and x.Character then
                        for _,v in next, x.Character:GetDescendants() do
                            if v:IsA("BasePart") and v.CanCollide then
                                v.CanCollide = false
                                if v.Name == "Torso" and v:FindFirstChildWhichIsA("Motor6D") then
                                    v.Massless = true
                                end
                                v.Velocity = Vector3.new()
                                v.RotVelocity = Vector3.new()
                                v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
                            end
                        end
                    end
                end
                if Player.Character then
                    for _,x in next, Player.Character:GetChildren() do
                        if x:IsA("BasePart") then
                            x.CustomPhysicalProperties = PhysicalProperties.new(1/0,1/0,1/0,1/0,1/0)
                        end
                    end
                    if Player.Character:FindFirstChildWhichIsA("Humanoid") then
                        Player.Character:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled("FallingDown", false)
                    end
                end
            end)
        else
            Debounce = false
            StrokeSelection:Destroy()
            ClonedButton.BackgroundColor3 = Color3.fromRGB(32,32,32)
            TempConnection:Disconnect()
            if Player.Character then
                table.foreach(Player.Character:GetChildren(), function(_, x)
                    if x:IsA("BasePart") then
                        x.CustomPhysicalProperties = nil
                    end
                end)
                if Player.Character:FindFirstChildWhichIsA("Humanoid") then
                    Player.Character:FindFirstChildWhichIsA("Humanoid"):SetStateEnabled("FallingDown", true)
                end
            end
            for _,x in next, Players:GetPlayers() do
                if x and x ~= Player and x.Character then
                    for _,v in next, x.Character:GetChildren() do
                        if v:IsA("BasePart") and v.CanCollide then
                            if v.Name == "Torso" and v:FindFirstChildWhichIsA("Motor6D") then
                                v.Massless = false
                            end
                            v.CustomPhysicalProperties = nil
                        end
                    end
                end
            end
        end
    end)
end, "Anti Fling")

AddButton(function(Name)
        local ClonedButton = CreateButton(Name)
        
        local Debounce = false
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local ChatEvent = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
        local OldMessageEvent
        
        OldMessageEvent = hookmetamethod(ChatEvent, "__namecall", function(self, ...)
            local Method = getnamecallmethod()
            local Args = {...}
            local Message = Args[1]
        
            if Debounce and tostring(self) == "SayMessageRequest" and tostring(Method) == "FireServer" and not Message:match("/w ") then
                local FinalStr = ""
                
                for x in Message:gmatch(".") do
                    if not x:match("%s") then
                        FinalStr = FinalStr..x.." "
                    else
                        FinalStr = FinalStr..(" "):rep(3)
                    end
                end
                
                Args = {
                    FinalStr..(" "):rep(100)..". . .",
                    "All"
                }
                
                return OldMessageEvent(self, unpack(Args))
            end
            
            return OldMessageEvent(self, ...)
        end)
    
    ClonedButton.MouseButton1Click:Connect(function()
        if not Debounce then
            Debounce = true
            
            ClonedButton.BackgroundColor3 = Color3.fromRGB(15,15,15)
            
            StrokeSelection = Instance.new("UIStroke", ClonedButton)
            StrokeSelection.ApplyStrokeMode = "Border"
            StrokeSelection.Color = Color3.fromRGB(255,255,255)
        else
            Debounce = false
            
            ClonedButton.BackgroundColor3 = Color3.fromRGB(32,32,32)
            
            if StrokeSelection then
                StrokeSelection:Destroy()
            end
        end
    end)
end, "Chat Bypass")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    local Debounce = false
    local TempConnection
    local StrokeSelection
    ClonedButton.MouseButton1Click:Connect(function()
        if not Debounce then
            Debounce = true
            ClonedButton.BackgroundColor3 = Color3.fromRGB(15,15,15)
            StrokeSelection = Instance.new("UIStroke", ClonedButton)
            StrokeSelection.ApplyStrokeMode = "Border"
            StrokeSelection.Color = Color3.fromRGB(255,255,255)
            StrokeSelection.Thickness = 1.5
            workspace.FallenPartsDestroyHeight = 0/0
        else
            Debounce = false
            StrokeSelection:Destroy()
            ClonedButton.BackgroundColor3 = Color3.fromRGB(32,32,32)
            workspace.FallenPartsDestroyHeight = getgenv().FPDH
        end
    end)
end, "Destroy Height")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local Player = game:GetService("Players").LocalPlayer
        local Character = Player.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid") or false
        local RootPart = Humanoid and Humanoid.RootPart or false
        if not Humanoid then return end
        Player.Character = nil
        Player.Character = Character
        wait(game:GetService("Players").RespawnTime - .25)
        local PosOld
        local CamOld = workspace.CurrentCamera.CFrame
        if RootPart then
            PosOld = RootPart.CFrame
        else
            PosOld = workspace.CurrentCamera.Focus
        end
        table.foreach(Humanoid:GetAccessories(), function(_, x)
            x.Handle:Destroy()
        end)
        Player.Character = Character:Destroy()
        Character = Player.CharacterAdded:wait()
        repeat wait() until Character.PrimaryPart
        Character:SetPrimaryPartCFrame(PosOld)
        workspace.CurrentCamera.CFrame = CamOld
    end)
end, "Instant Respawn")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/063qVuiz"))()
    end)
end, "Server Hop")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        
        if #Players:GetPlayers() <= 1 then
            TeleportService:Teleport(game["PlaceId"])
        else
            TeleportService:TeleportToPlaceInstance(game["PlaceId"], game["JobId"])
        end
    end)
end, "Rejoin")

AddButton(function(Name)
    local ClonedButton = CreateButton(Name)
    ClonedButton.MouseButton1Click:Connect(function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
    
        local Player = Players.LocalPlayer
        local Character = Player.Character or false
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid") or false
        local RootPart = Humanoid and Humanoid.RootPart or false
        local PrimaryPart = Character and Character.PrimaryPart or false
        local BasePart = Character and Character:FindFirstChildWhichIsA("BasePart", true) or false
        local Camera = workspace:FindFirstChildWhichIsA("Camera") or false

        local OldPos
        
        if RootPart then
            OldPos = RootPart.CFrame
        elseif PrimaryPart then
            OldPos = PrimaryPart.CFrame
        elseif BasePart then
            OldPos = BasePart.CFrame
        elseif Camera then
            OldPos = Camera.Focus
        end
        
        if #Players:GetPlayers() <= 1 then
            Player:Kick()
            coroutine.wrap(function()
                local PromptGui = CoreGui:WaitForChild("RobloxPromptGui")
                local ErrorTitle = PromptGui:FindFirstChild("ErrorTitle", true)
                local ErrorMessage = PromptGui:FindFirstChild("ErrorMessage", true)
                ErrorTitle.Text = "Rejoining Experience Shortly"
                while true do
                    for i = 1, 3 do
                        ErrorMessage.Text = "You are currently reconnecting to this game"..string.rep(".", i).."\n".."PlaceId: "..game["PlaceId"]
                        wait(1)
                    end
                end
            end)()
            TeleportService:Teleport(game["PlaceId"])
        else
            TeleportService:TeleportToPlaceInstance(game["PlaceId"], game["JobId"])
        end
        syn.queue_on_teleport(string.format([[
            game["Loaded"]:wait()
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:wait()
            repeat game:GetService("RunService").Heartbeat:wait() until Character:FindFirstChildOfClass("Humanoid") and Character:FindFirstChildOfClass("Humanoid").RootPart
            if Character:FindFirstChildOfClass("Humanoid") and Character:FindFirstChildOfClass("Humanoid").RootPart then
                Character:FindFirstChildOfClass("Humanoid").RootPart.CFrame = CFrame.new(%s)
            end
        ]],tostring(OldPos)))
    end)
end, "RejoinRe")
