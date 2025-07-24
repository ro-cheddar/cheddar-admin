local TweenService = game:GetService("TweenService") 

local button = script.Parent
local AFrame = button.Parent:FindFirstChild("AdminFrame")

AFrame.Visible = false

local Tween = TweenService:Create(button.UIGradient, TweenInfo.new(2, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false), {Rotation = button.UIGradient.Rotation + 360})
local rot2 = button.cheese.UIGradient.Rotation

button.MouseEnter:Connect(function()
	Tween:Play()
end)

button.MouseLeave:Connect(function()
	Tween:Pause()
end)

button.MouseButton1Click:Connect(function()
	local a 
	if AFrame.Visible then
		a = 1
	else
		a = -1
	end
	AFrame.Visible = not AFrame.Visible
	
	local Tween2 = TweenService:Create(button.cheese.UIGradient, TweenInfo.new(.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false), {Rotation = rot2 + (360 * a)})
	Tween2:Play()
end)
