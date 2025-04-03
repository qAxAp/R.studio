local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false

-- Reference dimensions matching our builder
local refWidth = 800
local refHeight = 450

local frame1 = Instance.new("Frame")
frame1.Name = "frame1"
frame1.AnchorPoint = Vector2.new(0.5, 0.5)
frame1.Position = UDim2.new(0.5, 0, 0.5, 0)
frame1.Size = UDim2.new(0.5375, 0, 0.4733, 0)
frame1.BackgroundColor3 = Color3.new(0.129, 0.129, 0.129)
frame1.Parent = screenGui

local frame2 = Instance.new("Frame")
frame2.Name = "frame2"
frame2.AnchorPoint = Vector2.new(0.5, 0.5)
frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
frame2.Size = UDim2.new(0.1400, 0, 0.4044, 0)
frame2.BackgroundColor3 = Color3.new(0.541, 0.169, 0.886)
frame2.Parent = screenGui

local frame3 = Instance.new("Frame")
frame3.Name = "frame3"
frame3.AnchorPoint = Vector2.new(0.5, 0.5)
frame3.Position = UDim2.new(0.5, 0, 0.5, 0)
frame3.Size = UDim2.new(0.3538, 0, 0.4044, 0)
frame3.BackgroundColor3 = Color3.new(0.541, 0.169, 0.886)
frame3.Parent = screenGui

local button4 = Instance.new("TextButton")
button4.Name = "button4"
button4.AnchorPoint = Vector2.new(0.5, 0.5)
button4.Position = UDim2.new(0.5, 0, 0.5, 0)
button4.Size = UDim2.new(0.1212, 0, 0.0800, 0)
button4.BackgroundColor3 = Color3.new(0.000, 0.000, 0.000)
button4.Parent = screenGui
button4.Text = "Click Me"
button4.TextColor3 = Color3.new(1, 1, 1)
button4.TextScaled = true

local button5 = Instance.new("TextButton")
button5.Name = "button5"
button5.AnchorPoint = Vector2.new(0.5, 0.5)
button5.Position = UDim2.new(0.5, 0, 0.5, 0)
button5.Size = UDim2.new(0.1200, 0, 0.0733, 0)
button5.BackgroundColor3 = Color3.new(0.000, 0.000, 0.000)
button5.Parent = screenGui
button5.Text = "Click Me"
button5.TextColor3 = Color3.new(1, 1, 1)
button5.TextScaled = true
