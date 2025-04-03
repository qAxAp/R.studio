-- Detect the local player
local player = game:GetService("Players").LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- Create main UI container
local Freecam = Instance.new("ScreenGui")
Freecam.Parent = PlayerGui
Freecam.ResetOnSpawn = false

-- Function to add rounded corners
local function addRoundedCorners(instance, radius)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, radius)
    UICorner.Parent = instance
end

-- Create primary frame (Main UI)
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 457, 0, 233)
Frame.Position = UDim2.new(0.277, 0, 0.220, 0)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Parent = Freecam
addRoundedCorners(Frame, 2)

-- Create Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 25)
TitleBar.Position = UDim2.new(0, 0, 0, -25)
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleBar.Parent = Frame
addRoundedCorners(TitleBar, 2)

local CloseButton = Instance.new("ImageButton")
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Position = UDim2.new(1, -25, 0, 2)
CloseButton.Image = "rbxassetid://3224922527" 
CloseButton.BackgroundTransparency = 1
CloseButton.Parent = TitleBar
addRoundedCorners(CloseButton, 2)

CloseButton.MouseButton1Click:Connect(function()
    Freecam:Destroy()
end)

-- Dragging functionality
local UIS = game:GetService("UserInputService")
local dragging, dragStart, startPos

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

TitleBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- Create side panel
local SidePanel = Instance.new("Frame")
SidePanel.Size = UDim2.new(0, 130, 0, 209)
SidePanel.Position = UDim2.new(0.022, 0, 0.044, 0)
SidePanel.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
SidePanel.Parent = Frame
addRoundedCorners(SidePanel, 7)

-- Create main panel
local MainPanel = Instance.new("Frame")
MainPanel.Size = UDim2.new(0, 274, 0, 202)
MainPanel.Position = UDim2.new(0.358, 0, 0.044, 0)
MainPanel.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
MainPanel.Parent = Frame
addRoundedCorners(MainPanel, 3)

-- Define scripts for different tabs
local tabScripts = {
    {
        { "Dio fly", "loadstring(game:HttpGet('https://raw.githubusercontent.com/qAxAp/DioFly/main/DioFly.lua'))()" },
        { "Execute 2", "print('Script 2 Executed')" },
        { "Execute 3", "print('Script 3 Executed')" },
        { "Execute 4", "print('Script 4 Executed')" }
    },
    {
        { "Run 1", "print('Tab 2 Script 1')" },
        { "Run 2", "print('Tab 2 Script 2')" },
        { "Run 3", "print('Tab 2 Script 3')" },
        { "Run 4", "print('Tab 2 Script 4')" }
    },
    {
        { "Launch 1", "print('Tab 3 Script 1')" },
        { "Launch 2", "print('Tab 3 Script 2')" },
        { "Launch 3", "print('Tab 3 Script 3')" },
        { "Launch 4", "print('Tab 3 Script 4')" }
    },
    {
        { "Activate 1", "print('Tab 4 Script 1')" },
        { "Activate 2", "print('Tab 4 Script 2')" },
        { "Activate 3", "print('Tab 4 Script 3')" },
        { "Activate 4", "print('Tab 4 Script 4')" }
    },
    {
        { "Trigger 1", "print('Tab 5 Script 1')" },
        { "Trigger 2", "print('Tab 5 Script 2')" },
        { "Trigger 3", "print('Tab 5 Script 3')" },
        { "Trigger 4", "print('Tab 5 Script 4')" }
    },
    {
        { "Fire 1", "print('Tab 6 Script 1')" },
        { "Fire 2", "print('Tab 6 Script 2')" },
        { "Fire 3", "print('Tab 6 Script 3')" },
        { "Fire 4", "print('Tab 6 Script 4')" }
    }
}

-- Function to create buttons in MainPanel
local function createMainButton(parent, position, text, scriptCode)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 88, 0, 29)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = text
    button.Parent = parent
    addRoundedCorners(button, 6)

    button.MouseButton1Click:Connect(function()
        local success, result = pcall(function()
            return loadstring(scriptCode)
        end)

        if success and result then
            pcall(result)
        else
            warn("Error executing script:", result)
        end
    end)
end

-- Function to update buttons in MainPanel
local function updateMainPanel(tabIndex)
    for _, child in pairs(MainPanel:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    local buttonPositions = {
        UDim2.new(0.067, 0, 0.111, 0),
        UDim2.new(0.067, 0, 0.270, 0),
        UDim2.new(0.067, 0, 0.437, 0),
        UDim2.new(0.067, 0, 0.596, 0)
    }

    for i, data in ipairs(tabScripts[tabIndex]) do
        createMainButton(MainPanel, buttonPositions[i], data[1], data[2])
    end
end

-- Function to create tab buttons
local function createTabButton(name, position, tabIndex)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 90, 0, 30)
    button.Position = UDim2.new(0, 15, 0, position)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = name
    button.Parent = SidePanel
    addRoundedCorners(button, 6)

    button.MouseButton1Click:Connect(function()
        updateMainPanel(tabIndex)
    end)
end

-- Create all tab buttons
for i = 1, 6 do
    createTabButton("Tab " .. i, (i - 1) * 35, i)
end

-- Initialize with first tab
updateMainPanel(1)
