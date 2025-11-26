--This is the main script of the game

print("Initiating Protocol Bootup")
task.wait(5)
warn("Welcome Director")

local Part = game.Workspace.Model:FindFirstChild("NewTest")
local PartPosition = Vector3.new(1,2,3)

local Part1 = game.Workspace:FindFirstChild("Part1")
local Part2 = game.Workspace:FindFirstChild("Part2")
local Part4 = game.Workspace:FindFirstChild("Part4")
local Part4MinSize = Vector3.new(1,1,1)
local TopG = game.Workspace:FindFirstChild("TopG")
local MiddleG = game.Workspace:FindFirstChild("MiddleG")
local LittleG = game.Workspace:FindFirstChild("LittleG")

task.wait(3)

TopG.BrickColor = BrickColor.new("Really red")
MiddleG.BrickColor = BrickColor.new("Grey")
LittleG.BrickColor = BrickColor.new("Really blue")

Part.Position = PartPosition

Part.Anchored = true


Part.Transparency = 0.5

task.wait(3)

Part.Transparency = 0

Part.Color = Color3.new(0,0.5,1)

Part.Material = Enum.Material.Foil

Part2.BrickColor = BrickColor.new("Really red")

Part1.Material = Enum.Material.Neon

if Part1.Transparency == 1 then
	print("Part 1 is transparent")
elseif Part1.Material == Enum.Material.Neon then
	print("Part 1 is neon")
else
	print("Part 1 is neither transparent nor neon")
end

for i = 1, 10, 1  do
	print(i)
	task.wait(1)
	Part1.Color = Color3.new(0,1,2)
	task.wait(0.5)
	Part1.Color = Color3.new(1,3,2)
	task.wait(0.5)
	Part1.Size = Vector3.new(i,i,i)
	Part4.Size = Part4.Size - Vector3.new(1,1,1)
end

if Part1.Size == Vector3.new(10,10,10) then
	Part1.Size = Vector3.new(4,1,2)

end
local size = Part4.Size

if size.X < Part4MinSize.X and size.Y < Part4MinSize.Y and size.Z < Part4MinSize.Z then
	Part4.Size = Vector3.new(4,1,2)

end 

while true do

	if Part4.Size == Vector3.new(4,1,2) then
		for i = 1,10,1 do
		Part4.Size = Part4.Size + Vector3.new(0.5,0.5,0.5)
			task.wait(1)
		end
	end


	if Part4.Size == Vector3.new(9,6,7) then
		for i = 10,1,-1 do
		Part4.Size = Part4.Size - Vector3.new(0.5,0.5,0.5)
			wait(1)
		end
	end
end

--Player Referencing
game.Players.PlayerAdded:Connect(function(Player)
	
	task.wait(2)
	print("Player Has Joined")
	
	Player.CharacterAdded:Wait()
	
	local Character = Player.Character
	
	
end)

--Testing with Values these are what make leaderboard scores
game.Players.PlayerAdded:Connect(function(Player)
	
	local Leaderstats = Instance.new("Folder", Player)
	Leaderstats.Name = "leaderstats"
	
	
	local GoofBalls = Instance.new("IntValue", Leaderstats)
	GoofBalls.Name = "GoofBalls"
	GoofBalls.Value = 1
	
end)

--Script 2, I think this was because In locked my first script with an infinite function on accident
local DecalPart = game.Workspace["Decal Part"]
local Decal = DecalPart.Decal
local Teleporter = game.Workspace["Teleporter"]


if Decal.Face == Enum.NormalId.Back then
	for i = 1,100,1 do
		
		Decal.Transparency = Decal.Transparency + 0.01
		task.wait(0.1)
		
		if Decal.Face ~= Enum.NormalId.Back then
			break
		end

	end
end

Teleporter.Anchored = true
repeat
	Teleporter.Position = Vector3.new(-526, -1.5, -740)
	task.wait(1)
	Teleporter.Position = Vector3.new(-551, -1.5, -738)
	task.wait(1)
until Teleporter.

--Some return scripting I did Here
local ReturnToSender = game.Workspace:FindFirstChild("ReturnToSender")

local FolderFinder = game.Workspace.Cacti

local function HasParts()
	
	if FolderFinder:FindFirstChildWhichIsA("Model") then
		return true
	else
		return false
	end

end

local function IsTransparent()
	
	if ReturnToSender.Transparency == 1 then
		return true
	else
		return false
	end
	
end

if not IsTransparent() then
	print("Part is visible")
	ReturnToSender.Material = Enum.Material.Grass
	ReturnToSender.Shape = Enum.PartType.Ball
end
