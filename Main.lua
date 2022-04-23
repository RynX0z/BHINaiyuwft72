local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
	Title = "giolmfao#0001 *Undetected*",
	Style = 3,
	SizeX = 500,
	SizeY = 350,
	Theme = "Dark",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})

local Y = X.New({
	Title = "Main"
})

local Z = X.New({
	Title = "Combat"
})

local O = X.New({
	Title = "Visuals"
})

local A = Y.Button({
	Text = "Infinite Ammo",
	Callback = function()
		game:GetService('RunService').Stepped:connect(function() -- Infinite Ammo by Frontman#9917
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999 -- dont do it higher then 999
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
		end)
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local C = Y.Button({
	Text = "Third Person ON",
	Callback = function()
		game:GetService("Players")["LocalPlayer"].PlayerGui.GUI.Client.Variables.thirdperson.Value = true
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local D = Y.Button({
	Text = "Third Person OFF",
	Callback = function()
		game:GetService("Players")["LocalPlayer"].PlayerGui.GUI.Client.Variables.thirdperson.Value = false
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local E = O.Button({
	Text = "Tracer ESP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RynX0z/BHINaiyuwft72/main/tesp.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local E = O.Button({
	Text = "Box ESP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Boxes-Script/main/Boxes%20Script.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local B = Z.Button({
	Text = "No-Recoil",
	Callback = function()
		Client.Modules.ClientEnvoirment.recoil = 0
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local B = Y.Button({
	Text = "Infinite Jump",
	Callback = function()
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local B = Z.Button({
	Text = "GodMode",
	Callback = function()
		game.Players.LocalPlayer.Character.Spawned:Destroy()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local M = Y.Slider({
	Text = "Gravity",
	Callback = function(Value)
		game:GetService("ReplicatedStorage").CurrentGrav.Value = Value
	end,
	Min = 1,
	Max = 100,
	Def = 50
})

local U = O.Slider({
	Text = "FOV Changer",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Settings.FOV.Value = Value
	end,
	Min = 1,
	Max = 140,
	Def = 60
})

local L = Y.Button({
	Text = "No Clip",
	Callback = function()
		local noclip = false
		local Noclipping = nil
		local Clip = false
		local speaker = game.Players.LocalPlayer
		wait(0.1)
		local function NoclipLoop()
		if Clip == false and speaker.Character ~= nil then
    		for _, child in pairs(speaker.Character:GetDescendants()) do
        		if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
            		child.CanCollide = false
        		end
    		end
		end
		end
		Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local Q = Z.Button({
	Text = "AimLock",
	Callback = function()
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/RynX0z/BHINaiyuwft72/main/AimLock.lua"))()
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Not Sure"
			})
		end
	}
})

local Box = Funcs:DrawSquare()
local Tracer = Funcs:DrawLine()
local Name = Funcs:DrawText()
local Distance = Funcs:DrawText()
local SnapLines = Funcs:DrawLine()
local HeadLowerTorso = Funcs:DrawLine()
local NeckLeftUpper = Funcs:DrawLine()
local LeftUpperLeftLower = Funcs:DrawLine()
local NeckRightUpper = Funcs:DrawLine()
local RightUpperLeftLower = Funcs:DrawLine()
local LowerTorsoLeftUpper = Funcs:DrawLine()
local LeftLowerLeftUpper = Funcs:DrawLine()
local LowerTorsoRightUpper = Funcs:DrawLine()
local RightLowerRightUpper = Funcs:DrawLine()

local RootPosition, OnScreen =
    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
local HeadPosition =
    Services.Camera:WorldToViewportPoint(player.Character.Head.Position + Vector3.new(0, 0.5, 0))
local LegPosition =
    Services.Camera:WorldToViewportPoint(
    player.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
)

local Funcs = {}
function Funcs:IsAlive(player)
    if player and player.Character and player.Character:FindFirstChild("Head") and
            workspace:FindFirstChild(player.Character.Name)
     then
        return true
    end
end

function Funcs:Round(number)
    return math.floor(tonumber(number) + 0.5)
end

function Funcs:DrawSquare()
    local Box = Drawing.new("Square")
    Box.Color = Color3.fromRGB(190, 190, 0)
    Box.Thickness = 1.4
    Box.Filled = false
    Box.Transparency = 1
    return Box
end

function Funcs:DrawLine()
    local line = Drawing.new("Line")
    line.Color = Color3.new(190, 190, 0)
    line.Thickness = 1.5
    return line
end

function Funcs:DrawText()
    local text = Drawing.new("Text")
    text.Color = Color3.fromRGB(190, 190, 0)
    text.Size = 19
    text.Outline = true
    text.Center = true
    return text
end

local Services =
    setmetatable(
    {
        LocalPlayer = game:GetService("Players").LocalPlayer,
        Camera = workspace.CurrentCamera
    },
    {
        __index = function(self, idx)
            return rawget(self, idx) or game:GetService(idx)
        end
    }
)

function Funcs:AddEsp(player)
    local Box = Funcs:DrawSquare()
    local Tracer = Funcs:DrawLine()
    local Name = Funcs:DrawText()
    local Distance = Funcs:DrawText()
    local SnapLines = Funcs:DrawLine()
    local HeadLowerTorso = Funcs:DrawLine()
    local NeckLeftUpper = Funcs:DrawLine()
    local LeftUpperLeftLower = Funcs:DrawLine()
    local NeckRightUpper = Funcs:DrawLine()
    local RightUpperLeftLower = Funcs:DrawLine()
    local LowerTorsoLeftUpper = Funcs:DrawLine()
    local LeftLowerLeftUpper = Funcs:DrawLine()
    local LowerTorsoRightUpper = Funcs:DrawLine()
    local RightLowerRightUpper = Funcs:DrawLine()
    Services.RunService.Stepped:Connect(
        function()
            if Funcs:IsAlive(player) and player.Character:FindFirstChild("HumanoidRootPart") then
                local RootPosition, OnScreen =
                    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
                local HeadPosition =
                    Services.Camera:WorldToViewportPoint(player.Character.Head.Position + Vector3.new(0, 0.5, 0))
                local LegPosition =
                    Services.Camera:WorldToViewportPoint(
                    player.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
                )
                if Config.Visuals.BoxEsp then
                    Box.Visible = OnScreen
                    Box.Size = Vector2.new((2350 / RootPosition.Z) + 2.5, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new((RootPosition.X - Box.Size.X / 2) - 1, RootPosition.Y - Box.Size.Y / 2)
                else
                    Box.Visible = false
                end
                if Config.Visuals.TracerEsp then
                    Tracer.Visible = OnScreen
                    if Config.Visuals.TracersOrigin == "Top" then
                        Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 0)
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2
                        )
                    elseif Config.Visuals.TracersOrigin == "Middle" then
                        Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, Services.Camera.ViewportSize.Y / 2)
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            (RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
                                ((HeadPosition.Y - LegPosition.Y) / 2)
                        )
                    elseif Config.Visuals.TracersOrigin == "Bottom" then
                        Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 1000)
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            RootPosition.Y - (HeadPosition.Y - LegPosition.Y) / 2
                        )
                    elseif Config.Visuals.TracersOrigin == "Mouse" then
                        Tracer.To = game:GetService("UserInputService"):GetMouseLocation()
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            (RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
                                ((HeadPosition.Y - LegPosition.Y) / 2)
                        )
                    end
                else
                    Tracer.Visible = false
                end
                if Config.Visuals.NameEsp then
                    Name.Visible = OnScreen
                    Name.Position =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 40
                    )
                    Name.Text = "[ " .. player.Name .. " ]"
                else
                    Name.Visible = false
                end
                if Config.Visuals.DistanceEsp and player.Character:FindFirstChild("Head") then
                    Distance.Visible = OnScreen
                    Distance.Position =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 25
                    )
                    Distance.Text =
                        "[ " ..
                        Funcs:Round(
                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                player.Character.Head.Position).Magnitude
                        ) ..
                            " Studs ]"
                else
                    Distance.Visible = false
                end
                if Config.Visuals.SkeletonEsp then
                    HeadLowerTorso.Visible = OnScreen
                    HeadLowerTorso.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y
                    )
                    HeadLowerTorso.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                    )
                    NeckLeftUpper.Visible = OnScreen
                    NeckLeftUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
                            ((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
                                3)
                    )
                    NeckLeftUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
                    )
                    LeftUpperLeftLower.Visible = OnScreen
                    LeftUpperLeftLower.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).Y
                    )
                    LeftUpperLeftLower.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
                    )
                    NeckRightUpper.Visible = OnScreen
                    NeckRightUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
                            ((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
                                3)
                    )
                    NeckRightUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
                    )
                    RightUpperLeftLower.Visible = OnScreen
                    RightUpperLeftLower.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).Y
                    )
                    RightUpperLeftLower.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
                    )
                    LowerTorsoLeftUpper.Visible = OnScreen
                    LowerTorsoLeftUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                    )
                    LowerTorsoLeftUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
                    )
                    LeftLowerLeftUpper.Visible = OnScreen
                    LeftLowerLeftUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).Y
                    )
                    LeftLowerLeftUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
                    )
                    LowerTorsoRightUpper.Visible = OnScreen
                    LowerTorsoRightUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).Y
                    )
                    LowerTorsoRightUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
                    )
                    RightLowerRightUpper.Visible = OnScreen
                    RightLowerRightUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                    )
                    RightLowerRightUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
                    )
                else
                    HeadLowerTorso.Visible = false
                    NeckLeftUpper.Visible = false
                    LeftUpperLeftLower.Visible = false
                    NeckRightUpper.Visible = false
                    RightUpperLeftLower.Visible = false
                    LowerTorsoLeftUpper.Visible = false
                    LeftLowerLeftUpper.Visible = false
                    LowerTorsoRightUpper.Visible = false
                    RightLowerRightUpper.Visible = false
                end
                if game.Players.LocalPlayer.TeamColor ~= player.TeamColor then
                    Box.Color = Config.Visuals.EnemyColor
                    Tracer.Color = Config.Visuals.EnemyColor
                    Name.Color = Config.Visuals.EnemyColor
                    Distance.Color = Config.Visuals.EnemyColor
                    HeadLowerTorso.Color = Config.Visuals.EnemyColor
                    NeckLeftUpper.Color = Config.Visuals.EnemyColor
                    LeftUpperLeftLower.Color = Config.Visuals.EnemyColor
                    NeckRightUpper.Color = Config.Visuals.EnemyColor
                    RightUpperLeftLower.Color = Config.Visuals.EnemyColor
                    LowerTorsoLeftUpper.Color = Config.Visuals.EnemyColor
                    LeftLowerLeftUpper.Color = Config.Visuals.EnemyColor
                    LowerTorsoRightUpper.Color = Config.Visuals.EnemyColor
                    RightLowerRightUpper.Color = Config.Visuals.EnemyColor
                else
                    Box.Color = Config.Visuals.TeamColor
                    Tracer.Color = Config.Visuals.TeamColor
                    Name.Color = Config.Visuals.TeamColor
                    Distance.Color = Config.Visuals.TeamColor
                    HeadLowerTorso.Color = Config.Visuals.TeamColor
                    NeckLeftUpper.Color = Config.Visuals.TeamColor
                    LeftUpperLeftLower.Color = Config.Visuals.TeamColor
                    NeckRightUpper.Color = Config.Visuals.TeamColor
                    RightUpperLeftLower.Color = Config.Visuals.TeamColor
                    LowerTorsoLeftUpper.Color = Config.Visuals.TeamColor
                    LeftLowerLeftUpper.Color = Config.Visuals.TeamColor
                    LowerTorsoRightUpper.Color = Config.Visuals.TeamColor
                    RightLowerRightUpper.Color = Config.Visuals.TeamColor
                end
            else
                Box.Visible = false
                Tracer.Visible = false
                Name.Visible = false
                Distance.Visible = false
                HeadLowerTorso.Visible = false
                NeckLeftUpper.Visible = false
                LeftUpperLeftLower.Visible = false
                NeckRightUpper.Visible = false
                RightUpperLeftLower.Visible = false
                LowerTorsoLeftUpper.Visible = false
                LeftLowerLeftUpper.Visible = false
                LowerTorsoRightUpper.Visible = false
                RightLowerRightUpper.Visible = false
            end
        end
    )
end


local G = Y.Toggle({
	Text = "Infinnite Jump",
	Callback = function(bool)
	    
	end,
	Enabled = false
})

