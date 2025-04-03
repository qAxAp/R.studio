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
frame1.Size = UDim2.new(toScale(212, "x"), 0, toScale(195, "y"), 0)
frame1.Position = UDim2.new(toScale(90, "x"), 0, toScale(151, "y"), 0)
frame1.BackgroundColor3 = Color3.new(0.122, 0.122, 0.122)
frame1.Parent = screenGui
frame1.BackgroundTransparency = 0

local frame2 = Instance.new("Frame")
frame2.Name = "frame2"
frame2.Size = UDim2.new(toScale(68, "x"), 0, toScale(163, "y"), 0)
frame2.Position = UDim2.new(toScale(102, "x"), 0, toScale(167, "y"), 0)
frame2.BackgroundColor3 = Color3.new(0.000, 0.482, 1.000)
frame2.Parent = screenGui
frame2.BackgroundTransparency = 0

local frame3 = Instance.new("Frame")
frame3.Name = "frame3"
frame3.Size = UDim2.new(toScale(113, "x"), 0, toScale(164, "y"), 0)
frame3.Position = UDim2.new(toScale(176, "x"), 0, toScale(167, "y"), 0)
frame3.BackgroundColor3 = Color3.new(0.000, 0.482, 1.000)
frame3.Parent = screenGui
frame3.BackgroundTransparency = 0
