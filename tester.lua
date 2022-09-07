-- tester.lua
-- version 1

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextButton_2 = Instance.new("TextButton")

-- Properties:

ScreenGui.Parent = owner:WaitForChild("PlayerGui")

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.new(1,1,1)
TextButton.Position = UDim2.new(0.123199999, 0, 0.105384614, 0)
TextButton.Size = UDim2.new(0, 486, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.new(0,0,0)
TextButton.TextSize = 14

Frame.Parent = TextButton
Frame.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Frame.Position = UDim2.new(-0.00260001421, 0, -0.00426229835, 0)
Frame.Size = UDim2.new(0, 488, 0, 270)
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0282262359, 0, 0.0403504111, 0)
TextLabel.Size = UDim2.new(0, 203, 0, 42)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "EPIC TROLLS GUI"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
 
ScrollingFrame.Parent = Frame
ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0.0409836061, 0, 0.192592591, 0)
ScrollingFrame.Size = UDim2.new(0, 448, 0, 205)
 
TextButton_2.Parent = ScrollingFrame
TextButton_2.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
TextButton_2.Position = UDim2.new(0.0267857146, 0, 0.025925925, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Gun"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextStrokeColor3 = Color3.new(0.278431, 0.278431, 0.278431)
TextButton_2.TextWrapped = true

-- Scripts:

local function SXWKCB_fake_script()
    local script = Instance.new("LocalScript", TextButton)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegin:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState = Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end    
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(SXWKCB_fake_script)()

Instance.new("RemoteEvent",ScrollingFrame)

ScrollingFrame.OnServerEvent:Connect(function(plr,cmd)
    if cmd == 1 then
        require(3055800684):Fireplace(plr.name)
    end

    if cmd == 2 then
        require(2972284204).load(plr.name)
    end

    if cmd == 3 then
        require(2974901732).load(plr.name)
    end
end)