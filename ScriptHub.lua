local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Main window frame
local frame1 = Instance.new("Frame")
frame1.Size = UDim2.new(0.42970521541950113, 0, 0.548, 0)
frame1.Position = UDim2.new(0.26077097505668934, 0, 0.178, 0)
frame1.BackgroundColor3 = Color3.new(0.141, 0.141, 0.141)
frame1.BorderSizePixel = 0
frame1.Parent = screenGui

-- Right panel (for scripts)
local frame2 = Instance.new("Frame")
frame2.Size = UDim2.new(0.264172335600907, 0, 0.482, 0)
frame2.Position = UDim2.new(0.41609977324263037, 0, 0.214, 0)
frame2.BackgroundColor3 = Color3.new(0.059, 0.059, 0.059)
frame2.BorderSizePixel = 0
frame2.Parent = screenGui

-- Top bar
local frame3 = Instance.new("Frame")
frame3.Size = UDim2.new(0.42970521541950113, 0, 0.068, 0)
frame3.Position = UDim2.new(0.26077097505668934, 0, 0.132, 0)
frame3.BackgroundColor3 = Color3.new(0.059, 0.059, 0.059)
frame3.BorderSizePixel = 0
frame3.Parent = screenGui

-- Left tabs panel
local frame4 = Instance.new("Frame")
frame4.Size = UDim2.new(0.1383219954648526, 0, 0.484, 0)
frame4.Position = UDim2.new(0.2698412698412698, 0, 0.214, 0)
frame4.BackgroundColor3 = Color3.new(0.059, 0.059, 0.059)
frame4.BorderSizePixel = 0
frame4.Parent = screenGui

-- Corners
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

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 15, 0, 15)
closeButton.Position = UDim2.new(0.95, 0, 0.5, -7.5)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = ""
closeButton.Parent = frame3

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeButton

-- Minimize button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 15, 0, 15)
minimizeButton.Position = UDim2.new(0.9, 0, 0.5, -7.5)
minimizeButton.BackgroundColor3 = Color3.new(1, 1, 0)
minimizeButton.Text = ""
minimizeButton.Parent = frame3

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(1, 0)
minimizeCorner.Parent = minimizeButton

-- Tabs scrolling frame
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

-- Right panel scrolling frame
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

-- Game scripts database
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

-- Function to create game dropdowns in right panel
local function createGameDropdowns()
    -- Clear existing content
    for _, child in ipairs(loadstringScrollingFrame:GetChildren()) do
        if child:IsA("TextButton") or child:IsA("Frame") then
            child:Destroy()
        end
    end

    local gameNames = {
        "Blox Fruits", "Brookhaven RP", "Pet Simulator 99", 
        "Arsenal", "Murder Mystery 2", "Tower of Hell", 
        "Adopt Me!", "BedWars", "Rainbow Friends", "Universal"
    }

    for _, gameName in ipairs(gameNames) do
        -- Create dropdown button (styled like the image)
        local dropdownButton = Instance.new("TextButton")
        dropdownButton.Size = UDim2.new(1, -10, 0, 35)
        dropdownButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        dropdownButton.Text = "  "..gameName
        dropdownButton.TextColor3 = Color3.new(1, 1, 1)
        dropdownButton.TextSize = 12
        dropdownButton.TextXAlignment = Enum.TextXAlignment.Left
        dropdownButton.Parent = loadstringScrollingFrame
        
        local dropdownCorner = Instance.new("UICorner")
        dropdownCorner.CornerRadius = UDim.new(0, 4)
        dropdownCorner.Parent = dropdownButton
        
        -- Create dropdown arrow (like in the image)
        local arrow = Instance.new("ImageLabel")
        arrow.Size = UDim2.new(0, 15, 0, 15)
        arrow.Position = UDim2.new(1, -20, 0.5, -7)
        arrow.BackgroundTransparency = 1
        arrow.Image = "rbxassetid://6031094667" -- Down arrow icon
        arrow.Parent = dropdownButton
        
        -- Create dropdown content frame
        local dropdownContent = Instance.new("Frame")
        dropdownContent.Size = UDim2.new(1, -15, 0, 0) -- Height starts at 0
        dropdownContent.Position = UDim2.new(0, 15, 0, 35)
        dropdownContent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        dropdownContent.BorderSizePixel = 0
        dropdownContent.ClipsDescendants = true
        dropdownContent.Parent = loadstringScrollingFrame
        
        local dropdownContentCorner = Instance.new("UICorner")
        dropdownContentCorner.CornerRadius = UDim.new(0, 4)
        dropdownContentCorner.Parent = dropdownContent
        
        local dropdownContentLayout = Instance.new("UIListLayout")
        dropdownContentLayout.FillDirection = Enum.FillDirection.Vertical
        dropdownContentLayout.Padding = UDim.new(0, 5)
        dropdownContentLayout.Parent = dropdownContent
        
        -- Add script buttons to dropdown (styled like the image)
        local scripts = gameScripts[gameName] or {}
        for _, scriptData in ipairs(scripts) do
            local scriptButton = Instance.new("TextButton")
            scriptButton.Size = UDim2.new(1, -10, 0, 30)
            scriptButton.Position = UDim2.new(0, 5, 0, 0)
            scriptButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            scriptButton.Text = "  "..scriptData.Name
            scriptButton.TextColor3 = Color3.new(1, 1, 1)
            scriptButton.TextSize = 11
            scriptButton.TextXAlignment = Enum.TextXAlignment.Left
            scriptButton.Parent = dropdownContent
            
            local scriptButtonCorner = Instance.new("UICorner")
            scriptButtonCorner.CornerRadius = UDim.new(0, 4)
            scriptButtonCorner.Parent = scriptButton
            
            scriptButton.MouseButton1Click:Connect(function()
                loadstring(scriptData.Script)()
            end)
        end
        
        -- Calculate total height needed for dropdown content
        local totalHeight = #scripts * 35 + (#scripts - 1) * 5
        
        -- Toggle dropdown with arrow rotation
        local isOpen = false
        dropdownButton.MouseButton1Click:Connect(function()
            isOpen = not isOpen
            
            if isOpen then
                dropdownContent:TweenSize(
                    UDim2.new(1, -15, 0, totalHeight),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Quad,
                    0.2,
                    true
                )
                arrow.Rotation = 180
            else
                dropdownContent:TweenSize(
                    UDim2.new(1, -15, 0, 0),
                    Enum.EasingDirection.Out,
                    Enum.EasingStyle.Quad,
                    0.2,
                    true
                )
                arrow.Rotation = 0
            end
        end)
    end
end

-- Create just the Main tab button
local mainTabButton = Instance.new("TextButton")
mainTabButton.Size = UDim2.new(1, -5, 0, 30)
mainTabButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
mainTabButton.Text = "MAIN"
mainTabButton.TextColor3 = Color3.new(1, 1, 1)
mainTabButton.TextSize = 12
mainTabButton.Parent = tabsScrollingFrame

local tabCorner = Instance.new("UICorner")
tabCorner.CornerRadius = UDim.new(0, 4)
tabCorner.Parent = mainTabButton

-- When Main tab is clicked, show game dropdowns in right panel
mainTabButton.MouseButton1Click:Connect(function()
    createGameDropdowns()
end)

-- Initialize with Main tab content
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

-- Touch support for mobile
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
