-- Example usage matching your image:
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/qAxAp/R.studio/refs/heads/main/loadstring?token=GHSAT0AAAAAADBWCFHMK4BUNJDMVMQRUCHUZ7RKDHA'))()

local Window = Library:CreateWindow("DioHub", "V6", 10044538000)

-- Create main tab
local Tab = Window:CreateTab("Scripts []")

-- Create frames for each game
local Page1 = Tab:CreateFrame("Murder mystery")
local Page2 = Tab:CreateFrame("Arsenal")
local Page3 = Tab:CreateFrame("Muscle legends")
local Page4 = Tab:CreateFrame("Blox Fruits")
local Page5 = Tab:CreateFrame("Prison Life")
local Page6 = Tab:CreateFrame("BedWars (coming soon..)")
local Page7 = Tab:CreateFrame("TRD - Camp")
local Page8 = Tab:CreateFrame("Legends of Speed")
local Page9 = Tab:CreateFrame("Da Hood")
local Page10 = Tab:CreateFrame("Brookhaven")
local Page11 = Tab:CreateFrame("Universal scripts")
local Page12 = Tab:CreateFrame("Broadcasting for whatever script you want to have.")

-- Add buttons to Murder mystery frame
local Button1_Page1 = Page1:CreateButton("Murder mystery Hub", "Very old", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/6hostPlayer352/Test4/main/Murder%20Mystery"))()
end)

local Button2_Page1 = Page1:CreateButton("Maids hub", "old + unstable", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1andonlymars/WarsHub/main/MW2"))()
end)
