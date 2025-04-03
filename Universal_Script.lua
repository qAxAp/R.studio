local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false

-- Set the canvas reference size (matches our builder dimensions)
local canvasWidth = 800
local canvasHeight = 600

-- Function to convert pixel coordinates to UDim2 scale (0-1)
local function toScale(pixel, axis)
    if axis == "x" then
        return pixel / canvasWidth
    else
        return pixel / canvasHeight
    end
end

local frame1 = Instance.new("Frame")
frame1.Name = "frame1"
frame1.Size = UDim2.new(toScale(401, "x"), 0, toScale(214, "y"), 0)
frame1.Position = UDim2.new(toScale(103, "x"), 0, toScale(116, "y"), 0)
frame1.BackgroundColor3 = Color3.new(0.149, 0.149, 0.149)
frame1.Parent = screenGui
frame1.BackgroundTransparency = 0

local frame2 = Instance.new("Frame")
frame2.Name = "frame2"
frame2.Size = UDim2.new(toScale(116, "x"), 0, toScale(189, "y"), 0)
frame2.Position = UDim2.new(toScale(113, "x"), 0, toScale(129, "y"), 0)
frame2.BackgroundColor3 = Color3.new(0.220, 0.220, 0.220)
frame2.Parent = screenGui
frame2.BackgroundTransparency = 0

local frame3 = Instance.new("Frame")
frame3.Name = "frame3"
frame3.Size = UDim2.new(toScale(253, "x"), 0, toScale(187, "y"), 0)
frame3.Position = UDim2.new(toScale(240, "x"), 0, toScale(130, "y"), 0)
frame3.BackgroundColor3 = Color3.new(0.220, 0.220, 0.220)
frame3.Parent = screenGui
frame3.BackgroundTransparency = 0
