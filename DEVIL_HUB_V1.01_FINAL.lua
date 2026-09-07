-- ================================================================
-- AUTO KILL V2 — KILLINGCRACKED 100% FEATURE PARITY BUILD
-- Source: KILLINGCRACKED_FINAL_FIXED_8PACK_DYNAMIC
-- Original Phoenix UI code has been removed completely.
-- All four original KILLINGCRACKED feature sections are hosted
-- inside Auto Kill V2, while Elerium V2 remains the UI host.
-- ================================================================



local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

local function preventAFK()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    print("Anti-AFK: Prevented kick")
end

Players.LocalPlayer.Idled:Connect(preventAFK)
print("Anti-AFK ativado!")

-- ================================================================
-- ELERIUM V2 UI — embedded directly; the old Phoenix UI is removed
-- ================================================================
local library = (function()
--[[
    Modified Elerium V2
	EleriumV2 was made by github.com/memejames
	Project url: https://github.com/memejames/elerium-v2-ui-library
	modified by Henne @xyzhenrik_
]]

local ui_options = {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
}

do
	local function destroyImguiIn(parent)
		if parent and parent.FindFirstChild then
			local existing = parent:FindFirstChild("imgui")
			if existing then
				pcall(function() existing:Destroy() end)
			end
		end
	end

	destroyImguiIn(game:GetService("CoreGui"))

	local Players = game:GetService("Players")
	if Players and Players.LocalPlayer then
		destroyImguiIn(Players.LocalPlayer:FindFirstChild("PlayerGui"))
	end

	if type(gethui) == "function" then
		local ok, gh = pcall(gethui)
		if ok and gh then
			destroyImguiIn(gh)
		end
	end

	for _,v in pairs(game:GetDescendants()) do
		if v.Name == "imgui" and v:IsA("ScreenGui") then
			pcall(function() v:Destroy() end)
		end
	end
end

local imgui = Instance.new("ScreenGui")
local prefabs = Instance.new("Frame")
local label = Instance.new("TextLabel")
local window = Instance.new("ImageLabel")
local resizer = Instance.new("Frame")
local bar = Instance.new("Frame")
local toggle = Instance.new("ImageButton")
local base = Instance.new("ImageLabel")
local top = Instance.new("ImageLabel")
local tabs = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local tabSelection = Instance.new("ImageLabel")
local tabButtons = Instance.new("ScrollingFrame")
local uiListLayout = Instance.new("UIListLayout")
local frame = Instance.new("Frame")
local tab = Instance.new("ScrollingFrame")
local uiListLayout2 = Instance.new("UIListLayout")
local textBox = Instance.new("TextBox")
local textBoxRoundify4px = Instance.new("ImageLabel")
local slider = Instance.new("ImageLabel")
local sliderTitle = Instance.new("TextLabel")
local indicator = Instance.new("ImageLabel")
local sliderValue = Instance.new("TextLabel")
local textLabel = Instance.new("TextLabel")
local textLabel2 = Instance.new("TextLabel")
local circle = Instance.new("ImageLabel")
local uiListLayout3 = Instance.new("UIListLayout")
local dropdown = Instance.new("TextButton")
local dropdownIndicator = Instance.new("ImageLabel")
local dropdownBox = Instance.new("ImageButton")
local dropdownObjects = Instance.new("ScrollingFrame")
local uiListLayout4 = Instance.new("UIListLayout")
local textButtonRoundify4px = Instance.new("ImageLabel")
local tabButton = Instance.new("TextButton")
local textButtonRoundify4px_2 = Instance.new("ImageLabel")
local folder = Instance.new("ImageLabel")
local button = Instance.new("TextButton")
local textButtonRoundify4px_3 = Instance.new("ImageLabel")
local toggle2 = Instance.new("ImageLabel")
local objects2 = Instance.new("Frame")
local uiListLayout5 = Instance.new("UIListLayout")
local horizontalAlignment = Instance.new("Frame")
local uiListLayout6 = Instance.new("UIListLayout")
local console = Instance.new("ImageLabel")
local scrollingFrame = Instance.new("ScrollingFrame")
local source = Instance.new("TextBox")
local commentsLabel = Instance.new("TextLabel")
local globalsLabel = Instance.new("TextLabel")
local keywordsLabel = Instance.new("TextLabel")
local remoteHighlight = Instance.new("TextLabel")
local stringsLabel = Instance.new("TextLabel")
local tokensLabel = Instance.new("TextLabel")
local numbersLabel = Instance.new("TextLabel")
local infoLabel = Instance.new("TextLabel")
local linesLabel = Instance.new("TextLabel")
local colorPicker = Instance.new("ImageLabel")
local palette = Instance.new("ImageLabel")
local indicator3 = Instance.new("ImageLabel")
local sample = Instance.new("ImageLabel")
local saturation = Instance.new("ImageLabel")
local indicator4 = Instance.new("Frame")
local switchButton = Instance.new("TextButton")
local textButtonRoundify4px_4 = Instance.new("ImageLabel")
local title3Label = Instance.new("TextLabel")
local button2 = Instance.new("TextButton")
local textButtonRoundify4px_5 = Instance.new("ImageLabel")
local dropdownButton = Instance.new("TextButton")
local keybind = Instance.new("ImageLabel")
local title4Label = Instance.new("TextLabel")
local inputButton = Instance.new("TextButton")
local inputRoundify4px = Instance.new("ImageLabel")
local windowsFrame = Instance.new("Frame")
local cloneref = cloneref and cloneref or function(...) return ... end
local CoreGui= cloneref(game:GetService("CoreGui"))


imgui.Name = "imgui"
imgui.Parent = gethui and gethui() or (CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui"))
prefabs.Name = "Prefabs"
prefabs.Parent = imgui
prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
prefabs.Size = UDim2.new(0, 100, 0, 100)
prefabs.Visible = false

label.Name = "Label"
label.Parent = prefabs
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Size = UDim2.new(0, 200, 0, 20)
label.Font = Enum.Font.GothamSemibold
label.Text = "Hello, world 123"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 14
label.TextXAlignment = Enum.TextXAlignment.Left

window.Name = "Window"
window.Parent = prefabs
window.Active = true
window.BackgroundColor3 = Color3.new(1, 1, 1)
window.BackgroundTransparency = 1
window.ClipsDescendants = true
window.Position = UDim2.new(0, 20, 0, 20)
window.Selectable = true
window.Size = UDim2.new(0, 200, 0, 200)
window.Image = "rbxassetid://2851926732"
window.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
window.ScaleType = Enum.ScaleType.Slice
window.SliceCenter = Rect.new(12, 12, 12, 12)

resizer.Name = "Resizer"
resizer.Parent = window
resizer.Active = true
resizer.BackgroundColor3 = Color3.new(1, 1, 1)
resizer.BackgroundTransparency = 1
resizer.BorderSizePixel = 0
resizer.Position = UDim2.new(1, -20, 1, -20)
resizer.Size = UDim2.new(0, 20, 0, 20)

bar.Name = "Bar"
bar.Parent = window
bar.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(0, 0, 0, 5)
bar.Size = UDim2.new(1, 0, 0, 15)

toggle.Name = "Toggle"
toggle.Parent = bar
toggle.BackgroundColor3 = Color3.new(1, 1, 1)
toggle.BackgroundTransparency = 1
toggle.Position = UDim2.new(0, 5, 0, -2)
toggle.Rotation = 0
toggle.Size = UDim2.new(0, 20, 0, 20)
toggle.ZIndex = 2
toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=107830617754512"

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0.5, 0)
toggleCorner.Parent = toggle

base.Name = "Base"
base.Parent = bar
base.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
base.BorderSizePixel = 0
base.Position = UDim2.new(0, 0, 0.800000012, 0)
base.Size = UDim2.new(1, 0, 0, 10)
base.Image = "rbxassetid://2851926732"
base.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
base.ScaleType = Enum.ScaleType.Slice
base.SliceCenter = Rect.new(12, 12, 12, 12)

top.Name = "Top"
top.Parent = bar
top.BackgroundColor3 = Color3.new(1, 1, 1)
top.BackgroundTransparency = 1
top.Position = UDim2.new(0, 0, 0, -5)
top.Size = UDim2.new(1, 0, 0, 10)
top.Image = "rbxassetid://2851926732"
top.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
top.ScaleType = Enum.ScaleType.Slice
top.SliceCenter = Rect.new(12, 12, 12, 12)

tabs.Name = "Tabs"
tabs.Parent = window
tabs.BackgroundColor3 = Color3.new(1, 1, 1)
tabs.BackgroundTransparency = 1
tabs.Position = UDim2.new(0, 15, 0, 60)
tabs.Size = UDim2.new(1, -30, 1, -60)

titleLabel.Name = "Title"
titleLabel.Parent = window
titleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundTransparency = 1
titleLabel.Position = UDim2.new(0, 30, 0, 3)
titleLabel.Size = UDim2.new(0, 200, 0, 20)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "Gamer Time"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextSize = 14
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

tabSelection.Name = "TabSelection"
tabSelection.Parent = window
tabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
tabSelection.BackgroundTransparency = 1
tabSelection.Position = UDim2.new(0, 15, 0, 30)
tabSelection.Size = UDim2.new(1, -30, 0, 25)
tabSelection.Visible = false
tabSelection.Image = "rbxassetid://2851929490"
tabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
tabSelection.ScaleType = Enum.ScaleType.Slice
tabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

tabButtons.Name = "TabButtons"
tabButtons.Parent = tabSelection
tabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
tabButtons.BackgroundTransparency = 1
tabButtons.Size = UDim2.new(1, 0, 1, 0)
tabButtons.BorderSizePixel = 0
tabButtons.CanvasSize = UDim2.new(0, 0, 0, 0)
tabButtons.ScrollBarThickness = 4
tabButtons.ScrollBarImageTransparency = 0.15
tabButtons.ScrollingDirection = Enum.ScrollingDirection.X
tabButtons.ScrollingEnabled = true
tabButtons.Active = true
tabButtons.ElasticBehavior = Enum.ElasticBehavior.Always
tabButtons.AutomaticCanvasSize = Enum.AutomaticSize.X

uiListLayout.Parent = tabButtons
uiListLayout.FillDirection = Enum.FillDirection.Horizontal
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Padding = UDim.new(0, 2)

-- Mobile-friendly horizontal tab scrolling. The canvas follows the total tab width.
uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	tabButtons.CanvasSize = UDim2.new(0, uiListLayout.AbsoluteContentSize.X + 8, 0, 0)
end)

frame.Parent = tabSelection
frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Size = UDim2.new(1, 0, 0, 2)

tab.Name = "Tab"
tab.Parent = prefabs
tab.BackgroundColor3 = Color3.new(1, 1, 1)
tab.BackgroundTransparency = 1
tab.Size = UDim2.new(1, 0, 1, 0)
tab.Visible = false
tab.BorderSizePixel = 0
tab.CanvasSize = UDim2.new(0, 0, 0, 0)
tab.ScrollBarThickness = 6
tab.ScrollBarImageTransparency = 0.2
tab.ScrollingDirection = Enum.ScrollingDirection.Y
tab.ScrollingEnabled = true
tab.Active = true
tab.ElasticBehavior = Enum.ElasticBehavior.Always
tab.AutomaticCanvasSize = Enum.AutomaticSize.Y

uiListLayout2.Parent = tab
uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout2.Padding = UDim.new(0, 5)

-- Mobile-friendly vertical scrolling inside every tab.
uiListLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	tab.CanvasSize = UDim2.new(0, 0, 0, uiListLayout2.AbsoluteContentSize.Y + 10)
end)

textBox.Parent = prefabs
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.BackgroundTransparency = 1
textBox.BorderSizePixel = 0
textBox.Size = UDim2.new(1, 0, 0, 20)
textBox.ZIndex = 2
textBox.Font = Enum.Font.GothamSemibold
textBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
textBox.PlaceholderText = "Input Text"
textBox.Text = ""
textBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
textBox.TextSize = 14

textBoxRoundify4px.Name = "TextBox_Roundify_4px"
textBoxRoundify4px.Parent = textBox
textBoxRoundify4px.BackgroundColor3 = Color3.new(1, 1, 1)
textBoxRoundify4px.BackgroundTransparency = 1
textBoxRoundify4px.Size = UDim2.new(1, 0, 1, 0)
textBoxRoundify4px.Image = "rbxassetid://2851929490"
textBoxRoundify4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
textBoxRoundify4px.ScaleType = Enum.ScaleType.Slice
textBoxRoundify4px.SliceCenter = Rect.new(4, 4, 4, 4)

slider.Name = "Slider"
slider.Parent = prefabs
slider.BackgroundColor3 = Color3.new(1, 1, 1)
slider.BackgroundTransparency = 1
slider.Position = UDim2.new(0, 0, 0.178571433, 0)
slider.Size = UDim2.new(1, 0, 0, 20)
slider.Image = "rbxassetid://2851929490"
slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
slider.ScaleType = Enum.ScaleType.Slice
slider.SliceCenter = Rect.new(4, 4, 4, 4)

sliderTitle.Name = "Title"
sliderTitle.Parent = slider
sliderTitle.BackgroundColor3 = Color3.new(1, 1, 1)
sliderTitle.BackgroundTransparency = 1
sliderTitle.Position = UDim2.new(0.5, 0, 0.5, -10)
sliderTitle.Size = UDim2.new(0, 0, 0, 20)
sliderTitle.ZIndex = 2
sliderTitle.Font = Enum.Font.GothamSemibold
sliderTitle.Text = "Slider"
sliderTitle.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
sliderTitle.TextSize = 14

indicator.Name = "Indicator"
indicator.Parent = slider
indicator.BackgroundColor3 = Color3.new(1, 1, 1)
indicator.BackgroundTransparency = 1
indicator.Size = UDim2.new(0, 0, 0, 20)
indicator.Image = "rbxassetid://2851929490"
indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
indicator.ScaleType = Enum.ScaleType.Slice
indicator.SliceCenter = Rect.new(4, 4, 4, 4)

sliderValue.Name = "Value"
sliderValue.Parent = slider
sliderValue.BackgroundColor3 = Color3.new(1, 1, 1)
sliderValue.BackgroundTransparency = 1
sliderValue.Position = UDim2.new(1, -55, 0.5, -10)
sliderValue.Size = UDim2.new(0, 50, 0, 20)
sliderValue.Font = Enum.Font.GothamSemibold
sliderValue.Text = "0%"
sliderValue.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
sliderValue.TextSize = 14

textLabel.Parent = slider
textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.Position = UDim2.new(1, -20, -0.75, 0)
textLabel.Size = UDim2.new(0, 26, 0, 50)
textLabel.Font = Enum.Font.GothamSemibold
textLabel.Text = "]"
textLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
textLabel.TextSize = 14

textLabel2.Parent = slider
textLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel2.BackgroundTransparency = 1
textLabel2.Position = UDim2.new(1, -65, -0.75, 0)
textLabel2.Size = UDim2.new(0, 26, 0, 50)
textLabel2.Font = Enum.Font.GothamSemibold
textLabel2.Text = "["
textLabel2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
textLabel2.TextSize = 14

circle.Name = "Circle"
circle.Parent = prefabs
circle.BackgroundColor3 = Color3.new(1, 1, 1)
circle.BackgroundTransparency = 1
circle.Image = "rbxassetid://266543268"
circle.ImageTransparency = 0.5

uiListLayout3.Parent = prefabs
uiListLayout3.FillDirection = Enum.FillDirection.Horizontal
uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout3.Padding = UDim.new(0, 20)

dropdown.Name = "Dropdown"
dropdown.Parent = prefabs
dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
dropdown.BackgroundTransparency = 1
dropdown.BorderSizePixel = 0
dropdown.Position = UDim2.new(0, 0, 0.0833333284, 0)
dropdown.Size = UDim2.new(1, 0, 0, 20)
dropdown.ZIndex = 2
dropdown.Font = Enum.Font.GothamSemibold
dropdown.Text = "      Dropdown"
dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
dropdown.TextSize = 14
dropdown.TextXAlignment = Enum.TextXAlignment.Left

dropdownIndicator.Name = "Indicator"
dropdownIndicator.Parent = dropdown
dropdownIndicator.BackgroundColor3 = Color3.new(1, 1, 1)
dropdownIndicator.BackgroundTransparency = 1
dropdownIndicator.Position = UDim2.new(1, -25, 0.100000001, 0)
dropdownIndicator.Rotation = -90
dropdownIndicator.Size = UDim2.new(0, 15, 0, 15)
dropdownIndicator.ZIndex = 2
dropdownIndicator.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"

dropdownBox.Name = "Box"
dropdownBox.Parent = dropdown
dropdownBox.BackgroundColor3 = Color3.new(1, 1, 1)
dropdownBox.BackgroundTransparency = 1
dropdownBox.Position = UDim2.new(0, 0, 0, 25)
dropdownBox.Size = UDim2.new(1, 0, 0, 150)
dropdownBox.ZIndex = 3
dropdownBox.Image = "rbxassetid://2851929490"
dropdownBox.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
dropdownBox.ScaleType = Enum.ScaleType.Slice
dropdownBox.SliceCenter = Rect.new(4, 4, 4, 4)

dropdownObjects.Name = "Objects"
dropdownObjects.Parent = dropdownBox
dropdownObjects.BackgroundColor3 = Color3.new(1, 1, 1)
dropdownObjects.BackgroundTransparency = 1
dropdownObjects.BorderSizePixel = 0
dropdownObjects.Size = UDim2.new(1, 0, 1, 0)
dropdownObjects.ZIndex = 3
dropdownObjects.CanvasSize = UDim2.new(0, 0, 0, 0)
dropdownObjects.ScrollBarThickness = 8

uiListLayout4.Parent = dropdownObjects
uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder

textButtonRoundify4px.Name = "TextButton_Roundify_4px"
textButtonRoundify4px.Parent = dropdown
textButtonRoundify4px.BackgroundColor3 = Color3.new(1, 1, 1)
textButtonRoundify4px.BackgroundTransparency = 1
textButtonRoundify4px.Size = UDim2.new(1, 0, 1, 0)
textButtonRoundify4px.Image = "rbxassetid://2851929490"
textButtonRoundify4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
textButtonRoundify4px.ScaleType = Enum.ScaleType.Slice
textButtonRoundify4px.SliceCenter = Rect.new(4, 4, 4, 4)

tabButton.Name = "TabButton"
tabButton.Parent = prefabs
tabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
tabButton.BackgroundTransparency = 1
tabButton.BorderSizePixel = 0
tabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
tabButton.Size = UDim2.new(0, 71, 0, 20)
tabButton.ZIndex = 2
tabButton.Font = Enum.Font.GothamSemibold
tabButton.Text = "Test tab"
tabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
tabButton.TextSize = 14

textButtonRoundify4px_2.Name = "TextButton_Roundify_4px"
textButtonRoundify4px_2.Parent = tabButton
textButtonRoundify4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
textButtonRoundify4px_2.BackgroundTransparency = 1
textButtonRoundify4px_2.Size = UDim2.new(1, 0, 1, 0)
textButtonRoundify4px_2.Image = "rbxassetid://2851929490"
textButtonRoundify4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
textButtonRoundify4px_2.ScaleType = Enum.ScaleType.Slice
textButtonRoundify4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

folder.Name = "Folder"
folder.Parent = prefabs
folder.BackgroundColor3 = Color3.new(1, 1, 1)
folder.BackgroundTransparency = 1
folder.Position = UDim2.new(0, 0, 0, 50)
folder.Size = UDim2.new(1, 0, 0, 20)
folder.Image = "rbxassetid://2851929490"
folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
folder.ScaleType = Enum.ScaleType.Slice
folder.SliceCenter = Rect.new(4, 4, 4, 4)

button.Name = "Button"
button.Parent = folder
button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
button.BackgroundTransparency = 1
button.BorderSizePixel = 0
button.Size = UDim2.new(1, 0, 0, 20)
button.ZIndex = 2
button.Font = Enum.Font.GothamSemibold
button.Text = "      Folder"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 14
button.TextXAlignment = Enum.TextXAlignment.Left

textButtonRoundify4px_3.Name = "TextButton_Roundify_4px"
textButtonRoundify4px_3.Parent = button
textButtonRoundify4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
textButtonRoundify4px_3.BackgroundTransparency = 1
textButtonRoundify4px_3.Size = UDim2.new(1, 0, 1, 0)
textButtonRoundify4px_3.Image = "rbxassetid://2851929490"
textButtonRoundify4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
textButtonRoundify4px_3.ScaleType = Enum.ScaleType.Slice
textButtonRoundify4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

	toggle2.Name = "Toggle"
	toggle2.Parent = button
	toggle2.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle2.BackgroundTransparency = 1
	toggle2.Position = UDim2.new(0, 5, 0, 0)
	toggle2.Size = UDim2.new(0, 20, 0, 20)
	toggle2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

	local toggle2Corner = Instance.new("UICorner")
	toggle2Corner.CornerRadius = UDim.new(0.5, 0)
	toggle2Corner.Parent = toggle2

objects2.Name = "Objects"
objects2.Parent = folder
objects2.BackgroundColor3 = Color3.new(1, 1, 1)
objects2.BackgroundTransparency = 1
objects2.Position = UDim2.new(0, 10, 0, 25)
objects2.Size = UDim2.new(1, -10, 1, -25)
objects2.Visible = false

uiListLayout5.Parent = objects2
uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout5.Padding = UDim.new(0, 5)

horizontalAlignment.Name = "HorizontalAlignment"
horizontalAlignment.Parent = prefabs
horizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
horizontalAlignment.BackgroundTransparency = 1
horizontalAlignment.Size = UDim2.new(1, 0, 0, 20)

uiListLayout6.Parent = horizontalAlignment
uiListLayout6.FillDirection = Enum.FillDirection.Horizontal
uiListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout6.Padding = UDim.new(0, 5)

console.Name = "Console"
console.Parent = prefabs
console.BackgroundColor3 = Color3.new(1, 1, 1)
console.BackgroundTransparency = 1
console.Size = UDim2.new(1, 0, 0, 200)
console.Image = "rbxassetid://2851928141"
console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
console.ScaleType = Enum.ScaleType.Slice
console.SliceCenter = Rect.new(8, 8, 8, 8)

scrollingFrame.Parent = console
scrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Size = UDim2.new(1, 0, 1, 1)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 4

source.Name = "Source"
source.Parent = scrollingFrame
source.BackgroundColor3 = Color3.new(1, 1, 1)
source.BackgroundTransparency = 1
source.Position = UDim2.new(0, 40, 0, 0)
source.Size = UDim2.new(1, -40, 0, 10000)
source.ZIndex = 3
source.ClearTextOnFocus = false
source.Font = Enum.Font.Code
source.MultiLine = true
source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
source.Text = ""
source.TextColor3 = Color3.new(1, 1, 1)
source.TextSize = 15
source.TextStrokeColor3 = Color3.new(1, 1, 1)
source.TextWrapped = true
source.TextXAlignment = Enum.TextXAlignment.Left
source.TextYAlignment = Enum.TextYAlignment.Top

commentsLabel.Name = "Comments"
commentsLabel.Parent = source
commentsLabel.BackgroundColor3 = Color3.new(1, 1, 1)
commentsLabel.BackgroundTransparency = 1
commentsLabel.Size = UDim2.new(1, 0, 1, 0)
commentsLabel.ZIndex = 5
commentsLabel.Font = Enum.Font.Code
commentsLabel.Text = ""
commentsLabel.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
commentsLabel.TextSize = 15
commentsLabel.TextXAlignment = Enum.TextXAlignment.Left
commentsLabel.TextYAlignment = Enum.TextYAlignment.Top

globalsLabel.Name = "Globals"
globalsLabel.Parent = source
globalsLabel.BackgroundColor3 = Color3.new(1, 1, 1)
globalsLabel.BackgroundTransparency = 1
globalsLabel.Size = UDim2.new(1, 0, 1, 0)
globalsLabel.ZIndex = 5
globalsLabel.Font = Enum.Font.Code
globalsLabel.Text = ""
globalsLabel.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
globalsLabel.TextSize = 15
globalsLabel.TextXAlignment = Enum.TextXAlignment.Left
globalsLabel.TextYAlignment = Enum.TextYAlignment.Top

keywordsLabel.Name = "Keywords"
keywordsLabel.Parent = source
keywordsLabel.BackgroundColor3 = Color3.new(1, 1, 1)
keywordsLabel.BackgroundTransparency = 1
keywordsLabel.Size = UDim2.new(1, 0, 1, 0)
keywordsLabel.ZIndex = 5
keywordsLabel.Font = Enum.Font.Code
keywordsLabel.Text = ""
keywordsLabel.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
keywordsLabel.TextSize = 15
keywordsLabel.TextXAlignment = Enum.TextXAlignment.Left
keywordsLabel.TextYAlignment = Enum.TextYAlignment.Top

remoteHighlight.Name = "RemoteHighlight"
remoteHighlight.Parent = source
remoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
remoteHighlight.BackgroundTransparency = 1
remoteHighlight.Size = UDim2.new(1, 0, 1, 0)
remoteHighlight.ZIndex = 5
remoteHighlight.Font = Enum.Font.Code
remoteHighlight.Text = ""
remoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
remoteHighlight.TextSize = 15
remoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
remoteHighlight.TextYAlignment = Enum.TextYAlignment.Top

stringsLabel.Name = "Strings"
stringsLabel.Parent = source
stringsLabel.BackgroundColor3 = Color3.new(1, 1, 1)
stringsLabel.BackgroundTransparency = 1
stringsLabel.Size = UDim2.new(1, 0, 1, 0)
stringsLabel.ZIndex = 5
stringsLabel.Font = Enum.Font.Code
stringsLabel.Text = ""
stringsLabel.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
stringsLabel.TextSize = 15
stringsLabel.TextXAlignment = Enum.TextXAlignment.Left
stringsLabel.TextYAlignment = Enum.TextYAlignment.Top

tokensLabel.Name = "Tokens"
tokensLabel.Parent = source
tokensLabel.BackgroundColor3 = Color3.new(1, 1, 1)
tokensLabel.BackgroundTransparency = 1
tokensLabel.Size = UDim2.new(1, 0, 1, 0)
tokensLabel.ZIndex = 5
tokensLabel.Font = Enum.Font.Code
tokensLabel.Text = ""
tokensLabel.TextColor3 = Color3.new(1, 1, 1)
tokensLabel.TextSize = 15
tokensLabel.TextXAlignment = Enum.TextXAlignment.Left
tokensLabel.TextYAlignment = Enum.TextYAlignment.Top

numbersLabel.Name = "Numbers"
numbersLabel.Parent = source
numbersLabel.BackgroundColor3 = Color3.new(1, 1, 1)
numbersLabel.BackgroundTransparency = 1
numbersLabel.Size = UDim2.new(1, 0, 1, 0)
numbersLabel.ZIndex = 4
numbersLabel.Font = Enum.Font.Code
numbersLabel.Text = ""
numbersLabel.TextColor3 = Color3.new(1, 0.776471, 0)
numbersLabel.TextSize = 15
numbersLabel.TextXAlignment = Enum.TextXAlignment.Left
numbersLabel.TextYAlignment = Enum.TextYAlignment.Top

infoLabel.Name = "Info"
infoLabel.Parent = source
infoLabel.BackgroundColor3 = Color3.new(1, 1, 1)
infoLabel.BackgroundTransparency = 1
infoLabel.Size = UDim2.new(1, 0, 1, 0)
infoLabel.ZIndex = 5
infoLabel.Font = Enum.Font.Code
infoLabel.Text = ""
infoLabel.TextColor3 = Color3.new(0, 0.635294, 1)
infoLabel.TextSize = 15
infoLabel.TextXAlignment = Enum.TextXAlignment.Left
infoLabel.TextYAlignment = Enum.TextYAlignment.Top

linesLabel.Name = "Lines"
linesLabel.Parent = scrollingFrame
linesLabel.BackgroundColor3 = Color3.new(1, 1, 1)
linesLabel.BackgroundTransparency = 1
linesLabel.BorderSizePixel = 0
linesLabel.Size = UDim2.new(0, 40, 0, 10000)
linesLabel.ZIndex = 4
linesLabel.Font = Enum.Font.Code
linesLabel.Text = "1\n"
linesLabel.TextColor3 = Color3.new(1, 1, 1)
linesLabel.TextSize = 15
linesLabel.TextWrapped = true
linesLabel.TextYAlignment = Enum.TextYAlignment.Top

colorPicker.Name = "ColorPicker"
colorPicker.Parent = prefabs
colorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
colorPicker.BackgroundTransparency = 1
colorPicker.Size = UDim2.new(0, 180, 0, 110)
colorPicker.Image = "rbxassetid://2851929490"
colorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
colorPicker.ScaleType = Enum.ScaleType.Slice
colorPicker.SliceCenter = Rect.new(4, 4, 4, 4)

palette.Name = "Palette"
palette.Parent = colorPicker
palette.BackgroundColor3 = Color3.new(1, 1, 1)
palette.BackgroundTransparency = 1
palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
palette.Size = UDim2.new(0, 100, 0, 100)
palette.Image = "rbxassetid://698052001"
palette.ScaleType = Enum.ScaleType.Slice
palette.SliceCenter = Rect.new(4, 4, 4, 4)

indicator3.Name = "Indicator"
indicator3.Parent = palette
indicator3.BackgroundColor3 = Color3.new(1, 1, 1)
indicator3.BackgroundTransparency = 1
indicator3.Size = UDim2.new(0, 5, 0, 5)
indicator3.ZIndex = 2
indicator3.Image = "rbxassetid://2851926732"
indicator3.ImageColor3 = Color3.new(0, 0, 0)
indicator3.ScaleType = Enum.ScaleType.Slice
indicator3.SliceCenter = Rect.new(12, 12, 12, 12)

sample.Name = "Sample"
sample.Parent = colorPicker
sample.BackgroundColor3 = Color3.new(1, 1, 1)
sample.BackgroundTransparency = 1
sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
sample.Size = UDim2.new(0, 25, 0, 25)
sample.Image = "rbxassetid://2851929490"
sample.ScaleType = Enum.ScaleType.Slice
sample.SliceCenter = Rect.new(4, 4, 4, 4)

saturation.Name = "Saturation"
saturation.Parent = colorPicker
saturation.BackgroundColor3 = Color3.new(1, 1, 1)
saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
saturation.Size = UDim2.new(0, 15, 0, 100)
saturation.Image = "rbxassetid://3641079629"

indicator4.Name = "Indicator"
indicator4.Parent = saturation
indicator4.BackgroundColor3 = Color3.new(1, 1, 1)
indicator4.BorderSizePixel = 0
indicator4.Size = UDim2.new(0, 20, 0, 2)
indicator4.ZIndex = 2

switchButton.Name = "Switch"
switchButton.Parent = prefabs
switchButton.BackgroundColor3 = Color3.new(1, 1, 1)
switchButton.BackgroundTransparency = 1
switchButton.BorderSizePixel = 0
switchButton.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
switchButton.Size = UDim2.new(0, 20, 0, 20)
switchButton.ZIndex = 2
switchButton.Font = Enum.Font.GothamSemibold
switchButton.Text = ""
switchButton.TextColor3 = Color3.new(1, 1, 1)
switchButton.TextSize = 18

textButtonRoundify4px_4.Name = "TextButton_Roundify_4px"
textButtonRoundify4px_4.Parent = switchButton
textButtonRoundify4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
textButtonRoundify4px_4.BackgroundTransparency = 1
textButtonRoundify4px_4.Size = UDim2.new(1, 0, 1, 0)
textButtonRoundify4px_4.Image = "rbxassetid://2851929490"
textButtonRoundify4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
textButtonRoundify4px_4.ImageTransparency = 0.5
textButtonRoundify4px_4.ScaleType = Enum.ScaleType.Slice
textButtonRoundify4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

title3Label.Name = "Title"
title3Label.Parent = switchButton
title3Label.BackgroundColor3 = Color3.new(1, 1, 1)
title3Label.BackgroundTransparency = 1
title3Label.Position = UDim2.new(1.20000005, 0, 0, 0)
title3Label.Size = UDim2.new(0, 20, 0, 20)
title3Label.Font = Enum.Font.GothamBold
title3Label.Text = "Switch"
title3Label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
title3Label.TextSize = 14
title3Label.TextXAlignment = Enum.TextXAlignment.Left

button2.Name = "Button"
button2.Parent = prefabs
button2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
button2.BackgroundTransparency = 1
button2.BorderSizePixel = 0
button2.Size = UDim2.new(0, 91, 0, 20)
button2.ZIndex = 2
button2.Font = Enum.Font.GothamSemibold
button2.TextColor3 = Color3.new(1, 1, 1)
button2.TextSize = 14

textButtonRoundify4px_5.Name = "TextButton_Roundify_4px"
textButtonRoundify4px_5.Parent = button2
textButtonRoundify4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
textButtonRoundify4px_5.BackgroundTransparency = 1
textButtonRoundify4px_5.Size = UDim2.new(1, 0, 1, 0)
textButtonRoundify4px_5.Image = "rbxassetid://2851929490"
textButtonRoundify4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
textButtonRoundify4px_5.ScaleType = Enum.ScaleType.Slice
textButtonRoundify4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

dropdownButton.Name = "DropdownButton"
dropdownButton.Parent = prefabs
dropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
dropdownButton.BorderSizePixel = 0
dropdownButton.Size = UDim2.new(1, 0, 0, 20)
dropdownButton.ZIndex = 3
dropdownButton.Font = Enum.Font.GothamSemibold
dropdownButton.Text = "      Button"
dropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
dropdownButton.TextSize = 14
dropdownButton.TextXAlignment = Enum.TextXAlignment.Left

keybind.Name = "Keybind"
keybind.Parent = prefabs
keybind.BackgroundColor3 = Color3.new(1, 1, 1)
keybind.BackgroundTransparency = 1
keybind.Size = UDim2.new(0, 200, 0, 20)
keybind.Image = "rbxassetid://2851929490"
keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
keybind.ScaleType = Enum.ScaleType.Slice
keybind.SliceCenter = Rect.new(4, 4, 4, 4)

title4Label.Name = "Title"
title4Label.Parent = keybind
title4Label.BackgroundColor3 = Color3.new(1, 1, 1)
title4Label.BackgroundTransparency = 1
title4Label.Size = UDim2.new(0, 0, 1, 0)
title4Label.Font = Enum.Font.GothamBold
title4Label.Text = "Keybind"
title4Label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
title4Label.TextSize = 14
title4Label.TextXAlignment = Enum.TextXAlignment.Left

inputButton.Name = "Input"
inputButton.Parent = keybind
inputButton.BackgroundColor3 = Color3.new(1, 1, 1)
inputButton.BackgroundTransparency = 1
inputButton.BorderSizePixel = 0
inputButton.Position = UDim2.new(1, -85, 0, 2)
inputButton.Size = UDim2.new(0, 80, 1, -4)
inputButton.ZIndex = 2
inputButton.Font = Enum.Font.GothamSemibold
inputButton.Text = "RShift"
inputButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
inputButton.TextSize = 12
inputButton.TextWrapped = true

inputRoundify4px.Name = "Input_Roundify_4px"
inputRoundify4px.Parent = inputButton
inputRoundify4px.BackgroundColor3 = Color3.new(1, 1, 1)
inputRoundify4px.BackgroundTransparency = 1
inputRoundify4px.Size = UDim2.new(1, 0, 1, 0)
inputRoundify4px.Image = "rbxassetid://2851929490"
inputRoundify4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
inputRoundify4px.ScaleType = Enum.ScaleType.Slice
inputRoundify4px.SliceCenter = Rect.new(4, 4, 4, 4)

windowsFrame.Name = "Windows"
windowsFrame.Parent = imgui
windowsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
windowsFrame.BackgroundTransparency = 1
windowsFrame.Position = UDim2.new(0, 20, 0, 20)
windowsFrame.Size = UDim2.new(1, 20, 1, -20)

--[[ Script ]]--
local root = imgui

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RS = game:GetService("RunService")
local ps = game:GetService("Players")

local p = ps.LocalPlayer
local mouse = p:GetMouse()

local Prefabs = prefabs
local Windows = windowsFrame

local checks = {
	["binding"] = false,
}

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == ((typeof(ui_options.toggle_key) == "EnumItem") and ui_options.toggle_key or Enum.KeyCode.RightShift) then
		if root then
			if not checks.binding and root.Enabled ~= nil then
				root.Enabled = not root.Enabled
			end
		end
	end
end)

local function Resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(part, tweenInfo, new)
	tween:Play()
end

local function rgbtohsv(r, g, b) -- idk who made this function, but thanks
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, v
	v = max

	local d = max - min
	if max == 0 then
		s = 0
	else
		s = d / max
	end

	if max == min then
		h = 0
	else
		if max == r then
			h = (g - b) / d
			if g < b then
				h = h + 6
			end
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h, s, v
end

local function hasprop(object, prop)
	local a, b = pcall(function()
		return object[tostring(prop)]
	end)
	if a then
		return b
	end
end

local function gNameLen(obj)
	return obj.TextBounds.X + 15
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

local function ripple(button, x, y)
	spawn(function()
		button.ClipsDescendants = true

		local circle = prefabs:FindFirstChild("Circle"):Clone()

		circle.Parent = button
		circle.ZIndex = 1000

		local new_x = x - circle.AbsolutePosition.X
		local new_y = y - circle.AbsolutePosition.Y
		circle.Position = UDim2.new(0, new_x, 0, new_y)

		local size = 0
		if button.AbsoluteSize.X > button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
			size = button.AbsoluteSize.Y * 1.5
		elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		end

		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
		Resize(circle, {ImageTransparency = 1}, 0.5)

		wait(0.5)
		circle:Destroy()
	end)
end

local windows = 0
local library = {}

local function format_windows()
	local ull = prefabs:FindFirstChild("UIListLayout"):Clone()
	ull.Parent = windowsFrame
	local data = {}

	for i,v in pairs(windowsFrame:GetChildren()) do
		if not (v:IsA("UIListLayout")) then
			data[v] = v.AbsolutePosition
		end
	end

	ull:Destroy()

	for i,v in pairs(data) do
		i.Position = UDim2.new(0, v.X, 0, v.Y)
	end
end

function library:FormatWindows()
	format_windows()
end

function library:AddWindow(title, options)
	windows = windows + 1
	local dropdown_open = false
	title = tostring(title or "New Window")
	options = (typeof(options) == "table") and options or ui_options
	options.tween_time = 0.1

	local Window = prefabs:FindFirstChild("Window"):Clone()
	Window.Parent = windowsFrame
	Window:FindFirstChild("Title").Text = title
	Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
	Window.ZIndex = Window.ZIndex + (windows * 10)

	do -- Altering Window Color
		local Title = Window:FindFirstChild("Title")
		local Bar = Window:FindFirstChild("Bar")
		local Base = Bar:FindFirstChild("Base")
		local Top = Bar:FindFirstChild("Top")
		local SplitFrame = Window:FindFirstChild("TabSelection"):FindFirstChild("Frame")
		local Toggle = Bar:FindFirstChild("Toggle")

		spawn(function()
			while true do
				Bar.BackgroundColor3 = options.main_color
				Base.BackgroundColor3 = options.main_color
				Base.ImageColor3 = options.main_color
				Top.ImageColor3 = options.main_color
				SplitFrame.BackgroundColor3 = options.main_color

				RS.Heartbeat:Wait()
			end
		end)

	end

	local Resizer = Window:WaitForChild("Resizer")

	local window_data = {}
	Window.Draggable = true

	do -- Resize Window
		local oldIcon = mouse.Icon
		local Entered = false
		Resizer.MouseEnter:Connect(function()
			Window.Draggable = false
			if options.can_resize then
				oldIcon = mouse.Icon
				-- mouse.Icon = "http://www.roblox.com/asset?id=4745131330"
			end
			Entered = true
		end)

		Resizer.MouseLeave:Connect(function()
			Entered = false
			if options.can_resize then
				mouse.Icon = oldIcon
			end
			Window.Draggable = true
		end)

		local Held = false
		UIS.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = true

				spawn(function() -- Loop check
					if Entered and Resizer.Active and options.can_resize then
						while Held and Resizer.Active do

							local mouse_location = gMouse()
							local x = mouse_location.X - Window.AbsolutePosition.X
							local y = mouse_location.Y - Window.AbsolutePosition.Y

							--
							if x >= options.min_size.X and y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
							elseif x >= options.min_size.X then
								Resize(Window, {Size = UDim2.new(0, x, 0, options.min_size.Y)}, options.tween_time)
							elseif y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, y)}, options.tween_time)
							else
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)}, options.tween_time)
							end

							RS.Heartbeat:Wait()
						end
					end
				end)
			end
		end)
		UIS.InputEnded:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = false
			end
		end)
	end

	do -- [Open / Close] Window
		local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
		local open = true
		local canopen = true

		local oldwindowdata = {}
		local oldy = Window.AbsoluteSize.Y
		open_close.MouseButton1Click:Connect(function()
			if canopen then
				canopen = false

				if open then
					-- Close

					oldwindowdata = {}
					for i,v in pairs(Window:FindFirstChild("Tabs"):GetChildren()) do
						oldwindowdata[v] = v.Visible
						v.Visible = false
					end

					Resizer.Active = false

					oldy = Window.AbsoluteSize.Y
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 26)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 1

				else
					-- Open

					for i,v in pairs(oldwindowdata) do
						i.Visible = v
					end

					Resizer.Active = true

					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 0

				end

				open = not open
				wait(options.tween_time)
				canopen = true

			end
		end)
	end

	do -- UI Elements
		local tabs = Window:FindFirstChild("Tabs")
		local tab_selection = Window:FindFirstChild("TabSelection")
		local tab_buttons = tab_selection:FindFirstChild("TabButtons")

		do -- Add Tab
			function window_data:AddTab(tab_name)
				local tab_data = {}
				tab_name = tostring(tab_name or "New Tab")
				tab_selection.Visible = true

				local new_button = prefabs:FindFirstChild("TabButton"):Clone()
				new_button.Parent = tab_buttons
				new_button.Text = tab_name
				new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
				new_button.ZIndex = new_button.ZIndex + (windows * 10)
				new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)

				local new_tab = prefabs:FindFirstChild("Tab"):Clone()
				new_tab.Parent = tabs
				new_tab.ZIndex = new_tab.ZIndex + (windows * 10)

				-- ============================================================
				-- MOBILE SCROLL FIX
				-- Every cloned tab gets its OWN canvas updater. The old
				-- implementation only connected the prefab's layout, so
				-- cloned tabs could keep a zero CanvasSize on mobile.
				-- ============================================================
				new_tab.ScrollingEnabled = true
				new_tab.Active = true
				new_tab.ScrollingDirection = Enum.ScrollingDirection.Y
				new_tab.ScrollBarThickness = 6
				new_tab.CanvasPosition = Vector2.new(0, 0)

				local new_tab_layout = new_tab:FindFirstChildOfClass("UIListLayout")
				local function updateTabCanvas()
					if new_tab and new_tab_layout then
						local contentHeight = new_tab_layout.AbsoluteContentSize.Y + 12
						new_tab.CanvasSize = UDim2.new(0, 0, 0, math.max(contentHeight, new_tab.AbsoluteSize.Y))
					end
				end
				if new_tab_layout then
					new_tab_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateTabCanvas)
				end
				new_tab.ChildAdded:Connect(function()
					task.defer(updateTabCanvas)
				end)
				new_tab.ChildRemoved:Connect(function()
					task.defer(updateTabCanvas)
				end)
				new_tab:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateTabCanvas)
				task.defer(updateTabCanvas)

				-- Horizontal scrolling for the tab bar, including on touch devices.
				tab_buttons.ScrollingEnabled = true
				tab_buttons.Active = true
				tab_buttons.ScrollingDirection = Enum.ScrollingDirection.X
				local function updateTabBarCanvas()
					local contentWidth = uiListLayout.AbsoluteContentSize.X + 12
					tab_buttons.CanvasSize = UDim2.new(0, math.max(contentWidth, tab_buttons.AbsoluteSize.X), 0, 0)
				end
				uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateTabBarCanvas)
				tab_buttons:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateTabBarCanvas)
				task.defer(updateTabBarCanvas)

				local function show()
					if dropdown_open then return end
					for i, v in pairs(tab_buttons:GetChildren()) do
						if not (v:IsA("UIListLayout")) then
							v:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
							Resize(v, {Size = UDim2.new(0, v.AbsoluteSize.X, 0, 20)}, options.tween_time)
						end
					end
					for i, v in pairs(tabs:GetChildren()) do
						v.Visible = false
					end

					Resize(new_button, {Size = UDim2.new(0, new_button.AbsoluteSize.X, 0, 25)}, options.tween_time)
					new_button:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
					new_tab.Visible = true
				end

				new_button.MouseButton1Click:Connect(function()
					show()
				end)

				function tab_data:Show()
					show()
				end

				do -- Tab Elements

					function tab_data:AddLabel(label_text) -- [Label]
						label_text = tostring(label_text or "New Label")

						local label = prefabs:FindFirstChild("Label"):Clone()

						label.Parent = new_tab
						label.Text = label_text
						label.Size = UDim2.new(0, gNameLen(label), 0, 20)
						label.ZIndex = label.ZIndex + (windows * 10)

						return label
					end

					function tab_data:AddButton(button_text, callback) -- [Button]
						button_text = tostring(button_text or "New Button")
						callback = typeof(callback) == "function" and callback or function()end

						local button = prefabs:FindFirstChild("Button"):Clone()

						button.Parent = new_tab
						button.Text = button_text
						button.Size = UDim2.new(0, gNameLen(button), 0, 20)
						button.ZIndex = button.ZIndex + (windows * 10)
						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

						spawn(function()
							while true do
								if button and button:GetChildren()[1] then
									button:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						button.MouseButton1Click:Connect(function()
							ripple(button, mouse.X, mouse.Y)
							pcall(callback)
						end)

						return button
					end

					function tab_data:AddSwitch(switch_text, callback) -- [Switch]
						local switch_data = {}

						switch_text = tostring(switch_text or "New Switch")
						callback = typeof(callback) == "function" and callback or function()end

						local switch = prefabs:FindFirstChild("Switch"):Clone()

						switch.Parent = new_tab
						switch:FindFirstChild("Title").Text = switch_text

						switch:FindFirstChild("Title").ZIndex = switch:FindFirstChild("Title").ZIndex + (windows * 10)
						switch.ZIndex = switch.ZIndex + (windows * 10)
						switch:GetChildren()[1].ZIndex = switch:GetChildren()[1].ZIndex + (windows * 10)

						spawn(function()
							while true do
								if switch and switch:GetChildren()[1] then
									switch:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						local toggled = false
						switch.MouseButton1Click:Connect(function()
							toggled = not toggled
							switch.Text = toggled and utf8.char(10003) or ""
							pcall(callback, toggled)
						end)

						function switch_data:Set(bool)
							toggled = (typeof(bool) == "boolean") and bool or false
							switch.Text = toggled and utf8.char(10003) or ""
							pcall(callback,toggled)
						end

						return switch_data, switch
					end

					function tab_data:AddTextBox(textbox_text, callback, textbox_options)
						textbox_text = tostring(textbox_text or "New TextBox")
						callback = typeof(callback) == "function" and callback or function()end
						textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
						textbox_options = {
							["clear"] = ((textbox_options.clear) == true)
						}

						local textbox = prefabs:FindFirstChild("TextBox"):Clone()

						textbox.Parent = new_tab
						textbox.PlaceholderText = textbox_text
						textbox.ZIndex = textbox.ZIndex + (windows * 10)
						textbox:GetChildren()[1].ZIndex = textbox:GetChildren()[1].ZIndex + (windows * 10)

						textbox.FocusLost:Connect(function(ep)
							if ep then
								if #textbox.Text > 0 then
									pcall(callback, textbox.Text)
									if textbox_options.clear then
										textbox.Text = ""
									end
								end
							end
						end)

						return textbox
					end

					function tab_data:AddSlider(slider_text, callback, slider_options)
						local slider_data = {}

						slider_text = tostring(slider_text or "New Slider")
						callback = typeof(callback) == "function" and callback or function()end
						slider_options = typeof(slider_options) == "table" and slider_options or {}
						slider_options = {
							["min"] = slider_options.min or 0,
							["max"] = slider_options.max or 100,
							["readonly"] = slider_options.readonly or false,
						}

						local slider = prefabs:FindFirstChild("Slider"):Clone()

						slider.Parent = new_tab
						slider.ZIndex = slider.ZIndex + (windows * 10)

						local title = slider:FindFirstChild("Title")
						local indicator = slider:FindFirstChild("Indicator")
						local value = slider:FindFirstChild("Value")
						title.ZIndex = title.ZIndex + (windows * 10)
						indicator.ZIndex = indicator.ZIndex + (windows * 10)
						value.ZIndex = value.ZIndex + (windows * 10)

						title.Text = slider_text

						do -- Slider Math
							local Entered = false
							slider.MouseEnter:Connect(function()
								Entered = true
								Window.Draggable = false
							end)
							slider.MouseLeave:Connect(function()
								Entered = false
								Window.Draggable = true
							end)

							local Held = false
							UIS.InputBegan:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = true

									spawn(function() -- Loop check
										if Entered and not slider_options.readonly then
											while Held and (not dropdown_open) do
												local mouse_location = gMouse()
												local x = (slider.AbsoluteSize.X - (slider.AbsoluteSize.X - ((mouse_location.X - slider.AbsolutePosition.X)) + 1)) / slider.AbsoluteSize.X

												local min = 0
												local max = 1

												local size = min
												if x >= min and x <= max then
													size = x
												elseif x < min then
													size = min
												elseif x > max then
													size = max
												end

												Resize(indicator, {Size = UDim2.new(size or min, 0, 0, 20)}, options.tween_time)
												local p = math.floor((size or min) * 100)

												local maxv = slider_options.max
												local minv = slider_options.min
												local diff = maxv - minv

												local sel_value = math.floor(((diff / 100) * p) + minv)

												value.Text = tostring(sel_value)
												pcall(callback, sel_value)

												RS.Heartbeat:Wait()
											end
										end
									end)
								end
							end)
							UIS.InputEnded:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = false
								end
							end)

							function slider_data:Set(new_value)
								new_value = tonumber(new_value) or 0
								new_value = (((new_value >= 0 and new_value <= 100) and new_value) / 100)

								Resize(indicator, {Size = UDim2.new(new_value or 0, 0, 0, 20)}, options.tween_time)
								local p = math.floor((new_value or 0) * 100)

								local maxv = slider_options.max
								local minv = slider_options.min
								local diff = maxv - minv

								local sel_value = math.floor(((diff / 100) * p) + minv)

								value.Text = tostring(sel_value)
								pcall(callback, sel_value)
							end

							slider_data:Set(slider_options["min"])
						end

						return slider_data, slider
					end

					function tab_data:AddKeybind(keybind_name, callback, keybind_options)
						local keybind_data = {}

						keybind_name = tostring(keybind_name or "New Keybind")
						callback = typeof(callback) == "function" and callback or function()end
						keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
						keybind_options = {
							["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
						}

						local keybind = prefabs:FindFirstChild("Keybind"):Clone()
						local input = keybind:FindFirstChild("Input")
						local title = keybind:FindFirstChild("Title")
						keybind.ZIndex = keybind.ZIndex + (windows * 10)
						input.ZIndex = input.ZIndex + (windows * 10)
						input:GetChildren()[1].ZIndex = input:GetChildren()[1].ZIndex + (windows * 10)
						title.ZIndex = title.ZIndex + (windows * 10)

						keybind.Parent = new_tab
						title.Text = "  " .. keybind_name
						keybind.Size = UDim2.new(0, gNameLen(title) + 80, 0, 20)

						local shortkeys = { -- thanks to stroketon for helping me out with this
							RightControl = 'RightCtrl',
							LeftControl = 'LeftCtrl',
							LeftShift = 'LShift',
							RightShift = 'RShift',
							MouseButton1 = "Mouse1",
							MouseButton2 = "Mouse2"
						}

						local keybind = keybind_options.standard

						function keybind_data:SetKeybind(Keybind)
							local key = shortkeys[Keybind.Name] or Keybind.Name
							input.Text = key
							keybind = Keybind
						end

						UIS.InputBegan:Connect(function(a, b)
							if checks.binding then
								spawn(function()
									wait()
									checks.binding = false
								end)
								return
							end
							if a.KeyCode == keybind and not b then
								pcall(callback, keybind)
							end
						end)

						keybind_data:SetKeybind(keybind_options.standard)

						input.MouseButton1Click:Connect(function()
							if checks.binding then return end
							input.Text = "..."
							checks.binding = true
							local a, b = UIS.InputBegan:Wait()
							keybind_data:SetKeybind(a.KeyCode)
						end)

						return keybind_data, keybind
					end

					function tab_data:AddDropdown(dropdown_name, callback)
						local dropdown_data = {}
						dropdown_name = tostring(dropdown_name or "New Dropdown")
						callback = typeof(callback) == "function" and callback or function()end

						local dropdown = prefabs:FindFirstChild("Dropdown"):Clone()
						local box = dropdown:FindFirstChild("Box")
						local objects = box:FindFirstChild("Objects")
						local indicator = dropdown:FindFirstChild("Indicator")
						dropdown.ZIndex = dropdown.ZIndex + (windows * 10)
						box.ZIndex = box.ZIndex + (windows * 10)
						objects.ZIndex = objects.ZIndex + (windows * 10)
						indicator.ZIndex = indicator.ZIndex + (windows * 10)
						dropdown:GetChildren()[3].ZIndex = dropdown:GetChildren()[3].ZIndex + (windows * 10)

						dropdown.Parent = new_tab
						dropdown.Text = "      " .. dropdown_name
						box.Size = UDim2.new(1, 0, 0, 0)

						local open = false
						dropdown.MouseButton1Click:Connect(function()
							open = not open

							local len = (#objects:GetChildren() - 1) * 20
							if #objects:GetChildren() - 1 >= 10 then
								len = 10 * 20
								objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
							end

							if open then -- Open
								if dropdown_open then return end
								dropdown_open = true
								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
								Resize(indicator, {Rotation = 90}, options.tween_time)
							else -- Close
								dropdown_open = false
								Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
								Resize(indicator, {Rotation = -90}, options.tween_time)
							end

						end)

						function dropdown_data:Add(n)
							local object_data = {}
							n = tostring(n or "New Object")

local object = prefabs:FindFirstChild("DropdownButton"):Clone()

							object.Parent = objects
							object.Text = n
							object.ZIndex = object.ZIndex + (windows * 10)

							object.MouseEnter:Connect(function()
								object.BackgroundColor3 = options.main_color
							end)
							object.MouseLeave:Connect(function()
								object.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
							end)

							if open then
								local len = (#objects:GetChildren() - 1) * 20
								if #objects:GetChildren() - 1 >= 10 then
									len = 10 * 20
									objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
								end
								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
							end

							object.MouseButton1Click:Connect(function()
								if dropdown_open then
									dropdown.Text = "      [ " .. n .. " ]"
									dropdown_open = false
									open = false
									Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
									Resize(indicator, {Rotation = -90}, options.tween_time)
									pcall(callback, n)
								end
							end)

							function object_data:Remove()
								object:Destroy()
							end

							return object, object_data
						end

						return dropdown_data, dropdown
					end

					function tab_data:AddColorPicker(callback)
						local color_picker_data = {}
						callback = typeof(callback) == "function" and callback or function()end

						local color_picker = prefabs:FindFirstChild("ColorPicker"):Clone()

						color_picker.Parent = new_tab
						color_picker.ZIndex = color_picker.ZIndex + (windows * 10)

						local palette = color_picker:FindFirstChild("Palette")
						local sample = color_picker:FindFirstChild("Sample")
						local saturation = color_picker:FindFirstChild("Saturation")
						palette.ZIndex = palette.ZIndex + (windows * 10)
						sample.ZIndex = sample.ZIndex + (windows * 10)
						saturation.ZIndex = saturation.ZIndex + (windows * 10)

						do -- Color Picker Math
							local h = 0
							local s = 1
							local v = 1

							local function update()
								local color = Color3.fromHSV(h, s, v)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
								pcall(callback, color)
							end

							do
								local color = Color3.fromHSV(h, s, v)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
							end

							local Entered1, Entered2 = false, false
							palette.MouseEnter:Connect(function()
								Window.Draggable = false
								Entered1 = true
							end)
							palette.MouseLeave:Connect(function()
								Window.Draggable = true
								Entered1 = false
							end)
							saturation.MouseEnter:Connect(function()
								Window.Draggable = false
								Entered2 = true
							end)
							saturation.MouseLeave:Connect(function()
								Window.Draggable = true
								Entered2 = false
							end)

							local palette_indicator = palette:FindFirstChild("Indicator")
							local saturation_indicator = saturation:FindFirstChild("Indicator")
							palette_indicator.ZIndex = palette_indicator.ZIndex + (windows * 10)
							saturation_indicator.ZIndex = saturation_indicator.ZIndex + (windows * 10)

							local Held = false
							UIS.InputBegan:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = true

									spawn(function() -- Loop check
										while Held and Entered1 and (not dropdown_open) do -- Palette
											local mouse_location = gMouse()

											local x = ((palette.AbsoluteSize.X - (mouse_location.X - palette.AbsolutePosition.X)) + 1)
											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)

											local color = Color3.fromHSV(x / 100, y / 100, 0)
											h = x / 100
											s = y / 100

											Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)

											update()
											RS.Heartbeat:Wait()
										end

										while Held and Entered2 and (not dropdown_open) do -- Saturation
											local mouse_location = gMouse()
											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)
											v = y / 100

											Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)

											update()
											RS.Heartbeat:Wait()
										end
									end)
								end
							end)
							UIS.InputEnded:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = false
								end
							end)

							function color_picker_data:Set(color)
								color = typeof(color) == "Color3" and color or Color3.new(1, 1, 1)
								local h2, s2, v2 = rgbtohsv(color.r * 255, color.g * 255, color.b * 255)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h2, 1, 1)
								pcall(callback, color)
							end
						end

						return color_picker_data, color_picker
					end

					function tab_data:AddConsole(console_options)
						local console_data = {}

						console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
						console_options = {
							["y"] = tonumber(console_options.y) or 200,
							["source"] = console_options.source or "Logs",
							["readonly"] = ((console_options.readonly) == true),
							["full"] = ((console_options.full) == true),
						}

						local console = prefabs:FindFirstChild("Console"):Clone()

						console.Parent = new_tab
						console.ZIndex = console.ZIndex + (windows * 10)
						console.Size = UDim2.new(1, 0, console_options.full and 1 or 0, console_options.y)

						local sf = console:GetChildren()[1]
						local Source = sf:FindFirstChild("Source")
						local Lines = sf:FindFirstChild("Lines")
						Source.ZIndex = Source.ZIndex + (windows * 10)
						Lines.ZIndex = Lines.ZIndex + (windows * 10)

						Source.TextEditable = not console_options.readonly

						do
							for i,v in pairs(Source:GetChildren()) do
								v.ZIndex = v.ZIndex + (windows * 10) + 1
							end
						end
						Source.Comments.ZIndex = Source.Comments.ZIndex + 1

						do
							local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
							local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire"}

							local Highlight = function(string, keywords)
								local K = {}
								local S = string
								local Token =
									{
									["="] = true,
									["."] = true,
									[","] = true,
									["("] = true,
									[")"] = true,
									["["] = true,
									["]"] = true,
									["{"] = true,
									["}"] = true,
									[":"] = true,
									["*"] = true,
									["/"] = true,
									["+"] = true,
									["-"] = true,
									["%"] = true,
									[";"] = true,
									["~"] = true
								}
								for i, v in pairs(keywords) do
									K[v] = true
								end
								S = S:gsub(".", function(c)
									if Token[c] ~= nil then
										return "\32"
									else
										return c
									end
								end)
								S = S:gsub("%S+", function(c)
									if K[c] ~= nil then
										return c
									else
										return (" "):rep(#c)
									end
								end)

								return S
							end

							local hTokens = function(string)
								local Token =
									{
									["="] = true,
									["."] = true,
									[","] = true,
									["("] = true,
									[")"] = true,
									["["] = true,
									["]"] = true,
									["{"] = true,
									["}"] = true,
									[":"] = true,
									["*"] = true,
									["/"] = true,
									["+"] = true,
									["-"] = true,
									["%"] = true,
									[";"] = true,
									["~"] = true
								}
								local A = ""
								string:gsub(".", function(c)
									if Token[c] ~= nil then
										A = A .. c
									elseif c == "\n" then
										A = A .. "\n"
									elseif c == "\t" then
										A = A .. "\t"
									else
										A = A .. "\32"
									end
								end)

								return A
							end

							local strings = function(string)
								local highlight = ""
								local quote = false
								string:gsub(".", function(c)
									if quote == false and c == "\34" then
										quote = true
									elseif quote == true and c == "\34" then
										quote = false
									end
									if quote == false and c == "\34" then
										highlight = highlight .. "\34"
									elseif c == "\n" then
										highlight = highlight .. "\n"
									elseif c == "\t" then
										highlight = highlight .. "\t"
									elseif quote == true then
										highlight = highlight .. c
									elseif quote == false then
										highlight = highlight .. "\32"
									end
								end)

								return highlight
							end

							local info = function(string)
								local highlight = ""
								local quote = false
								string:gsub(".", function(c)
									if quote == false and c == "[" then
										quote = true
									elseif quote == true and c == "]" then
										quote = false
									end
									if quote == false and c == "]" then
										highlight = highlight .. "]"
									elseif c == "\n" then
										highlight = highlight .. "\n"
									elseif c == "\t" then
										highlight = highlight .. "\t"
									elseif quote == true then
										highlight = highlight .. c
									elseif quote == false then
										highlight = highlight .. "\32"
									end
								end)

								return highlight
							end

							local comments = function(string)
								local ret = ""
								string:gsub("[^\r\n]+", function(c)
									local comm = false
									local i = 0
									c:gsub(".", function(n)
										i = i + 1
										if c:sub(i, i + 1) == "--" then
											comm = true
										end
										if comm == true then
											ret = ret .. n
										else
											ret = ret .. "\32"
										end
									end)
									ret = ret
								end)

								return ret
							end

							local numbers = function(string)
								local A = ""
								string:gsub(".", function(c)
									if tonumber(c) ~= nil then
										A = A .. c
									elseif c == "\n" then
										A = A .. "\n"
									elseif c == "\t" then
										A = A .. "\t"
									else
										A = A .. "\32"
									end
								end)

								return A
							end

                            local function highlight_logs(s)
                                local result = s
                                for _, name in ipairs({"print","warn","error","console.log"}) do
                                    local pat = name:gsub("%.", "%%.")
                                    result = result:gsub(pat .. "%s*%b()", '<font color="rgb(130,255,170)">%0</font>')
                                end
                                return result
                            end

							local highlight_lua = function(type)
								if type == "Text" then
									Source.Text = Source.Text:gsub("\13", "")
									Source.Text = Source.Text:gsub("\t", "      ")
									local s = Source.Text

									Source.Keywords.Text = Highlight(s, lua_keywords)
									Source.Globals.Text = Highlight(s, global_env)
									Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
									Source.Tokens.Text = hTokens(s)
									Source.Numbers.Text = numbers(s)
									Source.Strings.Text = strings(s)
									Source.Comments.Text = comments(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									Lines.Text = ""
									for i = 1, lin do
										Lines.Text = Lines.Text .. i .. "\n"
									end

									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
								end

								local highlight_logs = function(type)
                                    if type == "Text" then
                                        Source.Text = Source.Text:gsub("\13", "")
                                        Source.Text = Source.Text:gsub("\t", "      ")
                                        local s = Source.Text
                                        Source.Keywords.Text     = Highlight(s, lua_keywords)
                                        Source.Globals.Text      = Highlight(s, global_env)
                                        Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
                                        Source.Tokens.Text       = hTokens(s)
                                        Source.Numbers.Text      = numbers(s)
                                        Source.Strings.Text      = strings(s)
                                        Source.Comments.Text     = comments(s)
                                        Source.Logs.Text = highlight_logs(s)
                                        local lin = 1
                                        s:gsub("\n", function() lin = lin + 1 end)
                                        Lines.Text = ""
                                        for i = 1, lin do
                                            Lines.Text = Lines.Text .. i .. "\n"
                                        end

                                        sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
                                    end
								end
								if type == "Text" then
									Source.Text = Source.Text:gsub("\13", "")
									Source.Text = Source.Text:gsub("\t", "      ")
									local s = Source.Text

									Source.Info.Text = info(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
								end
							end

							if console_options.source == "Lua" then
								highlight_lua("Text")
								Source.Changed:Connect(highlight_lua)
							elseif console_options.source == "Logs" then
								Lines.Visible = false

								highlight_logs("Text")
								Source.Changed:Connect(highlight_logs)
							end

							function console_data:Set(code)
								Source.Text = tostring(code)
							end

							function console_data:Get()
								return Source.Text
							end

							function console_data:Log(msg)
								Source.Text = Source.Text .. "[*] " .. tostring(msg) .. "\n"
							end

						end

						return console_data, console
					end

					function tab_data:AddHorizontalAlignment()
						local ha_data = {}

						local ha = prefabs:FindFirstChild("HorizontalAlignment"):Clone()
						ha.Parent = new_tab

						function ha_data:AddButton(...)
							local data, object
							local ret = {tab_data:AddButton(...)}
							if typeof(ret[1]) == "table" then
								data = ret[1]
								object = ret[2]
								object.Parent = ha
								return data, object
							else
								object = ret[1]
								object.Parent = ha
								return object
							end
						end

						return ha_data, ha
					end

					function tab_data:AddFolder(folder_name) -- [Folder]
						local folder_data = {}

						folder_name = tostring(folder_name or "New Folder")

						local folder = prefabs:FindFirstChild("Folder"):Clone()
						local button = folder:FindFirstChild("Button")
						local objects = folder:FindFirstChild("Objects")
						local toggle = button:FindFirstChild("Toggle")
						folder.ZIndex = folder.ZIndex + (windows * 10)
						button.ZIndex = button.ZIndex + (windows * 10)
						objects.ZIndex = objects.ZIndex + (windows * 10)
						toggle.ZIndex = toggle.ZIndex + (windows * 10)
						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

						folder.Parent = new_tab
						button.Text = "      " .. folder_name

						spawn(function()
							while true do
								if button and button:GetChildren()[1] then
									button:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						local function gFolderLen()
							local n = 25
							for i,v in pairs(objects:GetChildren()) do
								if not (v:IsA("UIListLayout")) then
									n = n + v.AbsoluteSize.Y + 5
								end
							end
							return n
						end

						local open = false
						button.MouseButton1Click:Connect(function()
							if open then -- Close
								objects.Visible = false
							else -- Open
								objects.Visible = true
							end

							open = not open
						end)

						spawn(function()
							while true do
								Resize(folder, {Size = UDim2.new(1, 0, 0, (open and gFolderLen() or 20))}, options.tween_time)
								wait()
							end
						end)

						for i,v in pairs(tab_data) do
							folder_data[i] = function(...)
								local data, object
								local ret = {v(...)}
								if typeof(ret[1]) == "table" then
									data = ret[1]
									object = ret[2]
									object.Parent = objects
									return data, object
								else
									object = ret[1]
									object.Parent = objects
									return object
								end
							end
						end

						return folder_data, folder
					end

				end

				return tab_data, new_tab
			end
		end
	end

	do
		for i, v in pairs(Window:GetDescendants()) do
			if hasprop(v, "ZIndex") then
				v.ZIndex = v.ZIndex + (windows * 10)
			end
		end
	end

	return window_data, Window
end

return library

end)()

local window = library:AddWindow("DEVIL HUB V1.01", {
    main_color = Color3.fromRGB(0, 0, 255),
    min_size = Vector2.new(650, 870),
    can_resize = true,
})


------------------------------------------------------------------
-- AUTO KILL V2 - CLEAN REBUILD FROM ORIGINAL KILLINGCRACKED
------------------------------------------------------------------
do
-- KILLINGCRACKED feature setup (functionality only; Elerium V2 UI hosts the feature controls)
-- Force all BaseParts to SmoothPlastic and set night time, matching KILLINGCRACKED behavior.
for _, obj in ipairs(game:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Material = Enum.Material.SmoothPlastic
    end
end
if game.Lighting then
    game.Lighting.TimeOfDay = "00:00:00"
end

-- KILLER TAB
------------------------------------------------------------------
local Killer = window:AddTab("        Killer        ")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local playerWhitelist = {}
local targetPlayerNames = {}
local autoGoodKarma = false
local autoBadKarma = false
local autoKill = false
local killTarget = false
local spying = false
local autoEquipPunch = false
local autoPunchNoAnim = false
local targetDropdownItems = {}
local availableTargets = {}
local selectedTarget = nil

local titleLabel = Killer:AddLabel("Select Pack")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)


local dropdown = Killer:AddDropdown("Select Pet", function(text)
    local petsFolder = LocalPlayer.petsFolder
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.2)

    local petsToEquip = {}
    for _, pet in pairs(LocalPlayer.petsFolder.Unique:GetChildren()) do
        if pet.Name == text then
            table.insert(petsToEquip, pet)
        end
    end

    local maxPets = 8
    local equippedCount = math.min(#petsToEquip, maxPets)
    for i = 1, equippedCount do
        ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", petsToEquip[i])
        task.wait(0.1)
    end
end)

dropdown:Add("Wild Wizard")
dropdown:Add("Mighty Monster")

-- Auto Good Karma
Killer:AddSwitch("Auto Good Karma", function(bool)
    autoGoodKarma = bool
    if not bool then return end
    task.spawn(function()
        while autoGoodKarma do
            local playerChar = LocalPlayer.Character
            local rightHand = playerChar and playerChar:FindFirstChild("RightHand")
            local leftHand = playerChar and playerChar:FindFirstChild("LeftHand")
            if playerChar and rightHand and leftHand then
                for _, target in ipairs(Players:GetPlayers()) do
                    if target ~= LocalPlayer and not playerWhitelist[target.Name] then
                        local evilKarma = target:FindFirstChild("evilKarma")
                        local goodKarma = target:FindFirstChild("goodKarma")
                        if evilKarma and goodKarma and evilKarma:IsA("IntValue") and goodKarma:IsA("IntValue")
                            and (evilKarma.Value > goodKarma.Value) then
                            local rootPart = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                            if rootPart then
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end
                        end
                    end
                end
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Bad Karma
Killer:AddSwitch("Auto Bad Karma", function(bool)
    autoBadKarma = bool
    if not bool then return end
    task.spawn(function()
        while autoBadKarma do
            local playerChar = LocalPlayer.Character
            local rightHand = playerChar and playerChar:FindFirstChild("RightHand")
            local leftHand = playerChar and playerChar:FindFirstChild("LeftHand")
            if playerChar and rightHand and leftHand then
                for _, target in ipairs(Players:GetPlayers()) do
                    if target ~= LocalPlayer and not playerWhitelist[target.Name] then
                        local evilKarma = target:FindFirstChild("evilKarma")
                        local goodKarma = target:FindFirstChild("goodKarma")
                        if evilKarma and goodKarma and evilKarma:IsA("IntValue") and goodKarma:IsA("IntValue")
                            and (goodKarma.Value > evilKarma.Value) then
                            local rootPart = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                            if rootPart then
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end
                        end
                    end
                end
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Whitelist Friends
local friendWhitelistActive = false
local friendAddedConn

Killer:AddSwitch("Whitelist Friends", function(state)
    friendWhitelistActive = state

    if friendAddedConn then
        friendAddedConn:Disconnect()
        friendAddedConn = nil
    end

    if state then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and LocalPlayer:IsFriendsWith(player.UserId) then
                playerWhitelist[player.Name] = true
            end
        end

        friendAddedConn = Players.PlayerAdded:Connect(function(player)
            if friendWhitelistActive and player ~= LocalPlayer and LocalPlayer:IsFriendsWith(player.UserId) then
                playerWhitelist[player.Name] = true
            end
        end)
    else
        for name in pairs(playerWhitelist) do
            local friend = Players:FindFirstChild(name)
            if friend and LocalPlayer:IsFriendsWith(friend.UserId) then
                playerWhitelist[name] = nil
            end
        end
    end
end)

local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)




local titleLabel = Killer:AddLabel("Knuckle Sandwiches")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)








local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local function RecoveryPunch()
    if _G.AnimBlockConnection then
        _G.AnimBlockConnection:Disconnect()
        _G.AnimBlockConnection = nil
    end
    if _G.AnimMonitorConnection then
        _G.AnimMonitorConnection:Disconnect()
        _G.AnimMonitorConnection = nil
    end
    if _G.ToolConnections then
        for _, conn in pairs(_G.ToolConnections) do
            if conn then conn:Disconnect() end
        end
        _G.ToolConnections = nil
    end
    if _G.BackpackAddedConnection then
        _G.BackpackAddedConnection:Disconnect()
        _G.BackpackAddedConnection = nil
    end
    if _G.CharacterToolAddedConnection then
        _G.CharacterToolAddedConnection:Disconnect()
        _G.CharacterToolAddedConnection = nil
    end
    if _G.CharacterAddedConnection then
        _G.CharacterAddedConnection:Disconnect()
        _G.CharacterAddedConnection = nil
    end
end

local button = Killer:AddButton("Remove Punch Anim", function()
    local blockedAnimations = {
        ["rbxassetid://3638729053"] = true,
        ["rbxassetid://3638767427"] = true
    }

    local function setupAnimationBlocking()
        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("Humanoid") then return end
        local humanoid = char:FindFirstChild("Humanoid")

        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
            if track.Animation then
                local animId = track.Animation.AnimationId
                local animName = track.Name:lower()
                if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                    track:Stop()
                end
            end
        end

        if not _G.AnimBlockConnection then
            _G.AnimBlockConnection = humanoid.AnimationPlayed:Connect(function(track)
                if track.Animation then
                    local animId = track.Animation.AnimationId
                    local animName = track.Name:lower()
                    if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                        track:Stop()
                    end
                end
            end)
        end
    end

    setupAnimationBlocking()

    local function processTool(tool)
        if tool and ((tool.Name == "Punch") or tool.Name:match("Attack") or tool.Name:match("Right")) then
            if not tool:GetAttribute("ActivatedOverride") then
                tool:SetAttribute("ActivatedOverride", true)
                local connection = tool.Activated:Connect(function()
                    task.wait(0.05)
                    local char = LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        for _, track in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
                            if track.Animation then
                                local animId = track.Animation.AnimationId
                                local animName = track.Name:lower()
                                if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                                    track:Stop()
                                end
                            end
                        end
                    end
                end)
                if not _G.ToolConnections then _G.ToolConnections = {} end
                _G.ToolConnections[tool] = connection
            end
        end
    end

    local function overrideToolActivation()
        for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
            processTool(tool)
        end
        local char = LocalPlayer.Character
        if char then
            for _, tool in pairs(char:GetChildren()) do
                if tool:IsA("Tool") then
                    processTool(tool)
                end
            end
        end

        if not _G.BackpackAddedConnection then
            _G.BackpackAddedConnection = LocalPlayer.Backpack.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    task.wait(0.1)
                    processTool(child)
                end
            end)
        end

        if not _G.CharacterToolAddedConnection and char then
            _G.CharacterToolAddedConnection = char.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    task.wait(0.1)
                    processTool(child)
                end
            end)
        end
    end

    overrideToolActivation()

    if not _G.AnimMonitorConnection then
        _G.AnimMonitorConnection = RunService.Heartbeat:Connect(function()
            if (tick() % 0.5) < 0.01 then
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("Humanoid") then
                    for _, track in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
                        if track.Animation then
                            local animId = track.Animation.AnimationId
                            local animName = track.Name:lower()
                            if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                                track:Stop()
                            end
                        end
                    end
                end
            end
        end)
    end

    if not _G.CharacterAddedConnection then
        _G.CharacterAddedConnection = LocalPlayer.CharacterAdded:Connect(function(newChar)
            task.wait(1)
            setupAnimationBlocking()
            overrideToolActivation()
            if _G.CharacterToolAddedConnection then
                _G.CharacterToolAddedConnection:Disconnect()
            end
            _G.CharacterToolAddedConnection = newChar.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    task.wait(0.1)
                    processTool(child)
                end
            end)
        end)
    end
end)

button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.TextColor3 = Color3.fromRGB(255, 256, 255)

local recoverButton = Killer:AddButton("Recover Punch Anim", function()
    RecoveryPunch()
end)
recoverButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
recoverButton.TextColor3 = Color3.fromRGB(255, 256, 255)

-- Auto Equip Punch
Killer:AddSwitch("Auto Equip Punch", function(state)
    autoEquipPunch = state
    task.spawn(function()
        while autoEquipPunch do
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
            if punch then
                punch.Parent = LocalPlayer.Character
            end
            task.wait(0.1)
        end
    end)
end)

-- Auto Punch without animation
Killer:AddSwitch("Auto Punch [without animation ]", function(state)
    autoPunchNoAnim = state
    task.spawn(function()
        while autoPunchNoAnim do
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch"))
            if punch then
                if punch.Parent ~= LocalPlayer.Character then
                    punch.Parent = LocalPlayer.Character
                end
                LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
            else
                autoPunchNoAnim = false
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Punch
Killer:AddSwitch("Auto Punch", function(state)
    _G.fastHitActive = state
    if state then
        task.spawn(function()
            while _G.fastHitActive do
                local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                if punch then
                    punch.Parent = LocalPlayer.Character
                    if punch:FindFirstChild("attackTime") then
                        punch.attackTime.Value = 0
                    end
                end
                task.wait(0.1)
            end
        end)
        task.spawn(function()
            while _G.fastHitActive do
                local punch = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch")
                if punch then
                    punch:Activate()
                end
                task.wait(0.1)
            end
        end)
    else
        local punch = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch")
        if punch then
            punch.Parent = LocalPlayer.Backpack
        end
    end
end)

-- Fast Punch
Killer:AddSwitch("Fast punch", function(state)
    _G.autoPunchActive = state
    if state then
        task.spawn(function()
            while _G.autoPunchActive do
                local character = LocalPlayer.Character
                local backpack = LocalPlayer.Backpack
                local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                if character and backpack and humanoid then
                    local punch = backpack:FindFirstChild("Punch") or character:FindFirstChild("Punch")
                    if punch and punch:IsA("Tool") then
                        humanoid:EquipTool(punch)
                        local attackTime = punch:FindFirstChild("attackTime")
                        if attackTime and attackTime:IsA("NumberValue") then
                            attackTime.Value = 0
                        end
                    end
                end
                task.wait()
            end
        end)
        task.spawn(function()
            while _G.autoPunchActive do
                local character = LocalPlayer.Character
                local punch = character and character:FindFirstChild("Punch")
                if punch and punch:IsA("Tool") then
                    punch:Activate()
                end
                task.wait()
            end
        end)
    else
        local character = LocalPlayer.Character
        local punch = character and character:FindFirstChild("Punch")
        if punch then
            punch.Parent = LocalPlayer.Backpack
        end
    end
end)


local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)



local titleLabel = Killer:AddLabel("Kill Players")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)








local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)









local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local whitelistDropdownItems = {}
local selectedWhitelist = nil


local whitelistDropdown = Killer:AddDropdown("Select Whitelist", function(displayName)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.DisplayName == displayName then
            if not table.find(_G.whitelistedPlayers, player.Name) then
                table.insert(_G.whitelistedPlayers, player.Name) -- guardamos Name real
            end
            selectedWhitelist = player.Name
            print(player.Name .. " Added To Whitelist")
            break
        end
    end
end)


Killer:AddButton("UnWhitelist", function()
    if selectedWhitelist then
        for i, v in ipairs(_G.whitelistedPlayers) do
            if v == selectedWhitelist then
                table.remove(_G.whitelistedPlayers, i)
                print(selectedWhitelist .. " eliminado de Whitelist")
                break
            end
        end
        selectedWhitelist = nil
    end
end)


for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        whitelistDropdown:Add(player.DisplayName)
        whitelistDropdownItems[player.Name] = player.DisplayName
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        whitelistDropdown:Add(player.DisplayName)
        whitelistDropdownItems[player.Name] = player.DisplayName
    end
end)


Players.PlayerRemoving:Connect(function(player)
    if whitelistDropdownItems[player.Name] then
        whitelistDropdownItems[player.Name] = nil
        whitelistDropdown:Clear()
        for _, displayName in pairs(whitelistDropdownItems) do
            whitelistDropdown:Add(displayName)
        end
    end

    for i = #_G.whitelistedPlayers, 1, -1 do
        if _G.whitelistedPlayers[i] == player.Name then
            table.remove(_G.whitelistedPlayers, i)
        end
    end
end)


Killer:AddSwitch("Auto Kill", function(bool)
    autoKill = bool
    task.spawn(function()
        while autoKill do
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local rightHand = character:FindFirstChild("RightHand")
            local leftHand = character:FindFirstChild("LeftHand")
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
            if punch and not character:FindFirstChild("Punch") then
                punch.Parent = character
            end
            if rightHand and leftHand then
                for _, target in ipairs(Players:GetPlayers()) do
                    if target ~= LocalPlayer and not playerWhitelist[target.Name] then
                        local targetChar = target.Character
                        local rootPart = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
                        if rootPart then
                            pcall(function()
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end)
                        end
                    end
                end
            end
            task.wait(0.05)
        end
    end)
end)






local targetPlayerName = nil 
local isSpectating = false 


local killPlayersDropdown = Killer:AddDropdown("Kill Players", function(displayName)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.DisplayName == displayName then
            if not table.find(targetPlayerNames, player.Name) then
                table.insert(targetPlayerNames, player.Name)
            end
            selectedTarget = player.Name
            targetPlayerName = player.Name -- Update target for spectate
            break
        end
    end
end)

-- Your existing button for "Remove Blacklist"
Killer:AddButton("Remove Blacklist", function()
    if selectedTarget then
        for i, v in ipairs(targetPlayerNames) do
            if v == selectedTarget then
                table.remove(targetPlayerNames, i)
                break
            end
        end
        selectedTarget = nil
    end
end)

-- Populate dropdown with current players
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        killPlayersDropdown:Add(player.DisplayName)
        targetDropdownItems[player.Name] = player.DisplayName
    end
end

-- Handle players joining
Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        killPlayersDropdown:Add(player.DisplayName)
        targetDropdownItems[player.Name] = player.DisplayName
    end
end)

-- Handle players leaving
Players.PlayerRemoving:Connect(function(player)
    if targetDropdownItems[player.Name] then
        targetDropdownItems[player.Name] = nil
        killPlayersDropdown:Clear()
        for _, displayName in pairs(targetDropdownItems) do
            killPlayersDropdown:Add(displayName)
        end
    end
    for i = #targetPlayerNames, 1, -1 do
        if targetPlayerNames[i] == player.Name then
            table.remove(targetPlayerNames, i)
        end
    end
end)

local kill = false
Killer:AddSwitch("Kill Blacklist [ No Bring ]", function(state)
    kill = state
    task.spawn(function()
        while kill do
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
            if punch and not character:FindFirstChild("Punch") then
                punch.Parent = character
            end
            local rightHand = character:FindFirstChild("RightHand")
            local leftHand = character:FindFirstChild("LeftHand")
            if rightHand and leftHand then
                for _, name in ipairs(targetPlayerNames) do
                    local target = Players:FindFirstChild(name)
                    if target and target ~= LocalPlayer and target.Character then
                        local rootPart = target.Character:FindFirstChild("HumanoidRootPart")
                        local humanoid = target.Character:FindFirstChild("Humanoid")
                        if rootPart and humanoid and humanoid.Health > 0 then
                            pcall(function()
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end)
                        end
                    end
                end
            end
            task.wait(0.05)
        end
    end)
end)
















local kill = false

Killer:AddSwitch("Kill Blacklist [ Bring ]", function(state)
    kill = state

    task.spawn(function()
        while kill do
            local character = LocalPlayer.Character
            if not character then
                task.wait()
                continue
            end

            -- Equip Punch if it's in the backpack
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch") or character:FindFirstChild("Punch")
            if punch and punch.Parent ~= character then
                punch.Parent = character
            end

            -- Activate Punch
            if punch and punch.Parent == character then
                pcall(function()
                    punch:Activate()
                end)
            end

            -- Find a valid hand/root part to teleport to
            local hand = character:FindFirstChild("RightHand")
                or character:FindFirstChild("Right Arm")
                or character:FindFirstChild("HumanoidRootPart")

            if hand then
                for _, name in ipairs(targetPlayerNames) do
                    local target = Players:FindFirstChild(name)
                    if target and target ~= LocalPlayer and target.Character then
                        local root = target.Character:FindFirstChild("HumanoidRootPart")
                        local humanoid = target.Character:FindFirstChild("Humanoid")

                        if root and humanoid and humanoid.Health > 0 then
                            pcall(function()
                                local offset = hand.CFrame.LookVector * 2.2
                                root.CFrame = CFrame.new(hand.Position + offset) * (hand.CFrame - hand.Position)
                                root.AssemblyLinearVelocity = Vector3.zero
                                root.AssemblyAngularVelocity = Vector3.zero
                            end)
                        end
                    end
                end
            end

            task.wait()
        end
    end)
end)









-- Add a new switch for "Spectate Target" (to control spectating)
local function updateCameraSubject()
    if targetPlayerName then
        local target = Players:FindFirstChild(targetPlayerName)
        if target and target ~= LocalPlayer then
            local humanoid = target.Character and target.Character:FindFirstChild("Humanoid")
            if humanoid then
                workspace.CurrentCamera.CameraSubject = humanoid
            end
        end
    end
end

local spectateSwitch = Killer:AddSwitch("Watch Blacklist", function(state)
    isSpectating = state
    if not isSpectating then
        -- Return camera to default
        local cam = workspace.CurrentCamera
        cam.CameraSubject = (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")) or LocalPlayer
    else
        -- Start spectating the selected target
        task.spawn(function()
            while isSpectating do
                updateCameraSubject()
                task.wait(0.1)
            end
        end)
    end
end)

-- Optional: When targetPlayerName changes, automatically update camera if spectating
-- You could add a listener here if you'd like to auto-update when target changes













local titleLabel = Killer:AddLabel("_____________________________________________________________________________")
titleLabel.TextSize = 10
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

Killer:AddButton("Size 30", function()
    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 30)
end)

Killer:AddButton("Size 2", function()
    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
end)

local antiKnockbackSwitch = Killer:AddSwitch("Anti Fling", function(bool)
    local character = workspace:FindFirstChild(LocalPlayer.Name)
    if character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            if bool then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.P = 1250
                bodyVelocity.Parent = rootPart
            else
                local existingVelocity = rootPart:FindFirstChild("BodyVelocity")
                if existingVelocity and existingVelocity.MaxForce == Vector3.new(100000, 0, 100000) then
                    existingVelocity:Destroy()
                end
            end
        end
    end
end)
antiKnockbackSwitch:Set(true)

Killer:AddSwitch("Hide Frames", function(bool)
    for _, obj in pairs(ReplicatedStorage:GetChildren()) do
        if obj.Name:match("Frame$") then
            obj.Visible = not bool
        end
    end
end)

-- Anti Lag
local Lighting = game:GetService("Lighting")
local original = {
    Brightness = Lighting.Brightness,
    ClockTime = Lighting.ClockTime,
    OutdoorAmbient = Lighting.OutdoorAmbient,
    Ambient = Lighting.Ambient,
    FogColor = Lighting.FogColor,
    FogEnd = Lighting.FogEnd
}
local enabled = false

local function enableOptimization()
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("Sky") then
            v:Destroy()
        end
    end
    local darkSky = Instance.new("Sky")
    darkSky.Name = "DarkSky"
    darkSky.SkyboxBk = "rbxassetid://0"
    darkSky.SkyboxDn = "rbxassetid://0"
    darkSky.SkyboxFt = "rbxassetid://0"
    darkSky.SkyboxLf = "rbxassetid://0"
    darkSky.SkyboxRt = "rbxassetid://0"
    darkSky.SkyboxUp = "rbxassetid://0"
    darkSky.Parent = Lighting
    Lighting.Brightness = 0
    Lighting.ClockTime = 0
    Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
    Lighting.Ambient = Color3.new(0, 0, 0)
    Lighting.FogColor = Color3.new(0, 0, 0)
    Lighting.FogEnd = 0
end

local function disableOptimization()
    for k, v in pairs(original) do
        Lighting[k] = v
    end
    local sky = Lighting:FindFirstChild("DarkSky")
    if sky then
        sky:Destroy()
    end
end

Killer:AddSwitch("Anti Lag", function(state)
    enabled = state
    if state then
        enableOptimization()
    else
        disableOptimization()
    end
end)

-- Lock Pos
Killer:AddSwitch("Lock Pos", function(Value)
    if Value then
        local currentPos = LocalPlayer.Character.HumanoidRootPart.CFrame
        getgenv().posLock = RunService.Heartbeat:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = currentPos
            end
        end)
    elseif getgenv().posLock then
        getgenv().posLock:Disconnect()
        getgenv().posLock = nil
    end
end)

-- Freeze Water
local parts = {}
local partSize = 2048
local totalDistance = 50000
local startPosition = Vector3.new(-2, -9.5, -2)
local numberOfParts = math.ceil(totalDistance / partSize)

local function createParts()
    for x = 0, numberOfParts - 1 do
        for z = 0, numberOfParts - 1 do
            local function makePart(name, offset)
                local newPart = Instance.new("Part")
                newPart.Size = Vector3.new(partSize, 1, partSize)
                newPart.Position = startPosition + offset
                newPart.Anchored = true
                newPart.Transparency = 1
                newPart.CanCollide = true
                newPart.Name = name
                newPart.Parent = workspace
                table.insert(parts, newPart)
            end
            makePart("Part_Side_" .. x .. "_" .. z, Vector3.new(x * partSize, 0, z * partSize))
            makePart("Part_LeftRight_" .. x .. "_" .. z, Vector3.new(-x * partSize, 0, z * partSize))
            makePart("Part_UpLeft_" .. x .. "_" .. z, Vector3.new(-x * partSize, 0, -z * partSize))
            makePart("Part_UpRight_" .. x .. "_" .. z, Vector3.new(x * partSize, 0, -z * partSize))
        end
    end
end

local function makePartsWalkthrough()
    for _, part in ipairs(parts) do
        if part and part.Parent then
            part.CanCollide = false
        end
    end
end

local function makePartsSolid()
    for _, part in ipairs(parts) do
        if part and part.Parent then
            part.CanCollide = true
        end
    end
end

local freezeSwitch = Killer:AddSwitch("Freeze Water", function(bool)
    if bool then
        createParts()
    else
        makePartsWalkthrough()
    end
end)
freezeSwitch:Set(true)





--==============================================================
-- Enemy Health Bar With Mighty Monster Packs
--==============================================================
local enemyHealthBarsEnabled = false
local enemyHealthBars = {}
local enemyHealthConnections = {}

local MIGHTY_MONSTER_NAME = "mighty monster"
local MAX_MIGHTY_MONSTER = 9
local MIGHTY_HEALTH_BONUS = 0.50

local function getEnemyMightyMonsterCount(player)
    local equippedPets = player and player:FindFirstChild("equippedPets")
    if not equippedPets then
        return 0
    end

    local count = 0

    -- Count one pet per equipped slot. A slot may contain a petReference
    -- directly or deeper inside the slot.
    for _, slot in ipairs(equippedPets:GetChildren()) do
        local pet = nil

        if slot:IsA("ObjectValue") then
            pet = slot.Value
        else
            local petReference = slot:FindFirstChild("petReference", true)
            if petReference and petReference:IsA("ObjectValue") then
                pet = petReference.Value
            end
        end

        if pet then
            local petName = string.lower(pet.Name or "")
            if petName == MIGHTY_MONSTER_NAME then
                count = count + 1
            end
        end
    end

    return math.clamp(count, 0, MAX_MIGHTY_MONSTER)
end

local function getEnemyCalculatedMaxHealth(player)
    local durabilityStat = player:FindFirstChild("Durability")
        or (player:FindFirstChild("leaderstats")
        and player.leaderstats:FindFirstChild("Durability"))

    if not durabilityStat or typeof(durabilityStat.Value) ~= "number" then
        return nil, 0
    end

    local multiplier = 1

    -- Infernal Health is also included in the health calculation used by Stats.
    local ultFolder = player:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")
        if infernalHealth and typeof(infernalHealth.Value) == "number" then
            multiplier = multiplier + (0.15 * infernalHealth.Value)
        end
    end

    local mightyCount = getEnemyMightyMonsterCount(player)
    multiplier = multiplier + (MIGHTY_HEALTH_BONUS * mightyCount)

    return durabilityStat.Value * multiplier, mightyCount
end

local function formatEnemyHealthBarNumber(value)
    if typeof(value) ~= "number" or value ~= value then
        return "N/A"
    end

    -- Keep this formatter local to the Health Bar section so it does not
    -- depend on formatNumber being declared later in the script.
    if value >= 999999986991104 then
        return string.format("%.1fqa", value / 999999986991104)
    elseif value >= 999999995904 then
        return string.format("%.1ft", value / 999999995904)
    elseif value >= 1000000000 then
        return string.format("%.1fb", value / 1000000000)
    elseif value >= 1000000 then
        return string.format("%.1fm", value / 1000000)
    elseif value >= 1000 then
        return string.format("%.1fk", value / 1000)
    else
        return tostring(math.floor(value + 0.5))
    end
end

local function removeEnemyHealthBar(player)
    local gui = enemyHealthBars[player]
    if gui then
        pcall(function()
            gui:Destroy()
        end)
        enemyHealthBars[player] = nil
    end

    local connections = enemyHealthConnections[player]
    if connections then
        for _, connection in ipairs(connections) do
            pcall(function()
                connection:Disconnect()
            end)
        end
        enemyHealthConnections[player] = nil
    end
end

local function createEnemyHealthBar(player)
    if not enemyHealthBarsEnabled or player == LocalPlayer then
        return
    end

    removeEnemyHealthBar(player)

    local character = player.Character
    if not character then
        return
    end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoid or not rootPart then
        return
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "DevilEnemyHealthBar"
    billboard.Adornee = rootPart
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 190, 0, 42)
    billboard.StudsOffset = Vector3.new(0, 4.2, 0)
    billboard.MaxDistance = 10000
    billboard.Parent = rootPart

    local background = Instance.new("Frame")
    background.Name = "Background"
    background.Size = UDim2.new(1, 0, 0, 22)
    background.Position = UDim2.new(0, 0, 0, 0)
    background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    background.BackgroundTransparency = 0.15
    background.BorderSizePixel = 0
    background.Parent = billboard

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = background

    local fill = Instance.new("Frame")
    fill.Name = "HealthFill"
    fill.Size = UDim2.new(1, 0, 1, 0)
    fill.BackgroundColor3 = Color3.fromRGB(35, 200, 70)
    fill.BorderSizePixel = 0
    fill.Parent = background

    local fillCorner = Instance.new("UICorner")
    fillCorner.CornerRadius = UDim.new(0, 4)
    fillCorner.Parent = fill

    local text = Instance.new("TextLabel")
    text.Name = "HealthText"
    text.BackgroundTransparency = 1
    text.Size = UDim2.new(1, 0, 1, 0)
    text.Font = Enum.Font.GothamBold
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextStrokeTransparency = 0.25
    text.TextScaled = true
    text.Text = "Health: N/A"
    text.ZIndex = 2
    text.Parent = background

    local packsText = Instance.new("TextLabel")
    packsText.Name = "PacksText"
    packsText.BackgroundTransparency = 1
    packsText.Size = UDim2.new(1, 0, 0, 18)
    packsText.Position = UDim2.new(0, 0, 0, 23)
    packsText.Font = Enum.Font.GothamBold
    packsText.TextColor3 = Color3.fromRGB(255, 255, 255)
    packsText.TextStrokeTransparency = 0.3
    packsText.TextScaled = true
    packsText.Text = "Mighty Monster: 0/9"
    packsText.ZIndex = 2
    packsText.Parent = billboard

    enemyHealthBars[player] = billboard

    local function update()
        if not enemyHealthBarsEnabled or not billboard.Parent then
            return
        end

        local currentCharacter = player.Character
        local currentHumanoid = currentCharacter
            and currentCharacter:FindFirstChildOfClass("Humanoid")

        if currentCharacter ~= character or currentHumanoid ~= humanoid then
            return
        end

        local calculatedMaxHealth, mightyCount = getEnemyCalculatedMaxHealth(player)
        if not calculatedMaxHealth or calculatedMaxHealth <= 0 then
            text.Text = "Health: N/A"
            packsText.Text = "Mighty Monster: " .. tostring(mightyCount) .. "/" .. tostring(MAX_MIGHTY_MONSTER)
            fill.Size = UDim2.new(0, 0, 1, 0)
            return
        end

        local actualMax = humanoid.MaxHealth
        local actualCurrent = math.max(0, humanoid.Health)
        local ratio

        if actualMax and actualMax > 0 then
            ratio = math.clamp(actualCurrent / actualMax, 0, 1)
        else
            ratio = 0
        end

        local displayedHealth = calculatedMaxHealth * ratio
        local displayedRatio = math.clamp(ratio, 0, 1)

        text.Text = formatEnemyHealthBarNumber(displayedHealth)
            .. " / " .. formatEnemyHealthBarNumber(calculatedMaxHealth)

        packsText.Text = "Mighty Monster: "
            .. tostring(mightyCount) .. "/" .. tostring(MAX_MIGHTY_MONSTER)

        fill.Size = UDim2.new(displayedRatio, 0, 1, 0)
    end

    enemyHealthConnections[player] = {}

    table.insert(enemyHealthConnections[player], humanoid.HealthChanged:Connect(update))
    table.insert(enemyHealthConnections[player], humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(update))

    local durability = player:FindFirstChild("Durability")
    if durability then
        table.insert(enemyHealthConnections[player], durability:GetPropertyChangedSignal("Value"):Connect(update))
    end

    local leaderstats = player:FindFirstChild("leaderstats")
    local leaderDurability = leaderstats and leaderstats:FindFirstChild("Durability")
    if leaderDurability and leaderDurability ~= durability then
        table.insert(enemyHealthConnections[player], leaderDurability:GetPropertyChangedSignal("Value"):Connect(update))
    end

    local equippedPets = player:FindFirstChild("equippedPets")
    if equippedPets then
        -- The game can change the Value of an existing petReference when a
        -- player equips/unequips a pet. ChildAdded/ChildRemoved alone does
        -- not catch that, so watch ObjectValue.Value as well.
        local watchedPetReferences = {}

        local function watchPetReference(obj)
            if not obj:IsA("ObjectValue") or watchedPetReferences[obj] then
                return
            end

            watchedPetReferences[obj] = true
            table.insert(enemyHealthConnections[player], obj:GetPropertyChangedSignal("Value"):Connect(function()
                task.defer(update)
            end))
        end

        for _, obj in ipairs(equippedPets:GetDescendants()) do
            watchPetReference(obj)
        end

        table.insert(enemyHealthConnections[player], equippedPets.DescendantAdded:Connect(function(obj)
            watchPetReference(obj)
            task.defer(update)
        end))

        table.insert(enemyHealthConnections[player], equippedPets.DescendantRemoving:Connect(function()
            task.defer(update)
        end))

        table.insert(enemyHealthConnections[player], equippedPets.ChildAdded:Connect(function(child)
            watchPetReference(child)
            task.defer(update)
        end))

        table.insert(enemyHealthConnections[player], equippedPets.ChildRemoved:Connect(function()
            task.defer(update)
        end))
    end

    update()
end

local function setupEnemyHealthPlayer(player)
    if player == LocalPlayer then
        return
    end

    player.CharacterAdded:Connect(function()
        if enemyHealthBarsEnabled then
            task.wait(0.5)
            createEnemyHealthBar(player)
        end
    end)

    player.CharacterRemoving:Connect(function()
        removeEnemyHealthBar(player)
    end)

    if player.Character then
        task.spawn(function()
            task.wait(0.5)
            if enemyHealthBarsEnabled then
                createEnemyHealthBar(player)
            end
        end)
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    setupEnemyHealthPlayer(player)
end

Players.PlayerAdded:Connect(setupEnemyHealthPlayer)

Players.PlayerRemoving:Connect(function(player)
    removeEnemyHealthBar(player)
end)

local enemyHealthSwitch = Killer:AddSwitch("إظهار دم العدو بتأثير الباكات", function(bool)
    enemyHealthBarsEnabled = bool

    if bool then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                task.spawn(function()
                    task.wait(0.1)
                    if enemyHealthBarsEnabled then
                        createEnemyHealthBar(player)
                    end
                end)
            end
        end
    else
        for player in pairs(enemyHealthBars) do
            removeEnemyHealthBar(player)
        end
    end
end)

--==============================================================
-- End Enemy Health Bar
--==============================================================





local urls = {
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack2",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack4",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack5",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack6"
}

Killer:AddButton("Goofball Button", function()
    for _, url in ipairs(urls) do
        task.spawn(function()
            local success, response = pcall(function()
                return game:HttpGet(url)
            end)
            if success and response then
                local loadSuccess, err = pcall(function()
                    loadstring(response)()
                end)
                if not loadSuccess then
                    warn("Goofball Error:", url, err)
                end
            else
                warn("Goofball Failed:", url)
            end
        end)
    end
end)





Killer:AddButton("Rejoin Server", function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

local titleLabel = Killer:AddLabel("___________________________________________________________________________________________________________")
titleLabel.TextSize = 10
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = Killer:AddLabel("Auto Kill")
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local godModeToggle = false
Killer:AddSwitch("Godmode (for pussies)", function(State)
    godModeToggle = State
    if State then
        task.spawn(function()
            while godModeToggle do
                ReplicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
                task.wait()
            end
        end)
    end
end)

local godDamageActive = false
Killer:AddSwitch("Damage With Godmode", function(state)
    godDamageActive = state 
    if state then
        task.spawn(function()
            while godDamageActive do
                local groundSlam = LocalPlayer.Backpack:FindFirstChild("Ground Slam")
                    or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Ground Slam"))
                if groundSlam then
                    if groundSlam.Parent == LocalPlayer.Backpack then
                        groundSlam.Parent = LocalPlayer.Character
                    end
                    if groundSlam:FindFirstChild("attackTime") then
                        groundSlam.attackTime.Value = 0
                    end
                    LocalPlayer.muscleEvent:FireServer("slam")
                    groundSlam:Activate()
                end
                task.wait(0.1)
            end
        end)
    end
end)

-- Follow / Teleport player
local following = false
local followTarget = nil

local function followPlayer(targetPlayer)
    local myChar = LocalPlayer.Character
    local targetChar = targetPlayer.Character
    if not (myChar and targetChar) then return end
    local myHRP = myChar:FindFirstChild("HumanoidRootPart")
    local targetHRP = targetChar:FindFirstChild("HumanoidRootPart")
    if myHRP and targetHRP then
        local followPos = (targetHRP.CFrame * CFrame.new(0, 0, -3)).Position
        myHRP.CFrame = CFrame.new(followPos, targetHRP.Position)
    end
end

local followDropdown = Killer:AddDropdown("Teleport player", function(selectedDisplayName)
    if selectedDisplayName and selectedDisplayName ~= "" then
        local target = nil
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr.DisplayName == selectedDisplayName then
                target = plr
                break
            end
        end
        if target then
            followTarget = target.Name
            following = true
            print("📝 Started following:", target.Name)
            followPlayer(target)
        end
    end
end)

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        followDropdown:Add(player.DisplayName)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        followDropdown:Add(player.DisplayName)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    followDropdown:Clear()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            followDropdown:Add(plr.DisplayName)
        end
    end
    if followTarget == player.Name then
        followTarget = nil
        following = false
    end
end)

Killer:AddButton("unfollow", function()
    following = false
    followTarget = nil
    print("➖ Stopped following")
end)

task.spawn(function()
    while true do
        if following and followTarget then
            local target = Players:FindFirstChild(followTarget)
            if target then
                followPlayer(target)
            else
                following = false
                followTarget = nil
            end
        end
        task.wait(0.01)
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if following and followTarget then
        local target = Players:FindFirstChild(followTarget)
        if target then
            followPlayer(target)
        end
    end
end)




------------------------------------------------------------------
-- WAR TAB
------------------------------------------------------------------
local clanTab = window:AddTab("         War         ")

local blacklistWords = {}
local active = {}
local autoPunchActive = false
local characterLoaded = false
local attackDelay = 0.05
local spamming = false

local function trim(str)
    return str:match("^%s*(.-)%s*$")
end

local function parseList(str)
    blacklistWords = {}
    for w in string.gmatch(str or "", "[^,]+") do
        local t = trim(w):lower()
        if t ~= "" then
            table.insert(blacklistWords, t)
        end
    end
end

local function saveList() end

local function isAnyActive()
    return next(active) ~= nil
end

local function refreshActive()
    table.clear(active)
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local name = (plr.DisplayName or plr.Name):lower()
            for _, word in ipairs(blacklistWords) do
                if name:find(word, 1, true) then
                    active[plr] = true
                    break
                end
            end
        end
    end
end

local function waitForCharacter()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    char:WaitForChild("HumanoidRootPart")
    char:WaitForChild("Humanoid")
    characterLoaded = true
end

local function getHands(char)
    local right = char:FindFirstChild("RightHand") or char:FindFirstChild("Right Arm")
    local left = char:FindFirstChild("LeftHand") or char:FindFirstChild("Left Arm")
    return right, left
end

local function ensurePunchEquipped()
    local char = LocalPlayer.Character
    if not char then return nil end
    local punch = LocalPlayer.Backpack:FindFirstChild("Punch") or char:FindFirstChild("Punch")
    if punch and punch.Parent ~= char then
        punch.Parent = char
    end
    return punch
end

local blacklistLabel = clanTab:AddLabel("")
blacklistLabel.Text = ((#blacklistWords == 0) and "Blacklist: (empty)") or ("Blacklist: " .. table.concat(blacklistWords, ","))

local blacklistBox = clanTab:AddTextBox("Add to Blacklist", function(txt)
    parseList(table.concat(blacklistWords, ",") .. "," .. txt)
    saveList()
    blacklistLabel.Text = ((#blacklistWords == 0) and "Blacklist: (empty)") or ("Blacklist: " .. table.concat(blacklistWords, ","))
    refreshActive()
    if not isAnyActive() then
        autoPunchActive = false
    end
end, {placeholder = "Ej: MVX, Sigma, Juan"})

local removeBox = clanTab:AddTextBox("Remove from Blacklist", function(txt)
    local toRemove = {}
    for w in string.gmatch(txt, "[^,]+") do
        local t = trim(w):lower()
        if t ~= "" then
            table.insert(toRemove, t)
        end
    end
    for _, word in ipairs(toRemove) do
        for i = #blacklistWords, 1, -1 do
            if blacklistWords[i] == word then
                table.remove(blacklistWords, i)
            end
        end
    end
    saveList()
    blacklistLabel.Text = ((#blacklistWords == 0) and "Blacklist: (empty)") or ("Blacklist: " .. table.concat(blacklistWords, ","))
    refreshActive()
    if not isAnyActive() then
        autoPunchActive = false
    end
end)

RunService.Heartbeat:Connect(function()
    refreshActive()
end)

task.spawn(function()
    while true do
        task.wait(attackDelay)
        if not isAnyActive() then continue end
        if not LocalPlayer.Character then continue end
        if not characterLoaded then continue end

        local punch = ensurePunchEquipped()
        if not punch then continue end

        local char = LocalPlayer.Character
        local rightHand, leftHand = getHands(char)
        for plr in pairs(active) do
            if plr and plr.Character then
                local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
                local hum = plr.Character:FindFirstChild("Humanoid")
                if hrp and hum and hum.Health > 0 then
                    pcall(function()
                        LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                        LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                    end)
                    pcall(function()
                        firetouchinterest(rightHand, hrp, 1)
                        firetouchinterest(leftHand, hrp, 1)
                        firetouchinterest(rightHand, hrp, 0)
                        firetouchinterest(leftHand, hrp, 0)
                    end)
                end
            end
        end
    end
end)

Players.PlayerAdded:Connect(function(plr)
    plr:GetPropertyChangedSignal("DisplayName"):Connect(function()
        refreshActive()
    end)
end)

LocalPlayer.CharacterAdded:Connect(function()
    characterLoaded = false
    task.wait(0.2)
    waitForCharacter()
    refreshActive()
    if isAnyActive() then
        task.defer(function()
            for i = 1, 50 do
                if not isAnyActive() then break end
                ensurePunchEquipped()
                task.wait(0.15)
            end
        end)
    end
end)

waitForCharacter()
refreshActive()

-- Flinging Spot
local flingingSpotEnabled = false
local charConnection = nil

clanTab:AddSwitch("Flinging Spot", function(Value)
    flingingSpotEnabled = Value
    local function applySpot(character)
        local root = character:WaitForChild("HumanoidRootPart")
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if flingingSpotEnabled then
            root.CFrame = CFrame.new(-27738.0449, 50000, -7526.76562,
                -0.113436252, -3.5683843e-9, -0.993545294,
                -6.7255856e-10, 1, -3.5147787e-9,
                0.993545294, 2.6951408e-10, -0.113436252)
            root.Anchored = true
            if humanoid then
                humanoid.WalkSpeed = 0
                humanoid.JumpPower = 0
            end
        else
            root.Anchored = false
            if humanoid then
                humanoid.WalkSpeed = 16
                humanoid.JumpPower = 50
            end
        end
    end

    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    applySpot(character)

    if charConnection then
        charConnection:Disconnect()
        charConnection = nil
    end
    if Value then
        charConnection = LocalPlayer.CharacterAdded:Connect(function(newChar)
            applySpot(newChar)
        end)
    end
end)

clanTab:AddButton("Spam Size", function()
    spamming = not spamming
    if spamming then
        task.spawn(function()
            local sizes = {100, 2, 40, 50, 60, 72}
            local i = 1
            while spamming do
                ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", sizes[i])
                i = i + 1
                if i > #sizes then i = 1 end
                task.wait(0.04)
            end
        end)
    end
end)

clanTab:AddButton("Normal Size", function()
    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
end)

local titleLabel = clanTab:AddLabel("Kill While Dead Ect")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

clanTab:AddSwitch("Kill UnderWater [ Auto Punch + Egg ]", function(Value)
    if Value then
        ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 1)
        local targetCFrame = CFrame.new(-9.0580864, -118.967911, -334.924042,
            0.391505003, 0.000186817284, 0.92017597,
            -0.000211292776, 1, -0.000113125207,
            -0.92017597, -0.00015013745, 0.391505033)

        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = targetCFrame
        end

        getgenv().posLock = RunService.Heartbeat:Connect(function()
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = targetCFrame
            end
        end)

        getgenv().antiStatuePunch = true
        task.spawn(function()
            while getgenv().antiStatuePunch do
                local character = LocalPlayer.Character
                if character then
                    local egg = LocalPlayer.Backpack:FindFirstChild("Protein Egg")
                        or character:FindFirstChild("Protein Egg")
                    if egg and egg.Parent ~= character then
                        egg.Parent = character
                    end

                    local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                        or character:FindFirstChild("Punch")
                    if punch then
                        if punch.Parent ~= character then
                            punch.Parent = character
                        end
                        if not punch:GetAttribute("AntiUnequip") then
                            punch:SetAttribute("AntiUnequip", true)
                            punch.Unequipped:Connect(function()
                                if getgenv().antiStatuePunch and punch then
                                    task.defer(function()
                                        punch.Parent = character
                                    end)
                                end
                            end)
                        end
                    end

                    if punch then
                        LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                        LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                    end
                end
                task.wait(0.01)
            end
        end)
    else
        if getgenv().posLock then
            getgenv().posLock:Disconnect()
            getgenv().posLock = nil
        end
        getgenv().antiStatuePunch = false
    end
end)

-- Anti Statue
local AntiStatueEnabled = false
local TargetCFrame = CFrame.new(2.90918088, 85.5627899, 243.827026,
    0.999048233, -7.404807e-10, 0.0436196439,
    3.1804221e-9, 1, -5.5867364e-8,
    -0.0436196439, 5.5952917e-8, 0.999048233)

local function TeleportOnRespawn(character)
    if not AntiStatueEnabled then return end
    local hrp = character:WaitForChild("HumanoidRootPart", 5)
    if hrp then
        task.wait(0.1)
        hrp.CFrame = TargetCFrame
    end
end

LocalPlayer.CharacterAdded:Connect(TeleportOnRespawn)

local function GetTool(name, character)
    return LocalPlayer.Backpack:FindFirstChild(name) or (character and character:FindFirstChild(name))
end

local function EquipPunch(character)
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    local punch = GetTool("Punch", character)
    if punch and punch:IsA("Tool") then
        humanoid:EquipTool(punch)
        local attackTime = punch:FindFirstChild("attackTime")
        if attackTime and attackTime:IsA("NumberValue") then
            attackTime.Value = 0
        end
    end
end

local function EquipEgg(character)
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    local egg = GetTool("Protein Egg", character)
    if egg and egg:IsA("Tool") then
        humanoid:EquipTool(egg)
    end
end

clanTab:AddSwitch("Anti Statue [ Auto Punch + Egg ]", function(Value)
    AntiStatueEnabled = Value
    _G.autoPunchActive = Value
    if Value then
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = TargetCFrame
        end

        task.spawn(function()
            while _G.autoPunchActive do
                local char = LocalPlayer.Character
                EquipPunch(char)
                task.wait(0.1)
            end
        end)

        task.spawn(function()
            while _G.autoPunchActive do
                task.wait(2)
                if not _G.autoPunchActive then break end
                local char = LocalPlayer.Character
                EquipEgg(char)
                task.wait(0.3)
                EquipPunch(char)
            end
        end)

        task.spawn(function()
            while _G.autoPunchActive do
                local char = LocalPlayer.Character
                local punch = char and char:FindFirstChild("Punch")
                if punch and punch:IsA("Tool") then
                    punch:Activate()
                end
                task.wait()
            end
        end)

        if not _G.autoPunchRespawnConn then
            _G.autoPunchRespawnConn = LocalPlayer.CharacterAdded:Connect(function(char)
                if not _G.autoPunchActive then return end
                task.wait(0.5)
                EquipPunch(char)
            end)
        end
    else
        local character = LocalPlayer.Character
        if character then
            local punch = character:FindFirstChild("Punch")
            if punch then punch.Parent = LocalPlayer.Backpack end
            local egg = character:FindFirstChild("Protein Egg")
            if egg then egg.Parent = LocalPlayer.Backpack end
        end
        if _G.autoPunchRespawnConn then
            _G.autoPunchRespawnConn:Disconnect()
            _G.autoPunchRespawnConn = nil
        end
    end
end)

-- Kill while dead [NaN + Egg + Punch]
local comboActive = false
local eggLoop = nil
local characterAddedConn = nil
local changeSpeedSizeRemote = ReplicatedStorage.rEvents.changeSpeedSizeRemote
local player = LocalPlayer

local function ensureEggEquipped()
    local egg = LocalPlayer.Backpack:FindFirstChild("Protein Egg")
        or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Protein Egg"))
    if egg and LocalPlayer.Character and egg.Parent ~= LocalPlayer.Character then
        egg.Parent = LocalPlayer.Character
    end
end

local comboSwitch = clanTab:AddSwitch("Kill while dead [  NaN + Egg + Punch ]", function(bool)
    comboActive = bool
    autoEquipPunch = bool
    if bool then
        changeSpeedSizeRemote:InvokeServer("changeSize", 0/0) -- NaN
        eggLoop = task.spawn(function()
            while comboActive do
                ensureEggEquipped()
                task.wait(0.2)
            end
        end)
        task.spawn(function()
            while autoEquipPunch do
                local punch = player.Backpack:FindFirstChild("Punch")
                if punch and player.Character then
                    punch.Parent = player.Character
                end
                task.wait(0.1)
            end
        end)
        characterAddedConn = player.CharacterAdded:Connect(function(newChar)
            task.wait(0.5)
            ensureEggEquipped()
        end)
        ensureEggEquipped()
    else
        if eggLoop then
            task.cancel(eggLoop)
            eggLoop = nil
        end
        if characterAddedConn then
            characterAddedConn:Disconnect()
            characterAddedConn = nil
        end
    end
end)


local blockEatingEggs = false
clanTab:AddSwitch("Block Eating Eggs", function(state)
if state then
loadstring(game:HttpGet("https://raw.githubusercontent.com/inf-ontop/Muscle-Legends/refs/heads/main/BlockEggs.lua"))()
end
end)

local function isProteinEgg(tool)
    return tool:IsA("Tool") and ((tool.Name == "Protein Egg") or (tool.Name == "ProteinEgg"))
end

local function setupTool(tool)
    if not isProteinEgg(tool) then return end
    tool.Activated:Connect(function()
        if blockEatingEggs then
            tool:Deactivate()
            local character = LocalPlayer.Character
            if character and tool.Parent == character then
                tool.Parent = LocalPlayer.Backpack
            end
        end
    end)
    tool:GetPropertyChangedSignal("Parent"):Connect(function()
        if not blockEatingEggs then return end
        local character = LocalPlayer.Character
        if character and tool.Parent == character then
            task.defer(function()
                if tool.Parent == character then
                    tool.Parent = LocalPlayer.Backpack
                end
            end)
        end
    end)
end

for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
    setupTool(tool)
end

LocalPlayer.Backpack.ChildAdded:Connect(setupTool)

local function onCharacter(character)
    for _, tool in ipairs(character:GetChildren()) do
        setupTool(tool)
    end
    character.ChildAdded:Connect(setupTool)
end

if LocalPlayer.Character then
    onCharacter(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(onCharacter)

------------------------------------------------------------------
-- PACKS TAB
------------------------------------------------------------------
local packspa = window:AddTab("         Packs         ")

local titleLabel = packspa:AddLabel("Pack Spamming")
titleLabel.TextSize = 26
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)



local Label = packspa:AddLabel(" ")
Label.FontFace = Font.new("rbxasset://fonts/families/PermanentMarker.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Label.TextSize = 10

local running = false

local function getRemote()
    local rEvents = ReplicatedStorage:FindFirstChild("rEvents")
    if not rEvents then return end
    return rEvents:FindFirstChild("equipPetEvent")
end

local function unequipAll(remote, petsFolder)
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                remote:FireServer("unequipPet", pet)
            end
        end
    end
end

local function getPets(folder, name)
    local t = {}
    for _, pet in pairs(folder:GetChildren()) do
        if pet.Name == name then
            table.insert(t, pet)
        end
    end
    return t
end

packspa:AddButton("Smart Pack Spam", function()
    if running then return end
    running = true
    task.spawn(function()
        local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
        if not petsFolder then
            warn("petsFolder not found")
            running = false
            return
        end
        local unique = petsFolder:FindFirstChild("Unique")
        if not unique then
            warn("Unique folder not found")
            running = false
            return
        end
        local remote = getRemote()
        if not remote then
            warn("equipPetEvent not found")
            running = false
            return
        end

        while running do
            unequipAll(remote, petsFolder)
            task.wait(0.001)
            local mighty = getPets(unique, "Mighty Monster")
            for i = 1, math.min(8, #mighty) do
                if not running then return end
                remote:FireServer("equipPet", mighty[i])
                task.wait(0.001)
            end
            task.wait(0.001)
            unequipAll(remote, petsFolder)
            task.wait(0.001)
            local wizard = getPets(unique, "Wild Wizard")
            for i = 1, math.min(8, #wizard) do
                if not running then return end
                remote:FireServer("equipPet", wizard[i])
                task.wait(0.001)
            end
            task.wait(0.001)
        end
    end)
end)

packspa:AddButton("Stop Spaming", function()
    running = false
    print("[PackSpam]: Stopped")
end)

local titleLabel = packspa:AddLabel("________________")
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = packspa:AddLabel(" ")
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.Bangers
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Additional pack spam variants (kept as in original)
packspa:AddButton("Start Pack Spam", function()
    if running then return end
    running = true
    task.spawn(function()
        local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
        if not petsFolder then
            warn("petsFolder not found")
            running = false
            return
        end
        local unique = petsFolder:FindFirstChild("Unique")
        if not unique then
            warn("Unique folder not found")
            running = false
            return
        end
        local remote = getRemote()
        if not remote then
            warn("equipPetEvent not found")
            running = false
            return
        end

        while running do
            unequipAll(remote, petsFolder)
            task.wait(0.001)
            local mighty = getPets(unique, "Mighty Monster")
            for i = 1, math.min(8, #mighty) do
                if not running then return end
                remote:FireServer("equipPet", mighty[i])
                task.wait(0.001)
            end
            task.wait(0.001)
            unequipAll(remote, petsFolder)
            task.wait(0)
            local wizard = getPets(unique, "Wild Wizard")
            for i = 1, math.min(0, #wizard) do -- original had min(0, ...) which does nothing
                if not running then return end
                remote:FireServer("equipPet", wizard[i])
                task.wait(0)
            end
            task.wait(0)
        end
    end)
end)

packspa:AddButton("Stop Pack Spam", function()
    running = false
    print("[PackSpam]: Stopped")
end)

-- Equip helpers
local function EquipMightyMonsters()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    local unique = petsFolder:FindFirstChild("Unique")
    if not unique then return end
    local remote = getRemote()
    if not remote then return end

    local count = 0
    for _, pet in pairs(unique:GetChildren()) do
        if pet.Name == "Mighty Monster" then
            remote:FireServer("equipPet", pet)
            count = count + 1
            if count >= 8 then break end
            task.wait(0.05)
        end
    end
end

local function EquipWildWizards()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    local unique = petsFolder:FindFirstChild("Unique")
    if not unique then return end
    local remote = getRemote()
    if not remote then return end

    local count = 0
    for _, pet in pairs(unique:GetChildren()) do
        if pet.Name == "Wild Wizard" then
            remote:FireServer("equipPet", pet)
            count = count + 1
            if count >= 8 then break end
            task.wait(0.05)
        end
    end
end

packspa:AddButton("Equip Health Packs", function()
    local remote = getRemote()
    if not remote then return end
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    unequipAll(remote, petsFolder)
    task.wait(0.05)
    EquipMightyMonsters()
end)

packspa:AddButton("Equip Damage Packs", function()
    local remote = getRemote()
    if not remote then return end
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    unequipAll(remote, petsFolder)
    task.wait(0.05)
    EquipWildWizards()
end)

------------------------------------------------------------------
-- STATS TAB
------------------------------------------------------------------
local SpecsTab = window:AddTab("      Stats      ")

local playerToInspect = nil

local emojiMap = {
    Time = utf8.char(128347),
    Stats = utf8.char(128202),
    Strength = utf8.char(128170),
    Rebirths = utf8.char(128260),
    Durability = utf8.char(128737),
    Kills = utf8.char(128128),
    Agility = utf8.char(127939),
    ["Evil Karma"] = utf8.char(128520),
    ["Good Karma"] = utf8.char(128519),
    Brawls = utf8.char(129354)
}

local statDefinitions = {
    {name = "Strength", statName = "Strength"},
    {name = "Rebirths", statName = "Rebirths"},
    {name = "Durability", statName = "Durability"},
    {name = "Agility", statName = "Agility"},
    {name = "Kills", statName = "Kills"},
    {name = "Evil Karma", statName = "evilKarma"},
    {name = "Good Karma", statName = "goodKarma"},
    {name = "Brawls", statName = "Brawls"}
}

local function getCurrentPlayers()
    local playersList = {}

    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(playersList, p)
    end

    return playersList
end

local specdropdown = SpecsTab:AddDropdown("Choose Player", function(text)
    for _, player in ipairs(getCurrentPlayers()) do
        local optionText = player.DisplayName .. " | " .. player.Name

        if text == optionText then
            playerToInspect = player
            updateStatLabels(playerToInspect)
            break
        end
    end
end)

for _, player in ipairs(getCurrentPlayers()) do
    specdropdown:Add(player.DisplayName .. " | " .. player.Name)
end

Players.PlayerAdded:Connect(function(player)
    specdropdown:Add(player.DisplayName .. " | " .. player.Name)
end)

Players.PlayerRemoving:Connect(function(player)
    specdropdown:Clear()

    for _, p in ipairs(getCurrentPlayers()) do
        specdropdown:Add(p.DisplayName .. " | " .. p.Name)
    end
end)

local playerNameLabel = SpecsTab:AddLabel("Name: N/A")
playerNameLabel.TextSize = 20
playerNameLabel.Font = Enum.Font.PermanentMarker

local playerUsernameLabel = SpecsTab:AddLabel("Username: N/A")
playerUsernameLabel.TextSize = 20
playerUsernameLabel.Font = Enum.Font.PermanentMarker

local statLabels = {}

for _, info in ipairs(statDefinitions) do
    local label = SpecsTab:AddLabel(
        emojiMap[info.name] .. " " .. info.name .. ": 0 (0)"
    )

    label.TextSize = 20
    label.Font = Enum.Font.PermanentMarker

    statLabels[info.name] = label
end

local function formatNumber(n)
    if n >= 999999986991104 then
        return string.format("%.1fqa", n / 999999986991104)
    elseif n >= 999999995904 then
        return string.format("%.1ft", n / 999999995904)
    elseif n >= 1000000000 then
        return string.format("%.1fb", n / 1000000000)
    elseif n >= 1000000 then
        return string.format("%.1fm", n / 1000000)
    elseif n >= 1000 then
        return string.format("%.1fk", n / 1000)
    else
        return tostring(n)
    end
end

local function formatWithCommas(n)
    local formatted = tostring(math.floor(n))

    while true do
        formatted, k = formatted:gsub(
            "^(-?%d+)(%d%d%d)",
            "%1,%2"
        )

        if k == 0 then
            break
        end
    end

    return formatted
end

local function updateStatLabels(targetPlayer)
    if not targetPlayer then
        return
    end

    playerNameLabel.Text = "Name: " .. targetPlayer.DisplayName
    playerUsernameLabel.Text = "Username: " .. targetPlayer.Name

    local leaderstats = targetPlayer:FindFirstChild("leaderstats")

    if not leaderstats then
        return
    end

    for _, info in ipairs(statDefinitions) do
        local statObject

        if leaderstats:FindFirstChild(info.statName) then
            statObject = leaderstats:FindFirstChild(info.statName)
        elseif targetPlayer:FindFirstChild(info.statName) then
            statObject = targetPlayer:FindFirstChild(info.statName)
        end

        if statObject then
            local value = statObject.Value
            local emoji = emojiMap[info.name] or ""

            statLabels[info.name].Text = string.format(
                "%s %s: %s (%s)",
                emoji,
                info.name,
                formatNumber(value),
                formatWithCommas(value)
            )
        else
            statLabels[info.name].Text =
                emojiMap[info.name] .. " " .. info.name .. ": 0 (0)"
        end
    end
end

task.spawn(function()
    while true do
        if playerToInspect then
            updateStatLabels(playerToInspect)
        end

        task.wait(0.2)
    end
end)

local titleLabel = SpecsTab:AddLabel(" ")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = SpecsTab:AddLabel(
    "_______________________________________________"
)

titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = SpecsTab:AddLabel(" ")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Advanced Stats
local advancedStatsHeader = SpecsTab:AddLabel("Advanced Stats:")
advancedStatsHeader.TextSize = 24
advancedStatsHeader.Font = Enum.Font.PermanentMarker

local enemyHealthLabel = SpecsTab:AddLabel("Enemy Health: N/A")
enemyHealthLabel.TextSize = 20
enemyHealthLabel.TextColor3 = Color3.fromRGB(0, 140, 255)
enemyHealthLabel.Font = Enum.Font.PermanentMarker

local playerDamageLabel = SpecsTab:AddLabel("Your Damage: N/A")
playerDamageLabel.TextSize = 20
playerDamageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
playerDamageLabel.Font = Enum.Font.PermanentMarker

local hitsToKillLabel = SpecsTab:AddLabel("Hits to Kill: N/A")
hitsToKillLabel.TextSize = 20
hitsToKillLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
hitsToKillLabel.Font = Enum.Font.PermanentMarker

local function calculateEnemyHealth(targetPlayer)
    if not targetPlayer then
        return 0
    end

    local baseDura = 0

    local durabilityStat =
        targetPlayer:FindFirstChild("Durability")
        or (
            targetPlayer:FindFirstChild("leaderstats")
            and targetPlayer.leaderstats:FindFirstChild("Durability")
        )

    if durabilityStat then
        baseDura = durabilityStat.Value
    end

    local totalMultiplier = 1

    local ultFolder = targetPlayer:FindFirstChild("ultimatesFolder")

    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")

        if infernalHealth then
            local upgrades = infernalHealth.Value or 0
            totalMultiplier = totalMultiplier + (0.15 * upgrades)
        end
    end

    local equippedPetsFolder = targetPlayer:FindFirstChild("equippedPets")

    if equippedPetsFolder then
        local petBonus = 0

        for _, petValue in ipairs(equippedPetsFolder:GetChildren()) do
            if petValue:IsA("ObjectValue") and petValue.Value then
                local petNameLower =
                    string.lower(petValue.Value.Name)

                if petNameLower:match("mighty")
                    and petNameLower:match("monster") then

                    petBonus = petBonus + 0.5
                end
            end
        end

        totalMultiplier = totalMultiplier + petBonus
    end

    return baseDura * totalMultiplier
end

local function calculateLocalPlayerDamage()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")

    local strengthStat =
        leaderstats
        and leaderstats:FindFirstChild("Strength")

    if not strengthStat then
        return 0
    end

    local baseDamage = strengthStat.Value * 0.0667
    local totalMultiplier = 1

    local ultFolder =
        LocalPlayer:FindFirstChild("ultimatesFolder")

    if ultFolder then
        local demonDamage =
            ultFolder:FindFirstChild("Demon Damage")

        if demonDamage then
            local upgrades = demonDamage.Value or 0
            totalMultiplier = totalMultiplier + (0.1 * upgrades)
        end
    end

    local equippedPetsFolder =
        LocalPlayer:FindFirstChild("equippedPets")

    if equippedPetsFolder then
        local petBonus = 0

        for _, petValue in ipairs(equippedPetsFolder:GetChildren()) do
            if petValue:IsA("ObjectValue") and petValue.Value then
                local petNameLower =
                    string.lower(petValue.Value.Name)

                if petNameLower:match("wild")
                    and petNameLower:match("wizard") then

                    petBonus = petBonus + 0.5
                end
            end
        end

        totalMultiplier = totalMultiplier + petBonus
    end

    return baseDamage * totalMultiplier
end

local function calculateHitsToKill(health, damage)
    if damage <= 0 then
        return "∞"
    end

    local hits = math.ceil(health / damage)

    if hits > 100 then
        return "∞"
    elseif hits < 1 then
        return 1
    else
        return hits
    end
end

local function updateAdvancedStats(targetPlayer)
    if not targetPlayer then
        enemyHealthLabel.Text = "Enemy Health: N/A"
        playerDamageLabel.Text = "Your Damage: N/A"
        hitsToKillLabel.Text = "Hits to Kill: N/A"
        return
    end

    local enemyHealth = calculateEnemyHealth(targetPlayer)
    local playerDamage = calculateLocalPlayerDamage()
    local hitsToKill =
        calculateHitsToKill(enemyHealth, playerDamage)

    enemyHealthLabel.Text = string.format(
        "Enemy Health: %s (%s)",
        formatNumber(enemyHealth),
        formatWithCommas(enemyHealth)
    )

    playerDamageLabel.Text = string.format(
        "Your Damage: %s (%s)",
        formatNumber(playerDamage),
        formatWithCommas(playerDamage)
    )

    hitsToKillLabel.Text = string.format(
        "Hits to Kill: %s",
        tostring(hitsToKill)
    )
end

task.spawn(function()
    while true do
        updateAdvancedStats(playerToInspect)
        task.wait(0.1)
    end
end)
end
------------------------------------------------------------------
-- END AUTO KILL V2
------------------------------------------------------------------


local AutoFarm = window:AddTab("✨تمرين و ريبر")


-- Estado inicial
getgenv()._AutoRepFarmEnabled = false  

-- Switch en la librería
AutoFarm:AddSwitch("تمرين قوة💪(استعمله اذا كان بنقك اقل من 250 )", function(state)
    getgenv()._AutoRepFarmEnabled = state
    warn("[Auto Rep Farm] Estado cambiado a:", state and "ON" or "OFF")
end)

-- Servicios
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer

-- Configuración
local PET_NAME = "Swift Samurai"
local ROCK_NAME = "Rock5M"
local PROTEIN_EGG_NAME = "ProteinEgg"
local PROTEIN_EGG_INTERVAL = 30 * 60
local REPS_PER_CYCLE = 10
local REP_DELAY = 0.01
local ROCK_INTERVAL = 1
local MAX_PING = 450   -- si pasa esto, pausa
local MIN_PING = 250   -- si baja de esto, reanuda

-- Variables internas
local HumanoidRootPart
local lastProteinEggTime = 0
local lastRockTime = 0

-- Funciones
local function getPing()
    local success, ping = pcall(function()
        return Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
    end)
    return success and ping or 999
end

local function updateCharacterRefs()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
end

local function equipPet()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if petsFolder and petsFolder:FindFirstChild("Unique") then
        for _, pet in pairs(petsFolder.Unique:GetChildren()) do
            if pet.Name == PET_NAME then
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                break
            end
        end
    end
end

local function eatProteinEgg()
    if LocalPlayer:FindFirstChild("Backpack") then
        for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
            if item.Name == PROTEIN_EGG_NAME then
                ReplicatedStorage.rEvents.eatEvent:FireServer("eat", item)
                break
            end
        end
    end
end

local function hitRock()
    local rock = workspace:FindFirstChild(ROCK_NAME)
    if rock and HumanoidRootPart then
        HumanoidRootPart.CFrame = rock.CFrame * CFrame.new(0, 0, -5)
        ReplicatedStorage.rEvents.hitEvent:FireServer("hit", rock)
    end
end

-- Loop principal (siempre corriendo)
task.spawn(function()
    updateCharacterRefs()
    equipPet()
    lastProteinEggTime = tick()
    lastRockTime = tick()

    local farmingPaused = false

    while true do
        if getgenv()._AutoRepFarmEnabled then
            local ping = getPing()

            -- Pausa si ping alto
            if ping > MAX_PING then
                if not farmingPaused then
                    warn("[Auto Rep Farm] Ping alto ("..math.floor(ping).."ms), pausando farmeo...")
                    farmingPaused = true
                end
            end

            -- Reanuda si ping bajo
            if ping <= MIN_PING then
                if farmingPaused then
                    warn("[Auto Rep Farm] Ping bajo ("..math.floor(ping).."ms), reanudando farmeo...")
                    farmingPaused = false
                end
            end

            -- Solo farmea si no está pausado
            if not farmingPaused then
                if LocalPlayer:FindFirstChild("muscleEvent") then
                    for i = 1, REPS_PER_CYCLE do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                end

                if tick() - lastProteinEggTime >= PROTEIN_EGG_INTERVAL then
                    eatProteinEgg()
                    lastProteinEggTime = tick()
                end

                if tick() - lastRockTime >= ROCK_INTERVAL then
                    hitRock()
                    lastRockTime = tick()
                end
            end
        end

        task.wait(REP_DELAY)
    end
end)

getgenv()._AutoRepFarmEnabled = false  

-- Switch en la librería
AutoFarm:AddSwitch("تمرين قوة💪(استعمله اذا كان بنقك اقل من 150)", function(state)
    getgenv()._AutoRepFarmEnabled = state
    warn("[Auto Rep Farm] Estado cambiado a:", state and "ON" or "OFF")
end)

-- Servicios
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer

-- Configuración
local PET_NAME = "Swift Samurai"
local ROCK_NAME = "Rock5M"
local PROTEIN_EGG_NAME = "ProteinEgg"
local PROTEIN_EGG_INTERVAL = 30 * 60
local REPS_PER_CYCLE = 40
local REP_DELAY = 0.01
local ROCK_INTERVAL = 5
local MAX_PING = 5000   -- si pasa esto, pausa
local MIN_PING = 100   -- si baja de esto, reanuda

-- Variables internas
local HumanoidRootPart
local lastProteinEggTime = 0
local lastRockTime = 0

-- Funciones
local function getPing()
    local success, ping = pcall(function()
        return Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
    end)
    return success and ping or 999
end

local function updateCharacterRefs()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
end

local function equipPet()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if petsFolder and petsFolder:FindFirstChild("Unique") then
        for _, pet in pairs(petsFolder.Unique:GetChildren()) do
            if pet.Name == PET_NAME then
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                break
            end
        end
    end
end

local function eatProteinEgg()
    if LocalPlayer:FindFirstChild("Backpack") then
        for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
            if item.Name == PROTEIN_EGG_NAME then
                ReplicatedStorage.rEvents.eatEvent:FireServer("eat", item)
                break
            end
        end
    end
end

local function hitRock()
    local rock = workspace:FindFirstChild(ROCK_NAME)
    if rock and HumanoidRootPart then
        HumanoidRootPart.CFrame = rock.CFrame * CFrame.new(0, 0, -5)
        ReplicatedStorage.rEvents.hitEvent:FireServer("hit", rock)
    end
end

-- Loop principal (siempre corriendo)
task.spawn(function()
    updateCharacterRefs()
    equipPet()
    lastProteinEggTime = tick()
    lastRockTime = tick()

    local farmingPaused = false

    while true do
        if getgenv()._AutoRepFarmEnabled then
            local ping = getPing()

            -- Pausa si ping alto
            if ping > MAX_PING then
                if not farmingPaused then
                    warn("[Auto Rep Farm] Ping alto ("..math.floor(ping).."ms), pausando farmeo...")
                    farmingPaused = true
                end
            end

            -- Reanuda si ping bajo
            if ping <= MIN_PING then
                if farmingPaused then
                    warn("[Auto Rep Farm] Ping bajo ("..math.floor(ping).."ms), reanudando farmeo...")
                    farmingPaused = false
                end
            end

            -- Solo farmea si no está pausado
            if not farmingPaused then
                if LocalPlayer:FindFirstChild("muscleEvent") then
                    for i = 1, REPS_PER_CYCLE do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                end

                if tick() - lastProteinEggTime >= PROTEIN_EGG_INTERVAL then
                    eatProteinEgg()
                    lastProteinEggTime = tick()
                end

                if tick() - lastRockTime >= ROCK_INTERVAL then
                    hitRock()
                    lastRockTime = tick()
                end
            end
        end

        task.wait(REP_DELAY)
    end
end)
-- ✅ Auto comer huevos (modo alterno)
local autoEatEnabled = false

local function eatProteinEgg()
    local player = game.Players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")
    local character = player.Character or player.CharacterAdded:Wait()

    local egg = backpack:FindFirstChild("Protein Egg")
    if egg then
        egg.Parent = character
        pcall(function()
            egg:Activate()
        end)
    end
end

task.spawn(function()
    while true do
        if autoEatEnabled then
            eatProteinEgg()
            task.wait(1800)
        else
            task.wait(1)
        end
    end
end)

AutoFarm:AddSwitch("✨ياكل بيض كل 30 دقيقة", function(state)
    autoEatEnabled = state
end)


    AutoFarm:AddSwitch("يلف العجلات", function(state)
    _G.AutoSpinWheel = state

    if state then
        spawn(function()
            while _G.AutoSpinWheel do
                pcall(function()
                    game:GetService("ReplicatedStorage")
                        .rEvents
                        :WaitForChild("openFortuneWheelRemote")
                        :InvokeServer(
                            "openFortuneWheel",
                            game:GetService("ReplicatedStorage")
                                :WaitForChild("shared")
                                :WaitForChild("catalogs")
                                :WaitForChild("fortuneWheelChances")
                                :WaitForChild("Fortune Wheel")
                        )
                end)

                task.wait(1)
            end
        end)
    end
end)
-- ✅ Optimización visual
AutoFarm:AddSwitch("✅يشيل القوة الي تضهر وقت التمرين", function(bool)
    local rSto = game:GetService("ReplicatedStorage")
    for _, obj in pairs(rSto:GetChildren()) do
        if obj.Name:match("Frame$") then
            obj.Visible = not bool
        end
    end
end)


AutoFarm:AddButton("✅يشيل لاق ", function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
            v.Enabled = false
        end
    end
 
    local lighting = game:GetService("Lighting")
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0
 
    settings().Rendering.QualityLevel = 1
 
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("Decal") or v:IsA("Texture") then
            v.Transparency = 1
        elseif v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material = Enum.Material.SmoothPlastic
            if v.Parent and (v.Parent:FindFirstChild("Humanoid") or v.Parent.Parent:FindFirstChild("Humanoid")) then
            else
                v.Reflectance = 0
            end
        end
    end
 
    for _, v in pairs(lighting:GetChildren()) do
        if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
            v.Enabled = false
        end
    end
 
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "anti lag activado",
        Text = "Full optimization applied!",
        Duration = 5
    })
end)
AutoFarm:AddButton("✅يسوي شاشة سودة لتنقيص الاق", function()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local lighting = game:GetService("Lighting")

    for _, gui in pairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            gui:Destroy()
        end
    end

    local function darkenSky()
        for _, v in pairs(lighting:GetChildren()) do
            if v:IsA("Sky") then
                v:Destroy()
            end
        end

        local darkSky = Instance.new("Sky")
        darkSky.Name = "DarkSky"
        darkSky.SkyboxBk = "rbxassetid://0"
        darkSky.SkyboxDn = "rbxassetid://0"
        darkSky.SkyboxFt = "rbxassetid://0"
        darkSky.SkyboxLf = "rbxassetid://0"
        darkSky.SkyboxRt = "rbxassetid://0"
        darkSky.SkyboxUp = "rbxassetid://0"
        darkSky.Parent = lighting

        lighting.Brightness = 0
        lighting.ClockTime = 0
        lighting.TimeOfDay = "00:00:00"
        lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        lighting.Ambient = Color3.new(0, 0, 0)
        lighting.FogColor = Color3.new(0, 0, 0)
        lighting.FogEnd = 100

        task.spawn(function()
            while true do
                wait(5)
                if not lighting:FindFirstChild("DarkSky") then
                    darkSky:Clone().Parent = lighting
                end
                lighting.Brightness = 0
                lighting.ClockTime = 0
                lighting.OutdoorAmbient = Color3.new(0, 0, 0)
                lighting.Ambient = Color3.new(0, 0, 0)
                lighting.FogColor = Color3.new(0, 0, 0)
                lighting.FogEnd = 100
            end
        end)
    end

    local function removeParticleEffects()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") then
                obj:Destroy()
            end
        end
    end

    local function removeLightSources()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("PointLight") or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") then
                obj:Destroy()
            end
        end
    end

    removeParticleEffects()
    removeLightSources()
    darkenSky()
end)


AutoFarm:AddButton("✅تجهير 8 بتات سرعة تمرين", function()
    print("Botón presionado: تم التجهيز")

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    -- Primero desequipamos todo
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end

    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.1)

    -- Ahora equipamos máximo 8 "Swift Samurai"
    local equipped = 0
    local maxEquip = 8
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                if pet.Name == "Swift Samurai" then
                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                    equipped += 1
                    print("Equipado Swift Samurai #" .. equipped)

                    if equipped >= maxEquip then
                        return -- salir cuando ya haya 8 equipados
                    end
                end
            end
        end
    end

    print("Se equiparon " .. equipped .. " Swift Samurai")
end)


AutoFarm:AddButton(" ✅ينقلك لمكان تمرين قوة و دم", function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    hrp.CFrame = CFrame.new(-8371.4336, 6.7981, 2858.8853)
    task.wait(0.2)

    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

AutoFarm:AddButton(" ✅ينقلك لمكان تمرين قوة", function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    -- Teletransportar al nuevo CFrame
    hrp.CFrame = CFrame.new(-8652.8672, 29.2667, 2089.2617)
    task.wait(0.2)

    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

AutoFarm:AddLabel("🔥عدد الريبر الي ربحتهم ").TextSize = 23


local fastStrengthFolder = AutoFarm:AddFolder("🔥خاصية الريبر السريع")

local leaderstats = LocalPlayer:WaitForChild("leaderstats")
local rebirthsStat = leaderstats:WaitForChild("Rebirths")

local footerTimeLabel = fastStrengthFolder:AddLabel("0d 0h 0m 0s")
footerTimeLabel.TextSize = 18
local footerRebirthsLabel = fastStrengthFolder:AddLabel("الريبر:✅ 0")
footerRebirthsLabel.TextSize = 18
local footerRebirthsGainedLabel = fastStrengthFolder:AddLabel("عدد الريبر الي سويته✅: 0")
footerRebirthsGainedLabel.TextSize = 18

local startTime = tick()
local initialRebirths = rebirthsStat.Value

task.spawn(function()
    while true do
        local elapsed = tick() - startTime
        local days = math.floor(elapsed / 86400)
        local hours = math.floor((elapsed % 86400) / 3600)
        local minutes = math.floor((elapsed % 3600) / 60)
        local seconds = math.floor(elapsed % 60)
        footerTimeLabel.Text = string.format("%dd %dh %dm %ds", days, hours, minutes, seconds)
        task.wait(1)
    end
end)

local function updateRebirths()
    local current = rebirthsStat.Value
    local gained = current - initialRebirths
    footerRebirthsLabel.Text = "✅عدد الريبر حقك: " .. current
    footerRebirthsGainedLabel.Text = "✅عدد الريبر الي سويته : " .. gained
end

rebirthsStat.Changed:Connect(updateRebirths)
updateRebirths()

getgenv().AutoFarming = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Configuración de mascotas
local FarmPet = "Swift Samurai"
local RebirthPet = "Tribal Overlord"

-- Funciones para equipar/unequipar
local function equipPetByName(name)
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                if pet.Name == name then
                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                end
            end
        end
    end
end

local function unequipAllPets()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.1)
end

local function getGoldenRebirthCount()
    local ultimates = LocalPlayer:FindFirstChild("ultimatesFolder")
    if ultimates and ultimates:FindFirstChild("Golden Rebirth") then
        return ultimates["Golden Rebirth"].Value
    end
    return 0
end

local function getStrengthRequiredForRebirth()
    local rebirths = LocalPlayer.leaderstats.Rebirths.Value
    local baseStrength = 10000 + (5000 * rebirths)
    local golden = getGoldenRebirthCount()
    if golden >= 1 and golden <= 5 then
        baseStrength = baseStrength * (1 - golden * 0.1)
    end
    return math.floor(baseStrength)
end

-- Switch en la library
fastStrengthFolder:AddSwitch("🔥ريبر سريع", function(state)
    getgenv().AutoFarming = state

    if state then
        warn("⚡ تم التفعيل")

        task.spawn(function()
            while getgenv().AutoFarming do
                local requiredStrength = getStrengthRequiredForRebirth()
                print("Necesario para renacer:", requiredStrength)

                -- Fase de farmeo
                unequipAllPets()
                equipPetByName(FarmPet)

                while LocalPlayer.leaderstats.Strength.Value < requiredStrength and getgenv().AutoFarming do
                    for _ = 1, 10 do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                    task.wait()
                end

                if not getgenv().AutoFarming then break end

                -- Fase de renacimiento
                unequipAllPets()
                equipPetByName(RebirthPet)

                local oldRebirths = LocalPlayer.leaderstats.Rebirths.Value
                repeat
                    ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                    task.wait(0.1)
                until LocalPlayer.leaderstats.Rebirths.Value > oldRebirths or not getgenv().AutoFarming

                print("Renacimiento hecho. Reiniciando ciclo.")
            end

            print("🛑 AutoFarming DETENIDO")
        end)

    else
        warn("🛑 AutoFarming DESACTIVADO")
    end
end)
local rebirthFolder = AutoFarm:AddFolder("🔥ريبر بدون باكات")

-- Guardar objetivo de rebirths
local targetRebirthAmount = nil
local farmingTarget = false

-- Input de rebirth objetivo
rebirthFolder:AddTextBox("Target number of Rebirths", function(value)
    local amount = tonumber(value) or 1
    local currentRebirths = leaderstats.Rebirths.Value
    if amount >= currentRebirths then
        targetRebirthAmount = amount
    end
end, {clear = false})

-- Toggle para llegar al rebirth objetivo
local targetRebirthToggle = rebirthFolder:AddSwitch("Start", function(enabled)
    farmingTarget = enabled
    if enabled then
        task.spawn(function()
            while farmingTarget do
                local currentRebirths = leaderstats.Rebirths.Value
                local requiredStrength = 10000 + 5000 * currentRebirths

                -- Si ya alcanzó el objetivo, apagar toggle
                if targetRebirthAmount and currentRebirths >= targetRebirthAmount then
                    targetRebirthToggle:Set(false)
                    farmingTarget = false
                    break
                end

                -- Hacer rebirth si ya tienes fuerza suficiente
                if leaderstats.Strength.Value >= requiredStrength then
                    replicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                    task.wait(0.7)
                else
                    -- Farmear fuerza
                    for i = 1, repSpeed do
                        MuscleEvent:FireServer("rep")
                    end
                end

                task.wait(0.1)
            end
        end)
    end
end)

rebirthFolder:AddSwitch("✅تيليبورت للملك", function(enabled)
    if enabled then
        _G.AutoTeleportKing = true
        local targetPosition = Vector3.new(-8750.1318359375, 124.37654876708984, -5861.2666015625)

        while _G.AutoTeleportKing do
            local player = game.Players.LocalPlayer
            local char = player.Character
            if char then
                local rootPart = char:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    rootPart.CFrame = CFrame.new(targetPosition)
                    rootPart.Velocity = Vector3.new(0, 0, 0)
                    rootPart.RotVelocity = Vector3.new(0, 0, 0)
                end
            end
            task.wait(0.1)
        end
    else
        _G.AutoTeleportKing = false
    end
end)

rebirthFolder:AddSwitch("حجم 2", function(enabled)
    if enabled then
        _G.AutoSize2 = true
        while _G.AutoSize2 do
            local args = {
                "changeSize",
                2
            }
            game:GetService("ReplicatedStorage")
                :WaitForChild("rEvents")
                :WaitForChild("changeSpeedSizeRemote")
                :InvokeServer(unpack(args))

            task.wait(1)
        end
    else
        _G.AutoSize2 = false
    end
end)




local autoEquipToolsFolder = AutoFarm:AddFolder("🔥ادوات اوتو")

-- Botón para desbloquear el Gamepass AutoLift
autoEquipToolsFolder:AddButton("Gamepass AutoLift", function()
    local gamepassFolder = game:GetService("ReplicatedStorage").gamepassIds
    local player = game:GetService("Players").LocalPlayer
    for _, gamepass in pairs(gamepassFolder:GetChildren()) do
        local value = Instance.new("IntValue")
        value.Name = gamepass.Name
        value.Value = gamepass.Value
        value.Parent = player.ownedGamepasses
    end
end)

-- Función para crear switches de auto-equip
local function createAutoToolSwitch(toolName, globalVar)
    autoEquipToolsFolder:AddSwitch("Auto " .. toolName, function(Value)
        _G[globalVar] = Value
        
        if Value then
            local tool = LocalPlayer.Backpack:FindFirstChild(toolName)
            if tool then
                LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        else
            local character = LocalPlayer.Character
            local equipped = character:FindFirstChild(toolName)
            if equipped then
                equipped.Parent = LocalPlayer.Backpack
            end
        end
        
        task.spawn(function()
            while _G[globalVar] do
                if not _G[globalVar] then break end
                LocalPlayer.muscleEvent:FireServer("rep")
                task.wait(0.1)
            end
        end)
    end)
end

createAutoToolSwitch("Weight", "AutoWeight")
createAutoToolSwitch("Pushups", "AutoPushups")
createAutoToolSwitch("Handstands", "AutoHandstands")
createAutoToolSwitch("Situps", "AutoSitups")


autoEquipToolsFolder:AddSwitch("Auto Punch", function(Value)
    _G.fastHitActive = Value
    
    if Value then
        task.spawn(function()
            while _G.fastHitActive do
                if not _G.fastHitActive then break end
                
                local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                if punch then
                    punch.Parent = LocalPlayer.Character
                    if punch:FindFirstChild("attackTime") then
                        punch.attackTime.Value = 0
                    end
                end
                task.wait(0.1)
            end
        end)
        
        task.spawn(function()
            while _G.fastHitActive do
                if not _G.fastHitActive then break end
                
                LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                
                local character = LocalPlayer.Character
                if character then
                    local punchTool = character:FindFirstChild("Punch")
                    if punchTool then
                        punchTool:Activate()
                    end
                end
                task.wait()
            end
        end)
    else
        local character = LocalPlayer.Character
        local equipped = character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = LocalPlayer.Backpack
        end
    end
end)

autoEquipToolsFolder:AddSwitch("Fast Tools", function(Value)
    _G.FastTools = Value
    
    local toolSettings = {
        {"Punch", "attackTime", Value and 0 or 0.35},
        {"Ground Slam", "attackTime", Value and 0 or 6},
        {"Stomp", "attackTime", Value and 0 or 7},
        {"Handstands", "repTime", Value and 0 or 1},
        {"Pushups", "repTime", Value and 0 or 1},
        {"Weight", "repTime", Value and 0 or 1},
        {"Situps", "repTime", Value and 0 or 1}
    }
    
    local backpack = LocalPlayer:WaitForChild("Backpack")
    
    for _, toolInfo in ipairs(toolSettings) do
        local tool = backpack:FindFirstChild(toolInfo[1])
        if tool and tool:FindFirstChild(toolInfo[2]) then
            tool[toolInfo[2]].Value = toolInfo[3]
        end
        
        local equippedTool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(toolInfo[1])
        if equippedTool and equippedTool:FindFirstChild(toolInfo[2]) then
            equippedTool[toolInfo[2]].Value = toolInfo[3]
        end
    end
end)


local estadisticas = window:AddTab("طاقات")

local SelectPlayerName = ""

local PlayerDrop = estadisticas:AddDropdown("اختار الاعب", function(Value)
    SelectPlayerName = Value:match("| (.+)")
    previousValues = {}
end)

local Playerslist = {}
for _, Plr in pairs(game:GetService("Players"):GetPlayers()) do
    local displayName = Plr.DisplayName .. " | " .. Plr.Name
    table.insert(Playerslist, displayName)
end
for _, AddPlr in ipairs(Playerslist) do
    PlayerDrop:Add(AddPlr)
end

local function FormatNumberWithCommas(number)
    local formatted = tostring(number):reverse():gsub("(%d%d%d)", "%1,"):reverse()
    return formatted:gsub("^,", "")
end

local function FormatAbbreviated(number)
    local abbreviations = {"", "K", "M", "B", "T", "Qa", "Qi"}
    local abbreviationIndex = 1
    while number >= 1000 do
        number = number / 1000
        abbreviationIndex = abbreviationIndex + 1
    end
    return string.format("%.2f", number) .. abbreviations[abbreviationIndex]
end

local function FormatDisplay(value)
    local normal = FormatNumberWithCommas(value)
    local abbreviated = FormatAbbreviated(value)
    return "[ " .. normal .. " | " .. abbreviated .. " ]"
end

local previousValues = {}

local Update = estadisticas:AddLabel("")
local Update1 = estadisticas:AddLabel("")
local Update2 = estadisticas:AddLabel("")
local Update3 = estadisticas:AddLabel("")
local Update4 = estadisticas:AddLabel("")
local Update5 = estadisticas:AddLabel("")
local Update6 = estadisticas:AddLabel("")
local Update9 = estadisticas:AddLabel("")
local Update10 = estadisticas:AddLabel("")
local Update11 = estadisticas:AddLabel("")
local Update12 = estadisticas:AddLabel("")
local Update13 = estadisticas:AddLabel("")

task.spawn(function()
    while task.wait(0) do
        if SelectPlayerName ~= "" then
            local player = game.Players:FindFirstChild(SelectPlayerName)
            if player then
                if player:FindFirstChild("Gems") then
                    Update1.Text = "Gems: " .. FormatDisplay(player.Gems.Value)
                end
                if player:FindFirstChild("Agility") then
                    Update3.Text = "Agility: " .. FormatDisplay(player.Agility.Value)
                end
                if player:FindFirstChild("Durability") then
                    Update4.Text = "Durability: " .. FormatDisplay(player.Durability.Value)
                end
                if player:FindFirstChild("muscleKingTime") then
                    Update6.Text = "Muscle King Time: " .. FormatDisplay(player.muscleKingTime.Value)
                end
                if player:FindFirstChild("customSize") then
                    Update10.Text = "Custom Size: " .. FormatDisplay(player.customSize.Value)
                end
                if player:FindFirstChild("customSpeed") then
                    Update11.Text = "Custom Speed: " .. FormatDisplay(player.customSpeed.Value)
                end
                if player:FindFirstChild("evilKarma") then
                    Update12.Text = "Evil Karma: " .. FormatDisplay(player.evilKarma.Value)
                end
                if player:FindFirstChild("goodKarma") then
                    Update13.Text = "Good Karma: " .. FormatDisplay(player.goodKarma.Value)
                end

                local leaderstats = player:FindFirstChild("leaderstats")
                if leaderstats then
                    if leaderstats:FindFirstChild("Strength") then
                        Update.Text = "Strength: " .. FormatDisplay(leaderstats.Strength.Value)
                    end
                    if leaderstats:FindFirstChild("Rebirths") then
                        Update2.Text = "Rebirth: " .. FormatDisplay(leaderstats.Rebirths.Value)
                    end
                    if leaderstats:FindFirstChild("Kills") then
                        Update5.Text = "Kills: " .. FormatDisplay(leaderstats.Kills.Value)
                    end
                end

                if player:FindFirstChild("currentMap") then
                    Update9.Text = "Current Map: " .. tostring(player.currentMap.Value)
                else
                    Update9.Text = "Current Map: Aucune donnÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©e"
                end
            end
        end
    end
end)

--إحصائيات متقدمة ضمن "الإحصائيات"
estadisticas:AddLabel("————————————————————————————")
estadisticas:AddLabel("احصائيات متقدمة:").TextSize = 24

local enemyHealthLabel = estadisticas:AddLabel("دم الخصم: N/A")
enemyHealthLabel.TextSize = 20
enemyHealthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local playerDamageLabel = estadisticas:AddLabel("Your Damage: N/A")
playerDamageLabel.TextSize = 20
playerDamageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local hitsToKillLabel = estadisticas:AddLabel("Hits to Kill: N/A")
hitsToKillLabel.TextSize = 20
hitsToKillLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local function calculateEnemyHealth(targetPlayer)
    if not targetPlayer then
        return 0
    end
    local baseDura = 0
    local durabilityStat =
        targetPlayer:FindFirstChild("Durability") or
        (targetPlayer:FindFirstChild("leaderstats") and targetPlayer.leaderstats:FindFirstChild("Durability"))
    if durabilityStat then
        baseDura = durabilityStat.Value
    end
    local totalMultiplier = 1
    local ultFolder = targetPlayer:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")
        if infernalHealth then
            local upgrades = infernalHealth.Value or 0
            totalMultiplier = totalMultiplier + 0.15 * upgrades
        end
    end
    local backpack = targetPlayer:FindFirstChild("Backpack")
    if backpack then
        local equippedPets = backpack:FindFirstChild("EquippedPets") or backpack:FindFirstChild("equippedPets")
        if equippedPets then
            for _, pet in ipairs(equippedPets:GetChildren()) do
                if string.lower(tostring(pet)):match("mighty") and string.lower(tostring(pet)):match("monster") then
                    totalMultiplier = totalMultiplier + 0.5
                    break
                end
            end
        end
    end
    local totalHealth = baseDura * totalMultiplier
    return totalHealth
end

local function calculateLocalPlayerDamage()
    local strengthStat = nil
    local leaderstats = Player:FindFirstChild("leaderstats")
    if leaderstats then
        strengthStat = leaderstats:FindFirstChild("Strength")
    end
    if not strengthStat then
        return 0
    end
    local baseDamage = strengthStat.Value * 0.0667
    local totalMultiplier = 1
    local ultFolder = Player:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local demonDamage = ultFolder:FindFirstChild("Demon Damage")
        if demonDamage then
            local upgrades = demonDamage.Value or 0
            totalMultiplier = totalMultiplier + math.min(0.1 * upgrades, 0.5)
        end
    end
    local backpack = Player:FindFirstChild("Backpack")
    if backpack then
        local equippedPets = backpack:FindFirstChild("EquippedPets") or backpack:FindFirstChild("equippedPets")
        if equippedPets then
            for _, pet in ipairs(equippedPets:GetChildren()) do
                if string.lower(tostring(pet)):match("wild") and string.lower(tostring(pet)):match("wizard") then
                    totalMultiplier = totalMultiplier + 0.5
                    break
                end
            end
        end
    end
    baseDamage = baseDamage * totalMultiplier
    return baseDamage
end

local function calculateHitsToKill(health, damage)
    if damage <= 0 then
        return "∞"
    end
    local hits = math.ceil(health / damage)
    if hits > 50 then
        return "∞"
    elseif hits < 1 then
        return 1
    else
        return hits
    end
end

local function updateAdvancedStats(targetPlayer)
    if not targetPlayer then
        enemyHealthLabel.Text = "vida del enemigo: N/A"
        playerDamageLabel.Text = "Tu daño: N/A"
        hitsToKillLabel.Text = "Hits to Kill: N/A"
        return
    end
    local enemyHealth = calculateEnemyHealth(targetPlayer)
    local playerDamage = calculateLocalPlayerDamage()
    local hitsToKill = calculateHitsToKill(enemyHealth, playerDamage)
    enemyHealthLabel.Text = "life of the enemy: " .. FormatDisplay(enemyHealth)
    playerDamageLabel.Text = "You damage: " .. FormatDisplay(playerDamage)
    hitsToKillLabel.Text = "Golpes para matarlo: " .. tostring(hitsToKill)
end

task.spawn(function()
    while true do
        local selectedPlayer = game.Players:FindFirstChild(SelectPlayerName)
        if selectedPlayer then
            updateAdvancedStats(selectedPlayer)
        else
            updateAdvancedStats(nil)
        end
        task.wait(0.2)
    end
end)


local teleport = window:AddTab("Teleport")

teleport:AddButton("Spawn", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(2, 8, 115)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Spawn",
        Duration = 0
    })
end)

teleport:AddButton("Secret Area", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(1947, 2, 6191)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Secret Area",
        Duration = 0
    })
end)

teleport:AddButton("Tiny Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-34, 7, 1903)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Tiny Island",
        Duration = 0
    })
end)

teleport:AddButton("Frozen Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(- 2600.00244, 3.67686558, - 403.884369, 0.0873617008, 1.0482899e-09, 0.99617666, 3.07204253e-08, 1, - 3.7464023e-09, - 0.99617666, 3.09302628e-08, 0.0873617008)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Frozen Island",
        Duration = 0
    })
end)

teleport:AddButton("Mythical Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(2255, 7, 1071)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Mythical Island",
        Duration = 0
    })
end)

teleport:AddButton("Hell Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-6768, 7, -1287)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Hell Island",
        Duration = 0
    })
end)

teleport:AddButton("Legend Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(4604, 991, -3887)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Legend Island",
        Duration = 0
    })
end)

teleport:AddButton("Muscle King Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-8646, 17, -5738)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Muscle King",
        Duration = 0
    })
end)

teleport:AddButton("Jungle Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-8659, 6, 2384)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Jungle Island",
        Duration = 0
    })
end)

teleport:AddButton("Brawl Lava", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(4471, 119, -8836)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Brawl Lava",
        Duration = 0
    })
end)

teleport:AddButton("Brawl Desert", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(960, 17, -7398)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Brawl Desert",
        Duration = 0
    })
end)

teleport:AddButton("Brawl Regular", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-1849, 20, -6335)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Brawl Regular",
        Duration = 0
    })
end)



local Calculadora = window:AddTab("calculator", Color3.fromRGB(200, 100, 100))

local baseStrength = 0
local resultadoLabelsDamage = {}

local FolderDamage = Calculadora:AddFolder("Pack Damage Calculator")

FolderDamage:AddTextBox("Base Strongth (ej: 1.27Qa, T, B)", function(text)
    local unidades = { ["T"] = 1e12, ["Q"] = 1e15, ["B"] = 1e9 }
    text = text:upper()
    for u, m in pairs(unidades) do
        if text:find(u) then
            local num = tonumber(text:match("(%d+%.?%d*)"))
            if num then
                baseStrength = num * m
                return
            end
        end
    end
    baseStrength = tonumber(text:match("(%d+%.?%d*)")) or 0
end)

local mensajeLabelDamage = FolderDamage:AddLabel("")

for i = 1, 8 do
    resultadoLabelsDamage[i] = FolderDamage:AddLabel(string.format("%d pack(s): -", i))
end

FolderDamage:AddButton("Calculate Damage", function()
    if baseStrength <= 0 then
        mensajeLabelDamage.Text = "Enter a valid value."
        for i = 1, 8 do
            resultadoLabelsDamage[i].Text = string.format("%d pack(s): -", i)
        end
        return
    end

    mensajeLabelDamage.Text = ""

    local danoAjustado = baseStrength * 0.10
    local incremento = 0.335

    for pack = 1, 8 do
        local mult = 1 + (pack * incremento)
        local valor = danoAjustado * mult

        local disp
        if valor >= 1e15 then
            disp = string.format("%.3f Qa", valor / 1e15)
        elseif valor >= 1e12 then
            disp = string.format("%.2f T", valor / 1e12)
        elseif valor >= 1e9 then
            disp = string.format("%.2f B", valor / 1e9)
        else
            disp = tostring(math.floor(valor))
        end

        resultadoLabelsDamage[pack].Text = string.format("%d pack(s): %s", pack, disp)
    end
end)

local baseDurabilidad = 0
local resultadoLabelsDurabilidad = {}

local FolderDurabilidad = Calculadora:AddFolder("Pack Durability Calculator")

FolderDurabilidad:AddTextBox("Base durability (ej: 1.27Qa, T, B)", function(text)
    local unidades = { ["T"] = 1e12, ["Q"] = 1e15, ["B"] = 1e9 }
    text = text:upper()
    for u, m in pairs(unidades) do
        if text:find(u) then
            local num = tonumber(text:match("(%d+%.?%d*)"))
            if num then
                baseDurabilidad = num * m
                return
            end
        end
    end
    baseDurabilidad = tonumber(text:match("(%d+%.?%d*)")) or 0
end)

local mensajeLabelDurabilidad = FolderDurabilidad:AddLabel("")

for i = 1, 8 do
    resultadoLabelsDurabilidad[i] = FolderDurabilidad:AddLabel(string.format("%d pack(s): -", i))
end

FolderDurabilidad:AddButton("Calculate Durability", function()
    if baseDurabilidad <= 0 then
        mensajeLabelDurabilidad.Text = "Enter a valid value."
        for i = 1, 8 do
            resultadoLabelsDurabilidad[i].Text = string.format("%d pack(s): -", i)
        end
        return
    end

    mensajeLabelDurabilidad.Text = ""

    local incremento = 0.335
    local adicional = 1.5

    for pack = 1, 8 do
        local mult = 1 + (pack * incremento)
        local valor = baseDurabilidad * mult * adicional

        local disp
        if valor >= 1e15 then
            disp = string.format("%.3f Qa", valor / 1e15)
        elseif valor >= 1e12 then
            disp = string.format("%.2f T", valor / 1e12)
        elseif valor >= 1e9 then
            disp = string.format("%.2f B", valor / 1e9)
        else
            disp = tostring(math.floor(valor))
        end

        resultadoLabelsDurabilidad[pack].Text = string.format("%d pack(s): %s", pack, disp)
    end
end)

local features = window:AddTab("Calculate Stats")
features:Show()

local player = game.Players.LocalPlayer
local leaderstats = player:WaitForChild("leaderstats")
local strengthStat = leaderstats:WaitForChild("Strength")
local durabilityStat = player:WaitForChild("Durability")

local function formatNumber(number)
    local isNegative = number < 0
    number = math.abs(number)
    if number >= 1e15 then
        return (isNegative and "-" or "") .. string.format("%.2fQa", number / 1e15)
    elseif number >= 1e12 then
        return (isNegative and "-" or "") .. string.format("%.2fT", number / 1e12)
    elseif number >= 1e9 then
        return (isNegative and "-" or "") .. string.format("%.2fB", number / 1e9)
    elseif number >= 1e6 then
        return (isNegative and "-" or "") .. string.format("%.2fM", number / 1e6)
    elseif number >= 1e3 then
        return (isNegative and "-" or "") .. string.format("%.2fK", number / 1e3)
    else
        return (isNegative and "-" or "") .. string.format("%.2f", number)
    end
end

local stopwatchLabel = features:AddLabel("Fast Rep Time: 0d 0h 0m 0s")
stopwatchLabel.TextSize = 20

local projectedStrengthLabel = features:AddLabel("Strength Rate: 0 /Hour | 0 /Day | 0 /Week | 0 /Month")
projectedStrengthLabel.TextSize = 20

local projectedDurabilityLabel = features:AddLabel("Durability Rate: 0 /Hour | 0 /Day | 0 /Week | 0 /Month")
projectedDurabilityLabel.TextSize = 20

features:AddLabel("").TextSize = 10

local statsLabel = features:AddLabel("Stats:")
statsLabel.TextSize = 24

local strengthLabel = features:AddLabel("Strength: 0 | Gained: 0")
strengthLabel.TextSize = 20

local durabilityLabel = features:AddLabel("Durability: 0 | Gained: 0")
durabilityLabel.TextSize = 20

local startTime = tick()
local initialStrength = strengthStat.Value
local initialDurability = durabilityStat.Value
local trackingStarted = false

local strengthHistory = {}
local durabilityHistory = {}
local calculationInterval = 10

task.spawn(function()
    local lastCalcTime = tick()
    while true do
        local currentTime = tick()
        local currentStrength = strengthStat.Value
        local currentDurability = durabilityStat.Value

        if not trackingStarted and (currentStrength - initialStrength) >= 100e9 then
            trackingStarted = true
            startTime = tick()
            strengthHistory = {}
            durabilityHistory = {}
        end

        if trackingStarted then
            local elapsedTime = currentTime - startTime
            local days = math.floor(elapsedTime / (24 * 3600))
            local hours = math.floor((elapsedTime % (24 * 3600)) / 3600)
            local minutes = math.floor((elapsedTime % 3600) / 60)
            local seconds = math.floor(elapsedTime % 60)

            stopwatchLabel.Text = string.format("Fast Rep Time: %dd %dh %dm %ds", days, hours, minutes, seconds)

            local sessionStrengthDelta = currentStrength - initialStrength
            local sessionDurabilityDelta = currentDurability - initialDurability

            strengthLabel.Text = "Strength: " .. formatNumber(currentStrength) .. " | Gained: " .. formatNumber(sessionStrengthDelta)
            durabilityLabel.Text = "Durability: " .. formatNumber(currentDurability) .. " | Gained: " .. formatNumber(sessionDurabilityDelta)

            table.insert(strengthHistory, {time = currentTime, value = currentStrength})
            table.insert(durabilityHistory, {time = currentTime, value = currentDurability})

            while #strengthHistory > 0 and currentTime - strengthHistory[1].time > calculationInterval do
                table.remove(strengthHistory, 1)
            end
            while #durabilityHistory > 0 and currentTime - durabilityHistory[1].time > calculationInterval do
                table.remove(durabilityHistory, 1)
            end

            if currentTime - lastCalcTime >= calculationInterval then
                lastCalcTime = currentTime

                if #strengthHistory >= 2 then
                    local strengthDelta = strengthHistory[#strengthHistory].value - strengthHistory[1].value
                    local strengthPerSecond = strengthDelta / calculationInterval
                    local strengthPerHour = math.floor(strengthPerSecond * 3600)
                    local strengthPerDay = math.floor(strengthPerSecond * 86400)
                    local strengthPerWeek = math.floor(strengthPerSecond * 604800)
                    local strengthPerMonth = math.floor(strengthPerSecond * 2592000)

                    projectedStrengthLabel.Text = "Strength Rate: " .. formatNumber(strengthPerHour) .. "/Hour | " .. formatNumber(strengthPerDay) .. "/Day | " .. formatNumber(strengthPerWeek) .. "/Week | " .. formatNumber(strengthPerMonth) .. "/Month"
                end

                if #durabilityHistory >= 2 then
                    local durabilityDelta = durabilityHistory[#durabilityHistory].value - durabilityHistory[1].value
                    local durabilityPerSecond = durabilityDelta / calculationInterval
                    local durabilityPerHour = math.floor(durabilityPerSecond * 3600)
                    local durabilityPerDay = math.floor(durabilityPerSecond * 86400)
                    local durabilityPerWeek = math.floor(durabilityPerSecond * 604800)
                    local durabilityPerMonth = math.floor(durabilityPerSecond * 2592000)

                    projectedDurabilityLabel.Text = "Durability Rate: " .. formatNumber(durabilityPerHour) .. "/Hour | " .. formatNumber(durabilityPerDay) .. "/Day | " .. formatNumber(durabilityPerWeek) .. "/Week | " .. formatNumber(durabilityPerMonth) .. "/Month"
                end
            end
        end

        task.wait(0.05)
    end
end)

-- ==================== DEVIL HUB INVENTORY REPLACEMENT ====================
local function __DEVIL_SETUP_INVENTORY()

-- Added from DEVIL HUB V1.01 Inventory without modifying the original DEVIL HUB code.
local InventoryServices = {
    Players = game:GetService("Players"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    VirtualUser = game:GetService("VirtualUser"),
    Workspace = workspace,
    Lighting = game:GetService("Lighting"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService")
}

local InventoryPlayerData = {
    Player = InventoryServices.Players.LocalPlayer,
    Character = InventoryServices.Players.LocalPlayer.Character,
    Backpack = InventoryServices.Players.LocalPlayer:WaitForChild("Backpack")
}

local InventoryRemotes = {
    MuscleEvent = InventoryPlayerData.Player:WaitForChild("muscleEvent")
}

local Inventory = window:AddTab("Inventory")

-- aliases used by the original PHOENIX Inventory code
local Services = InventoryServices
local PlayerData = InventoryPlayerData
local Remotes = InventoryRemotes

Inventory:AddLabel("🍫 Boost Eater:")

local EggEaterData = {Running = false}

task.spawn(function()
	while true do
		if EggEaterData.Running then
			local tool = PlayerData.Player.Character:FindFirstChild("Protein Egg") or PlayerData.Player.Backpack:FindFirstChild("Protein Egg")
			if tool then PlayerData.Player.muscleEvent:FireServer("proteinEgg", tool) end
			task.wait(0.25)
		else
			task.wait(1)
		end
	end
end)

Inventory:AddSwitch("Eat All Eggs", function(state) EggEaterData.Running = state end)

local BoostData = {
	ItemList = {"Tropical Shake", "Energy Shake", "Protein Bar", "TOUGH Bar", "Protein Shake", "ULTRA Shake", "Energy Bar"},
	Running = false
}

task.spawn(function()
	while true do
		if BoostData.Running then
			for _, itemName in ipairs(BoostData.ItemList) do
				local tool = PlayerData.Player.Character:FindFirstChild(itemName) or PlayerData.Player.Backpack:FindFirstChild(itemName)
				if tool then
					local parts = {}
					for word in itemName:gmatch("%S+") do table.insert(parts, word:lower()) end
					for i = 2, #parts do parts[i] = parts[i]:sub(1, 1):upper() .. parts[i]:sub(2) end
					for i = 1, 10 do PlayerData.Player.muscleEvent:FireServer(table.concat(parts), tool) end
				end
			end
		end
		task.wait(0.1)
	end
end)

Inventory:AddSwitch("Eat all Boosts (expect lag)", function(state) BoostData.Running = state end)

Inventory:AddLabel("🛒 Pet Shop:")

local PetShopData = {
    SelectedPet = nil,
    PetList = {}
}

local function getPetShopFolder()
    return Services.ReplicatedStorage:FindFirstChild("shared") 
        and Services.ReplicatedStorage.shared.runtime 
        and Services.ReplicatedStorage.shared.runtime:FindFirstChild("cPetShopFolder")
        or Services.ReplicatedStorage:FindFirstChild("cPetShopFolder")
end

local function refreshPetList()
    table.clear(PetShopData.PetList)
    local folder = getPetShopFolder()
    if not folder then return end
    for _, obj in ipairs(folder:GetChildren()) do
        table.insert(PetShopData.PetList, obj.Name)
    end
    table.sort(PetShopData.PetList)
end

refreshPetList()

local petDropdown = Inventory:AddDropdown("Choose Pet", function(text)
    PetShopData.SelectedPet = text
end)

for _, petName in ipairs(PetShopData.PetList) do
    petDropdown:Add(petName)
end

local function getSelectedPetObject()
    local folder = getPetShopFolder()
    local selected = PetShopData.SelectedPet
    if not folder or not selected then return nil end
    return folder:FindFirstChild(selected)
end

local function buySelectedPet()
    local remote = Services.ReplicatedStorage.rEvents:FindFirstChild("cPetShopRemote")
    local petObject = getSelectedPetObject()

    if not remote then
        warn("DEVIL HUB V1.01: cPetShopRemote not found.")
        return false
    end
    if not petObject then
        warn("DEVIL HUB V1.01: Selected pet was not found in cPetShopFolder.")
        return false
    end

    local ok, result = pcall(function()
        if remote:IsA("RemoteFunction") then
            return remote:InvokeServer(petObject)
        elseif remote:IsA("RemoteEvent") then
            remote:FireServer(petObject)
            return true
        end
        return false
    end)

    if not ok then
        warn("DEVIL HUB V1.01: Pet purchase request failed: " .. tostring(result))
        return false
    end

    return result ~= false
end

Inventory:AddButton("🛒 Buy Selected Pet", function()
    buySelectedPet()
end)

Inventory:AddSwitch("⚡ Auto Buy Selected Pet", function(bool)
    _G.AutoBuySelectedPet = bool
    if bool then
        task.spawn(function()
            while _G.AutoBuySelectedPet do
                pcall(function()
                    buySelectedPet()
                end)
                task.wait(0.1)
            end
        end)
    end
end)

Inventory:AddLabel("Auras:").TextSize = 22

local AuraData = {
	SelectedAura = nil,
	AuraList = {"Entropic Blast", "Muscle King", "Dark Storm", "Astral Electro", "Azure Tundra", "Blue Aura", "Dark Electro",
		"Dark Lightning", "Electro", "Enchanted Mirage", "Eternal Megastrike", "Grand Supernova", "Green Aura", "Inferno",
		"Lightning", "Power Lightning", "Purple Aura", "Purple Nova", "Red Aura", "Supernova", "Ultra Inferno", "Ultra Mirage",
		"Unstable Mirage", "Yellow Aura"}
}

local auraDropdown = Inventory:AddDropdown("Select Aura", function(text) AuraData.SelectedAura = text end)
for _, auraName in ipairs(AuraData.AuraList) do auraDropdown:Add(auraName) end

Inventory:AddSwitch("Buy Aura", function(bool)
	_G.AutoHatchAura = bool
	if bool then
		spawn(function()
			while _G.AutoHatchAura and AuraData.SelectedAura ~= "" do
				if Services.ReplicatedStorage.cPetShopFolder:FindFirstChild(AuraData.SelectedAura) then
					Services.ReplicatedStorage.cPetShopRemote:InvokeServer(Services.ReplicatedStorage.cPetShopFolder[AuraData.SelectedAura])
				end
				task.wait(0.1)
			end
		end)
	end
end)

Inventory:AddLabel("You need Gems and Inventory Space!").TextSize = 14

Inventory:AddLabel("🔃 Auto Evolving:")

local petDropdown3 = Inventory:AddDropdown("Choose Pet", function(text) PetShopData.SelectedPet = text end)
for _, petName in ipairs(PetShopData.PetList) do petDropdown3:Add(petName) end

local running = false

Inventory:AddSwitch("Auto Evolve", function(state)
    running = state
    if not state then return end

    task.spawn(function()
        while running do
            if PetShopData.SelectedPet then
                game.ReplicatedStorage.rEvents.petEvolveEvent:FireServer(
                    "evolvePet",
                    PetShopData.SelectedPet
                )
            end
            task.wait(0.5)
        end
    end)
end)



Inventory:AddLabel("🔁 Auto Trading:")

local TradeData = {SelectedPlayer = nil}

local playerDropdown4 = Inventory:AddDropdown("Choose Player", function(name)
    local username = name:match(" | (.+)") or name
    TradeData.SelectedPlayer = Services.Players:FindFirstChild(username)
end)

for _, player in ipairs(Services.Players:GetPlayers()) do
    if player ~= Services.Players.LocalPlayer then
        playerDropdown4:Add(player.DisplayName .. " | " .. player.Name)
    end
end

Services.Players.PlayerAdded:Connect(function(player)
    if player ~= Services.Players.LocalPlayer then
        playerDropdown4:Add(player.DisplayName .. " | " .. player.Name)
    end
end)

Services.Players.PlayerRemoving:Connect(function(player)
    playerDropdown4:Remove(player.DisplayName .. " | " .. player.Name)
    if TradeData.SelectedPlayer == player then TradeData.SelectedPlayer = nil end
end)

local petDropdown2 = Inventory:AddDropdown("Choose Pet", function(text) PetShopData.SelectedPet = text end)
for _, petName in ipairs(PetShopData.PetList) do petDropdown2:Add(petName) end



local running = false

Inventory:AddSwitch("Auto Trade", function(state)
    running = state
    if not state then return end

    task.spawn(function()
        while running do
            if TradeData.SelectedPlayer and PetShopData.SelectedPet then
                local tradingEvent = game.ReplicatedStorage.rEvents.tradingEvent
                local unique = game.Players.LocalPlayer.petsFolder.Unique

                tradingEvent:FireServer(
                    "sendTradeRequest",
                    TradeData.SelectedPlayer
                )

                task.wait(0.5)

                local offered = 0
                for _, pet in ipairs(unique:GetChildren()) do
                    if not running then break end

                    if pet.Name == PetShopData.SelectedPet then
                        tradingEvent:FireServer("offerItem", pet)
                        offered += 1
                        task.wait(0.01)

                        if offered >= 6 then
                            break
                        end
                    end
                end

                task.wait(0.05)


                if running then
                    tradingEvent:FireServer("acceptTrade")
                end
            end

            task.wait(2)
        end
    end)
end)





Inventory:AddLabel("🥚 Egg Gifter:")

local EggGifterData = {ProteinEggLabel = Inventory:AddLabel("Protein Eggs: 0"), SelectedPlayer = nil, EggCount = 0}
EggGifterData.ProteinEggLabel.TextSize = 14

local playerDropdown = Inventory:AddDropdown("Choose Player", function(name)
    local username = name:match(" | (.+)") or name
    EggGifterData.SelectedPlayer = Services.Players:FindFirstChild(username)
end)

for _, player in ipairs(Services.Players:GetPlayers()) do
    if player ~= Services.Players.LocalPlayer then
        playerDropdown:Add(player.DisplayName .. " | " .. player.Name)
    end
end

Services.Players.PlayerAdded:Connect(function(player)
    if player ~= Services.Players.LocalPlayer then
        playerDropdown:Add(player.DisplayName .. " | " .. player.Name)
    end
end)

Services.Players.PlayerRemoving:Connect(function(player)
    playerDropdown:Remove(player.DisplayName .. " | " .. player.Name)
    if EggGifterData.SelectedPlayer == player then EggGifterData.SelectedPlayer = nil end
end)

Inventory:AddTextBox("Amount:", function(Text) EggGifterData.EggCount = tonumber(Text) end)

Inventory:AddButton("Start Gifting", function()
    if EggGifterData.SelectedPlayer and EggGifterData.EggCount and EggGifterData.EggCount > 0 then
        local egg = Services.Players.LocalPlayer.consumablesFolder:FindFirstChild("Protein Egg")
        if egg then
            for i = 1, EggGifterData.EggCount do
                pcall(function()
                    Services.ReplicatedStorage.rEvents.giftRemote:InvokeServer("giftRequest", EggGifterData.SelectedPlayer, egg)
                end)
                task.wait(0.1)
            end
        end
    end
end)

Inventory:AddLabel("🍹 Shake Gifter:")

local ShakeGifterData = {TropicalShakeLabel = Inventory:AddLabel("Tropical Shakes: 0"), SelectedPlayer = nil, ShakeCount = 0}
ShakeGifterData.TropicalShakeLabel.TextSize = 14

local playerDropdown3 = Inventory:AddDropdown("Choose Player", function(name)
	local usernameone = name:match(" | (.+)") or name
	ShakeGifterData.SelectedPlayer = Services.Players:FindFirstChild(usernameone)
end)

for _, player in ipairs(Services.Players:GetPlayers()) do
	if player ~= Services.Players.LocalPlayer then
		playerDropdown3:Add(player.DisplayName .. " | " .. player.Name)
	end
end

Services.Players.PlayerAdded:Connect(function(player)
	if player ~= Services.Players.LocalPlayer then
		playerDropdown3:Add(player.DisplayName .. " | " .. player.Name)
	end
end)

Services.Players.PlayerRemoving:Connect(function(player)
	playerDropdown3:Remove(player.DisplayName .. " | " .. player.Name)
	if ShakeGifterData.SelectedPlayer == player then ShakeGifterData.SelectedPlayer = nil end
end)

Inventory:AddTextBox("Amount:", function(Text) ShakeGifterData.ShakeCount = tonumber(Text) end)

Inventory:AddButton("Start Gifting", function()
	if ShakeGifterData.SelectedPlayer and ShakeGifterData.ShakeCount and ShakeGifterData.ShakeCount > 0 then
		for i = 1, ShakeGifterData.ShakeCount do
			Services.ReplicatedStorage.rEvents.giftRemote:InvokeServer("giftRequest", ShakeGifterData.SelectedPlayer, 
				Services.Players.LocalPlayer.consumablesFolder:FindFirstChild("Tropical Shake"))
		end
	end
end)

task.spawn(function()
	while true do
		local proteinEggCount = 0
		local tropicalShakeCount = 0
		if PlayerData.Backpack then
			for _, item in ipairs(PlayerData.Backpack:GetChildren()) do
				if item.Name == "Protein Egg" then proteinEggCount = proteinEggCount + 1
				elseif item.Name == "Tropical Shake" then tropicalShakeCount = tropicalShakeCount + 1 end
			end
		end
		EggGifterData.ProteinEggLabel.Text = "Protein Eggs: " .. proteinEggCount
		ShakeGifterData.TropicalShakeLabel.Text = "Tropical Shakes: " .. tropicalShakeCount
		task.wait(7.5)
	end
end)

Inventory:AddLabel("Interferes with Boosts you got gifted. Get on a machine for less Lag!").TextSize = 14


end

local __inventory_ok, __inventory_err = pcall(__DEVIL_SETUP_INVENTORY)
if not __inventory_ok then
    warn('[DEVIL HUB] Inventory failed to initialize: '..tostring(__inventory_err))
end
local farmTab = window:AddTab("Rock")
farmTab:AddLabel("Rock Farming")
 
local function gettool()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == "Punch" and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
end
 
local tinyIslandRockSwitch = farmTab:AddSwitch("Tiny Island Rock", function(bool)
    selectrock = "Tiny Island Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 0 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 0 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local starterIslandRockSwitch = farmTab:AddSwitch("Starter Island Rock", function(bool)
    selectrock = "Starter Island Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 100 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 100 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local legendBeachRockSwitch = farmTab:AddSwitch("Legend Beach Rock", function(bool)
    selectrock = "Legend Beach Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 5000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 5000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local frostGymRockSwitch = farmTab:AddSwitch("Frost Gym Rock", function(bool)
    selectrock = "Frost Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 150000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 150000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local mythicalGymRockSwitch = farmTab:AddSwitch("Mythical Gym Rock", function(bool)
    selectrock = "Mythical Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 400000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 400000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local eternalGymRockSwitch = farmTab:AddSwitch("Eternal Gym Rock", function(bool)
    selectrock = "Eternal Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 750000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 750000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local legendGymRockSwitch = farmTab:AddSwitch("Legend Gym Rock", function(bool)
    selectrock = "Legend Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 1000000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 1000000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local muscleKingGymRockSwitch = farmTab:AddSwitch("Muscle King Gym Rock", function(bool)
    selectrock = "Muscle King Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 5000000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 5000000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local ancientJungleRockSwitch = farmTab:AddSwitch("Ancient Jungle Rock", function(bool)
    selectrock = "Ancient Jungle Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 10000000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 10000000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)



------------------------------------------------------------------
-- DEVIL HUB V1.01 — EXTRA FEATURES / MAIN PARITY
------------------------------------------------------------------
do
    local Extra = window:AddTab("Extras")
    local LP = game:GetService("Players").LocalPlayer
    local RS = game:GetService("ReplicatedStorage")
    local UIS = game:GetService("UserInputService")
    local Lighting = game:GetService("Lighting")
    local RunService = game:GetService("RunService")

    Extra:AddLabel("Movement / Visuals")

    Extra:AddTextBox("WalkSpeed", function(v)
        local n = tonumber(v)
        if n and LP.Character then
            local h = LP.Character:FindFirstChildOfClass("Humanoid")
            if h then h.WalkSpeed = math.clamp(n, 0, 250) end
        end
    end, {clear=false})

    Extra:AddTextBox("FOV", function(v)
        local n = tonumber(v)
        if n and workspace.CurrentCamera then
            workspace.CurrentCamera.FieldOfView = math.clamp(n, 1, 120)
        end
    end, {clear=false})

    local infiniteJump = false
    Extra:AddSwitch("Infinite Jump", function(v) infiniteJump = v end)
    UIS.JumpRequest:Connect(function()
        if infiniteJump and LP.Character then
            local h = LP.Character:FindFirstChildOfClass("Humanoid")
            if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end
        end
    end)

    local hidePets = false
    local function updatePets()
        local c = LP.Character
        if not c then return end
        for _,d in ipairs(c:GetDescendants()) do
            if d:IsA("BasePart") and d.Name:lower():find("pet") then
                d.LocalTransparencyModifier = hidePets and 1 or 0
            end
        end
    end
    Extra:AddSwitch("Hide Pets", function(v) hidePets=v; updatePets() end)
    RunService.RenderStepped:Connect(function() if hidePets then updatePets() end end)

    local hidePopups = false
    Extra:AddSwitch("Hide Popups", function(v) hidePopups=v end)
    RunService.RenderStepped:Connect(function()
        if not hidePopups then return end
        local pg = LP:FindFirstChildOfClass("PlayerGui")
        if not pg then return end
        for _,d in ipairs(pg:GetDescendants()) do
            if (d:IsA("Frame") or d:IsA("TextLabel") or d:IsA("ImageLabel")) and d.Name:lower():find("popup") then
                d.Visible = false
            end
        end
    end)

    local walkWater = false
    Extra:AddSwitch("Walk on Water", function(v) walkWater=v end)
    RunService.Heartbeat:Connect(function()
        if not walkWater then return end
        for _,d in ipairs(workspace:GetDescendants()) do
            if d:IsA("BasePart") and d.Name:lower():find("water") then
                d.CanCollide = true
            end
        end
    end)

    Extra:AddDropdown("Change Time", function(v)
        Lighting.ClockTime = (v == "Night") and 0 or 9
    end):Add("Day")
    -- The library dropdown returns its object, so add Night separately.
    local timeDrop = Extra:AddDropdown("Time", function(v) Lighting.ClockTime = (v=="Night") and 0 or 9 end)
    timeDrop:Add("Day")
    timeDrop:Add("Night")

    Extra:AddLabel("Farming")

    local exerciseRunning = false
    local selectedExercise = "Pushups"
    local exDrop = Extra:AddDropdown("Select Exercise", function(v) selectedExercise=v end)
    for _,v in ipairs({"Weight","Pushups","Situps","Handstands"}) do exDrop:Add(v) end
    Extra:AddSwitch("Auto Exercise", function(v)
        exerciseRunning=v
        if v then
            task.spawn(function()
                while exerciseRunning do
                    local char=LP.Character
                    local tool=(LP.Backpack and LP.Backpack:FindFirstChild(selectedExercise)) or (char and char:FindFirstChild(selectedExercise))
                    if tool and char and char:FindFirstChildOfClass("Humanoid") then
                        char:FindFirstChildOfClass("Humanoid"):EquipTool(tool)
                    end
                    local me=LP:FindFirstChild("muscleEvent")
                    if me then pcall(function() me:FireServer("rep") end) end
                    task.wait(0.08)
                end
            end)
        end
    end)

    Extra:AddButton("Clear Whitelist", function()
        if type(playerWhitelist)=="table" then table.clear(playerWhitelist) end
    end)
    Extra:AddButton("Clear Killlist", function()
        if type(targetPlayerNames)=="table" then table.clear(targetPlayerNames) end
    end)

    Extra:AddLabel("Fortune Wheel")
    local wheelRunning=false
    local wheelRemote
    pcall(function() wheelRemote=RS.rEvents:FindFirstChild("openFortuneWheelRemote") end)
    Extra:AddSwitch("Spin Fortune Wheel", function(v)
        wheelRunning=v
        if v and wheelRemote then
            task.spawn(function()
                local chances
                pcall(function() chances=RS.shared.catalogs["fortuneWheelChances"]["Fortune Wheel"] end)
                while wheelRunning do
                    pcall(function() wheelRemote:InvokeServer("openFortuneWheel", chances) end)
                    task.wait(1)
                end
            end)
        end
    end)

    Extra:AddLabel("Kill Aura Ring")
    local ringOn=false
    local ringPart
    local ringRange=20
    Extra:AddTextBox("Ring Range", function(v)
        local n=tonumber(v)
        if n then ringRange=math.clamp(n,1,140); if ringPart then ringPart.Size=Vector3.new(.2,ringRange*2,ringRange*2) end end
    end,{clear=false})
    Extra:AddSwitch("Show Ring", function(v)
        ringOn=v
        if ringOn then
            if ringPart then ringPart:Destroy() end
            ringPart=Instance.new("Part")
            ringPart.Name="DEVIL_KillAuraRing"
            ringPart.Shape=Enum.PartType.Cylinder
            ringPart.Anchored=true
            ringPart.CanCollide=false
            ringPart.CanTouch=false
            ringPart.CanQuery=false
            ringPart.Transparency=.6
            ringPart.Material=Enum.Material.Neon
            ringPart.Size=Vector3.new(.2,ringRange*2,ringRange*2)
            ringPart.Parent=workspace
        elseif ringPart then ringPart:Destroy(); ringPart=nil end
    end)
    RunService.RenderStepped:Connect(function()
        if ringOn and ringPart and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
            ringPart.CFrame=LP.Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0,math.rad(90))
        end
    end)
end

local Credits = window:AddTab("الحقوق")
