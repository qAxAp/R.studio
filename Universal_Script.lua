local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false

-- Function to convert builder coordinates to Roblox UDim2
local function createElement(x, y, width, height)
    local xScale = x / 1920
    local yScale = y / 1080
    local widthScale = width / 1920
    local heightScale = height / 1080
    return UDim2.new(xScale, 0, yScale, 0), 
           UDim2.new(widthScale, 0, heightScale, 0)
end

local frame1 = Instance.new("Frame")
frame1.Name = "Frame1"
local position, size = createElement(261.79114439053166, 196.61930316173758, 545.9756872950601, 286.0382066440738)
frame1.Position = position
frame1.Size = size
frame1.AnchorPoint = Vector2.new(0.5, 0.5)
frame1.BackgroundColor3 = Color3.new(0.110, 0.110, 0.110)
frame1.Parent = screenGui
frame1.BackgroundTransparency = 0

local frame2 = Instance.new("Frame")
frame2.Name = "Frame2"
local position, size = createElement(278.5638095816936, 207.63687787172398, 165.97256064745892, 256.3326499749604)
frame2.Position = position
frame2.Size = size
frame2.AnchorPoint = Vector2.new(0.5, 0.5)
frame2.BackgroundColor3 = Color3.new(0.541, 0.298, 0.839)
frame2.Parent = screenGui
frame2.BackgroundTransparency = 0

local frame3 = Instance.new("Frame")
frame3.Name = "Frame3"
local position, size = createElement(457.6810307027513, 210.47262283555946, 333.9673438887041, 251.66063063374236)
frame3.Position = position
frame3.Size = size
frame3.AnchorPoint = Vector2.new(0.5, 0.5)
frame3.BackgroundColor3 = Color3.new(0.541, 0.298, 0.839)
frame3.Parent = screenGui
frame3.BackgroundTransparency = 0

local frame4 = Instance.new("Frame")
frame4.Name = "Frame4"
local position, size = createElement(261.8208672511764, 153.80423385962263, 547.9681565119175, 46.88274691338121)
frame4.Position = position
frame4.Size = size
frame4.AnchorPoint = Vector2.new(0.5, 0.5)
frame4.BackgroundColor3 = Color3.new(0.541, 0.298, 0.839)
frame4.Parent = screenGui
frame4.BackgroundTransparency = 0

-- Center all elements while maintaining their relative positions
for _, child in pairs(screenGui:GetChildren()) do
    if child:IsA("GuiObject") then
        child.Position = child.Position + UDim2.new(0.5, 0, 0.5, 0)
    end
end
