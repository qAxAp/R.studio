local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

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

local corner1 = Instance.new("UICorner")
corner1.CornerRadius = UDim.new(0, 6) 
corner1.Parent = frame1

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 6) 
corner2.Parent = frame2

local corner3 = Instance.new("UICorner")
corner3.CornerRadius = UDim.new(0, 6) 
corner3.Parent = frame3

local corner4 = Instance.new("UICorner")
corner4.CornerRadius = UDim.new(0, 2) 
corner4.Parent = frame4

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 15, 0, 15)
closeButton.Position = UDim2.new(0.95, 0, 0.5, -7.5)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = ""
closeButton.Parent = frame3

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeButton

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 15, 0, 15)
minimizeButton.Position = UDim2.new(0.9, 0, 0.5, -7.5)
minimizeButton.BackgroundColor3 = Color3.new(1, 1, 0)
minimizeButton.Text = ""
minimizeButton.Parent = frame3

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(1, 0)
minimizeCorner.Parent = minimizeButton

local tabsScrollingFrame = Instance.new("ScrollingFrame")
tabsScrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
tabsScrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
tabsScrollingFrame.BackgroundTransparency = 1
tabsScrollingFrame.ScrollBarThickness = 5
tabsScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
tabsScrollingFrame.Parent = frame4

local tabsLayout = Instance.new("UIListLayout")
tabsLayout.FillDirection = Enum.FillDirection.Vertical
tabsLayout.Padding = UDim.new(0, 5)
tabsLayout.Parent = tabsScrollingFrame

local loadstringScrollingFrame = Instance.new("ScrollingFrame")
loadstringScrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
loadstringScrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
loadstringScrollingFrame.BackgroundTransparency = 1
loadstringScrollingFrame.ScrollBarThickness = 5
loadstringScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
loadstringScrollingFrame.Parent = frame2

local loadstringLayout = Instance.new("UIListLayout")
loadstringLayout.FillDirection = Enum.FillDirection.Vertical
loadstringLayout.Padding = UDim.new(0, 5)
loadstringLayout.Parent = loadstringScrollingFrame

-- Game scripts data remains the same...

local function createGameDropdowns()
    -- Game dropdowns creation remains the same...
end

-- Tab buttons creation remains the same...

-- User Panel with ScrollingFrame
local userScrollingFrame = Instance.new("ScrollingFrame")
userScrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
userScrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
userScrollingFrame.BackgroundTransparency = 1
userScrollingFrame.ScrollBarThickness = 5
userScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
userScrollingFrame.Visible = false
userScrollingFrame.Parent = frame2

local userLayout = Instance.new("UIListLayout")
userLayout.Padding = UDim.new(0, 10)
userLayout.FillDirection = Enum.FillDirection.Vertical
userLayout.Parent = userScrollingFrame

-- Infinite Jump Toggle
local toggleContainer = Instance.new("Frame")
toggleContainer.Size = UDim2.new(1, 0, 0, 30)
toggleContainer.BackgroundTransparency = 1
toggleContainer.Parent = userScrollingFrame

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 20, 0, 20)
toggleButton.Position = UDim2.new(0, 0, 0, 5)
toggleButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
toggleButton.Text = ""
toggleButton.Parent = toggleContainer

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 4)
toggleCorner.Parent = toggleButton

local toggleLabel = Instance.new("TextLabel")
toggleLabel.Size = UDim2.new(1, -25, 1, 0)
toggleLabel.Position = UDim2.new(0, 25, 0, 0)
toggleLabel.BackgroundTransparency = 1
toggleLabel.Text = "Infinite Jump"
toggleLabel.TextColor3 = Color3.new(1, 1, 1)
toggleLabel.TextSize = 12
toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
toggleLabel.Parent = toggleContainer

-- Speed Section
local speedSection = Instance.new("Frame")
speedSection.Size = UDim2.new(1, 0, 0, 80)
speedSection.BackgroundTransparency = 1
speedSection.Parent = userScrollingFrame

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0, 20)
speedLabel.BackgroundTransparency = 1
speedLabel.Text = "--- Speed ---"
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.TextSize = 12
speedLabel.TextXAlignment = Enum.TextXAlignment.Center
speedLabel.Parent = speedSection

local walkSpeedContainer = Instance.new("Frame")
walkSpeedContainer.Size = UDim2.new(1, 0, 0, 50)
walkSpeedContainer.BackgroundTransparency = 1
walkSpeedContainer.Position = UDim2.new(0, 0, 0, 25)
walkSpeedContainer.Parent = speedSection

local walkSpeedLabel = Instance.new("TextLabel")
walkSpeedLabel.Size = UDim2.new(1, 0, 0, 20)
walkSpeedLabel.BackgroundTransparency = 1
walkSpeedLabel.Text = "Walk Speed: 16"
walkSpeedLabel.TextColor3 = Color3.new(1, 1, 1)
walkSpeedLabel.TextSize = 12
walkSpeedLabel.TextXAlignment = Enum.TextXAlignment.Left
walkSpeedLabel.Parent = walkSpeedContainer

local walkSpeedSlider = Instance.new("Frame")
walkSpeedSlider.Size = UDim2.new(1, 0, 0, 20)
walkSpeedSlider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
walkSpeedSlider.Position = UDim2.new(0, 0, 0, 25)
walkSpeedSlider.Parent = walkSpeedContainer

local walkSpeedSliderCorner = Instance.new("UICorner")
walkSpeedSliderCorner.CornerRadius = UDim.new(0, 4)
walkSpeedSliderCorner.Parent = walkSpeedSlider

local walkSpeedFill = Instance.new("Frame")
walkSpeedFill.Size = UDim2.new(0.16, 0, 1, 0)
walkSpeedFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
walkSpeedFill.Parent = walkSpeedSlider

local walkSpeedFillCorner = Instance.new("UICorner")
walkSpeedFillCorner.CornerRadius = UDim.new(0, 4)
walkSpeedFillCorner.Parent = walkSpeedFill

local walkSpeedButton = Instance.new("TextButton")
walkSpeedButton.Size = UDim2.new(1, 0, 1, 0)
walkSpeedButton.BackgroundTransparency = 1
walkSpeedButton.Text = ""
walkSpeedButton.Parent = walkSpeedSlider

-- JumpPower Section
local jumpSection = Instance.new("Frame")
jumpSection.Size = UDim2.new(1, 0, 0, 80)
jumpSection.BackgroundTransparency = 1
jumpSection.Parent = userScrollingFrame

local jumpLabel = Instance.new("TextLabel")
jumpLabel.Size = UDim2.new(1, 0, 0, 20)
jumpLabel.BackgroundTransparency = 1
jumpLabel.Text = "--- JumpPower ---"
jumpLabel.TextColor3 = Color3.new(1, 1, 1)
jumpLabel.TextSize = 12
jumpLabel.TextXAlignment = Enum.TextXAlignment.Center
jumpLabel.Parent = jumpSection

local jumpHeightContainer = Instance.new("Frame")
jumpHeightContainer.Size = UDim2.new(1, 0, 0, 50)
jumpHeightContainer.BackgroundTransparency = 1
jumpHeightContainer.Position = UDim2.new(0, 0, 0, 25)
jumpHeightContainer.Parent = jumpSection

local jumpHeightLabel = Instance.new("TextLabel")
jumpHeightLabel.Size = UDim2.new(1, 0, 0, 20)
jumpHeightLabel.BackgroundTransparency = 1
jumpHeightLabel.Text = "Jump Height: 50"
jumpHeightLabel.TextColor3 = Color3.new(1, 1, 1)
jumpHeightLabel.TextSize = 12
jumpHeightLabel.TextXAlignment = Enum.TextXAlignment.Left
jumpHeightLabel.Parent = jumpHeightContainer

local jumpHeightSlider = Instance.new("Frame")
jumpHeightSlider.Size = UDim2.new(1, 0, 0, 20)
jumpHeightSlider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
jumpHeightSlider.Position = UDim2.new(0, 0, 0, 25)
jumpHeightSlider.Parent = jumpHeightContainer

local jumpHeightSliderCorner = Instance.new("UICorner")
jumpHeightSliderCorner.CornerRadius = UDim.new(0, 4)
jumpHeightSliderCorner.Parent = jumpHeightSlider

local jumpHeightFill = Instance.new("Frame")
jumpHeightFill.Size = UDim2.new(0.5, 0, 1, 0)
jumpHeightFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
jumpHeightFill.Parent = jumpHeightSlider

local jumpHeightFillCorner = Instance.new("UICorner")
jumpHeightFillCorner.CornerRadius = UDim.new(0, 4)
jumpHeightFillCorner.Parent = jumpHeightFill

local jumpHeightButton = Instance.new("TextButton")
jumpHeightButton.Size = UDim2.new(1, 0, 1, 0)
jumpHeightButton.BackgroundTransparency = 1
jumpHeightButton.Text = ""
jumpHeightButton.Parent = jumpHeightSlider

-- Fixed Slider Functionality
local function createSlider(sliderButton, fill, label, minValue, maxValue, defaultValue, propertyName)
    local isDragging = false
    local currentValue = defaultValue
    
    local function updateValue(input)
        local sliderAbsPos = sliderButton.AbsolutePosition.X
        local sliderAbsSize = sliderButton.AbsoluteSize.X
        local mouseX = input.Position.X
        
        local relativeX = math.clamp(mouseX - sliderAbsPos, 0, sliderAbsSize)
        local ratio = relativeX / sliderAbsSize
        currentValue = math.floor(minValue + (maxValue - minValue) * ratio)
        
        fill.Size = UDim2.new(ratio, 0, 1, 0)
        label.Text = propertyName == "WalkSpeed" and "Walk Speed: "..currentValue or "Jump Height: "..currentValue
        
        -- Update player's property if they exist
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid[propertyName] = currentValue
            end
        end
    end
    
    sliderButton.MouseButton1Down:Connect(function()
        isDragging = true
        updateInput = game:GetService("UserInputService"):GetMouseLocation()
        updateValue({Position = updateInput})
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            updateValue(input)
        end
    end)
    
    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = false
        end
    end)
    
    -- Set initial value
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        currentValue = humanoid[propertyName] or defaultValue
        local ratio = (currentValue - minValue) / (maxValue - minValue)
        fill.Size = UDim2.new(ratio, 0, 1, 0)
        label.Text = propertyName == "WalkSpeed" and "Walk Speed: "..currentValue or "Jump Height: "..currentValue
    end
end

-- Initialize sliders
createSlider(walkSpeedButton, walkSpeedFill, walkSpeedLabel, 16, 100, 16, "WalkSpeed")
createSlider(jumpHeightButton, jumpHeightFill, jumpHeightLabel, 50, 200, 50, "JumpPower")

-- Reinitialize sliders when character respawns
player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    createSlider(walkSpeedButton, walkSpeedFill, walkSpeedLabel, 16, 100, 16, "WalkSpeed")
    createSlider(jumpHeightButton, jumpHeightFill, jumpHeightLabel, 50, 200, 50, "JumpPower")
end)

-- Infinite Jump Toggle Functionality
local isInfiniteJumpEnabled = false
local infiniteJumpConnection

local function enableInfiniteJump()
    if infiniteJumpConnection then infiniteJumpConnection:Disconnect() end
    
    infiniteJumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
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
    if isInfiniteJumpEnabled then
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        enableInfiniteJump()
    else
        toggleButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        if infiniteJumpConnection then
            infiniteJumpConnection:Disconnect()
        end
    end
end)

-- Reconnect infinite jump when character respawns
player.CharacterAdded:Connect(function(character)
    if isInfiniteJumpEnabled then
        enableInfiniteJump()
    end
end)

-- Settings Panel with ScrollingFrame
local settingsScrollingFrame = Instance.new("ScrollingFrame")
settingsScrollingFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
settingsScrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
settingsScrollingFrame.BackgroundTransparency = 1
settingsScrollingFrame.ScrollBarThickness = 5
settingsScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
settingsScrollingFrame.Visible = false
settingsScrollingFrame.Parent = frame2

local settingsLayout = Instance.new("UIListLayout")
settingsLayout.Padding = UDim.new(0, 10)
settingsLayout.FillDirection = Enum.FillDirection.Vertical
settingsLayout.Parent = settingsScrollingFrame

-- Themes Dropdown
local themesDropdownContainer = Instance.new("Frame")
themesDropdownContainer.Size = UDim2.new(1, -10, 0, 35)
themesDropdownContainer.BackgroundTransparency = 1
themesDropdownContainer.Parent = settingsScrollingFrame

local themesDropdownButton = Instance.new("TextButton")
themesDropdownButton.Size = UDim2.new(1, 0, 1, 0)
themesDropdownButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
themesDropdownButton.Text = "  Themes"
themesDropdownButton.TextColor3 = Color3.new(1, 1, 1)
themesDropdownButton.TextSize = 12
themesDropdownButton.TextXAlignment = Enum.TextXAlignment.Left
themesDropdownButton.ZIndex = 2
themesDropdownButton.Parent = themesDropdownContainer

local themesDropdownCorner = Instance.new("UICorner")
themesDropdownCorner.CornerRadius = UDim.new(0, 4)
themesDropdownCorner.Parent = themesDropdownButton

local themesArrow = Instance.new("ImageLabel")
themesArrow.Name = "Arrow"
themesArrow.Size = UDim2.new(0, 12, 0, 12)
themesArrow.Position = UDim2.new(1, -25, 0.5, -6)
themesArrow.BackgroundTransparency = 1
themesArrow.Image = "rbxassetid://71659683"
themesArrow.ImageColor3 = Color3.new(1, 1, 1)
themesArrow.ZIndex = 2
themesArrow.Parent = themesDropdownButton

local themesDropdownContent = Instance.new("Frame")
themesDropdownContent.Name = "DropdownContent"
themesDropdownContent.Size = UDim2.new(1, 0, 0, 0)
themesDropdownContent.Position = UDim2.new(0, 0, 1, 5)
themesDropdownContent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
themesDropdownContent.BorderSizePixel = 0
themesDropdownContent.ClipsDescendants = true
themesDropdownContent.ZIndex = 3
themesDropdownContent.Parent = themesDropdownContainer

local themesDropdownContentCorner = Instance.new("UICorner")
themesDropdownContentCorner.CornerRadius = UDim.new(0, 4)
themesDropdownContentCorner.Parent = themesDropdownContent

local themesDropdownContentLayout = Instance.new("UIListLayout")
themesDropdownContentLayout.FillDirection = Enum.FillDirection.Vertical
themesDropdownContentLayout.Padding = UDim.new(0, 5)
themesDropdownContentLayout.Parent = themesDropdownContent

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

-- Create theme buttons inside the dropdown
for themeName, colors in pairs(themes) do
    local themeButton = Instance.new("TextButton")
    themeButton.Size = UDim2.new(1, -10, 0, 30)
    themeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    themeButton.Text = "  "..themeName
    themeButton.TextColor3 = Color3.new(1, 1, 1)
    themeButton.TextSize = 11
    themeButton.TextXAlignment = Enum.TextXAlignment.Left
    themeButton.ZIndex = 4
    themeButton.Parent = themesDropdownContent

    local themeButtonCorner = Instance.new("UICorner")
    themeButtonCorner.CornerRadius = UDim.new(0, 4)
    themeButtonCorner.Parent = themeButton

    themeButton.MouseButton1Click:Connect(function()
        frame1.BackgroundColor3 = colors.Main
        frame2.BackgroundColor3 = colors.Right
        frame3.BackgroundColor3 = colors.Top
        frame4.BackgroundColor3 = colors.Left
    end)
end

-- Calculate the total height needed for all theme buttons
themesDropdownContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    local totalHeight = themesDropdownContentLayout.AbsoluteContentSize.Y
    if themesDropdownContent.Size.Y.Offset > 0 then
        themesDropdownContent.Size = UDim2.new(1, 0, 0, totalHeight)
    end
end)

-- Toggle themes dropdown
local isThemesDropdownOpen = false
themesDropdownButton.MouseButton1Click:Connect(function()
    isThemesDropdownOpen = not isThemesDropdownOpen
    
    if isThemesDropdownOpen then
        themesDropdownContent:TweenSize(
            UDim2.new(1, 0, 0, themesDropdownContentLayout.AbsoluteContentSize.Y),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quad,
            0.2,
            true
        )
        themesArrow.Rotation = 180
    else
        themesDropdownContent:TweenSize(
            UDim2.new(1, 0, 0, 0),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quad,
            0.2,
            true
        )
        themesArrow.Rotation = 0
    end
end)

-- Tab switching functionality
mainTabButton.MouseButton1Click:Connect(function()
    settingsScrollingFrame.Visible = false
    userScrollingFrame.Visible = false
    loadstringScrollingFrame.Visible = true
    createGameDropdowns()
end)

settingsTabButton.MouseButton1Click:Connect(function()
    loadstringScrollingFrame.Visible = false
    userScrollingFrame.Visible = false
    settingsScrollingFrame.Visible = true
end)

userTabButton.MouseButton1Click:Connect(function()
    loadstringScrollingFrame.Visible = false
    settingsScrollingFrame.Visible = false
    userScrollingFrame.Visible = true
end)

-- Initialize with Games tab open
createGameDropdowns()

-- Dragging functionality
local dragInput
local dragStart
local startPositions = {}
local isDragging = false

local function updatePositions(delta)
    frame1.Position = UDim2.new(
        startPositions.frame1.X.Scale,
        startPositions.frame1.X.Offset + delta.X,
        startPositions.frame1.Y.Scale,
        startPositions.frame1.Y.Offset + delta.Y
    )
    frame2.Position = UDim2.new(
        startPositions.frame2.X.Scale,
        startPositions.frame2.X.Offset + delta.X,
        startPositions.frame2.Y.Scale,
        startPositions.frame2.Y.Offset + delta.Y
    )
    frame3.Position = UDim2.new(
        startPositions.frame3.X.Scale,
        startPositions.frame3.X.Offset + delta.X,
        startPositions.frame3.Y.Scale,
        startPositions.frame3.Y.Offset + delta.Y
    )
    frame4.Position = UDim2.new(
        startPositions.frame4.X.Scale,
        startPositions.frame4.X.Offset + delta.X,
        startPositions.frame4.Y.Scale,
        startPositions.frame4.Y.Offset + delta.Y
    )
end

local function onInputBegan(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStart = input.Position
        startPositions = {
            frame1 = frame1.Position,
            frame2 = frame2.Position,
            frame3 = frame3.Position,
            frame4 = frame4.Position
        }
        isDragging = true

        local connection
        connection = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                isDragging = false
                connection:Disconnect()
            end
        end)
    end
end

local function onInputChanged(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        dragInput = input
    end
end

frame3.InputBegan:Connect(onInputBegan)
frame3.InputChanged:Connect(onInputChanged)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if isDragging and input == dragInput and dragStart then
        local delta = input.Position - dragStart
        updatePositions(delta)
    end
end)

local isMinimized = false

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    frame1.Visible = not isMinimized
    frame2.Visible = not isMinimized
    frame4.Visible = not isMinimized
end)
