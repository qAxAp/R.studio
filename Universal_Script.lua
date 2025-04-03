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
local position, size = createElement(352.40540476449473, 275.1601270592513, 745.939741655497, 306.3533097357234)
frame1.Position = position
frame1.Size = size
frame1.AnchorPoint = Vector2.new(0.5, 0.5)
frame1.BackgroundColor3 = Color3.new(0.122, 0.122, 0.122)
frame1.Parent = screenGui
frame1.BackgroundTransparency = 0

local frame2 = Instance.new("Frame")
frame2.Name = "Frame2"
local position, size = createElement(370.54611496870143, 295.26600535173225, 201.9863074705071, 267.2804592337876)
frame2.Position = position
frame2.Size = size
frame2.AnchorPoint = Vector2.new(0.5, 0.5)
frame2.BackgroundColor3 = Color3.new(0.188, 0.188, 0.188)
frame2.Parent = screenGui
frame2.BackgroundTransparency = 0

local frame3 = Instance.new("Frame")
frame3.Name = "Frame3"
local position, size = createElement(588.7103862872026, 296.0562988418891, 491.96989034545516, 264.16579557393317)
frame3.Position = position
frame3.Size = size
frame3.AnchorPoint = Vector2.new(0.5, 0.5)
frame3.BackgroundColor3 = Color3.new(0.188, 0.188, 0.188)
frame3.Parent = screenGui
frame3.BackgroundTransparency = 0

local frame4 = Instance.new("Frame")
frame4.Name = "Frame4"
local position, size = createElement(349.28285651745495, 231.18284882085123, 749.9544639824246, 46.88274691338121)
frame4.Position = position
frame4.Size = size
frame4.AnchorPoint = Vector2.new(0.5, 0.5)
frame4.BackgroundColor3 = Color3.new(0.188, 0.188, 0.188)
frame4.Parent = screenGui
frame4.BackgroundTransparency = 0

local button5 = Instance.new("TextButton")
button5.Name = "TextButton5"
local position, size = createElement(394.0398086196677, 308.00360253860555, 159.96530807110574, 46.88274691338121)
button5.Position = position
button5.Size = size
button5.AnchorPoint = Vector2.new(0.5, 0.5)
button5.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button5.Parent = screenGui
button5.Text = "Click Me"
button5.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button5.TextScaled = true
button5.Font = Enum.Font.Gotham

local button6 = Instance.new("TextButton")
button6.Name = "TextButton6"
local position, size = createElement(394.42638890575404, 366.6709565388845, 159.96530807110574, 46.88274691338121)
button6.Position = position
button6.Size = size
button6.AnchorPoint = Vector2.new(0.5, 0.5)
button6.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button6.Parent = screenGui
button6.Text = "Click Me"
button6.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button6.TextScaled = true
button6.Font = Enum.Font.Gotham

local button7 = Instance.new("TextButton")
button7.Name = "TextButton7"
local position, size = createElement(391.21461104421195, 423.6647506601768, 163.98006091431745, 46.88274691338121)
button7.Position = position
button7.Size = size
button7.AnchorPoint = Vector2.new(0.5, 0.5)
button7.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button7.Parent = screenGui
button7.Text = "Click Me"
button7.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button7.TextScaled = true
button7.Font = Enum.Font.Gotham

local button8 = Instance.new("TextButton")
button8.Name = "TextButton8"
local position, size = createElement(392.1365690173127, 481.3326102225666, 163.98006091431745, 46.88274691338121)
button8.Position = position
button8.Size = size
button8.AnchorPoint = Vector2.new(0.5, 0.5)
button8.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button8.Parent = screenGui
button8.Text = "Click Me"
button8.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button8.TextScaled = true
button8.Font = Enum.Font.Gotham

local button9 = Instance.new("TextButton")
button9.Name = "TextButton9"
local position, size = createElement(611.4010744402153, 311.7458690416573, 127.96629883312721, 48.44008172473799)
button9.Position = position
button9.Size = size
button9.AnchorPoint = Vector2.new(0.5, 0.5)
button9.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button9.Parent = screenGui
button9.Text = "Click Me"
button9.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button9.TextScaled = true
button9.Font = Enum.Font.Gotham

local button10 = Instance.new("TextButton")
button10.Name = "TextButton10"
local position, size = createElement(770.5931761647223, 312.07127418701276, 129.9885366850555, 48.44008172473799)
button10.Position = position
button10.Size = size
button10.AnchorPoint = Vector2.new(0.5, 0.5)
button10.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button10.Parent = screenGui
button10.Text = "Click Me"
button10.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button10.TextScaled = true
button10.Font = Enum.Font.Gotham

local button11 = Instance.new("TextButton")
button11.Name = "TextButton11"
local position, size = createElement(933.7108926667906, 312.48965223104125, 129.9885366850555, 46.88274691338121)
button11.Position = position
button11.Size = size
button11.AnchorPoint = Vector2.new(0.5, 0.5)
button11.BackgroundColor3 = Color3.new(0.478, 0.478, 0.478)
button11.Parent = screenGui
button11.Text = "Click Me"
button11.TextColor3 = Color3.new(0.478, 0.478, 0.478)
button11.TextScaled = true
button11.Font = Enum.Font.Gotham

-- Center all elements while maintaining their relative positions
for _, child in pairs(screenGui:GetChildren()) do
    if child:IsA("GuiObject") then
        child.Position = child.Position + UDim2.new(0.5, 0, 0.5, 0)
    end
end
