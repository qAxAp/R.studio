local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.DisplayOrder = 10

local frame1 = Instance.new("Frame")
frame1.Size = UDim2.new(0.42970521541950113, 0, 0.548, 0)
frame1.Position = UDim2.new(0.26077097505668934, 0, 0.178, 0)
frame1.BackgroundColor3 = Color3.new(0.141, 0.141, 0.141)
frame1.BorderSizePixel = 0
frame1.Parent = screenGui

local frame2 = Instance.new("Frame")
frame2.Size = UDim2.new(0.264172335600907, 0, 0.482, 0)
frame2.Position = UDim2.new(0.41609977324263037, 0, 0.214, 0)
frame2.BackgroundColor3 = Color3.new(0.059, 0.059, 0.059)
frame2.BorderSizePixel = 0
frame2.Parent = screenGui

local frame3 = Instance.new("Frame")
frame3.Size = UDim2.new(0.42970521541950113, 0, 0.068, 0)
frame3.Position = UDim2.new(0.26077097505668934, 0, 0.132, 0)
frame3.BackgroundColor3 = Color3.new(0.059, 0.059, 0.059)
frame3.BorderSizePixel = 0
frame3.Parent = screenGui

local frame4 = Instance.new("Frame")
frame4.Size = UDim2.new(0.1383219954648526, 0, 0.484, 0)
frame4.Position = UDim2.new(0.2698412698412698, 0, 0.214, 0)
frame4.BackgroundColor3 = Color3.new(0.059, 0.059, 0.059)
frame4.BorderSizePixel = 0
frame4.Parent = screenGui

local corner1 = Instance.new("UICorner", frame1)
corner1.CornerRadius = UDim.new(0, 6)
local corner2 = Instance.new("UICorner", frame2)
corner2.CornerRadius = UDim.new(0, 6)
local corner3 = Instance.new("UICorner", frame3)
corner3.CornerRadius = UDim.new(0, 6)
local corner4 = Instance.new("UICorner", frame4)
corner4.CornerRadius = UDim.new(0, 2)

local closeButton = Instance.new("TextButton", frame3)
closeButton.Size = UDim2.new(0, 15, 0, 15)
closeButton.Position = UDim2.new(0.95, 0, 0.5, -7.5)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = ""
Instance.new("UICorner", closeButton).CornerRadius = UDim.new(1, 0)

local minimizeButton = Instance.new("TextButton", frame3)
minimizeButton.Size = UDim2.new(0, 15, 0, 15)
minimizeButton.Position = UDim2.new(0.9, 0, 0.5, -7.5)
minimizeButton.BackgroundColor3 = Color3.new(1, 1, 0)
minimizeButton.Text = ""
Instance.new("UICorner", minimizeButton).CornerRadius = UDim.new(1, 0)

local tabsScrollingFrame = Instance.new("ScrollingFrame", frame4)
tabsScrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
tabsScrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
tabsScrollingFrame.BackgroundTransparency = 1
tabsScrollingFrame.ScrollBarThickness = 5
tabsScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
Instance.new("UIListLayout", tabsScrollingFrame).FillDirection = Enum.FillDirection.Vertical

local loadstringScrollingFrame = Instance.new("ScrollingFrame", frame2)
loadstringScrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
loadstringScrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
loadstringScrollingFrame.BackgroundTransparency = 1
loadstringScrollingFrame.ScrollBarThickness = 5
loadstringScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
Instance.new("UIListLayout", loadstringScrollingFrame).FillDirection = Enum.FillDirection.Vertical

local gameScripts = {
    ["Blox Fruits"] = {
        {Name = "Nova Hub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Nova-OP/NovaHub/main/NovaHubLoader.lua'))()"},
        {Name = "Titan Hub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Titan-OP/TitanHub/main/BloxFruits.lua'))()"},
        {Name = "Blaze X", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/BlazeX-Official/BlazeX/main/BloxFruits.lua'))()"},
        {Name = "Sea Hub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/SeaHub/SeaHub/main/BloxFruits.lua'))()"},
        {Name = "V.G Hub Fork", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Main.lua'))()"}
    },
    ["Brookhaven RP"] = {
        {Name = "Hydrogen", Script = "loadstring(game:HttpGet('https://hydrogen.gg/scripts/main.lua'))()"},
        {Name = "DarkHub", Script = "loadstring(game:HttpGet('https://darkhub.xyz/scripts/Brookhaven.lua'))()"},
        {Name = "Vynixu", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Vynixu/Scripts/main/Brookhaven.lua'))()"},
        {Name = "Nebula Hub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Nebula-Hub/Nebula/main/Brookhaven.lua'))()"},
        {Name = "Celestial X", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/CelestialHub/Celestial/main/Brookhaven.lua'))()"}
    },
    ["Pet Simulator 99"] = {
        {Name = "OP Pet Sim 99", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/OP-PetSim/OP-PetSim99/main/Main.lua'))()"},
        {Name = "Milk Up", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Milk-Up/Milk-Up/main/PetSim99.lua'))()"},
        {Name = "Titan Pet Sim", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Titan-OP/Titan-PetSim/main/Main.lua'))()"},
        {Name = "Nebula PS99", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Nebula-Hub/Nebula/main/PetSim99.lua'))()"},
        {Name = "Void Hub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/VoidHub/VoidHub/main/PetSim99.lua'))()"}
    },
    ["Arsenal"] = {
        {Name = "Void X", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/VoidHub/VoidHub/main/Arsenal.lua'))()"},
        {Name = "Omega X", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/OmegaX-Hub/OmegaX/main/Arsenal.lua'))()"},
        {Name = "DarkHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkHub/DarkHub/main/Arsenal.lua'))()"},
        {Name = "Nexus", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/NexusHub/Nexus/main/Arsenal.lua'))()"},
        {Name = "DioHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/qAxAp/Arsenal-Aimbot/refs/heads/main/Aimbott'))()"}
    },
    ["Murder Mystery 2"] = {
        {Name = "MM2 Godmode", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/MM2Scripts/MM2Scripts/main/Godmode.lua'))()"},
        {Name = "Vynixu", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Vynixu/Scripts/main/MM2.lua'))()"},
        {Name = "DarkHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkHub/DarkHub/main/MM2.lua'))()"},
        {Name = "Nebula", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Nebula-Hub/Nebula/main/MM2.lua'))()"},
        {Name = "Eclipse", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EclipseHub/Eclipse/main/MM2.lua'))()"}
    },
    ["Tower of Hell"] = {
        {Name = "ToH Script V3", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/ToHScripts/ToH/main/V3.lua'))()"},
        {Name = "Hydrogen", Script = "loadstring(game:HttpGet('https://hydrogen.gg/scripts/ToH.lua'))()"},
        {Name = "Nexus", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/NexusHub/Nexus/main/ToH.lua'))()"},
        {Name = "Celestial", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/CelestialHub/Celestial/main/ToH.lua'))()"},
        {Name = "DarkHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkHub/DarkHub/main/ToH.lua'))()"}
    },
    ["Adopt Me!"] = {
        {Name = "OP Adopt Me", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/OP-AdoptMe/OP-AdoptMe/main/Main.lua'))()"},
        {Name = "Milk Up", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Milk-Up/Milk-Up/main/AdoptMe.lua'))()"},
        {Name = "Nebula", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Nebula-Hub/Nebula/main/AdoptMe.lua'))()"},
        {Name = "Titan", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Titan-OP/Titan-AdoptMe/main/Main.lua'))()"},
        {Name = "VoidHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/VoidHub/VoidHub/main/AdoptMe.lua'))()"}
    },
    ["BedWars"] = {
        {Name = "Void X", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/VoidHub/VoidHub/main/BedWars.lua'))()"},
        {Name = "DarkHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkHub/DarkHub/main/BedWars.lua'))()"},
        {Name = "Nexus", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/NexusHub/Nexus/main/BedWars.lua'))()"},
        {Name = "Eclipse", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EclipseHub/Eclipse/main/BedWars.lua'))()"},
        {Name = "Celestial", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/CelestialHub/Celestial/main/BedWars.lua'))()"}
    },
    ["Rainbow Friends"] = {
        {Name = "RF OP Script", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/RF-Scripts/RF-Scripts/main/OP.lua'))()"},
        {Name = "Hydrogen", Script = "loadstring(game:HttpGet('https://hydrogen.gg/scripts/RainbowFriends.lua'))()"},
        {Name = "DarkHub", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkHub/DarkHub/main/RainbowFriends.lua'))()"},
        {Name = "Nebula", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Nebula-Hub/Nebula/main/RainbowFriends.lua'))()"},
        {Name = "Vynixu", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Vynixu/Scripts/main/RainbowFriends.lua'))()"}
    },
    ["Universal"] = {
        {Name = "Infinite Yield", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"},
        {Name = "Nameless admin", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()"},
        {Name = "Fly gui", Script = "loadstring(game:HttpGet('https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt'))()"},
    }
}


local function createGameDropdowns()
    for _, child in ipairs(loadstringScrollingFrame:GetChildren()) do
        if child:IsA("TextButton") or child:IsA("Frame") then
            child:Destroy()
        end
    end

    local allDropdowns = {}

    for gameName, scripts in pairs(gameScripts) do
        local dropdownContainer = Instance.new("Frame", loadstringScrollingFrame)
        dropdownContainer.Size = UDim2.new(1, -10, 0, 35)
        dropdownContainer.BackgroundTransparency = 1
        dropdownContainer.ZIndex = 2  
        table.insert(allDropdowns, dropdownContainer)

        local dropdownButton = Instance.new("TextButton", dropdownContainer)
        dropdownButton.Size = UDim2.new(1, 0, 1, 0)
        dropdownButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        dropdownButton.Text = "  "..gameName
        dropdownButton.TextColor3 = Color3.new(1, 1, 1)
        dropdownButton.TextSize = 12
        dropdownButton.TextXAlignment = Enum.TextXAlignment.Left
        dropdownButton.ZIndex = 3  
        Instance.new("UICorner", dropdownButton).CornerRadius = UDim.new(0, 4)

        local arrow = Instance.new("ImageLabel", dropdownButton)
        arrow.Name = "Arrow"
        arrow.Size = UDim2.new(0, 12, 0, 12)
        arrow.Position = UDim2.new(1, -25, 0.5, -6)
        arrow.BackgroundTransparency = 1
        arrow.Image = "rbxassetid://71659683"
        arrow.ImageColor3 = Color3.new(1, 1, 1)
        arrow.ZIndex = 4  

        local dropdownContent = Instance.new("Frame", dropdownContainer)
        dropdownContent.Name = "DropdownContent"
        dropdownContent.Size = UDim2.new(1, 0, 0, 0)
        dropdownContent.Position = UDim2.new(0, 0, 1, 5)
        dropdownContent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        dropdownContent.BorderSizePixel = 0
        dropdownContent.ClipsDescendants = true
        dropdownContent.ZIndex = 5  
        Instance.new("UICorner", dropdownContent).CornerRadius = UDim.new(0, 4)
        
        local layout = Instance.new("UIListLayout", dropdownContent)
        layout.FillDirection = Enum.FillDirection.Vertical
        layout.Padding = UDim.new(0, 5)

        
        layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            if dropdownContent.Size.Y.Offset > 0 then
                dropdownContent.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
            end
        end)

        for _, scriptData in ipairs(scripts) do
            local scriptButton = Instance.new("TextButton", dropdownContent)
            scriptButton.Size = UDim2.new(1, -10, 0, 30)
            scriptButton.Position = UDim2.new(0, 5, 0, 0)
            scriptButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            scriptButton.Text = "  "..scriptData.Name
            scriptButton.TextColor3 = Color3.new(1, 1, 1)
            scriptButton.TextSize = 11
            scriptButton.TextXAlignment = Enum.TextXAlignment.Left
            scriptButton.ZIndex = 6  
            Instance.new("UICorner", scriptButton).CornerRadius = UDim.new(0, 4)

            scriptButton.MouseButton1Click:Connect(function()
                loadstring(scriptData.Script)()
            end)
        end

        dropdownButton.MouseButton1Click:Connect(function()
            for _, otherDropdown in ipairs(allDropdowns) do
                if otherDropdown ~= dropdownContainer then
                    local content = otherDropdown:FindFirstChild("DropdownContent")
                    if content then
                        content.Size = UDim2.new(1, 0, 0, 0)
                        local arrow = otherDropdown:FindFirstChild("Arrow", true)
                        if arrow then arrow.Rotation = 0 end
                    end
                end
            end

            local isOpen = dropdownContent.Size.Y.Offset > 0
            local targetHeight = isOpen and 0 or layout.AbsoluteContentSize.Y
            
            dropdownContent:TweenSize(
                UDim2.new(1, 0, 0, targetHeight),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.2,
                true
            )
            arrow.Rotation = isOpen and 0 or 180
        end)
    end
end

local function createTab(name)
    local tab = Instance.new("TextButton", tabsScrollingFrame)
    tab.Size = UDim2.new(1, -5, 0, 30)
    tab.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
    tab.Text = name
    tab.TextColor3 = Color3.new(1, 1, 1)
    tab.TextSize = 12
    Instance.new("UICorner", tab).CornerRadius = UDim.new(0, 4)
    return tab
end

local mainTabButton = createTab("Games")
local settingsTabButton = createTab("Settings")
local userTabButton = createTab("User")

local settingsPanel = Instance.new("Frame", frame2)
settingsPanel.Size = UDim2.new(0.9, 0, 0.9, 0)
settingsPanel.Position = UDim2.new(0.05, 0, 0.05, 0)
settingsPanel.BackgroundTransparency = 1
settingsPanel.Visible = false
Instance.new("UIListLayout", settingsPanel).FillDirection = Enum.FillDirection.Vertical

local userPanel = Instance.new("Frame", frame2)
userPanel.Size = UDim2.new(0.9, 0, 0.9, 0)
userPanel.Position = UDim2.new(0.05, 0, 0.05, 0)
userPanel.BackgroundTransparency = 1
userPanel.Visible = false
local userLayout = Instance.new("UIListLayout", userPanel)
userLayout.FillDirection = Enum.FillDirection.Vertical
userLayout.Padding = UDim.new(0, 10)

local toggleContainer = Instance.new("Frame", userPanel)
toggleContainer.Size = UDim2.new(1, 0, 0, 30)
toggleContainer.BackgroundTransparency = 1

local toggleButton = Instance.new("TextButton", toggleContainer)
toggleButton.Size = UDim2.new(0, 20, 0, 20)
toggleButton.Position = UDim2.new(0, 0, 0, 5)
toggleButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
toggleButton.Text = ""
Instance.new("UICorner", toggleButton).CornerRadius = UDim.new(0, 4)

local toggleLabel = Instance.new("TextLabel", toggleContainer)
toggleLabel.Size = UDim2.new(1, -25, 1, 0)
toggleLabel.Position = UDim2.new(0, 25, 0, 0)
toggleLabel.BackgroundTransparency = 1
toggleLabel.Text = "Infinite Jump"
toggleLabel.TextColor3 = Color3.new(1, 1, 1)
toggleLabel.TextSize = 12
toggleLabel.TextXAlignment = Enum.TextXAlignment.Left

local function createSlider(parent, name, min, max, default, property)
    local container = Instance.new("Frame", parent)
    container.Size = UDim2.new(1, 0, 0, 60)  
    container.BackgroundTransparency = 1
    
    local label = Instance.new("TextLabel", container)
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 0, 0)  
    label.BackgroundTransparency = 1
    label.Text = name..": "..default
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    
    local slider = Instance.new("Frame", container)
    slider.Size = UDim2.new(1, 0, 0, 20)
    slider.Position = UDim2.new(0, 0, 0, 25)  
    slider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Instance.new("UICorner", slider).CornerRadius = UDim.new(0, 4)

    local fill = Instance.new("Frame", slider)
    fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
    fill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 4)

    local button = Instance.new("TextButton", slider)
    button.Size = UDim2.new(1, 0, 1, 0)
    button.BackgroundTransparency = 1
    button.Text = ""

    local currentValue = default
    local isDragging = false

    local function setValue(value)
        currentValue = math.clamp(math.floor(value), min, max)
        local percentage = (currentValue - min) / (max - min)
        tweenService:Create(fill, TweenInfo.new(0.1), {Size = UDim2.new(percentage, 0, 1, 0)}):Play()
        label.Text = name..": "..currentValue
        
        local character = player.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character:FindFirstChildOfClass("Humanoid")[property] = currentValue
        end
    end

    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            local sliderAbsPos = slider.AbsolutePosition.X
            local sliderAbsSize = slider.AbsoluteSize.X
            local inputX = input.UserInputType == Enum.UserInputType.Touch and input.Position.X or input.Position.X
            local mouseX = math.clamp(inputX, sliderAbsPos, sliderAbsPos + sliderAbsSize)
            local percentage = (mouseX - sliderAbsPos) / sliderAbsSize
            setValue(min + (max - min) * percentage)
        end
    end)

    userInputService.InputChanged:Connect(function(input)
        if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
                          input.UserInputType == Enum.UserInputType.Touch) then
            local sliderAbsPos = slider.AbsolutePosition.X
            local sliderAbsSize = slider.AbsoluteSize.X
            local inputX = input.UserInputType == Enum.UserInputType.Touch and input.Position.X or input.Position.X
            local mouseX = math.clamp(inputX, sliderAbsPos, sliderAbsPos + sliderAbsSize)
            local percentage = (mouseX - sliderAbsPos) / sliderAbsSize
            setValue(min + (max - min) * percentage)
        end
    end)

    userInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            isDragging = false
        end
    end)

    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChildOfClass("Humanoid")
        humanoid[property] = currentValue
    end)
end

local speedLabel = Instance.new("TextLabel", userPanel)
speedLabel.Size = UDim2.new(1, 0, 0, 20)
speedLabel.Position = UDim2.new(0, 0, 0, 0)  
speedLabel.BackgroundTransparency = 1
speedLabel.Text = ""
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.TextSize = 12
speedLabel.TextXAlignment = Enum.TextXAlignment.Center

createSlider(userPanel, "Walk Speed", 16, 50, 16, "WalkSpeed")

local jumpLabel = Instance.new("TextLabel", userPanel)
jumpLabel.Size = UDim2.new(1, 0, 0, 20)
jumpLabel.Position = UDim2.new(0, 0, 0, 60) 
speedLabel.BackgroundTransparency = 1
jumpLabel.Text = ""
jumpLabel.TextColor3 = Color3.new(1, 1, 1)
jumpLabel.TextSize = 12
jumpLabel.TextXAlignment = Enum.TextXAlignment.Center

createSlider(userPanel, "Jump Height", 50, 200, 50, "JumpPower")

local isInfiniteJumpEnabled = false
local infiniteJumpConnection

local function enableInfiniteJump()
    if infiniteJumpConnection then infiniteJumpConnection:Disconnect() end
    infiniteJumpConnection = userInputService.JumpRequest:Connect(function()
        if isInfiniteJumpEnabled then
            local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
end

toggleButton.MouseButton1Click:Connect(function()
    isInfiniteJumpEnabled = not isInfiniteJumpEnabled
    toggleButton.BackgroundColor3 = isInfiniteJumpEnabled and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(45, 45, 45)
    if isInfiniteJumpEnabled then
        enableInfiniteJump()
    elseif infiniteJumpConnection then
        infiniteJumpConnection:Disconnect()
    end
end)

player.CharacterAdded:Connect(function()
    if isInfiniteJumpEnabled then enableInfiniteJump() end
end)

mainTabButton.MouseButton1Click:Connect(function()
    settingsPanel.Visible = false
    userPanel.Visible = false
    loadstringScrollingFrame.Visible = true
    createGameDropdowns()
end)

settingsTabButton.MouseButton1Click:Connect(function()
    loadstringScrollingFrame.Visible = false
    userPanel.Visible = false
    settingsPanel.Visible = true
end)

userTabButton.MouseButton1Click:Connect(function()
    loadstringScrollingFrame.Visible = false
    settingsPanel.Visible = false
    userPanel.Visible = true
end)

local themesDropdownContainer = Instance.new("Frame", settingsPanel)
themesDropdownContainer.Size = UDim2.new(1, -10, 0, 35)
themesDropdownContainer.BackgroundTransparency = 1

local themesDropdownButton = Instance.new("TextButton", themesDropdownContainer)
themesDropdownButton.Size = UDim2.new(1, 0, 1, 0)
themesDropdownButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
themesDropdownButton.Text = "  Themes"
themesDropdownButton.TextColor3 = Color3.new(1, 1, 1)
themesDropdownButton.TextSize = 12
themesDropdownButton.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UICorner", themesDropdownButton).CornerRadius = UDim.new(0, 4)

local themesArrow = Instance.new("ImageLabel", themesDropdownButton)
themesArrow.Name = "Arrow"
themesArrow.Size = UDim2.new(0, 12, 0, 12)
themesArrow.Position = UDim2.new(1, -25, 0.5, -6)
themesArrow.BackgroundTransparency = 1
themesArrow.Image = "rbxassetid://71659683"
themesArrow.ImageColor3 = Color3.new(1, 1, 1)

local themesDropdownContent = Instance.new("Frame", themesDropdownContainer)
themesDropdownContent.Name = "DropdownContent"
themesDropdownContent.Size = UDim2.new(1, 0, 0, 0)
themesDropdownContent.Position = UDim2.new(0, 0, 1, 5)
themesDropdownContent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
themesDropdownContent.BorderSizePixel = 0
themesDropdownContent.ClipsDescendants = true
Instance.new("UICorner", themesDropdownContent).CornerRadius = UDim.new(0, 4)

local themesLayout = Instance.new("UIListLayout", themesDropdownContent)
themesLayout.FillDirection = Enum.FillDirection.Vertical
themesLayout.Padding = UDim.new(0, 5)

local themes = {
    ["White"] = {
        Main = Color3.fromRGB(230, 230, 230),
        Right = Color3.fromRGB(240, 240, 240),
        Top = Color3.fromRGB(200, 200, 200),
        Left = Color3.fromRGB(210, 210, 210)
    },
    ["Blue"] = {
        Main = Color3.fromRGB(50, 100, 180),
        Right = Color3.fromRGB(30, 70, 150),
        Top = Color3.fromRGB(20, 60, 130),
        Left = Color3.fromRGB(40, 80, 160)
    },
    ["Original"] = {
        Main = Color3.new(0.141, 0.141, 0.141),
        Right = Color3.new(0.059, 0.059, 0.059),
        Top = Color3.new(0.059, 0.059, 0.059),
        Left = Color3.new(0.059, 0.059, 0.059)
    },
    ["Purple"] = {
        Main = Color3.new(69, 0, 92),
        Right = Color3.new(46, 25, 54),
        Top = Color3.new(46, 25, 54),
        Left = Color3.new(46, 25, 54)
    },
}

for themeName, colors in pairs(themes) do
    local themeButton = Instance.new("TextButton", themesDropdownContent)
    themeButton.Size = UDim2.new(1, -10, 0, 30)
    themeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    themeButton.Text = "  "..themeName
    themeButton.TextColor3 = Color3.new(1, 1, 1)
    themeButton.TextSize = 11
    themeButton.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", themeButton).CornerRadius = UDim.new(0, 4)

    themeButton.MouseButton1Click:Connect(function()
        frame1.BackgroundColor3 = colors.Main
        frame2.BackgroundColor3 = colors.Right
        frame3.BackgroundColor3 = colors.Top
        frame4.BackgroundColor3 = colors.Left
    end)
end

themesLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    if themesDropdownContent.Size.Y.Offset > 0 then
        themesDropdownContent.Size = UDim2.new(1, 0, 0, themesLayout.AbsoluteContentSize.Y)
    end
end)

local isThemesDropdownOpen = false
themesDropdownButton.MouseButton1Click:Connect(function()
    isThemesDropdownOpen = not isThemesDropdownOpen
    themesDropdownContent:TweenSize(
        UDim2.new(1, 0, 0, isThemesDropdownOpen and themesLayout.AbsoluteContentSize.Y or 0),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.2,
        true
    )
    themesArrow.Rotation = isThemesDropdownOpen and 180 or 0
end)

local dragInput, dragStart, startPos
local isDragging = false

frame3.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = input.Position
        startPos = {
            frame1 = frame1.Position,
            frame2 = frame2.Position,
            frame3 = frame3.Position,
            frame4 = frame4.Position
        }
        isDragging = true
    end
end)

userInputService.InputChanged:Connect(function(input)
    if isDragging and (input == dragInput or input.UserInputType == Enum.UserInputType.Touch) and dragStart then
        local delta = input.Position - dragStart
        frame1.Position = UDim2.new(startPos.frame1.X.Scale, startPos.frame1.X.Offset + delta.X, startPos.frame1.Y.Scale, startPos.frame1.Y.Offset + delta.Y)
        frame2.Position = UDim2.new(startPos.frame2.X.Scale, startPos.frame2.X.Offset + delta.X, startPos.frame2.Y.Scale, startPos.frame2.Y.Offset + delta.Y)
        frame3.Position = UDim2.new(startPos.frame3.X.Scale, startPos.frame3.X.Offset + delta.X, startPos.frame3.Y.Scale, startPos.frame3.Y.Offset + delta.Y)
        frame4.Position = UDim2.new(startPos.frame4.X.Scale, startPos.frame4.X.Offset + delta.X, startPos.frame4.Y.Scale, startPos.frame4.Y.Offset + delta.Y)
    end
end)

userInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
    end
end)

local isMinimized = false
closeButton.MouseButton1Click:Connect(function() screenGui:Destroy() end)
minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    frame1.Visible = not isMinimized
    frame2.Visible = not isMinimized
    frame4.Visible = not isMinimized
end)

createGameDropdowns()
