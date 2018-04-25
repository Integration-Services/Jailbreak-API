repeat
	do break end
	while true do
	end
until true
local f = game:GetService("ReplicatedStorage")
local g = game:GetService("MarketplaceService")
local h = game:GetService("RunService")
local i = h:IsStudio()
local j = game:GetService("UserInputService")
local k = j.TouchEnabled
local l = game:GetService("GuiService")
local m = game:GetService("SoundService")
local n = game:GetService("Players")
local o = n.LocalPlayer
local p = o:GetMouse()
local q = workspace.CurrentCamera
local r = require(f.Module.IKR15)
local s = require(f.Module.UI)
local t = require(f.Module.Query)
local u = require(f.Module.Joint)
local v = require(f.Module.Math)
local w = require(f.Module.AlexInput)
local x = require(f.Module.AlexParticles)
local y = require(f.Module.AlexWM)
local z = require(f.Resource.Settings)
local A = game:GetService("StarterGui")
local B, C, D = CFrame.new, CFrame.Angles, Vector3.new
local E, F = B(0, 0, 0), D(0, 0, 0)
local G = workspace.FindPartOnRayWithIgnoreList
local H = E.pointToObjectSpace
local I = F.Dot
local J, K = math.sin, math.cos
local L, M, N, O = math.floor, math.abs, math.log, math.max
local P = math.random
local Q
Q = {}
do
	local Bd = false
	if not i then
		Bd = false
	end
	if Bd then
		print("PROFILE DEBUGGING ENABLED")
		Q.profilebegin = debug.profilebegin
		Q.profileend = debug.profileend
	else
		local Cd = function()
		end
		Q.profilebegin = Cd
		Q.profileend = Cd
	end
end
local R = {}
local S, T
do
	local Bd = f.Resource.Event
	Bd.Name = v.GUID()
	for Ed = 1, 10 do
		local Fd = Instance.new("RemoteEvent")
		Fd.Name = v.GUID()
		Fd.Parent = Bd.Parent
	end
	local Cd
	S = {}
	local Dd = Instance.new("RemoteEvent").FireServer
	function T(Ed, ...)
		Dd(Bd, Cd and Cd[Ed] or Ed, ...)
	end
	function S:FireServer(Ed, ...)
		return T(Ed, ...)
	end
	S.OnClientEvent = Bd.OnClientEvent
	function R.gdpoo5i3(Ed)
		Cd = Ed
	end
end
local U = require(f.Module.AlexChassis)
U.SetEvent(S)
local V = require(f.Module.AlexChassis2)
V.SetEvent(S)
local W
A.ResetPlayerGuiOnSpawn = false
repeat
	wait()
until o:FindFirstChild("PlayerGui")
local X = o:FindFirstChild("PlayerGui")
local Y = o:WaitForChild("TeamValue")
local function Z(Bd)
	local Cd = f.StarterGui
	local Dd = Cd:FindFirstChild(Bd):Clone()
	Dd.Parent = X
	return Dd
end
local ab = Z("MainGui")
local bb = Z("ProductGui")
local cb = Z("Particles")
local db = Z("DeathGui")
s.CircleAction.Frame = ab.CircleAction
A:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
local eb
do
	local Bd = {}
	function eb(Dd, Ed, Fd)
		local Gd = {
			t = 0,
			i = Dd,
			c = Ed
		}
		table.insert(Bd, Gd)
	end
	local function Cd(Dd, Ed)
		Q.profilebegin("Thread Loop")
		for Fd = 1, #Bd do
			local Gd = Bd[Fd]
			if Dd - Gd.t > Gd.i then
				Gd.t = Dd
				Gd.c(Dd, Ed)
			end
		end
		Q.profileend()
	end
	h.Stepped:connect(Cd)
end
local function fb(Bd)
	local Cd = false
	local Dd, Ed = pcall(function()
		if Bd.Group then
			Cd = true
			Cd = Cd and o:IsInGroup(Bd.Group)
			if Bd.Rank then
				Cd = Cd and o:GetRankInGroup(Bd.Group) >= Bd.Rank
			end
		end
		if Cd then
			return
		end
		if Bd.Id then
			Cd = true
			Cd = Cd and Bd.Id[tostring(o.UserId)]
		end
	end)
	if not Dd then
		print(Ed)
	end
	return Dd and Cd
end
local gb = y.MakeWindowGroup()
require(f.Module.Mission)(R, S, eb, gb)
local hb
local ib = {
	ItemStacks = {}
}
local jb = {}
local kb = {}
local lb = {}
local mb
local nb = {
	VehiclesOwned = {},
	Nitro = 50,
	NitroLastMax = 50
}
local ob
local pb = {}
local qb = 0
local rb = F
local sb, tb = false, false
local ub = "Yard"
local vb = false
local function wb(Bd)
	if W == Enum.UserInputType.Gamepad1 then
		l.SelectedObject = Bd
	end
end
local xb = {}
xb.MainWindowGroup = gb
xb.ScreenGui = ab
xb.ProductGui = bb
xb.Event = S
xb.em = R
xb.Query = t
xb.UI = s
xb.LocalWalkSpeedModifier = 1
xb.SelectIfGamepad = wb
function xb.GetVehiclePacket()
	return mb
end
local yb, zb
yb = require(f.Module.Garage)(xb)
require(f.Module.Apartment)(xb)
require(f.Module.Minimap)(xb)
require(f.Module.StarterPack)(xb)
require(f.Module.Train)(xb)
zb = require(f.Module.Heli)(xb)
spawn(function()
	if fb(z.Perm.Dev) then
		local Bd = Z("AdminHax")
		require(f.Module.AdminHax)(xb, Bd)
	end
end)
function R.go5iuek0()
	local Bd = Z("KickGui")
	require(f.Module.KickGui)(xb, Bd)
end
local Ab, Bb, Cb
local Db = function(Bd)
	local Cd, Dd, Ed = string.match(Bd, "^([^%d]*%d)(%d*)(.-)$")
	return Cd .. Dd:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. Ed
end
local function Eb(Bd)
	local Cd = Bd >= 0 and "" or "-"
	return ("%s$%s"):format(Cd, Db(M(Bd)))
end
local function Fb(Bd, Cd, ...)
	local Dd = Cd.magnitude
	Cd = Cd.unit
	local Ed = Bd
	local Fd = 0
	local Gd = {
		...
	}
	local Hd, Id, Jd = nil, F, F
	local Kd = 0
	local Ld
	repeat
		Kd = Kd + 1
		local Md = Ray.new(Ed, Cd * (Dd - Fd))
		Hd, Id, Jd = G(workspace, Md, Gd, false, true)
		Ld = Hd and Hd.CanCollide
		if not Ld then
			table.insert(Gd, Hd)
		end
		Fd = (Bd - Id).magnitude
		Ed = Id
	until Ld or Dd - Fd <= 0.001 or Kd > 4
	if not Hd then
		Id, Jd = Bd + Cd * Dd, F
	end
	return Hd, Id, Jd
end
local Gb = function(Bd, Cd, Dd)
	local Ed = {}
	for Fd, Gd in next, Cd, nil do
		local Hd, Id, Jd = Gd, Bd[Fd], nil
		if type(Gd) == "number" then
			local Kd = 1 - Dd
			Jd = Kd * Id + Dd * Hd
		else
			Jd = Id:lerp(Hd, Dd)
		end
		Ed[Fd] = Jd
	end
	return Ed
end
local function Hb(Bd)
	local Cd = pb[Bd]
	if not Cd then
		return
	end
	local Dd = n:FindFirstChild(Bd)
	if not Dd then
		pb[Bd] = nil
		return
	end
	local Ed = Dd.Character
	if not Ed then
		pb[Bd] = nil
		return
	end
	r.EnableRightArm(Cd, Ed, false)
	r.EnableLeftArm(Cd, Ed, false)
	pb[Bd] = nil
end
local function Ib(Bd, Cd)
	Cd = Cd or {LeftArm = true, RightArm = true}
	local Dd = n:FindFirstChild(Bd)
	if not Dd then
		return
	end
	local Ed = Dd.Character
	if not Ed then
		return
	end
	local Fd = pb[Bd]
	if Fd then
		if Fd.RightArm ~= Cd.RightArm then
			r.EnableRightArm(Fd, Ed, Cd.RightArm)
		end
		if Fd.LeftArm ~= Cd.LeftArm then
			r.EnableLeftArm(Fd, Ed, Cd.LeftArm)
		end
	else
		Fd = {}
		r.EnableRightArm(Fd, Ed, Cd.RightArm)
		r.EnableLeftArm(Fd, Ed, Cd.LeftArm)
	end
	pb[Bd] = Fd
	return Fd
end
local Jb, Kb
do
	local Bd = {}
	function Jb(Dd, Ed, Fd)
		if not Ed.Source then
			return
		end
		Ed.Play = true
		if not Fd then
			S:FireServer("m4qlkfi3", Dd, Ed)
		end
		R.m4qlkfi3(o.Name, Dd, Ed)
	end
	function Kb(Dd, Ed)
		local Fd = {}
		if not Ed then
			S:FireServer("m4qlkfi3", Dd, Fd)
		end
		R.m4qlkfi3(o.Name, Dd, Fd)
	end
	local Cd = 0
	function R.m4qlkfi3(Dd, Ed, Fd)
		local Gd = Fd.Source
		local Hd = Fd.Volume or 0.5
		local Id = Fd.Pitch or 1
		local Jd = Fd.MaxTime or 1
		local Kd = Fd.Looped
		local Ld = Fd.Play
		local Md = Fd.TimeStart
		local Nd = Fd.Delay
		local Od = Fd.EmitterSize or 10
		if Fd.TimeStop then
			Jd = Md + Fd.TimeStop
		end
		local Pd = Cd + 1
		Cd = Pd
		local Qd = Fd.Multi and ("%s_%s_%d"):format(Dd, Ed, Pd) or ("%s_%s"):format(Dd, Ed)
		local Rd = Bd[Qd]
		if Rd then
			Rd.Object:Stop()
			Rd.Object:Destroy()
			Bd[Qd] = nil
		end
		if not Ld then
			return
		end
		if not Gd then
			return
		end
		local Sd = z.Sounds[Ed]
		if not Sd then
			return
		end
		local Td = Instance.new("Sound")
		Td.SoundId = "rbxassetid://" .. Sd
		if Md then
			Td.TimePosition = Md
		end
		if Fd.SoundGroup then
			Td.SoundGroup = Fd.SoundGroup
		end
		Td.Name = Qd
		Td.Looped = Kd
		Td.Volume = Hd
		Td.PlaybackSpeed = Id
		Td.EmitterSize = Od
		Td.MaxDistance = 400
		Td.Parent = Gd
		if Nd then
			delay(Nd, function()
				Td:Play()
			end)
		else
			Td:Play()
		end
		Bd[Qd] = {Object = Td, Proxy = Pd}
		local function Ud()
			local Vd = Bd[Qd]
			if not Vd then
				return
			end
			if Vd.Proxy > Pd then
				return
			end
			Vd.Object:Stop()
			Vd.Object:Destroy()
			Bd[Qd] = nil
		end
		delay(Jd, Ud)
	end
end
local Lb
do
	local Bd = require(f.Module.RoundedBackingBuilder).new()
	Bd:Create(bb.Gamepass.ContainerFrame)
	local Cd = 0
	function Lb(Ed)
		local Fd = Ed.PassId
		local Gd = Cd + 1
		Cd = Gd
		g:PromptGamePassPurchase(o, Fd)
		bb.Gamepass.ContainerFrame.TextLabel.Text = Ed.Text
		delay(0.2, function()
			if Cd ~= Gd then
				return
			end
			bb.Gamepass.Visible = true
		end)
	end
	local function Dd(Ed, Fd, Gd)
		local Hd = Cd + 1
		Cd = Hd
		delay(0.1, function()
			if Cd ~= Hd then
				return
			end
			bb.Gamepass.Visible = false
		end)
	end
	g.PromptGamePassPurchaseFinished:connect(Dd)
end
xb.PromptPurchase = Lb
local function Mb(Bd)
	local Cd = x.MakeState()
	Cd.Frame = cb.Particles
	x.EasySimulate(Cd, 4)
	local Dd = Cd.Frame.AbsoluteSize
	local Ed, Fd = Dd.X, Dd.Y
	local function Gd(Hd)
		if Bd <= 4 or P() > 0.2 then
			Jb("FireworkBang", {
				Source = ab,
				Volume = 0.2 + P() * 0.3,
				Multi = true
			}, true)
		end
	end
	for Hd = 1, Bd do
		local Id = Fd * 0.3 + Fd * 0.6 * P()
		local Jd = D(0, -400, 0) + v.Uniform2D(150)
		local Kd = (Fd - Id) / Jd.magnitude
		local Ld = x.Firework(Cd, D(P() * Ed, Fd, 0), Jd, F)
		Ld.ttl = Kd
		Ld.OnDestroy = Gd
		wait(0.1 + P() * 0.1 * 0.5)
	end
end
function R.w3ddgvs4(Bd)
	assert(Bd <= 50)
	Mb(Bd)
end
xb.Fireworks = Mb
local Nb = {}
for Bd, Cd in next, workspace.Cells:GetChildren() do
	table.insert(Nb, Cd.Stash.Drawer1.Drawer)
	table.insert(Nb, Cd.Stash.Drawer2.Drawer)
	table.insert(Nb, Cd.Stash.Drawer3.Drawer)
end
local function Ob()
	if not o.Character then
		return
	end
	local Bd = q:ScreenPointToRay(rb.X, rb.Y)
	local Cd, Dd = workspace:FindPartOnRayWithWhitelist(Ray.new(Bd.Origin, Bd.Direction * 16), Nb)
	if Cd and Cd.Name == "Drawer" then
		local Ed = (o.Character.HumanoidRootPart.Position - Dd).magnitude
		return Ed < 8 and Cd.Parent
	end
	return false
end
local function Pb()
	if not o.Character then
		return
	end
	local Bd = q:ScreenPointToRay(rb.X, rb.Y)
	Bd = Ray.new(Bd.Origin, Bd.Direction * 99)
	local Cd = {}
	for Fd, Gd in next, n:GetPlayers() do
		if Gd.Character and Gd ~= o then
			table.insert(Cd, Gd.Character)
		end
	end
	local Dd, Ed = Fb(Bd.Origin, Bd.Direction, o.Character, kb[o.Name] and kb[o.Name].Model)
	if Dd then
		local Fd
		for Hd, Id in next, Cd, nil do
			if Dd:IsDescendantOf(Id) then
				Fd = Id
				break
			end
		end
		if not Fd then
			return
		end
		local Gd = n:GetPlayerFromCharacter(Fd)
		if Gd then
			local Hd = (o.Character.HumanoidRootPart.Position - Ed).magnitude
			return Hd < 10 and Gd
		end
	end
	return false
end
local function Qb()
	if not o.Character then
		return
	end
	local Bd = q:ScreenPointToRay(rb.X, rb.Y)
	local Cd = {}
	for Fd, Gd in next, workspace.Vehicles:GetChildren() do
		table.insert(Cd, Gd)
	end
	local Dd, Ed = Fb(Bd.Origin, Bd.Direction * 99, o.Character)
	if Dd then
		local Fd
		for Hd, Id in next, Cd, nil do
			if Dd:IsDescendantOf(Id) then
				Fd = Id
				break
			end
		end
		if not Fd then
			return
		end
		local Gd = o.Character
		if Gd then
			local Hd = Gd:FindFirstChild("HumanoidRootPart")
			if Hd then
				local Id = (Hd.Position - Ed).magnitude
				return Id < 16 and Fd
			end
		end
	end
	return false
end
local function Rb(Bd)
	S:FireServer("jrhx2hii", Bd.Name)
end
function R.dg8n1jp1(Bd)
	if Bd.Bribed then
		R.lsseynh8({
			Title = "Arrest",
			Text = ("You are bribed! Wait %d seconds."):format(Bd.Bribed)
		})
	end
end
local function Sb(Bd)
	S:FireServer("zbstuwsw", Bd.Name)
end
local function Tb(Bd)
	S:FireServer("r4b52cq8", Bd.Name)
end
local function Ub(Bd)
	S:FireServer("cm4jg5zp", Bd.Name)
end
function R.tytodwb9(Bd)
	if Bd.Cooldown then
		R.lsseynh8({
			Title = "Breakout",
			Text = ("Wait %d seconds."):format(Bd.Cooldown)
		})
	end
end
local function Vb(Bd)
	S:FireServer("t3qvrmp6", Bd)
end
local function Wb(Bd)
	S:FireServer("nbz0myqv", Bd)
end
local function Xb(Bd, Cd, Dd, Ed)
	if kb[Bd] then
		return
	end
	local Fd = n:FindFirstChild(Bd)
	if not Fd then
		return
	end
	local Gd = Fd.Character
	if not Gd then
		return
	end
	local Hd = Gd:FindFirstChild("HumanoidRootPart")
	if not Hd then
		return
	end
	local Id = Gd:FindFirstChild("UpperTorso")
	if not Id then
		return
	end
	local Jd = Id:FindFirstChild("Waist")
	if not Jd then
		return
	end
	local Kd = Gd:FindFirstChild("Head")
	if not Kd then
		return
	end
	local Ld = Kd:FindFirstChild("Neck")
	if not Ld then
		return
	end
	local Md = f.Resource.Item
	local Nd = Md:FindFirstChild(Cd.Name)
	assert(Nd)
	Nd = Nd:Clone()
	Nd.Parent = workspace
	u.WeldAllTo(Nd, Nd.Center)
	Cd.Waist = Jd
	Cd.Neck = Ld
	Cd.WaistC0 = Jd.C0
	Cd.NeckC0 = Ld.C0
	Cd.LastFire = Cd.LastFire or 0
	local Od = not not Nd.Skeleton:FindFirstChild("RightArm")
	local Pd = not not Nd.Skeleton:FindFirstChild("LeftArm")
	local Qd = {RightArm = Od, LeftArm = Pd}
	local Rd, Sd
	if Od and Pd then
		Rd = D(0.5, -0.5, -0.5)
		Sd = D(-math.pi * 0.5, 0, 0)
	else
		Rd = D(-0.1, 0.5, -0.2)
		Sd = D(math.pi * 0.5, 0, 0)
	end
	Cd.PosSpring = v.MakeSpring(Rd, 10, 0.6)
	Cd.RotSpring = v.MakeSpring(Sd, 14, 0.7)
	Cd.NeckSpring = v.MakeSpring(F, 2, 0.5)
	Cd.WaistSpring = v.MakeSpring(F, 10, 0.8)
	v.SpringSetTarget(Cd.RotSpring, qb, F)
	v.SpringSetTarget(Cd.PosSpring, qb, D(0, 0.7, 0))
	if Cd.Name == "Rifle" or Cd.Name == "AK47" then
		v.SpringSetTarget(Cd.NeckSpring, qb, D(0, 0.43, 0))
		v.SpringSetTarget(Cd.WaistSpring, qb, D(0, -0.43, 0))
		v.SpringSetTarget(Cd.PosSpring, qb, F)
	elseif Cd.Name == "Shotgun" then
		v.SpringSetTarget(Cd.NeckSpring, qb, D(0, 0.6, 0))
		v.SpringSetTarget(Cd.WaistSpring, qb, D(0, -0.6, 0))
	elseif Cd.Name == "Cuffed" then
		v.SpringSetTarget(Cd.NeckSpring, qb, D(-0.5, 0, 0))
		v.SpringSetTarget(Cd.WaistSpring, qb, D(-0.4, 0, 0))
		v.SpringSetTarget(Cd.PosSpring, qb, D(0, -0.7, 0))
	elseif Cd.Name == "Pistol" and Cd.HasSWAT then
		Nd.Model.Body.BrickColor = BrickColor.new("Black")
	end
	if Cd.Name == "Donut" then
		local Yd = Color3.fromHSV(math.random() * 0.8 + 0.2, 0.59, 1)
		Nd.Model.icing.Color = Yd
	elseif Cd.Name == "Flashlight" then
		Cd.FlashOn = false
	end
	local Td, Ud = true, true
	Qd = Ib(Bd, {
		RightArm = Qd.RightArm,
		LeftArm = Qd.LeftArm
	})
	Cd.IK = Qd
	local Vd
	if Cd.Name == "Cuffed" then
		Vd = Gd.UpperTorso
	else
		Vd = Gd.Head
	end
	local Wd = B(Cd.PosSpring.p) * v.CFrameFromAxisAngle(Cd.RotSpring.p)
	local Xd = u.CustomMotor(Nd.Center, Vd, Wd, E)
	Cd.Motor = Xd
	Cd.Model = Nd
	kb[Bd] = Cd
	if Ed and Cd.MagSize then
		local Yd = ab.Ammo
		Yd.Visible = true
		Cb(Cd)
	end
	if Ed and Cd.CrossHair then
		j.MouseIconEnabled = false
		ab.CrossHair.Visible = true
	end
end
local function Yb(Bd, Cd, Dd)
	local Ed = n:FindFirstChild(Bd)
	if not Ed then
		return
	end
	local Fd = kb[Bd]
	if not Fd then
		return
	end
	local Gd = Ed.Character
	Fd.Model:Destroy()
	Fd.Motor = nil
	kb[Bd] = nil
	if Dd then
		ab.Ammo.Visible = false
		if Fd.CrossHair then
			j.MouseIconEnabled = true
			ab.CrossHair.Visible = false
		end
	end
	if not Cd then
		Hb(Bd)
	end
	local Hd = Gd:FindFirstChild("UpperTorso")
	if Hd then
		local Jd = Hd:FindFirstChild("Waist")
		if Jd then
			Jd.C0 = Fd.WaistC0
		end
	end
	local Id = Gd:FindFirstChild("Head")
	if Id then
		local Jd = Id:FindFirstChild("Neck")
		if Jd then
			Jd.C0 = Fd.NeckC0
		end
	end
end
local function Zb(Bd, Cd, Dd)
	if not Cd then
		return
	end
	local Ed = n:FindFirstChild(Bd)
	if not Ed then
		return
	end
	local Fd = kb[Bd]
	if not Fd then
		return
	end
	local Gd = Fd.Model
	local Hd = Fd.Name
	if Hd == "Rifle" or Hd == "Pistol" or Hd == "Shotgun" or Hd == "AK47" then
		do
			local Id = Gd.Skeleton.Tip
			local Jd = Instance.new("PointLight")
			Jd.Parent = Id
			delay(0.1, function()
				Jd:Destroy()
			end)
		end
	end
	if Hd == "Taser" then
		local Id = Gd.Skeleton.Tip
		local Jd = (Cd - Id.Position).magnitude
		local Kd = Instance.new("Part")
		Kd.BrickColor = Hd == "Taser" and BrickColor.new("Black")
		Kd.Anchored = true
		Kd.CanCollide = false
		Kd.Size = D(0.2, 0.2, Jd)
		Kd.CFrame = B(Id.Position, Cd) * B(0, 0, -Jd * 0.5)
		local Ld = Instance.new("BlockMesh")
		Ld.Scale = D(0.4, 0.4, 1)
		Ld.Parent = Kd
		Kd.Parent = Fd.Model
		game.Debris:AddItem(Kd, 0.1)
	elseif Fd.Name == "Rifle" or Fd.Name == "Pistol" or Fd.Name == "AK47" then
		local Id = Gd.Skeleton.Tip
		local Jd = (Cd - Id.Position).magnitude
		local Kd = Instance.new("Part")
		Kd.BrickColor = BrickColor.new("White")
		Kd.Transparency = 0.8
		Kd.Anchored = true
		Kd.CanCollide = false
		Kd.Size = D(0.2, Jd, 0.2)
		Kd.CFrame = B(Id.Position, Cd) * B(0, 0, -Jd * 0.5) * C(math.pi * 0.5, 0, 0)
		local Ld = Instance.new("CylinderMesh")
		Ld.Scale = D(0.2, 1, 0.2)
		Ld.Parent = Kd
		Kd.Parent = Fd.Model
		game.Debris:AddItem(Kd, 0.1)
	elseif Fd.Name == "Flashlight" then
		if Dd then
			Fd.FlashOn = not Fd.FlashOn
		end
		local Id = Fd.FlashOn
		Gd.Model.Light.Material = Id and Enum.Material.Neon or Enum.Material.Plastic
		Gd.Model.Light.SpotLight.Enabled = Id
	elseif Fd.Name == "Donut" then
		v.SpringSetTarget(Fd.PosSpring, qb, D(0, -0.1, -0.7))
		v.SpringSetTarget(Fd.RotSpring, qb, D(math.random() * 0.3 - 0.15, math.random() * 0.3 - 0.15, 0))
		delay(0.5, function()
			v.SpringSetTarget(Fd.PosSpring, qb, D(0, 0.7, 0))
			v.SpringSetTarget(Fd.RotSpring, qb, F)
		end)
	elseif Fd.Name == "Shotgun" then
		local Id = Cd
		for Jd = 1, 5 do
			local Kd, Ld, Md = (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23
			local Nd = Gd.Skeleton.Tip
			local Od = (Cd - Nd.Position).magnitude
			Cd = Id + D(Kd, Ld, Md) * Od * 0.9
			local Pd = Instance.new("Part")
			Pd.BrickColor = BrickColor.new("White")
			Pd.Transparency = 0.8
			Pd.Anchored = true
			Pd.CanCollide = false
			Pd.Size = D(0.2, Od, 0.2)
			Pd.CFrame = B(Nd.Position, Cd) * B(0, 0, -Od * 0.5) * C(math.pi * 0.5, 0, 0)
			local Qd = Instance.new("CylinderMesh")
			Qd.Scale = D(0.2, 1, 0.2)
			Qd.Parent = Pd
			Pd.Parent = Fd.Model
			game.Debris:AddItem(Pd, 0.1)
		end
	end
end
local function ac(Bd, Cd)
	if Bd then
		local Dd = ab.Inventory.Inner:FindFirstChild(Bd.Name)
		if Dd then
			Dd.ImageColor3 = Color3.new(0.7, 0.7, 0.7)
			Dd.ImageTransparency = 0.5
		end
	end
	S:FireServer("xj6n6au9", Bd)
	return Xb(o.Name, Bd, Cd, true)
end
local function bc(Bd)
	local Cd = kb[o.Name]
	if Cd then
		local Dd = ab.Inventory.Inner:FindFirstChild(Cd.Name)
		if Dd then
			Dd.ImageColor3 = Color3.new(1, 1, 1)
			Dd.ImageTransparency = 0
		end
	end
	S:FireServer("in09i9xm")
	return Yb(o.Name, Bd, true)
end
local cc = false
local function dc(Bd, Cd, Dd)
	local Ed = Bd.Model
	local Fd = Ed:FindFirstChild("Skeleton")
	if not Fd then
		return
	end
	local Gd = Fd:FindFirstChild("Tip")
	if not Gd then
		return
	end
	local Hd, Id
	Hd, Id = p.X, p.Y
	local Jd = q:ScreenPointToRay(Hd, Id)
	local Kd, Ld = Fb(Jd.Origin, Jd.Direction * 999, Bd.Model, o.Character)
	local Md = (Ld - Gd.Position).unit
	if Dd then
		Md = Md + Dd
	end
	local Nd = 300
	if Bd.Name == "Taser" then
		Nd = 65
	end
	local Od, Pd = Fb(Gd.Position, Md * Nd, Bd.Model)
	return Od, Pd
end
function Cb(Bd)
	if Bd.MagSize then
		local Cd = ab:FindFirstChild("Ammo")
		if Cd then
			Cd.Current.Text = ("%d/"):format(Bd.MagSize)
			Cd.MagSize.Text = Bd.MaxMagSize
		end
	end
end
function Ab(Bd, Cd, Dd)
	if not Bd then
		return
	end
	if Bd:IsDescendantOf(workspace.Vehicles) then
		local Ed = 0
		repeat
			Bd = Bd.Parent
			Ed = Ed + 1
		until Bd:FindFirstChild("Engine") or Ed >= 5
		local Fd = Bd:FindFirstChild("Engine")
		if not Fd then
			return
		end
		S:FireServer("e0sy2g5u", Fd.Parent, Dd)
	elseif Bd.Parent:FindFirstChild("Humanoid") then
		local Ed = Bd.Parent
		local Fd = n:GetPlayerFromCharacter(Ed)
		if not Fd then
			return
		end
		S:FireServer("yt1mw55u", Fd.Name, Bd, Cd, Dd)
	elseif Bd:IsDescendantOf(workspace.ShootingRange) then
		S:FireServer("kfr0uiq3", Bd)
	end
end
function Bb(Bd, Cd)
	Cd = Cd or 2
	if Bd.Name == "AK47" then
		Cd = 2.5
	end
	if Bd.Reloading then
		return
	end
	Bd.Reloading = true
	Jb("RifleReload", {
		Source = ab,
		MaxTime = 2,
		Volume = 0.3
	}, true)
	ab.Ammo.Reloading.Visible = true
	local function Dd()
		Jb("RifleReload", {Source = ab, MaxTime = 2}, true)
		Bd.MagSize = Bd.MaxMagSize
		Cb(Bd)
		Bd.Reloading = false
		ab.Ammo.Reloading.Visible = false
	end
	delay(Cd, Dd)
end
local ec = 0
local function fc(Bd, Cd)
	local Dd = o.Character
	if not Dd then
		return
	end
	local Ed = Dd:FindFirstChild("HumanoidRootPart")
	if not Ed then
		return
	end
	local Fd = ec + 1
	ec = Fd
	cc = true
	if Bd.Name == "Rifle" or Bd.Name == "AK47" then
		if tick() - Bd.LastFire < 0.1 then
			return
		end
		while true do
			if ec ~= Fd then
				return
			end
			if Bd.Reloading then
				return
			end
			if not cc then
				break
			end
			Bd.LastFire = tick()
			Jb("RifleFire", {
				Source = Ed,
				Multi = true,
				SoundGroup = m.Guns
			})
			local Gd, Hd = dc(Bd, Cd)
			Ab(Gd, Hd, Bd)
			S:FireServer("wrph2r01", Hd)
			Zb(o.Name, Hd, true)
			local Id = Bd.MagSize - 1
			Bd.MagSize = Id
			Cb(Bd)
			if Id <= 0 then
				return Bb(Bd)
			end
			local Jd = 0.1
			wait(Jd)
		end
	elseif Bd.Name == "Pistol" then
		if tick() - Bd.LastFire < 0.2 then
			return
		end
		if Bd.Reloading then
			return
		end
		Bd.LastFire = tick()
		Jb("PistolFire", {
			Source = Ed,
			TimeStart = 8,
			MaxTime = 1,
			Volume = 0.2,
			Multi = true
		})
		local Gd, Hd = dc(Bd, Cd)
		Ab(Gd, Hd, Bd)
		S:FireServer("wrph2r01", Hd)
		Zb(o.Name, Hd, true)
		local Id = Bd.MagSize - 1
		Bd.MagSize = Id
		Cb(Bd)
		if Id <= 0 then
			return Bb(Bd)
		end
	elseif Bd.Name == "Flashlight" then
		if tick() - Bd.LastFire < 0.2 then
			return
		end
		if Bd.Reloading then
			return
		end
		Bd.LastFire = tick()
		local Gd = F
		S:FireServer("wrph2r01", Gd)
		Zb(o.Name, Gd, true)
	elseif Bd.Name == "Shotgun" then
		if tick() - Bd.LastFire < 0.4 then
			return
		end
		if Bd.Reloading then
			return
		end
		Bd.LastFire = tick()
		Jb("ShotgunFire", {
			Source = Ed,
			MaxTime = 2,
			Volume = 0.4,
			Multi = true
		})
		Jb("ShotgunPump", {
			Source = Ed,
			MaxTime = 1,
			Volume = 0.4,
			Delay = 0.2,
			Multi = true
		})
		local Gd, Hd = dc(Bd, Cd)
		Ab(Gd, Hd, Bd)
		for Jd = 1, 2 do
			local Kd, Ld, Md = (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23
			local Nd, Od = dc(Bd, Cd, D(Kd, Ld, Md))
			Ab(Nd, Od, Bd)
		end
		S:FireServer("wrph2r01", Hd)
		Zb(o.Name, Hd, true)
		local Id = Bd.MagSize - 1
		Bd.MagSize = Id
		Cb(Bd)
		if Id <= 0 then
			return Bb(Bd)
		end
	elseif Bd.Name == "Taser" then
		if tick() - Bd.LastFire < 0.2 then
			return
		end
		if Bd.Reloading then
			return
		end
		Bd.LastFire = tick()
		Jb("Taser", {
			Source = Ed,
			MaxTime = 1,
			Volume = 0.4
		})
		local Gd, Hd = dc(Bd, Cd)
		local Id = 5
		if Gd and Gd.Parent:FindFirstChild("Humanoid") then
			local Kd = Gd.Parent
			local Ld = n:GetPlayerFromCharacter(Kd)
			if Ld and Ld.TeamValue.Value == z.Team.Prisoner then
				S:FireServer("vg0f2ys1", Ld.Name, Gd, Hd)
				Id = 10
			end
		end
		S:FireServer("wrph2r01", Hd)
		Zb(o.Name, Hd, true)
		local Jd = Bd.MagSize - 1
		Bd.MagSize = Jd
		Cb(Bd)
		if Jd <= 0 then
			return Bb(Bd, Id)
		end
	elseif Bd.Name == "Donut" then
		if 1 > tick() - Bd.LastFire then
			return
		end
		Bd.LastFire = tick()
		local Gd = F
		S:FireServer("wrph2r01", Gd)
		Zb(o.Name, Gd, true)
	end
end
local function gc()
	cc = false
end
local hc, ic
function hc()
	return {
		StartPosition = nil,
		Position = F,
		TargetPosition = nil,
		LookVector = D(0, 0, -1),
		TargetFocus = nil,
		TargetLookVector = nil
	}
end
function ic(Bd, Cd, Dd, Ed)
	if Bd.TargetPosition then
		if Bd.StartPosition then
			Bd.Position = Bd.StartPosition * (1 - Dd) + Bd.TargetPosition * Dd
		else
			Bd.Position = Bd.Position + (Bd.TargetPosition - Bd.Position) * Cd * Dd
		end
	end
	local Fd = Bd.TargetLookVector
	if Bd.TargetFocus then
		Fd = (Bd.TargetFocus - Bd.Position).unit
	end
	if Fd then
		Bd.LookVector = Bd.LookVector + (Fd - Bd.LookVector) * Cd * Ed
	end
	q.CFrame = B(F, Bd.LookVector) + Bd.Position
end
local jc, kc
do
	local Bd = tick()
	local Cd = false
	local function Dd()
		if Cd then
			Cd = false
			local Fd = tick() - Bd
			S:FireServer("vbrojcfu", Fd)
		end
	end
	local Ed = tick()
	function jc()
		if tick() - Ed < 0.1 then
			return
		end
		Ed = tick()
		if Cd then
			Dd()
		end
		Cd = true
		Bd = tick()
		if mb and not mb.Passenger then
			mb.Nitro = true
			Jb("Nitro1", {
				Source = mb.Nitrous[1].Parent,
				TimeStart = 0.5,
				Volume = 1
			})
			Jb("NitroLoop", {
				Source = mb.Nitrous[1].Parent,
				Looped = true,
				MaxTime = 30,
				Volume = 1,
				Delay = 0.3
			})
			for Fd, Gd in next, mb.Nitrous, nil do
				Gd.Enabled = true
			end
		end
		S:FireServer("b290gcv0")
		if nb.Nitro / nb.NitroLastMax <= 0.01 then
			R.k0qmd00t(true, true)
		end
	end
	function kc()
		Kb("NitroLoop")
		if mb and not mb.Passenger then
			mb.Nitro = false
			for Fd, Gd in next, mb.Nitrous, nil do
				Gd.Enabled = false
			end
		end
		Dd()
		S:FireServer("ahhtx5hj")
	end
	function R.xojmhqui(Fd, Gd)
		nb.Nitro = Fd
		nb.NitroLastMax = Gd
		nb.NitroForceUIUpdate = true
		bb.Nitro.Body.Bar.Value.Size = UDim2.new(Fd / z.Scalar.NitroMax, 0, 1, 0)
		bb.Nitro.Body.Bar.TextLabel.Text = ("%d/%d Fuel"):format(Fd, z.Scalar.NitroMax)
	end
end
local lc = 0
local mc = F
h.Heartbeat:connect(function(Bd)
	qb = qb + Bd
	lc = lc + Bd
	Q.profilebegin("Inverse Kinematics")
	for Id, Jd in next, kb, nil do
		local Kd = Jd.Model:FindFirstChild("Skeleton")
		if Kd then
			if Jd.IK.RightArm then
				r.RightArm(Jd.IK, Kd.RightArm.Position, Jd.IK.RightAngle)
			end
			if Jd.IK.LeftArm then
				r.LeftArm(Jd.IK, Kd.LeftArm.Position, Jd.IK.LeftAngle)
			end
		end
		local Ld, Md = v.Spring(Jd.PosSpring, qb)
		local Nd, Od = v.Spring(Jd.RotSpring, qb)
		local Pd = B(Ld) * v.CFrameFromAxisAngle(Nd)
		if v.IsNaNcf(Pd) then
			Pd = E
		end
		Jd.Motor.C0 = Pd
		local Qd, Rd = v.Spring(Jd.WaistSpring, qb)
		local Sd = Jd.WaistC0 * v.CFrameFromAxisAngle(Qd)
		if v.IsNaNcf(Sd) then
			Sd = E
		end
		Jd.Waist.C0 = Sd
		local Td, Ud = v.Spring(Jd.NeckSpring, qb)
		local Vd = Jd.NeckC0 * v.CFrameFromAxisAngle(Td)
		if v.IsNaNcf(Vd) then
			Vd = E
		end
		Jd.Neck.C0 = Vd
	end
	Q.profileend()
	local Cd = kb[o.Name]
	if Cd and Cd.CrossHair then
		ab.CrossHair.Position = UDim2.new(0, p.X - 30, 0, p.Y - 30)
	end
	if Cd and Cd.Name == "Binoculars" then
		local Id = 0.6
		local Jd = ab.AbsoluteSize.X + 40
		local Kd = ab.AbsoluteSize.Y
		ab.Binoculars.ImageLabel.Size = UDim2.new(0, Jd, 0, Jd * Id)
		ab.Binoculars.ImageLabel.Position = UDim2.new(0.5, -Jd * 0.5, 0.5, -Jd * Id * 0.5)
		ab.Binoculars.BarTop.Size = UDim2.new(1, 0, 0, (Kd - Jd * Id) * 0.5 + 20)
		ab.Binoculars.BarBottom.Size = UDim2.new(1, 0, 0, (Kd - Jd * Id) * 0.5 + 20)
		ab.Binoculars.BarBottom.Position = UDim2.new(0, 0, 1, -((Kd - Jd * Id) * 0.5 + 20))
		ab.Binoculars.Visible = true
		q.FieldOfView = 20
	elseif ab.Binoculars.Visible then
		ab.Binoculars.Visible = false
		q.FieldOfView = 70
	end
	local Dd = Cd and Cd.Name
	local Ed, Fd = rb.X, rb.Y
	Q.profilebegin("Camera Looking")
	local Gd = q:ScreenPointToRay(Ed, Fd)
	mc = mc + (Gd.Origin + Gd.Direction * 30 - mc) * 0.2
	local Hd = o.Character
	if Hd then
		local Id = Hd:FindFirstChild("HumanoidRootPart")
		if Id then
			local Jd = Hd:FindFirstChild("Head")
			local Kd = Hd:FindFirstChild("UpperTorso")
			if Jd and Kd then
				local Ld = Kd:FindFirstChild("Waist")
				local Md = Jd:FindFirstChild("Neck")
				if Ld and Md then
					local Nd, Od = 0, 0
					local Pd, Qd
					Q.profilebegin("Calculate looking")
					if not tb then
						local Rd = Id.CFrame.lookVector
						local Sd
						if Dd and z.MouseLookAt[Dd] then
							Sd = (mc - Id.CFrame.p).unit
						else
							Sd = (q.CFrame * C(0.2, 0, 0)).lookVector
						end
						if v.IsNaNv3(Sd) then
							Sd = D(0, 0, -1)
						end
						local Td = 1
						Nd, Od = I(Rd, Sd:Cross(D(0, 1, 0))), math.asin(Sd.Y)
						if mb and (not mb.Passenger or mb.NoLook) then
							Nd, Od = 0, 0
						end
						if v.IsNaN(Nd) then
							Nd = 0
						end
						if v.IsNaN(Od) then
							Od = 0
						end
						Pd = B(Ld.C1.p) * C(0, -Nd * 0.5 * Td, 0) * C(-Od * 0.2 * Td, 0, 0)
						Qd = B(Md.C1.p) * C(-Od * 0.5 * Td, 0, 0) * C(0, -Nd * 0.5 * Td, 0)
					else
						Pd = B(Ld.C1.p)
						Qd = B(Md.C1.p)
					end
					if v.IsNaNcf(Pd) then
						Pd = B(Ld.C1.p)
					end
					if v.IsNaNcf(Qd) then
						Qd = B(Md.C1.p)
					end
					Ld.C1 = Pd
					Md.C1 = Qd
					if lc >= 0.4 then
						lc = 0
						if v.IsNaN(Nd) then
							Nd = 0
						end
						if v.IsNaN(Od) then
							Od = 0
						end
						S:FireServer("xmob92hh", Nd, Od)
					end
					Q.profileend()
				end
			end
		end
	end
	for Id, Jd in next, lb, nil do
		local Kd, Ld = v.Spring(Jd.HeadingSpring, qb)
		local Md, Nd = v.Spring(Jd.PitchSpring, qb)
		local Od, Pd
		local Qd = Jd.Waist
		if Qd then
			Od = B(Qd.C1.p) * C(-Md * 0.2, -Kd * 0.5, 0)
			if v.IsNaNcf(Od) then
				Od = E
			end
			Qd.C1 = Od
		end
		local Rd = Jd.Neck
		if Rd then
			Pd = B(Rd.C1.p) * C(-Md * 0.5, -Kd * 0.5, 0)
			if v.IsNaNcf(Pd) then
				Pd = E
			end
			Rd.C1 = Pd
		end
	end
	Q.profileend()
	Q.profilebegin("Vehicle Updates")
	if mb and not mb.Passenger then
		if mb.Type == "Chassis" then
			U.Update(mb, Bd)
		elseif mb.Type == "Heli" then
			zb.Update(mb, Bd)
		elseif mb.Type == "Motorcycle" or mb.Type == "DuneBuggy" then
			V.UpdateHQ(mb, Bd)
		end
	end
	Q.profileend()
	s.CircleAction.Update(Bd)
	if mb and not mb.Passenger then
		local Id = false
		if mb.Type ~= "Heli" and not ab.Nitro.Visible then
			ab.Nitro.Visible = true
			Id = true
		end
		if nb.NitroForceUIUpdate then
			nb.NitroForceUIUpdate = false
			Id = true
		end
		if mb.Nitro then
			Id = true
			nb.Nitro = nb.Nitro - Bd * 5
		end
		if 0 >= nb.Nitro then
			Id = true
			nb.Nitro = 0
			kc()
		end
		if Id then
			local Jd = nb.Nitro / z.Scalar.NitroMax
			ab.Nitro.Value.Size = UDim2.new(1, 0, Jd, 0)
			ab.Nitro.Value.Position = UDim2.new(0, 0, 1 - Jd, 0)
		end
	elseif ab.Nitro.Visible then
		ab.Nitro.Visible = false
	end
end)
local function nc(Bd, Cd)
	local Dd, Ed, Fd = Bd.Model, Bd.Height, Bd.IKP
	if not Dd then
		return
	end
	local Gd = Dd:FindFirstChild("Engine")
	if not Gd then
		return
	end
	local Hd = (Gd.Position - q.CFrame.p).magnitude
	if Hd > 350 then
		return
	end
	if not Bd.Dead and not Fd and Bd.Character then
		local Nd = Bd.Character.Name
		if kb[Nd] then
			Yb(Nd)
		end
		Fd = Ib(Nd, {RightArm = true, LeftArm = true})
		Bd.IKP = Fd
	end
	local Id = Gd.CFrame:vectorToObjectSpace(Gd.Velocity)
	local Jd = Id.Z * Cd
	local Kd = Bd.WheelRotation + Jd / (Dd.WheelFrontRight.Wheel.Size.Y * 0.5 * math.pi)
	Kd = Kd % (2 * math.pi)
	Bd.WheelRotation = Kd
	U.UpdateWheelLowQuality(Dd, Ed, Bd.PartFrontRight, Kd)
	U.UpdateWheelLowQuality(Dd, Ed, Bd.PartFrontLeft, Kd)
	U.UpdateWheelLowQuality(Dd, Ed, Bd.PartBackRight, Kd)
	U.UpdateWheelLowQuality(Dd, Ed, Bd.PartBackLeft, Kd)
	U.UpdateSoundLowQuality(Bd, Bd.Gears, Id)
	local Ld = M(Id.X)
	if Ld > 10 then
		Bd.Sounds.DriftSqueal.Volume = math.min((Ld - 10) / 4, 0.3)
	else
		Bd.Sounds.DriftSqueal.Volume = 0
	end
	local Md = 0.7 * Gd.RotVelocity.Y
	if Bd.WeldSteer then
		Bd.WeldSteer.C0 = C(0, Md, 0)
		local Nd = Dd.Steer.CFrame
		r.RightArm(Fd, Nd * D(0.8, 0.1, 0), -Md)
		r.LeftArm(Fd, Nd * D(-0.8, 0.1, 0), -Md)
	end
end
local function oc(Bd, Cd)
	local Dd = Bd.Model
	if not Dd then
		return
	end
	local Ed = Dd:FindFirstChild("Engine")
	if not Ed then
		return
	end
	local Fd = Bd.Make
	if Bd.HasProp then
		zb.SpinProp(Bd, Cd)
	end
end
local function pc(Bd, Cd)
	local Dd = Bd.IKP
	if not Bd.Dead and not Dd then
		local Ed = Bd.PlayerName
		if kb[Ed] then
			Yb(Ed)
		end
		Dd = Ib(Ed, {RightArm = true, LeftArm = true})
		Bd.IKP = Dd
	end
	V.UpdateLQ(Bd, Cd)
end
local qc, rc, sc, tc
do
	local Bd = 40
	local Cd = 60
	qc = false
	local Dd
	function rc()
		if qc then
			return
		end
		if Dd then
			return
		end
		qc = true
		local Ed = o.Character
		if not Ed then
			return
		end
		local Fd = Ed:FindFirstChild("HumanoidRootPart")
		if not Fd then
			return
		end
		local Gd = Ed:FindFirstChild("Humanoid")
		if not Gd then
			return
		end
		S:FireServer("j4kld9q4")
		local Hd = Instance.new("Animation")
		Hd.AnimationId = "rbxassetid://752174810"
		Hd.Parent = Ed
		local Id = Gd:LoadAnimation(Hd)
		Id:Play(0.2)
		Ed.Humanoid.PlatformStand = true
		local Jd = q.CFrame * C(0.2, 0, 0)
		local Kd = Instance.new("BodyGyro")
		Kd.Name = "Parachute"
		Kd.MaxTorque = D(10000, 10000, 10000)
		Kd.CFrame = Jd
		Kd.Parent = Fd
		local Ld = Instance.new("BodyVelocity")
		Ld.MaxForce = D(10000, 10000, 10000)
		Ld.Parent = Fd
		local Md = {}
		Md.Gyro = Kd
		Md.Velocity = Ld
		Md.Track = Id
		Md.Anim = Hd
		Dd = Md
	end
	function tc()
		if not qc then
			return
		end
		local Ed = Dd
		if not Ed then
			return
		end
		if Ed.Part then
			Ed.Part:Destroy()
		end
		if Ed.Gyro then
			Ed.Gyro:Destroy()
		end
		if Ed.Velocity then
			Ed.Velocity:Destroy()
		end
		if Ed.Track then
			Ed.Track:Stop()
			Ed.Track:Destroy()
		end
		if Ed.Anim then
			Ed.Anim:Destroy()
		end
		qc = false
		S:FireServer("lxm6uiut")
		Dd = nil
		local Fd = o.Character
		if not Fd then
			return
		end
		local Gd = Fd:FindFirstChild("HumanoidRootPart")
		if not Gd then
			return
		end
		Fd.Humanoid.PlatformStand = false
	end
	function sc(Ed)
		if not qc then
			return
		end
		local Fd = o.Character
		if not Fd then
			return
		end
		local Gd = Fd:FindFirstChild("HumanoidRootPart")
		if not Gd then
			return
		end
		local Hd = Dd
		if not Hd then
			return
		end
		local Id = q.CFrame * C(0.2, 0, 0)
		local Jd = math.clamp(Gd.RotVelocity.y, -4, 4)
		local Kd = M(Id.lookVector:Dot(D(0, 1, 0)))
		local Ld = D(Id.lookVector.X, 0, Id.lookVector.Z)
		Hd.Velocity.Velocity = Ld * Cd * O(0.5, Kd) + D(0, Kd, 0) * -Bd
		Hd.Gyro.CFrame = B(F, Id.lookVector) * B(0, 0, Jd * 0.125)
		local Md, Nd = Fb(Gd.Position, D(0, -1, 0) * 6, Fd)
		if Md and not Md:IsDescendantOf(workspace.Vehicles) then
			tc()
		end
	end
	R.z89qjiuw = rc
end
local uc, vc, wc
do
	local Bd = require(f.Module.AlexRagdoll)
	wc = false
	local Cd = 0
	local Dd = true
	local function Ed()
		if not wc then
			return
		end
		local Fd = qb - Cd
		if Fd >= 2 then
			local Gd = o.Character
			local Hd = Gd:FindFirstChild("HumanoidRootPart")
			if not Hd then
				Dd = false
				return
			end
			local Id = Hd.Velocity.magnitude
			if Id < 28 or Fd >= 5 then
				Dd = false
				S:FireServer("xiqm3ucl")
			end
		end
	end
	function vc()
		if wc and Dd then
			Ed()
		end
	end
	function uc()
		if wc then
			return
		end
		if qc then
			return
		end
		local Fd = o.Character
		if not Fd then
			return
		end
		if mb then
			return
		end
		local Gd = Fd:FindFirstChild("HumanoidRootPart")
		if not Gd then
			return
		end
		local Hd = Fd:FindFirstChild("Humanoid")
		if not Hd then
			return
		end
		if Hd.Health <= 4 then
			return
		end
		if Hd.PlatformStand then
			return
		end
		local Id = kb[o.Name]
		if Id and Id.Locked then
			return
		end
		local Jd = Gd.Velocity.magnitude
		wc = true
		Dd = true
		Cd = qb
		local function Kd()
			local Ld = false
			local Md = Fd:FindFirstChild("HumanoidRootPart")
			if not Md then
				Ld = true
			end
			if mb then
				Ld = true
			end
			if Ld then
				wc = false
				return
			end
			bc()
			Bd.Ragdoll(Fd)
			S:FireServer("ngt454n6")
		end
		delay(0.1, Kd)
	end
	function R.xiqm3ucl(Fd)
		Dd = false
		if Fd then
			local Gd = o.Character
			Bd.Unragdoll(Gd)
		end
		wait(0.2)
		wc = false
	end
end
local xc = 0
local function yc(Bd)
	xc = Bd
	local Cd = kb[o.Name]
	local Dd = true
	if mb then
		if mb.Passenger and mb.Type == "Heli" then
			Dd = true
		else
			Dd = false
		end
		if mb.Seat:FindFirstChild("Items") then
			Dd = true
		end
	end
	if wc then
		Dd = false
	end
	if tb then
		Dd = false
	end
	if not Dd then
		return
	end
	if Cd and Cd.Locked then
		return
	end
	local Ed = ib.ItemStacks[Bd]
	local Fd
	if not Cd then
		Fd = true
	elseif Cd and Ed then
		Fd = Ed.i ~= Cd.i
	end
	local Gd
	if Cd then
		Gd = Cd.IK
		bc(Fd)
	end
	if Ed and Fd then
		ac(Ed, Gd)
		local Hd = o.Character
		if Hd then
			local Id = Hd:FindFirstChild("HumanoidRootPart")
			Jb("Equip", {Source = Id, Volume = 0.8})
		end
	end
end
local zc, Ac, Bc, Cc
function zc()
	return {}
end
function Bc(Bd, Cd)
	for Dd = #Bd, 1, -1 do
		if Bd[Dd] == Cd then
			return table.remove(Bd, Dd)
		end
	end
end
function Ac(Bd, Cd)
	Bc(Bd, Cd)
	table.insert(Bd, Cd)
end
function Cc(Bd)
	return Bd[#Bd]
end
local Dc, Ec, Fc
Fc = zc()
local Gc, Hc
do
	local Bd = 0
	function Gc()
		local Cd = tick()
		if Cd - Bd < 0.15 then
			return
		end
		Bd = Cd
		if mb and not mb.Passenger then
			if fb(z.Perm.InjanHorn) then
				Jb("InjanHorn", {
					Source = mb.Model.Engine,
					Volume = 1
				})
			else
				Jb("Horn", {
					Source = mb.Model.Engine,
					Volume = 0.3,
					Pitch = 0.96,
					MaxTime = 8
				})
			end
		end
	end
	function Hc()
		if mb and not mb.Passenger then
			Kb("Horn")
		end
	end
end
local Ic
do
	local Bd = ab:WaitForChild("Radio")
	local function Cd()
		Bd.Visible = true
	end
	local function Dd()
		Bd.Visible = false
	end
	Ic = y.MakeWindow()
	Ic.OpenFun = Cd
	Ic.CloseFun = Dd
	y.WindowGroupAdd(gb, Ic)
	local function Ed()
		local Sd = Bd.TextBox
		local Td = Sd.Text:match("%d+")
		if not Td then
			return
		end
		local Ud = o.Character:FindFirstChild("HumanoidRootPart")
		if not Ud then
			return
		end
		S:FireServer("zp9agy0e", Td)
	end
	local function Fd()
		local Sd = o.Character:FindFirstChild("HumanoidRootPart")
		if not Sd then
			return
		end
		S:FireServer("j3i3txjd")
	end
	local function Gd()
		local Sd = g:UserOwnsGamePassAsync(o.UserId, z.Gamepass.Stereo.PassId)
		if not Sd then
			Lb(z.Gamepass.Stereo)
			return
		end
		return Ed()
	end
	Bd.Play.MouseButton1Down:connect(Gd)
	Bd.Stop.MouseButton1Down:connect(Fd)
	Bd.Close.MouseButton1Down:connect(Dd)
	local Hd = {
		Bass = {Scalar = 0.5}
	}
	local Id = 0
	local function Jd(Sd, Td)
		local Ud = Hd[Sd]
		local Vd = Bd[Sd .. "Level"]
		Vd.TextButton.MouseButton1Down:connect(function(Wd, Xd)
			Ud.MinY = Vd.AbsolutePosition.Y + 5
			Ud.MaxY = Ud.MinY + Vd.AbsoluteSize.Y - Vd.TextButton.AbsoluteSize.Y + 5
			local Yd = Id + 1
			Id = Yd
			while Id == Yd do
				local Zd = rb.y + 5
				Zd = Zd < Ud.MinY and Ud.MinY or Zd > Ud.MaxY and Ud.MaxY or Zd
				local ae = (Zd - Ud.MinY) / (Ud.MaxY - Ud.MinY)
				Ud.Scalar = ae
				Td(Sd, ae)
				Vd.TextButton.Position = UDim2.new(0.5, -15, 0, Zd - Ud.MinY - 5)
				h.Stepped:wait()
			end
		end)
	end
	j.InputEnded:connect(function(Sd)
		if Sd.UserInputType == Enum.UserInputType.MouseButton1 then
			Id = Id + 1
		end
	end)
	local Kd = m.Music
	local Ld, Md = 0, 10
	local Nd, Od = 0, 3
	local Pd, Qd = 0, 3
	local function Rd(Sd, Td)
		local Ud = 2 * Td - 1
		Td = Ud ^ 3 * 0.5 + 0.5
		local Vd = 1 - Td
		if Sd == "Bass" then
			local Wd = Td * (Ld - Md * 0.5) + Vd * (Ld + Md * 0.5)
			local Xd = Vd * (Nd - Od * 0.5) + Td * (Nd + Od * 0.5)
			local Yd = Vd * (Nd - Od * 0.5) + Td * (Nd + Od * 0.5)
			Kd.EqualizerSoundEffect.LowGain = Wd
			Kd.EqualizerSoundEffect.MidGain = Xd
			Kd.EqualizerSoundEffect.HighGain = Yd
		end
	end
	Jd("Bass", Rd)
end
xb.RadioWindow = Ic
local Jc = Instance.new("Animation")
Jc.AnimationId = "rbxassetid://685258011"
local Kc, Lc
Lc = {}
do
	local Bd = Instance.new("Animation")
	Bd.AnimationId = "rbxassetid://758003506"
	table.insert(Lc, Bd)
	local Cd = Instance.new("Animation")
	Cd.AnimationId = "rbxassetid://758005053"
	table.insert(Lc, Cd)
end
local Mc
local Nc = tick()
local Oc = tick()
local Pc = {
	0,
	0,
	0
}
local function Qc(Bd, Cd, Dd)
	local Ed = Bd.Name
	if Cd then
		if Ed == "Sprint" then
			sb = true
		elseif Ed == "Crawl" then
			do
				local Fd = o.Character
				if not Fd then
					return
				end
				local Gd = Fd:FindFirstChild("Humanoid")
				if not Gd then
					return
				end
				if not Kc and Gd.Sit then
					return
				end
				local Hd = Fd:FindFirstChild("HumanoidRootPart")
				if not Hd then
					return
				end
				if wc then
					return
				end
				local Id = kb[o.Name]
				if Id and Id.Locked then
					return
				end
				if tick() - Oc < 0.25 then
					return
				end
				if tick() - Pc[#Pc] < 4 then
					return
				end
				Oc = tick()
				if Kc then
					table.remove(Pc)
					table.insert(Pc, 1, Oc)
				end
				tb = not Kc
				local Jd = Fd:FindFirstChild("UpperTorso")
				local Kd = Fd:FindFirstChild("LowerTorso")
				local Ld = {}
				local function Md(Nd)
					for Od, Pd in next, Nd:GetChildren() do
						if Pd:IsA("JointInstance") and (Pd.Part1 == Jd or Pd.Part1 == Kd or Pd.Part0 == Jd or Pd.Part0 == Kd) then
							table.insert(Ld, {
								Motor = Pd,
								Part0 = Pd.Part0,
								Part1 = Pd.Part1
							})
							Pd.Part0, Pd.Part1 = nil, nil
						end
						Md(Pd)
					end
				end
				Md(Fd)
				do
					local Nd = Jd.Size
					Jd.Size = tb and Vector3.new(Nd.x, Nd.y, math.min(Nd.z, 1.2)) or Jd.OriginalSize.Value
				end
				do
					local Nd = Kd.Size
					Kd.Size = tb and Vector3.new(Nd.x, Nd.y, math.min(Nd.z, 1.2)) or Kd.OriginalSize.Value
				end
				for Nd, Od in next, Ld, nil do
					Od.Motor.Part0, Od.Motor.Part1 = Od.Part0, Od.Part1
				end
				Fd.HumanoidRootPart.CanCollide = not tb
				if Kc then
					Kc:Stop()
					Kc = nil
					return
				end
				bc()
				Kc = Gd:LoadAnimation(Jc)
				Kc:Play()
			end
		elseif Ed == "Punch" then
			if tick() - Nc < 0.5 then
				return
			end
			local Fd = o.Character
			if not Fd then
				return
			end
			local Gd = Fd:FindFirstChild("Humanoid")
			if not Gd then
				return
			end
			local Hd = kb[o.Name]
			if Hd then
				return
			end
			if Mc then
				Mc:Stop()
			end
			local Id = table.remove(Lc, 1)
			table.insert(Lc, Id)
			Mc = Gd:LoadAnimation(Id)
			Mc:Play()
			Nc = tick()
			S:FireServer("o8ake3bl")
		elseif Ed == "Horn" then
			Gc()
		elseif Ed == "Radio" then
			if mb then
				y.WindowToggle(Ic)
			end
		elseif Ed == "Flip" then
			if mb then
				S:FireServer("i5dzuqzp", mb.Model)
			end
		elseif Ed == "Nitro" and mb and not mb.Passenger then
			jc()
		end
	elseif Ed == "Sprint" then
		sb = false
	elseif Ed == "Horn" then
		Hc()
	elseif Ed == "Nitro" then
		kc()
	end
end
local Rc = w.MakeUI()
w.UpdateUI(Rc)
Rc.Container.Parent = ab.ActionButtons
local Sc, Tc, Uc, Vc, Wc, Xc, Yc, Zc
do
	local Bd = w.MakeBindA("Crawl", Qc, Enum.KeyCode.C, Enum.KeyCode.Z, Enum.KeyCode.ButtonL3)
	Bd.Image = z.Images.Crawl
	local Cd = w.MakeBindA("Punch", Qc, Enum.KeyCode.F, Enum.KeyCode.ButtonB)
	Cd.Image = z.Images.Punch
	local Dd = w.MakeBindA("Sprint", Qc, Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift, Enum.KeyCode.ButtonL2)
	Dd.Image = z.Images.Sprint
	Sc = w.MakeGroupA(Bd, Cd, Dd)
	Sc.UI = Rc
	local Ed = w.MakeBindA("Horn", Qc, Enum.KeyCode.H, Enum.KeyCode.ButtonL3)
	Ed.Image = z.Images.Horn
	local Fd = w.MakeBindA("Drift", U.OnAction, Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift, Enum.KeyCode.ButtonX)
	Fd.Image = z.Images.Drift
	local Gd = w.MakeBindA("Lights", U.OnAction, Enum.KeyCode.L, Enum.KeyCode.ButtonY)
	Gd.Image = z.Images.Headlights
	Yc = w.MakeBindA("Sirens", U.OnAction, Enum.KeyCode.F, Enum.KeyCode.ButtonB)
	Yc.Image = z.Images.Siren
	Yc.Hidden = true
	local Hd = w.MakeBindA("Radio", Qc, Enum.KeyCode.R)
	Hd.Image = z.Images.Radio
	local Id = w.MakeBindA("Flip", Qc, Enum.KeyCode.V, Enum.KeyCode.ButtonR1)
	Id.Image = z.Images.CarFlip
	local Jd = w.MakeBindA("Nitro", Qc, Enum.KeyCode.Q, Enum.KeyCode.ButtonL1)
	Jd.Image = z.Images.Nitro
	Tc = w.MakeGroupA(Fd, Jd, Ed, Gd, Hd, Id, Yc)
	Tc.UI = Rc
	Wc = w.MakeGroupA(Fd, Jd, Ed, Gd, Hd, Id)
	Wc.UI = Rc
	if fb(z.Perm.Autopilot) then
		local Md = w.MakeBindA("Autopilot", U.OnAction, Enum.KeyCode.G)
		Md.Hidden = true
		table.insert(Tc.Binds, Md)
	end
	local Kd = w.MakeBindA("Up", zb.OnAction, Enum.KeyCode.E, Enum.KeyCode.ButtonR2)
	Kd.Image = z.Images.HeliUp
	local Ld = w.MakeBindA("Down", zb.OnAction, Enum.KeyCode.Q, Enum.KeyCode.ButtonL2)
	Ld.Image = z.Images.HeliDown
	Zc = w.MakeBindA("Rope", zb.OnAction, Enum.KeyCode.F, Enum.KeyCode.ButtonY)
	Zc.Image = z.Images.HeliRope
	Zc.Hidden = true
	Uc = w.MakeGroupA(Ed, Kd, Ld, Zc, Hd)
	Uc.UI = Rc
	Vc = w.MakeGroupA(Zc)
	Vc.UI = Rc
	Xc = w.MakeGroupA()
	Xc.UI = Rc
	w.BindGroup(Sc)
end
local ad
ad = {}
do
	local Bd, Cd = table.insert, table.remove
	local Dd = {}
	function ad.AddPart(Id, Jd, Kd, Ld)
		local Md = {
			Part = Id,
			Distance = Jd,
			f = Kd,
			Meta = Ld
		}
		table.insert(Dd, Md)
		return Md
	end
	function ad.RemovePart(Id)
		for Jd = #Dd, 1, -1 do
			local Kd = Dd[Jd]
			if Kd.Part == Jd then
				return table.remove(Dd, Jd)
			end
		end
		return false
	end
	local Ed = {}
	local Fd = {}
	function ad.UpdateInterest(Id)
		Ed = {}
		Fd = {}
		for Jd = #Dd, 1, -1 do
			local Kd = Dd[Jd]
			if not Kd.Part then
				table.remove(Dd, Jd)
			end
		end
		for Jd, Kd in next, Dd, nil do
			Kd.Center = Kd.Part.Position
			local Ld = (Kd.Center - Id).magnitude
			Kd.Sort = Ld
			local Md = Ld < Kd.Distance
			if Kd.Locked then
				Md = true
			end
			local Nd = Kd.Loaded
			if Md and not Nd then
				Bd(Ed, Kd)
			elseif not Md and Nd then
				Bd(Fd, Kd)
			end
		end
	end
	local function Gd()
		while #Ed > 0 do
			local Id = Cd(Ed, 1)
			Id.Loaded = true
			Id:f(Id.Loaded)
		end
		while #Fd > 0 do
			local Id = Cd(Fd)
			Id.Loaded = false
			Id:f(Id.Loaded)
		end
	end
	function ad.Run(Id)
		eb(Id, Gd, "Proximity Queue")
	end
	ad.Run(0.1)
	local function Hd()
		local Id = o.Character
		if not Id then
			return
		end
		local Jd = Id:FindFirstChild("HumanoidRootPart")
		if not Jd then
			return
		end
		local Kd = Id:FindFirstChild("Humanoid")
		if not Kd then
			return
		end
		if Kd.Health <= 0 then
			return
		end
		local Ld = Jd.Position
		ad.UpdateInterest(Ld)
	end
	eb(0.1, Hd, "Proximity Update Interest")
end
local function bd()
	local Bd = o.Character
	if not Bd then
		return
	end
	local Cd = Bd:FindFirstChild("Humanoid")
	if not Cd then
		return
	end
	local Dd = Cd.WalkSpeed
	local Ed = Cd.Health
	local Fd = O(N(Ed + 1) / N(101), 0.5)
	local Gd = kb[o.Name]
	if Gd then
		if Gd.Name == "Cuffed" then
			Fd = 0
		elseif Gd.Name == "ShieldSWAT" then
			Fd = Fd * 0.75
		end
	end
	if vb then
		Fd = 0
	end
	local Hd = Fd * 16
	if tb then
		Hd = Hd * 0.4
	end
	if sb then
		Hd = Hd * 1.5
	end
	Hd = Hd * math.clamp(xb.LocalWalkSpeedModifier, 0, 1)
	local Id = M(Hd - Dd)
	if Id > 0.1 then
		Cd.WalkSpeed = Hd
	end
	if Kc then
		local Jd = Bd:FindFirstChild("HumanoidRootPart")
		if Jd then
			local Kd = Bd.HumanoidRootPart.CFrame:vectorToObjectSpace(Jd.Velocity)
			Kc:AdjustSpeed(-Kd.Z / 6)
		end
	end
end
local cd = function(Bd)
	local Cd = Instance.new("Frame")
	Cd.BackgroundTransparency = 1
	Cd.Visible = false
	Cd.Parent = workspace
	local Dd, Ed = 0, 0
	for Fd, Gd in next, Bd, nil do
		local Hd = Instance.new("TextLabel")
		Hd.BackgroundTransparency = 1
		Hd.BorderSizePixel = 0
		Hd.TextColor3 = Color3.new(0, 0, 0)
		Hd.Parent = Cd
		Hd.TextSize = Gd.TextSize
		Hd.TextColor3 = Gd.TextColor3
		Hd.TextStrokeTransparency = Gd.TextStrokeTransparency
		Hd.Text = Gd.Text
		local Id = Hd.TextBounds
		Hd.Size = UDim2.new(0, Id.X, 0, Id.Y)
		Hd.Position = UDim2.new(0, Dd, 0, 0)
		if Ed < Id.Y then
			Ed = Id.Y
		end
		if Gd.Underline then
			local Jd = Instance.new("Frame")
			Jd.Parent = Cd
			Jd.Size = UDim2.new(0, Id.X, 0, Gd.UnderlineHeight or 1)
			Jd.Position = UDim2.new(0, Dd, 0, Id.Y)
			Jd.BorderSizePixel = 0
			Jd.BackgroundColor3 = Gd.TextColor3
		end
		Dd = Dd + Id.X
	end
	Cd.Size = UDim2.new(0, Dd, 0, Ed)
	Cd.Position = UDim2.new(0.5, -Dd * 0.5, 0.5, -Ed * 0.5)
	return Cd, Dd, Ed
end
function R.kchzviwn(Bd, Cd)
	ub = Bd
	if Cd then
		return
	end
	local Dd = z.Schedule[Bd]
	local Ed = ab.Banner
	Ed.Visible = true
	Ed.Title.Text = Dd.Title
	Ed.Desc.Text = Dd.Desc
	delay(8, function()
		Ed.Visible = false
	end)
end
function R.xmob92hh(Bd, Cd, Dd)
	local Ed = lb[Bd]
	if not Ed then
		Ed = {}
		Ed.HeadingSpring = v.MakeSpring(0, 10, 0.8)
		Ed.PitchSpring = v.MakeSpring(0, 10, 0.8)
		lb[Bd] = Ed
	end
	local Fd = n:FindFirstChild(Bd)
	if not Fd then
		lb[Bd] = nil
		return
	end
	local Gd = Fd.Character
	if not Gd then
		lb[Bd] = nil
		return
	end
	local Hd = Gd:FindFirstChild("UpperTorso")
	if not Hd then
		lb[Bd] = nil
		return
	end
	local Id = Hd:FindFirstChild("Waist")
	local Jd = Gd.Head:FindFirstChild("Neck")
	Ed.Waist = Id
	Ed.Neck = Jd
	v.SpringSetTarget(Ed.HeadingSpring, qb, Cd)
	v.SpringSetTarget(Ed.PitchSpring, qb, Dd)
end
local function dd(Bd)
	if mb then
		Bd = true
		S:FireServer("v5iiq0dk")
		if (not mb or not mb.Passenger) and yb.Window.IsOpen then
			y.WindowClose(yb.Window)
		end
	end
	if not Bd then
		delay(0.1, function()
			dd(true)
		end)
	end
end
do
	local Bd, Cd
	function R.ds0yt4no()
		wait()
		local Dd = o.Character
		if not Dd then
			return
		end
		local Ed = Dd:FindFirstChild("Humanoid")
		if not Ed then
			return
		end
		Ed.Seated:connect(function(Fd)
			if Fd and tb then
				Qc({Name = "Crawl"}, true)
			end
		end)
		if Cd then
			do
				local Fd = game.Lighting:FindFirstChild("ColorCorrection")
				local Gd = game.Lighting:FindFirstChild("Blur")
				local Hd, Id = 0, nil
				local function Jd()
					if Id then
						Id:Disconnect()
					end
					local Ld = Gb(Cd, Bd, 1)
					Fd.Saturation = Ld.Saturation
					Gd.Size = Ld.Blur
					Gd.Enabled = false
				end
				local function Kd(Ld)
					Hd = Hd + Ld * 2
					if Hd >= 1 then
						return Jd()
					end
					local Md = Gb(Cd, Bd, 1)
					Fd.Saturation = Md.Saturation
					Gd.Size = Md.Blur
				end
				Id = h.RenderStepped:connect(Kd)
				db.Frame:TweenSizeAndPosition(UDim2.new(1, 40, 0, 0), UDim2.new(0, -20, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, function()
					db.Frame.Visible = false
				end)
			end
		end
	end
	function R.it6bl9dc(Dd)
		tb = false
		sb = false
		wc = false
		vb = false
		xb.HasEscaped = false
		dd(true)
		if Dd then
			return
		end
		db.Frame.TextLabel.Text = z.DeathMessages[math.random(1, #z.DeathMessages)]
		local Ed = game.Lighting:FindFirstChild("ColorCorrection")
		local Fd = game.Lighting:FindFirstChild("Blur")
		Fd.Enabled = true
		Bd = {Blur = 0, Saturation = 0}
		Cd = {Blur = 8, Saturation = -1}
		local Gd, Hd = 0, nil
		local function Id()
			if Hd then
				Hd:Disconnect()
			end
			local Kd = Gb(Bd, Cd, 1)
			Ed.Saturation = Kd.Saturation
			Fd.Size = Kd.Blur
		end
		local function Jd(Kd)
			Gd = Gd + Kd * 1
			if Gd >= 1 then
				return Id()
			end
			local Ld = Gb(Bd, Cd, Gd)
			Ed.Saturation = Ld.Saturation
			Fd.Size = Ld.Blur
		end
		Hd = h.RenderStepped:connect(Jd)
		delay(0.5, function()
			db.Frame.Size = UDim2.new(1, 40, 0, 0)
			db.Frame.Position = UDim2.new(0, -20, 0.5, 0)
			db.Frame:TweenSizeAndPosition(UDim2.new(1, 40, 0, 150), UDim2.new(0, -20, 0.5, -75), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
			db.Frame.Visible = true
		end)
	end
end
function R.mnn9zmyg()
	vb = true
	uc()
	wait(z.Time.Stunned)
	vb = false
end
function R.c46ljh51(Bd)
	ab.Rank.Text = ("Level %d (%d/%d)"):format(1, Bd, 999)
end
function R.lsseynh8(Bd)
	Jb("Notification", {Source = A, Volume = 0.3}, true)
	pcall(function()
		A:SetCore("SendNotification", Bd)
	end)
end
xb.Notification = R.lsseynh8
function R.fkxc9cx4(Bd)
	pcall(function()
		A:SetCore("ChatMakeSystemMessage", {
			Text = ("[Server] %s"):format(Bd),
			Color = Color3.new(0.9490196078431372, 0.8588235294117647, 0.06274509803921569)
		})
	end)
end
function R.z1xdlc29(Bd)
	jb = Bd
	local Cd = Eb(Bd.Cash)
	bb.Safe.Money.Text = Cd
	bb.DevProduct.Money.Text = Cd
	ab.BuyVehicle.Money.Text = Cd
	bb.GarageSide.Money.Text = Cd
end
function R.gb200gk2(Bd, Cd)
	if Bd > 0 then
		Mb(2)
		ab.PlusCash.TextColor3 = Color3.fromRGB(68, 194, 93)
		ab.PlusCash.TextStrokeColor3 = Color3.fromRGB(33, 97, 44)
	else
		ab.PlusCash.TextColor3 = Color3.fromRGB(240, 30, 30)
		ab.PlusCash.TextStrokeColor3 = Color3.fromRGB(180, 0, 0)
	end
	ab.PlusCash.Text = ("%s Cash"):format(Eb(Bd))
	if Cd then
		ab.PlusCash.Desc.Text = Cd
		ab.PlusCash.Desc.Visible = true
	else
		ab.PlusCash.Desc.Visible = false
	end
	ab.PlusCash.Visible = true
	delay(3, function()
		ab.PlusCash.Visible = false
	end)
end
do
	local Bd = 0
	function R.uagf9kz2()
		local Cd = Bd + 1
		Bd = Cd
		local Dd = z.Time.Cell
		local Ed = ab.CellTime
		Ed.Time.Text = ("%ds"):format(Dd)
		Ed.Visible = true
		local Fd = tick()
		repeat
			wait(1)
			if Cd ~= Bd then
				return
			end
			Ed.Time.Text = ("%ds"):format(z.Time.Cell - tick() + Fd)
		until Dd <= tick() - Fd
		if Cd ~= Bd then
			return
		end
		Ed.Visible = false
	end
end
function R.oa64862u(Bd, Cd)
	if Cd then
		if Cd.Sounds then
			for Ed, Fd in next, Cd.Sounds, nil do
				Fd.Volume = 0
			end
		end
		if Cd.Type == "Heli" then
			Cd.PropAlpha = 0
			oc(Cd, 0)
		end
		local Dd = Cd.Model
		if Dd then
			local Ed = Dd:FindFirstChild("BoundingBox")
			if Ed then
				ad.RemovePart(Ed)
			end
		end
		if ob then
			for Ed, Fd in next, ob, nil do
				if Cd.Character == Fd.Character then
					if Fd.Character and Fd.Character ~= o.Character and Fd.IKP then
						Fd.Dead = true
						Hb(Ed)
						Fd.IKP = nil
					end
					break
				end
			end
		end
	end
	ob = Bd
end
function R.qfqcls0c(Bd)
	kb[Bd] = nil
	lb[Bd] = nil
	pb[Bd] = nil
end
local ed
do
	local Bd = 0
	local Cd = false
	function ed(Dd, Ed, Fd, Gd, Hd, Id, Jd)
		local Kd = Bd + 1
		Bd = Kd
		local Ld = hc()
		Ld.Position = q.CFrame.p
		Ld.LookVector = q.CFrame.lookVector
		q.CameraType = Enum.CameraType.Scriptable
		local Md = 0
		local function Nd()
			h:UnbindFromRenderStep("MoveTransitionCamera" .. Kd)
			if Bd ~= Kd then
				return
			end
			q.CameraType = Enum.CameraType.Custom
			local Qd = o.PlayerScripts.ZoomCamera
			Qd:Fire(Hd)
		end
		local Od = Jd or Dd.CFrame - Dd.CFrame.p
		local function Pd()
			local Qd = 0.016666666666666666
			Md = Md + Qd * (1 / Ed)
			if Bd ~= Kd then
				Nd()
				return
			end
			local Rd
			if Id then
				Rd = Od + Dd.CFrame.p
			else
				Rd = Dd.CFrame
			end
			Ld.TargetPosition = Rd * Fd
			Ld.TargetFocus = Rd * Gd
			ic(Ld, Qd, 6 + 50 * Md * Md, 10 + 50 * Md * Md)
			if Md >= 1 then
				Nd()
			end
		end
		h:BindToRenderStep("MoveTransitionCamera" .. Kd, Enum.RenderPriority.Camera.Value + 1, Pd)
	end
end
do
	local Bd
	local Cd = ab.BuyVehicle
	local function Dd()
		Cd.Visible = false
		dd()
	end
	local function Ed()
		if not Bd then
			Dd()
			return
		end
		S:FireServer("f0upvdid", Bd)
	end
	local function Fd()
		Dd()
		a()
	end
	Cd.Buy.MouseButton1Down:connect(Ed)
	Cd.Cancel.MouseButton1Down:connect(Dd)
	Cd.BuyCash.MouseButton1Down:connect(Fd)
	function R.f0upvdid(Id)
		if Id.Success then
			Cd.Visible = false
			Mb(5)
		elseif Id.NotEnoughMoney then
			Fd()
		else
			Dd()
		end
	end
	function R.qeo1ku4r(Id)
		nb.VehiclesOwned = Id
	end
	function R.twzk2in5(Id, Jd)
		Bd = Id
		local Kd = z.Price[Id]
		if Jd then
			Lb(Jd)
		elseif Kd then
			local Ld = ("Buy %s for %s?"):format(Id, Eb(z.Price[Id]))
			local Md = ab.BuyVehicle
			Md.TextLabel.Text = Ld
			Md.Visible = true
			wb(Md.Buy)
		end
	end
	function R.ikaarafi()
		local Id = ab.SimpleMessage
		Id.Visible = true
		Id.Text = "That vehicle is locked. Ask the owner to unlock it!"
		local function Jd()
			Id.Visible = false
		end
		delay(1, Jd)
	end
	local function Gd()
		if not mb or mb.Passenger then
			ab.Lock.Visible = false
			return
		end
		local Id = mb.Locked
		ab.Lock.Visible = true
		ab.Lock.TextLabel.Text = Id and "Unlock" or "Lock"
		ab.Lock.ImageColor3 = Id and Color3.fromRGB(82, 149, 208) or Color3.new(0.6, 0.6, 0.6)
		ab.Lock.TextLabel.TextColor3 = Id and Color3.fromRGB(51, 93, 130) or Color3.new(0.4, 0.4, 0.4)
	end
	local function Hd()
		if not mb or mb.Passenger then
			ab.Lock.Visible = false
			return
		end
		mb.Locked = not mb.Locked
		S:FireServer("t8h95vpv", mb.Locked)
		Gd()
	end
	ab.Lock.MouseButton1Down:Connect(Hd)
	function R.x93wwoti(Id)
		if tb then
			Qc({Name = "Crawl"}, true)
		end
		local Jd = Id.Type
		local Kd = Id.Make
		sb = false
		w.UnbindGroup(Sc)
		local Ld = false
		if Id.Passenger and Id.Seat:FindFirstChild("Items") then
			Ld = true
		end
		if not Ld then
			bc()
		end
		ed(Id.Model.Camera, 0.5, D(0, 7, 24), D(0, 0, 0), 25)
		wait(0.09)
		if Id.Type == "Chassis" then
			if not Id.Passenger and Id.WeldSteer then
				local Md = Ib(o.Name)
				Id.IK = Md
			end
			if Id.Model.Model:FindFirstChild("Lights") then
				Yc.Hidden = false
			else
				Yc.Hidden = true
			end
			if Id.Passenger then
				w.BindGroup(Xc)
			else
				w.BindGroup(Tc)
			end
			U.VehicleEnter(Id)
		elseif Id.Type == "Heli" then
			if Id.IsBlackHawk then
				Zc.Hidden = false
			else
				Zc.Hidden = true
			end
			if Id.Passenger then
				w.BindGroup(Vc)
			else
				w.BindGroup(Uc)
			end
			zb.VehicleEnter(Id)
		elseif Id.Type == "Motorcycle" or Id.Type == "DuneBuggy" then
			if not Id.Passenger and Id.WeldSteer then
				local Md = Ib(o.Name)
				Id.IKP = Md
			end
			if Id.Passenger then
				w.BindGroup(Xc)
			else
				w.BindGroup(Wc)
			end
			V.VehicleEnter(Id)
		end
		if Id.Passenger then
			Id.Nitro = false
		end
		mb = Id
		Gd()
	end
	function R.t2eo6dkm()
		if not mb then
			return
		end
		local Id = mb
		local Jd = Id.Type
		mb = nil
		if Id.Nitro then
			kc()
		end
		Id.Nitro = false
		if Id.Nitrous then
			for Ld, Md in next, Id.Nitrous, nil do
				Md.Enabled = false
			end
		end
		if Jd == "Chassis" then
			w.UnbindGroup(Tc)
			U.VehicleLeave(Id)
			if not Id.Passenger then
				Hb(o.Name)
			end
		elseif Jd == "Heli" then
			w.UnbindGroup(Uc)
			zb.VehicleLeave(Id)
		elseif Jd == "Motorcycle" or Jd == "DuneBuggy" then
			w.UnbindGroup(Wc)
			V.VehicleLeave(Id)
			if not Id.Passenger then
				Hb(o.Name)
			end
		end
		w.BindGroup(Sc)
		y.WindowClose(Ic)
		if o.Character then
		end
		local Kd = o.PlayerScripts.ZoomCamera
		Kd:Fire(15)
		Gd()
		if Jd == "Heli" then
			do
				local Ld = o.Character
				local Md = false
				local function Nd()
					if Md then
						return
					end
					local Od = Ld:FindFirstChild("HumanoidRootPart")
					if Od then
						local Pd = Ld:FindFirstChild("Humanoid")
						if Pd and not Pd.PlatformStand then
							local Qd = Od.Velocity.magnitude
							if Qd >= 30 then
								Md = true
								rc()
							end
						end
					end
				end
				for Od = 1, 8 do
					delay(0.2 + Od * 0.25, Nd)
				end
			end
		end
	end
	function R.oe1ah5bp(Id)
		if not mb then
			return
		end
		for Jd, Kd in next, Id, nil do
			mb[Jd] = Kd
		end
	end
	function R.ux8nmvhg()
		if not mb then
			return
		end
		if mb.Type ~= "Heli" then
			return
		end
		zb.FallOutOfSky(mb)
	end
end
function R.wflhgj2m()
	ab.FaultyAction.Visible = true
	wait(4)
	ab.FaultyAction.Visible = false
end
function R.xj6n6au9(Bd, Cd)
	Xb(Bd, Cd)
end
function R.in09i9xm(Bd)
	Yb(Bd)
end
function R.wrph2r01(Bd, Cd, Dd)
	local Ed = kb[Bd]
	if Ed then
		for Fd, Gd in next, Dd, nil do
			Ed[Fd] = Gd
		end
	end
	Zb(Bd, Cd)
end
do
	local Bd = false
	local function Cd(Ed)
		Bd = true
		for Jd = 1, #ib.ItemStacks do
			ib.ItemStacks[Jd].j = Jd
		end
		local Fd = Ed.j
		local Gd, Hd
		Hd = h.Heartbeat:Connect(function(Jd)
			local Kd = ab.Inventory.AbsolutePosition
			local Ld = j:GetMouseLocation()
			local Md = Ld.X - Kd.X
			local Nd = math.floor(Md / 80) + 1
			if Nd < 1 then
				Nd = 1
			end
			if Nd > #ib.ItemStacks then
				Nd = #ib.ItemStacks
			end
			Gd = Nd
			for Pd, Qd in next, ib.ItemStacks, nil do
				local Rd = 0
				if Nd > Fd then
					if Pd > Fd and Pd <= Nd then
						Rd = -1
					end
				elseif Nd <= Fd and Pd < Fd and Pd >= Nd then
					Rd = 1
				end
				local Sd = Qd.Frame
				Sd.Position = UDim2.new(0, 80 * (Pd - 1 + Rd), 0, 0)
			end
			local Od = Ed.Frame
			Od.Position = UDim2.new(0, 80 * (Nd - 1), 0, 0)
		end)
		local Id
		Id = j.InputEnded:Connect(function(Jd)
			if Jd.UserInputType == Enum.UserInputType.MouseButton1 or Jd.UserInputType == Enum.UserInputType.Touch then
				Hd:Disconnect()
				Id:Disconnect()
				assert(Gd, "No LastIndex set")
				if Fd ~= Gd then
					local Kd = table.remove(ib.ItemStacks, Fd)
					table.insert(ib.ItemStacks, Gd, Kd)
				end
				Bd = false
				R.um93inh0()
			end
		end)
	end
	local Dd = 0
	j.InputEnded:Connect(function(Ed)
		if Ed.UserInputType == Enum.UserInputType.MouseButton1 or Ed.UserInputType == Enum.UserInputType.Touch then
			Dd = Dd + 1
		end
	end)
	function R.um93inh0(Ed, Fd)
		if Ed then
			local Ld = {}
			for Nd, Od in next, ib.ItemStacks, nil do
				Ld[Od.i] = true
			end
			local Md = {}
			for Nd, Od in next, Ed.ItemStacks, nil do
				Md[Od.i] = true
			end
			for Nd = #ib.ItemStacks, 1, -1 do
				local Od = ib.ItemStacks[Nd]
				if not Md[Od.i] then
					table.remove(ib.ItemStacks, Nd)
				end
			end
			for Nd = 1, #Ed.ItemStacks do
				local Od = Ed.ItemStacks[Nd]
				if not Ld[Od.i] then
					table.insert(ib.ItemStacks, Od)
				end
			end
		end
		local Gd = kb[o.Name]
		if Gd then
			local Ld = false
			for Md, Nd in next, ib.ItemStacks, nil do
				if Nd.i == Gd.i then
					Ld = true
					break
				end
			end
			if not Ld then
				bc()
			end
		end
		local Hd = ab.Inventory.Inner
		local Id = ab.Inventory.ItemPreset
		local Jd = {}
		for Ld, Md in next, ib.ItemStacks, nil do
			do
				local Nd = Md.Name
				local Od = Hd:FindFirstChild(Nd)
				if not Od then
					Od = Id:Clone()
					Od.Name = Nd
					Od.Parent = Hd
					Od.Visible = true
					local function Qd()
						local Sd = Dd + 1
						Dd = Sd
						if Bd then
							return
						end
						local Td = 1
						for Ud = 1, #ib.ItemStacks do
							local Vd = ib.ItemStacks[Ud]
							if Vd.i == Md.i then
								Td = Ud
								break
							end
						end
						yc(Td)
					end
					Od.MouseButton1Up:Connect(Qd)
					local function Rd()
						local Sd = Dd + 1
						Dd = Sd
						delay(0.3, function()
							if Dd == Sd then
								Cd(Md)
							end
						end)
					end
					Od.MouseButton1Down:Connect(Rd)
				end
				Od.Position = UDim2.new(0, 80 * (Ld - 1), 0, 0)
				Od.TextLabel.Text = Ld
				local Pd
				if Nd == "Rifle" then
					Pd = z.Images.Rifle
				elseif Nd == "Pistol" then
					Pd = z.Images.Pistol
				elseif Nd == "Shotgun" then
					Pd = z.Images.Shotgun
				elseif Nd == "AK47" then
					Pd = z.Images.AK47
				elseif Nd == "Flashlight" then
					Pd = z.Images.Flashlight
				elseif Nd == "Knife" then
					Pd = z.Images.Knife
				elseif Nd == "Taser" then
					Pd = z.Images.Taser
				elseif Nd == "Handcuffs" then
					Pd = z.Images.Handcuffs
				elseif Nd == "Key" then
					Pd = z.Images.Key
				elseif Nd == "ShieldSWAT" then
					Pd = z.Images.ShieldSWAT
				elseif Nd == "Donut" then
					Pd = z.Images.Donut
				elseif Nd == "Binoculars" then
					Pd = z.Images.Binoculars
				end
				Od.ImageLabel.Image = Pd or ""
				if Y.Value == "Prisoner" then
					Od.Image = z.Images.CirclePrisoner
					Od.TextLabel.TextColor3 = z.Images.CirclePrisonerColor
				elseif Y.Value == "Police" then
					Od.Image = z.Images.CirclePolice
					Od.TextLabel.TextColor3 = z.Images.CirclePoliceColor
				end
				Md.Frame = Od
				Jd[Od] = true
			end
		end
		for Ld, Md in next, Hd:GetChildren() do
			if not Jd[Md] then
				Md:Destroy()
			end
		end
		local Kd = 80 * #ib.ItemStacks - 40
		ab.Inventory.Size = UDim2.new(0, Kd, 0, 60, 0)
		ab.Inventory.Position = UDim2.new(0.5, -Kd * 0.5, 0.97, -84)
		if Fd then
			local Ld = kb[o.Name]
			if mb then
				return
			end
			if Ld and Ld.Locked then
				return
			end
			ac(Fd)
		end
	end
end
local function fd(Bd)
	local Cd = f.Resource.Item:FindFirstChild(Bd)
	if not Cd then
		return
	end
	Cd = Cd:Clone()
	Cd.Skeleton.BoundingBox.Parent = Cd.Model
	Cd = Cd.Model
	Cd.PrimaryPart = Cd.BoundingBox
	Cd.PrimaryPart.CanCollide = true
	Cd.Parent = workspace
	return Cd
end
local gd = function(Bd, Cd, Dd, Ed)
	Bd = Bd / Ed * 2
	if Bd < 1 then
		return Dd * 0.5 * Bd * Bd + Cd
	else
		return -Dd * 0.5 * ((Bd - 1) * (Bd - 3) - 1) + Cd
	end
end
local hd
local function id(Bd)
	if k then
		return
	end
	local Cd = Cc(Fc)
	if Cd then
		if Cd ~= hd then
			ab.MouseIcon.Visible = true
			j.MouseIconEnabled = false
		end
		local Dd
		if Cd == "Stash" then
			local Fd = kb[o.Name]
			if Fd then
				Dd = "Drawer"
			else
				Dd = "Grab"
			end
		elseif Cd == "Hotwire" then
			Dd = "Lockpick"
		end
		ab.MouseIcon.Image = z.Images[Dd]
		local Ed = D(p.X, p.Y, 0)
		if Ed then
			ab.MouseIcon.Position = UDim2.new(0, Ed.X - 16, 0, Ed.Y - 16)
		end
	elseif hd then
		ab.MouseIcon.Visible = false
		local Dd = true
		local Ed = kb[o.Name]
		if Ed and Ed.CrossHair then
			Dd = false
		end
		j.MouseIconEnabled = Dd
	end
	hd = Cd
end
local jd, kd
do
	local Bd = f.Resource.ButtonY:Clone()
	local Cd = {}
	local function Dd(Ed, Fd)
		if Fd then
			local Hd = v.BinaryFind(Cd, Ed.Sort)
			table.insert(Cd, Hd, Ed)
		else
			for Hd = #Cd, 1, -1 do
				if Cd[Hd] == Ed then
					table.remove(Cd, Hd)
					break
				end
			end
		end
		local Gd = Cd[1]
		if Gd and W == Enum.UserInputType.Gamepad1 then
			Bd.Parent = Gd.Meta.Button
		else
			Bd.Parent = nil
		end
	end
	function jd(Ed, Fd, Gd)
		return ad.AddPart(Ed, Fd, Dd, {Callback = Gd})
	end
	function kd(Ed)
		local Fd = false
		if Ed.UserInputType == Enum.UserInputType.Gamepad1 then
			local Hd = Ed.KeyCode
			if Hd == Enum.KeyCode.ButtonY then
				Fd = true
			end
		elseif Ed.UserInputType == Enum.UserInputType.Keyboard then
			local Hd = Ed.KeyCode
			if Hd == Enum.KeyCode.Y then
				Fd = true
			end
		end
		if not Fd then
			return
		end
		local Gd = Cd[1]
		if not Gd then
			return
		end
		for Hd, Id in next, Cd, nil do
			if Id.Meta.Button == Gd.Meta.Button then
				coroutine.resume(coroutine.create(function()
					Id.Meta.Callback(o)
				end))
			end
		end
	end
end
local ld
ld = {}
do
	local Bd = {}
	local Cd = {}
	local Dd = {}
	local function Ed(Od)
		local Pd = Od.State.Open
		local Qd = Od.Model
		local Rd = Qd.Model:FindFirstChild("light")
		if not Rd then
			Rd = Qd:FindFirstChild("Light")
			if Rd and Rd:IsA("ObjectValue") then
				if Rd.Value then
					Rd = Rd.Value.Parent:FindFirstChild("light")
				else
					Rd = nil
				end
			end
		end
		local Sd, Td = Od.OpenCFrame, Od.ClosedCFrame
		local function Ud()
			if Pd then
				Qd.Model:SetPrimaryPartCFrame(Sd)
			else
				Qd.Model:SetPrimaryPartCFrame(Td)
				if Rd then
					Rd.BrickColor = BrickColor.new("Dusty Rose")
				end
			end
		end
		if Od.State.NoAnimate then
			Od.State.NoAnimate = false
			return Ud()
		end
		if Pd and Rd then
			Rd.BrickColor = BrickColor.new("Bright green")
		end
		local Vd
		local Wd, Xd = 0, Od.Settings.Duration
		local function Yd(Zd, ae)
			Wd = Wd + ae * 1 / Xd
			local be = gd(Wd, 0, 1, 1)
			if not Pd then
				be = 1 - be
			end
			Qd.Model:SetPrimaryPartCFrame(Td:lerp(Sd, be))
			if Wd >= 1 then
				Vd:disconnect()
				Ud()
			end
		end
		Vd = h.Stepped:connect(Yd)
	end
	local function Fd(Od)
		local Pd = Od.State.Open
		local Qd = Od.Model
		local Rd = Qd.Model:FindFirstChild("light")
		if not Rd then
			Rd = Qd:FindFirstChild("Light")
			if Rd and Rd:IsA("ObjectValue") then
				if Rd.Value then
					Rd = Rd.Value.Parent:FindFirstChild("light")
				else
					Rd = nil
				end
			end
		end
		local Sd = Od.State.Direction * Od.Direction
		local Td, Ud = Od.ClosedCFrame, Od.HingeRelativeCFrame
		local Vd = D(0, math.pi * 0.55 * Sd, 0)
		local function Wd()
			if Pd then
				Qd.Model:SetPrimaryPartCFrame(Td * Ud * v.CFrameFromAxisAngle(Vd) * Ud:inverse())
			else
				Qd.Model:SetPrimaryPartCFrame(Td)
				if Rd then
					Rd.BrickColor = BrickColor.new("Dusty Rose")
				end
			end
		end
		if Od.State.NoAnimate then
			Od.State.NoAnimate = false
			return Wd()
		end
		if Pd and Rd then
			Rd.BrickColor = BrickColor.new("Bright green")
		end
		local Xd
		local Yd, Zd = 0, Od.Settings.Duration
		local function ae(be, ce)
			Yd = Yd + ce * 1 / Zd
			local de = gd(Yd, 0, 1, 1)
			if not Pd then
				de = 1 - de
			end
			Qd.Model:SetPrimaryPartCFrame(Td * Ud * v.CFrameFromAxisAngle(F:lerp(Vd, de)) * Ud:inverse())
			if Yd >= 1 then
				Xd:disconnect()
				return Wd()
			end
		end
		Xd = h.Stepped:connect(ae)
	end
	local Gd = 1
	local function Hd(Od)
		local Pd = Od.Model
		local Qd = Cd[Pd]
		if not Qd then
			return
		end
		Qd.State = Od.State
		Qd.Settings = Od.Settings
		Qd.State.Open = true
		if Qd.OpenFun then
			Qd:OpenFun()
		end
	end
	local function Id(Od)
		local Pd = Od.Model
		local Qd = Cd[Pd]
		if not Qd then
			return
		end
		Qd.State = Od.State
		Qd.Settings = Od.Settings
		Qd.State.Open = false
		Qd.State.CloseTime = os.time()
		if Qd.CloseFun then
			Qd:CloseFun()
		end
	end
	R.jdlqdifb = Hd
	R.e4x3s6fe = Id
	local function Jd(Od)
		if not o.Character then
			return
		end
		if Od.Parent == o.Character or Od.Parent.Parent == o.Character then
			return o
		else
			return false
		end
	end
	local function Kd(Od)
		if Od.Settings.SequenceRequireState and Od.State.Open then
			return
		end
		Hd(Od)
		S:FireServer("zbtl1t8p", Od)
	end
	local function Ld(Od, Pd, Qd, Rd)
		if Od.Settings.ServerOnly then
			return false
		end
		if Od.Settings.Locked then
			return false
		end
		local Sd = false
		local Td = Qd:FindFirstChild("Humanoid")
		if Td.Sit or Qd:FindFirstChild("InVehicle") then
			Sd = true
		end
		local Ud = Y.Value == z.Team.Police
		for Wd, Xd in next, ib.ItemStacks, nil do
			if Xd.Name == "Key" then
				Ud = true
				break
			end
		end
		local Vd = false
		if Od.Settings.Vehicle and not Od.Settings.Character then
			Vd = Sd
		elseif Od.Settings.Character and not Od.Settings.Vehicle then
			Vd = not Sd
		elseif Od.Settings.Character and Od.Settings.Vehicle then
			Vd = true
		end
		if Rd then
			Vd = true
		end
		if Od.Settings.Key and Vd then
			Vd = Ud
		end
		if Od.Settings.Team then
			Vd = Vd and Pd.TeamValue.Value == Od.Settings.Team
		end
		if Od.Settings.TeamBlacklist then
			Vd = Vd and Pd.TeamValue.Value ~= Od.Settings.TeamBlacklist
		end
		return Vd
	end
	local function Md(Od)
		local Pd = assert(Od.Model)
		local Qd, Rd = tick(), tick()
		local function Sd(Vd, Wd)
			if Vd ~= o then
				return
			end
			local Xd = tick()
			local Yd = Vd.Character
			if not Yd then
				return
			end
			local Zd = Yd:FindFirstChild("HumanoidRootPart")
			if not Zd then
				return
			end
			if Xd - Rd < 0.1 then
				return
			end
			Rd = Xd
			if Od.State.Open then
				return
			end
			if os.time() - Od.State.CloseTime < Od.Settings.Duration then
				return
			end
			local ae = Ld(Od, Vd, Yd, Wd)
			if Od.Settings.Character then
				if ae then
					Jb("Door", {
						Source = Pd.Closed,
						TimeStart = 1,
						Volume = 0.2
					})
				else
					Jb("Door", {
						Source = Pd.Closed,
						TimeStart = 0,
						MaxTime = 0.6,
						Volume = 0.2
					})
				end
			end
			if not ae then
				return
			end
			if Od.Settings.Type == "Swing" then
				local be = (Od.Model.Closed.Position - Yd.HumanoidRootPart.Position).unit
				local ce = Od.Model.Closed.CFrame.lookVector
				local de = be:Dot(ce)
				local ee = de > 0 and 1 or -1
				Od.State.Direction = ee
			end
			Kd(Od)
		end
		local function Td(Vd)
			local Wd = tick()
			if Wd - Qd < 0.03333333333333333 then
				return
			end
			Qd = Wd
			local Xd = Jd(Vd)
			if not Xd then
				return
			end
			Sd(Xd)
		end
		local function Ud(Vd)
			if Vd ~= o then
				return
			end
			Sd(o, true)
		end
		for Vd, Wd in next, Pd:GetChildren() do
			if Wd:IsA("BasePart") and Wd.Name == "Touch" then
				table.insert(Dd, {Part = Wd, Fun = Td})
			elseif Wd:IsA("ObjectValue") and Wd.Name == "Touch" then
				table.insert(Dd, {
					Part = Wd.Value,
					Fun = Td
				})
			elseif Wd:IsA("ObjectValue") and Wd.Name == "Button" then
				local Xd = Wd.Value
				if Xd:IsA("Part") then
					Xd = Xd.Parent
				end
				if Xd:IsA("Model") then
					Xd = Xd:FindFirstChild("Click").ClickDetector
				end
				local Yd = jd(Xd.Parent, Xd.MaxActivationDistance, Ud)
				Yd.Meta.Button = Xd.Parent
				Xd.MouseClick:connect(Ud)
			end
		end
	end
	function R.eoh45rta(Od)
		local Pd = Od.Model
		local Qd = Cd[Pd]
		if Qd then
			local Rd = Qd.State.Open ~= Od.State.Open
			Qd.State = Od.State
			Qd.Settings = Od.Settings
			if Rd then
				Qd.State.NoAnimate = true
				if Qd.State.Open then
					Hd(Qd)
				else
					Id(Qd)
				end
			end
		else
			Md(Od)
			Cd[Pd] = Od
			table.insert(Bd, Od)
			if Od.Settings.Type == "Swing" then
				Od.OpenFun = Fd
				Od.CloseFun = Fd
			elseif Od.Settings.Type == "Slide" then
				Od.OpenFun = Ed
				Od.CloseFun = Ed
			end
			Od.State.NoAnimate = true
			if Od.State.Open then
				Hd(Od)
			else
				Id(Od)
			end
		end
	end
	function R.dg3mgscu(Od)
		for Pd, Qd in next, Od, nil do
			R.eoh45rta(Qd)
		end
	end
	function ld.Open(Od)
		Hd(Od)
	end
	function ld.Close(Od)
		Id(Od)
	end
	for Od, Pd in next, workspace.TouchTrigger:GetChildren() do
		do
			local Qd = tick()
			local function Rd(Sd)
				if tick() - Qd < 5 then
					return
				end
				Qd = tick()
				S:FireServer("jbimfnir", Pd.Name)
			end
			table.insert(Dd, {Part = Pd, Fun = Rd})
		end
	end
	local function Nd()
		local Od = o.Character
		if not Od then
			return
		end
		local Pd = Od:FindFirstChild("HumanoidRootPart")
		if not Pd then
			return
		end
		local Qd = Pd.Position
		local Rd = D(4, 6, 4)
		for Sd, Td in next, Dd, nil do
			if (Qd - Td.Part.Position).magnitude < 50 and v.IsPointInPrism(Qd, Td.Part.CFrame, Td.Part.Size + Rd) then
				Td.Fun(Pd)
			end
		end
	end
	eb(0.16666666666666666, Nd)
end
do
	local Bd = 0
	local Cd = require(f.Module.Easing)
	local Dd = bb:WaitForChild("Safe")
	local Ed = 480
	if k then
		Ed = 250
	end
	local Fd = Ed * 1.6
	Dd.Size = UDim2.new(0, Fd, 0, Ed)
	Dd.Position = UDim2.new(0.5, -Fd * 0.5, 0.5, -Ed * 0.5)
	do
		local me = k and 0.4 or 0.323
		ab.Sidebar.Size = UDim2.new(me * 0.242, 0, me, 0)
		ab.Sidebar.Position = UDim2.new(0.01, 0, 0.5 - me * 0.5 - (k and 0.1 or 0), 0)
	end
	local Gd = function(me, ne, oe)
		return Color3.new(me / 255, ne / 255, oe / 255)
	end
	local Hd = {}
	local Id = {
		"Legendary",
		"Ultra Rare",
		"Rare",
		"Uncommon",
		"Common"
	}
	local Jd = 0
	local function Kd(me)
		local ne = z.Safes.Price[me]
		local oe = z.Safes.Weights[me]
		local pe = Jd + 1
		Jd = pe
		local qe = Dd.Sidebar.Buy.Inner
		qe.Title.Text = z.Safes.Names[me]
		qe.Price.Text = ("$%s"):format(Db(ne))
		qe.Icon.Image = z.Images[("Safe%d"):format(me)]
		local re = 0
		for se, te in next, oe, nil do
			re = re + te
		end
		for se, te in next, Id, nil do
			do
				local ue = qe.Stats:FindFirstChild(te)
				local ve = L(oe[se] / re * 100 + 0.5)
				local we = ue.Percent.Text:match("%d+")
				local function xe()
					for ye = 0, 1, 0.1 do
						if Jd ~= pe then
							return
						end
						local ze = L((1 - ye) * we + ye * ve + 0.5)
						ue.Percent.Text = ("%d%%"):format(ze)
						h.Stepped:wait()
					end
					ue.Percent.Text = ("%d%%"):format(ve)
				end
				spawn(xe)
			end
		end
	end
	local Ld = "Inventory"
	local Md
	local function Nd()
		if #Hd > 0 or Ld ~= "Inventory" then
		else
			Md("Buy")
		end
	end
	function Md(me)
		if me == "Inventory" then
			bb.SafeSlider.Visible = false
			Dd.Visible = true
			Dd.Body.Buy.Visible = false
			Dd.Body.Inventory.Visible = true
			Dd.Body.Back.Visible = false
			Dd.Body.BuySafes.Visible = true
			Dd.Sidebar.Gift.Visible = false
			Dd.Sidebar.Buy.Gift.Visible = false
			Dd.Sidebar.Buy.Buy.Visible = false
			Dd.Sidebar.Buy.Open.Visible = true
			if Ld ~= me then
				if #Hd > 0 then
					Kd(Hd[1].Type)
				end
				Nd()
			end
			wb(Dd.Body.Inventory.Inner:GetChildren()[1])
		elseif me == "Slider" then
			bb.SafeSlider.Visible = true
			Dd.Visible = false
		elseif me == "Buy" then
			Dd.Body.Buy.Visible = true
			Dd.Body.Inventory.Visible = false
			Dd.Body.Back.Visible = true
			Dd.Body.BuySafes.Visible = false
			Dd.Sidebar.Gift.Visible = false
			Dd.Sidebar.Buy.Visible = true
			Dd.Sidebar.Buy.Gift.Visible = true
			Dd.Sidebar.Buy.Buy.Visible = true
			Dd.Sidebar.Buy.Open.Visible = false
			Kd(1)
			wb(Dd.Body.Buy.Tier1)
		end
		Ld = me
		Nd()
	end
	local Od = 138
	local Pd = function(me, ne)
		return me.Type > ne.Type
	end
	function R.nt5v4ktz()
		Mb(12)
	end
	function R.fxayrpyf(me)
		Md("Slider")
		local ne = bb.SafeSlider
		local oe = 30
		for ze, Ae in next, me, nil do
			local Be = ne.Preset:Clone()
			if Ae.Image then
				Be.ImageLabel.Image = Ae.Image
			elseif Ae.BackgroundColor then
				Be.ImageLabel.BackgroundTransparency = 0
				Be.ImageLabel.BackgroundColor3 = Ae.BackgroundColor
			end
			Be.TextLabel.Text = Ae.Desc
			Be.Patch.Inner.BackgroundColor3 = Ae.Color
			Be.Parent = ne.Inner
			Ae.Frame = Be
		end
		local pe = ne.AbsoluteSize.X
		local qe = 0
		local re = pe * 0.5 - Od + (P() * 90 + 5)
		local se = -2
		local te = 0.12
		local ue, ve
		local function we()
			te = 1
		end
		ve = ne.Skip.MouseButton1Down:connect(we)
		wb(ne.Skip)
		local function xe()
			ve:disconnect()
			local ze = me[oe].Frame
			ze.BackgroundColor3 = Gd(0, 0, 0)
			S:FireServer("rma5hlat")
			wait(1.5)
			Md("Inventory")
			for Ae, Be in next, me, nil do
				Be.Frame:Destroy()
			end
		end
		local function ye(ze)
			qe = qe + ze * te
			if qe >= 1 then
				qe = 1
			end
			local Ae = Cd.outQuad(qe, 0, 1, 1)
			for Ce = 1, #me do
				local De = me[Ce].Frame
				local Ee = (Ce - Ae * oe) * Od + re
				De.Position = UDim2.new(0, Ee, 0, 0)
				De.Visible = true
			end
			local Be = L(Ae * oe - re / Od + 0.5)
			if se ~= Be then
				se = Be
				ab.Tick.PlaybackSpeed = 1 + (1 - Ae) * 0.05
				ab.Tick:Play()
			end
			if qe >= 1 then
				ue:disconnect()
				xe()
			end
		end
		ue = h.Heartbeat:connect(ye)
	end
	local Qd = Dd.Visible
	local Rd = false
	local Sd = 0
	local function Td()
		local me = Sd + 1
		Sd = me
		while not Rd do
			if me ~= Sd then
				return
			end
			local ne = J(tick() * 8) * 0.2 + 0.8
			ab.Sidebar.ToggleSafes.ImageColor3 = Color3.new(ne, ne, ne)
			wait()
		end
		ab.Sidebar.ToggleSafes.ImageColor3 = Color3.new(1, 1, 1)
	end
	local Ud = 0
	local Vd
	local function Wd()
		if not Vd then
			return
		end
		S:FireServer("fxayrpyf", Vd)
	end
	function R.iceehl2s(me, ne)
		table.sort(me, Pd)
		Bd = ne
		Hd = me
		Nd()
		for ue, ve in next, Dd.Body.Inventory.Inner:GetChildren() do
			ve:Destroy()
		end
		local oe = Dd.Body.Inventory.Preset
		local pe = L((#Hd - 1) / 3)
		local qe, re = oe.AbsoluteSize.X, oe.AbsoluteSize.Y
		local se = re * (pe + 1)
		Dd.Body.Inventory.Inner.CanvasSize = UDim2.new(0, 0, 0, se)
		for ue, ve in next, Hd, nil do
			do
				local we = ve.Type
				local xe = z.Safes.Color[we]
				local ye = oe:Clone()
				ye.Visible = true
				ye.ImageLabel.Image = z.Images[("Safe%d"):format(we)]
				local ze = (ue - 1) % 3
				local Ae = L((ue - 1) / 3)
				ye.Size = UDim2.new(0, qe, 0, re)
				ye.Position = UDim2.new(0, qe * ze, 0, re * Ae)
				ye.Parent = Dd.Body.Inventory.Inner
				ye.MouseButton1Down:connect(function()
					Vd = ve
					Kd(we)
					if W == Enum.UserInputType.Gamepad1 then
						Wd()
					end
				end)
				if ue == 1 then
					Vd = ve
					if Ld == "Inventory" then
						Kd(ve.Type)
						wb(ye)
					end
				end
				if ue % 3 == 0 then
					ye.NextSelectionRight = Dd.Sidebar.Buy.Open
				end
			end
		end
		local te = ne
		ab.Sidebar.ToggleSafes.Label.Visible = te > 0
		ab.Sidebar.ToggleSafes.Label.Amount.Text = te
		if te ~= Ud and not Qd then
			Rd = false
			spawn(Td)
		end
		Ud = te
	end
	local Xd = 0
	function R.niez6f3m(me)
		local ne = bb.SafeSlider
		local oe = Xd + 1
		Xd = oe
		ne.Message.Text = me
		ne.Message.Visible = true
		delay(2, function()
			if Xd > oe then
				return
			end
			ne.Message.Visible = false
		end)
	end
	local Yd = #z.Safes.Price
	local Zd = 1
	for me = 1, Yd do
		do
			local ne = Dd.Body.Buy:FindFirstChild(("Tier%d"):format(me))
			local oe = z.Safes.Price[me]
			ne.Price.Text = ("$%d"):format(oe)
			assert(ne)
			local function pe()
				Zd = me
				Kd(me)
				wb(Dd.Sidebar.Buy.Buy)
			end
			ne.MouseButton1Down:connect(pe)
		end
	end
	local ae = function(me)
		return ("https://www.roblox.com/bust-thumbnail/image?width=420&height=420&format=png&userId=%d"):format(me)
	end
	local function be()
		Dd.Sidebar.Gift.Inner.Username.Text = "Your Friend's Username..."
		Dd.Sidebar.Gift.Inner.ImageLabel.Image = ""
		Dd.Sidebar.Gift.Visible = true
		Dd.Sidebar.Buy.Visible = false
	end
	local function ce()
		Dd.Sidebar.Buy.Visible = true
		Dd.Sidebar.Gift.Visible = false
	end
	local de, ee = 0, 0
	local function fe(me, ne)
		local oe = x.MakeState()
		oe.Frame = cb.Particles
		x.Explosion(oe, D(me, ne - 36, 0))
		x.EasySimulate(oe, 3)
	end
	local function ge(me, ne)
		de, ee = me, ne
		S:FireServer("fp2nyrzq", Zd)
	end
	local function he(me, ne)
		de, ee = me, ne
		local oe = Dd.Sidebar.Gift.Inner.Username.Text
		S:FireServer("vmq814l2", Zd, oe)
		ce()
	end
	function R.dqho5w1y(me)
		if me.Success then
			fe(de, ee)
		elseif me.NotEnoughMoney then
			b()
			a()
		end
	end
	local function ie()
		Md("Inventory")
	end
	local function je()
		Md("Buy")
	end
	local function ke(me)
		if me == "Text" then
			do
				local ne = Dd.Sidebar.Gift.Inner.Username.Text
				local oe
				local pe = pcall(function()
					oe = n:GetUserIdFromNameAsync(ne)
				end)
				Dd.Sidebar.Gift.Inner.ImageLabel.Image = pe and ae(oe) or ""
			end
		end
	end
	Dd.Sidebar.Buy.Buy.MouseButton1Down:connect(ge)
	Dd.Sidebar.Buy.Gift.MouseButton1Down:connect(be)
	Dd.Sidebar.Gift.Back.MouseButton1Down:connect(ce)
	Dd.Sidebar.Gift.Gift.MouseButton1Up:connect(he)
	Dd.Sidebar.Gift.Inner.Username.Changed:connect(ke)
	Dd.Body.Back.MouseButton1Down:connect(ie)
	Dd.Body.BuySafes.MouseButton1Down:connect(je)
	Dd.Sidebar.Buy.Open.MouseButton1Down:connect(Wd)
	function c()
		Rd = true
		if Qd then
			return
		end
		ie()
		Qd = true
		Dd.Visible = Qd
	end
	function b()
		if not Qd then
			return
		end
		Qd = false
		Dd.Visible = Qd
	end
	local le = y.MakeWindow()
	le.OpenFun = c
	le.CloseFun = b
	y.WindowGroupAdd(gb, le)
	ab.Sidebar.ToggleSafes.MouseButton1Down:connect(function()
		y.WindowToggle(le)
	end)
	Dd.Close.MouseButton1Down:connect(function()
		y.WindowClose(le)
	end)
end
do
	local Bd = false
	local function Cd()
		Bd = not Bd
		if Bd then
			m.Music.Volume = 0
			ab.Sidebar.ToggleMute.Image = z.Images.Mute
		else
			m.Music.Volume = 1
			ab.Sidebar.ToggleMute.Image = z.Images.Unmute
		end
	end
	ab.Sidebar.ToggleMute.MouseButton1Down:connect(Cd)
end
do
	local Bd = game.Lighting.ColorCorrection
	local Cd = ab:WaitForChild("Team")
	local Dd = workspace:WaitForChild("Cameras")
	local Ed, Fd
	local Gd = hc()
	local function Hd()
		q.CameraType = Enum.CameraType.Custom
		Cd.Visible = false
		ab.MenuText.Visible = false
		if Fd then
			Fd:disconnect()
		end
	end
	local Id = 0
	local function Jd()
		if Ed == "Neutral" then
			Id = Id % 3 + 1
			local Xd = Dd["City" .. Id .. "_Start"]
			local Yd = Dd["City" .. Id .. "_Stop"]
			Gd.StartPosition = Xd.Position
			Gd.TargetPosition = Yd.Position
			Gd.LookVector = Xd.CFrame.lookVector
			Gd.TargetLookVector = nil
		elseif Ed == "Prisoner" then
			local Xd = "Yard"
			if ub == "Cells" then
				Xd = "Cells"
			elseif ub == "Breakfast" or ub == "Dinner" then
				Xd = "Foodcourt"
			end
			local Yd = Dd["Prisoner_" .. Xd]
			Gd.StartPosition = nil
			Gd.Position = (Yd.CFrame * B(0, 0, -10) + D(0, -5, 0)).p
			Gd.TargetPosition = Yd.Position
			Gd.LookVector = (Yd.CFrame * C(-math.pi * 0.1, 0, 0)).lookVector
			Gd.TargetLookVector = Yd.CFrame.lookVector
		elseif Ed == "Police" then
			local Xd = Dd.PoliceBase2
			Gd.StartPosition = nil
			Gd.Position = (Xd.CFrame * B(0, 0, -10) + D(0, -5, 0)).p
			Gd.TargetPosition = Xd.Position
			Gd.LookVector = (Xd.CFrame * C(-math.pi * 0.1, 0, 0)).lookVector
			Gd.TargetLookVector = Xd.CFrame.lookVector
		end
	end
	local function Kd()
		q.CameraType = Enum.CameraType.Scriptable
		if Fd then
			Fd:disconnect()
		end
		local Xd = 0
		local Yd = 24
		local function Zd(ae)
			Xd = Xd + ae
			if Ed == "Neutral" then
				if Xd >= Yd then
					Jd()
					Xd = 0
				end
				local be = Xd / Yd
				if be <= 0.1 then
					local ce = be / 0.1
					Bd.TintColor = Color3.new(ce, ce, ce)
				elseif be >= 0.9 then
					local ce = 1 - (be - 0.9) / 0.1
					Bd.TintColor = Color3.new(ce, ce, ce)
				end
				ic(Gd, ae, be, 0.1)
			else
				ic(Gd, ae, 1, 2)
			end
		end
		Fd = h.Heartbeat:connect(Zd)
		Cd.Visible = true
		ab.MenuText.Visible = true
		wb(Cd.Police)
	end
	local function Ld()
		Cd.Confirm.Visible = true
		wb(Cd.Confirm)
		if Ed == z.Team.Police then
			return
		end
		Ed = z.Team.Police
		Bd.TintColor = Color3.new(1, 1, 1)
		Jd()
	end
	local function Md()
		Cd.Confirm.Visible = true
		wb(Cd.Confirm)
		if Ed == z.Team.Prisoner then
			return
		end
		Ed = z.Team.Prisoner
		Bd.TintColor = Color3.new(1, 1, 1)
		Jd()
	end
	local function Nd()
		S:FireServer("jklglqiu", Ed)
	end
	Cd.Police.MouseButton1Down:connect(Ld)
	Cd.Prisoner.MouseButton1Down:connect(Md)
	Cd.Confirm.MouseButton1Down:connect(Nd)
	function R.jklglqiu()
		Ed = "Neutral"
		Cd.Confirm.Visible = false
		ab.Inventory.Visible = false
		Jd()
		Kd()
	end
	local Od = 0
	function R.neac4i5d()
		local Xd = Od + 1
		local Yd = Cd.Full
		Yd.Visible = true
		delay(1, function()
			if Od > Xd then
				return
			end
			Yd.Visible = false
		end)
	end
	function R.otx9ronb()
		Bd.TintColor = Color3.new(1, 1, 1)
		Hd()
		ab.Inventory.Visible = true
	end
	local Pd = 0
	local function Qd()
		bc()
		dd()
		R.it6bl9dc(true)
		S:FireServer("po9d088h")
		R.jklglqiu()
	end
	local Rd, Sd
	local function Td()
		local Xd = tick()
		if Xd - Pd < z.Time.BetweenTeamChange then
			ab.Confirm.Later.Visible = true
			ab.Confirm.Later.Text = ("You're doing that too much. Try again in %s seconds."):format(Db(math.ceil(z.Time.BetweenTeamChange - Xd + Pd)))
			delay(1, function()
				ab.Confirm.Later.Visible = false
			end)
			return
		end
		Pd = tick()
		if Rd then
			Rd:Disconnect()
		end
		if Sd then
			Sd:Disconnect()
		end
		ab.Confirm.Visible = false
		Qd()
	end
	local function Ud()
		if Rd then
			Rd:Disconnect()
		end
		if Sd then
			Sd:Disconnect()
		end
		ab.Confirm.Visible = false
	end
	local function Vd()
		ab.Confirm.Title.Text = "Switch Teams?"
		ab.Confirm.Visible = true
		Rd = ab.Confirm.Yes.MouseButton1Down:connect(Td)
		Sd = ab.Confirm.No.MouseButton1Down:connect(Ud)
	end
	local Wd = y.MakeWindow()
	Wd.OpenFun = Vd
	Wd.CloseFun = Ud
	y.WindowGroupAdd(gb, Wd)
	ab.Sidebar.SwitchTeams.MouseButton1Down:connect(function()
		if Cd.Visible then
			return
		end
		y.WindowToggle(Wd)
	end)
end
do
	local Bd = {}
	if not i or i and z.Test.Ambient then
		for Jd, Kd in next, z.AmbientIds, nil do
			local Ld = Instance.new("Sound")
			Ld.SoundId = "rbxassetid://" .. Kd
			Ld.Name = Jd
			Ld.Looped = true
			Ld.SoundGroup = m.Ambient
			Ld.Parent = m.Ambient
			Bd[Jd] = Ld
		end
	end
	local function Cd(Jd)
		for Kd, Ld in next, Bd, nil do
			local Md = Jd[Kd] or 0
			if not Ld.IsPlaying and Md > 0.01 then
				Ld:Play()
			elseif Ld.IsPlaying and Md <= 0.01 then
				Ld:Stop()
			end
			Ld.Volume = Md
		end
	end
	Cd(Gb(z.Ambient.Day, z.Ambient.Day, 1))
	local function Dd(Jd, Kd)
		local Ld
		do
			local Pd = X:FindFirstChild("Main")
			if Pd then
				Ld = Pd.Frame.Vig
			end
		end
		local Md, Nd = 0, nil
		local function Od(Pd, Qd)
			Md = Md + Qd * 1 / 4
			if Md >= 1 then
				Md = 1
				Nd:disconnect()
			end
			local Rd = Gb(Jd, Kd, Md)
			Cd(Rd)
			if Ld then
				Ld.ImageColor3 = Rd.Vig
			end
			ab.Minimap.ImageLabel.ImageColor3 = Rd.Minimap
		end
		Nd = h.Stepped:connect(Od)
	end
	local Ed = f.Resource.Rain
	local Fd
	local function Gd()
		local Jd = Vector3.new()
		Ed.Parent = workspace
		Fd = h.Stepped:connect(function()
			local Kd = false
			if o.Character then
				local Rd = o.Character:FindFirstChild("HumanoidRootPart")
				if Rd then
					Jd = Rd.Position + Rd.Velocity
				end
				local Sd = o.Character:FindFirstChild("Humanoid")
				if Sd then
					Kd = Sd.Sit
				end
			end
			local Ld = Ed.RainFall:FindFirstChild("Rain")
			local Md = Ed.RainDroplets:FindFirstChild("Rain")
			Ed.RainFall.CFrame = CFrame.new(Jd) + Vector3.new(0, 80, 0)
			local Nd, Od = workspace:FindPartOnRayWithIgnoreList(Ray.new(Jd, Vector3.new(0, -1, 0) * 10), {
				workspace.Vehicles,
				o.Character
			})
			Ed.RainDroplets.CFrame = CFrame.new(Od) + D(0, -0.5, 0)
			local Pd, Qd = workspace:FindPartOnRayWithIgnoreList(Ray.new(Jd, Vector3.new(0, 1, 0) * 200), {
				workspace.Vehicles,
				o.Character,
				Ed,
				workspace:FindFirstChild("Clouds")
			})
			if Ld then
				Ld.Enabled = not Pd
			end
			m.Ambient.CompressorSoundEffect.Enabled = not not Pd
			if Md then
				Md.Enabled = not not Nd and not Pd and not Kd
			end
		end)
	end
	local function Hd()
		Ed.Parent = f.Resource
		if Fd then
			Fd:Disconnect()
		end
		Fd = nil
	end
	local Id = "Day"
	function R.euhomu5j(Jd)
		if Jd == Id then
			return
		end
		if Jd == "Day" then
			Dd(z.Ambient[Id], z.Ambient.Day)
		elseif Jd == "Night" then
			Dd(z.Ambient[Id], z.Ambient.Night)
		elseif Jd == "Storm" then
			Gd()
			Dd(z.Ambient[Id], z.Ambient.Storm)
		end
		if Jd ~= "Storm" then
			Hd()
		end
		Id = Jd
	end
end
do
	local Bd = bb.DevProduct
	local Cd = 260
	if k then
		Cd = 125
	end
	local Dd = Cd * 4.03846154
	Bd.Size = UDim2.new(0, Dd, 0, Cd)
	Bd.Position = UDim2.new(0.5, -Dd * 0.5, 0.5, -Cd * 0.5)
	function a()
		Bd.Visible = true
		wb(Bd.Body.Buy:GetChildren()[1])
	end
	function d()
		Bd.Visible = false
	end
	local Ed = y.MakeWindow()
	Ed.OpenFun = a
	Ed.CloseFun = d
	y.WindowGroupAdd(gb, Ed)
	ab.Sidebar.ToggleDevProducts.MouseButton1Down:connect(function()
		y.WindowToggle(Ed)
	end)
	Bd.Close.MouseButton1Down:connect(function()
		y.WindowClose(Ed)
	end)
	local function Fd()
		bb.Nitro.Visible = true
		wb(bb.Nitro.Body.Purchase.Tier1.Buy)
	end
	local function Gd()
		bb.Nitro.Visible = false
	end
	local Hd = y.MakeWindow()
	Hd.OpenFun = Fd
	Hd.CloseFun = Gd
	y.WindowGroupAdd(gb, Hd)
	bb.Nitro.Close.MouseButton1Down:connect(function()
		y.WindowClose(Hd)
	end)
	nb.AtGasStation = false
	function R.k0qmd00t(Jd, Kd)
		if Jd then
			if not Kd then
				nb.AtGasStation = true
			end
			y.WindowOpen(Hd)
		else
			nb.AtGasStation = false
			y.WindowClose(Hd)
		end
	end
	ab.Nitro.Purchase.MouseButton1Down:Connect(function()
		R.k0qmd00t(true, true)
	end)
	local function Id()
		if not z.FetchedMarketplace then
			return false
		end
		for Jd, Kd in next, Bd.Body.Buy:GetChildren() do
			do
				local Ld = Kd.Name:match("Tier(%d+)")
				local Md = tonumber(Ld)
				local Nd = z.DevProduct[Md]
				if Nd then
					Kd.Price.Text = Eb(Nd.Cash)
					local Od = Nd.Robux
					Kd.Robux.Text = ("%s R$"):format(Db(Od))
					Kd.MouseButton1Down:connect(function()
						g:PromptProductPurchase(o, Nd.Id)
					end)
				end
			end
		end
		for Jd, Kd in next, z.DevProduct, nil do
			if Kd.Type == "Nitro" then
				local Ld = Kd.Name
				local Md = bb.Nitro.Body.Purchase:FindFirstChild(Ld)
				if Md then
					Md.Buy.TextLabel.Text = ("+%d Fuel"):format(Kd.Fuel)
					Md.Buy.MouseButton1Down:connect(function()
						if nb.Nitro >= z.Scalar.NitroMax - 25 then
							R.lsseynh8({
								Title = "Rocket Fuel",
								Text = "You have a lot of fuel, go use it!"
							})
						else
							local Nd = true
							if not nb.AtGasStation then
								local Od = g:UserOwnsGamePassAsync(o.UserId, z.Gamepass.MobileGarage.PassId)
								if not Od then
									Nd = false
									Lb(z.Gamepass.MobileGarage)
								end
							end
							if Nd then
								g:PromptProductPurchase(o, Kd.Id)
							end
						end
					end)
				end
			end
		end
		return true
	end
	spawn(function()
		while true do
			local Jd = Id()
			if Jd then
				break
			end
			wait(1)
		end
	end)
end
local md
md = {}
do
	local Bd, Cd = table.insert, table.remove
	local Dd = {}
	local function Ed(Id)
		local Jd = F
		local Kd = Id:GetChildren()
		for Ld, Md in next, Kd, nil do
			if not Md.PrimaryPart then
				Md.PrimaryPart = Md:GetChildren()[1]
			end
			Jd = Jd + Md.PrimaryPart.Position
		end
		Jd = Jd / #Kd
		return Jd
	end
	function md.LODSplitEach(Id)
		local Jd = {}
		for Kd, Ld in next, Id:GetChildren() do
			local Md = Instance.new("Model")
			Ld.Parent = Md
			table.insert(Jd, Md)
		end
		for Kd, Ld in next, Jd, nil do
			Ld.Parent = Id
		end
	end
	function md.LODSplitModel(Id, Jd)
		local Kd = L(Jd ^ 0.5)
		local Ld = Id:GetExtentsSize()
		local Md = Ed(Id)
		local Nd = L(Ld.X / Kd + 0.5)
		local Od = L(Ld.Z / Kd + 0.5)
		local Pd = {}
		for Qd, Rd in next, Id:GetChildren() do
			local Sd = Rd.PrimaryPart.Position
			local Td = L((Sd.X - Md.X) / Nd) * Nd
			local Ud = L((Sd.Z - Md.Z) / Od) * Od
			local Vd = ("%d/%d"):format(Td, Ud)
			local Wd = Pd[Vd]
			if not Wd then
				Wd = Instance.new("Model")
				Wd.Parent = workspace
				Wd.Name = Vd
				Pd[Vd] = Wd
			end
			Rd.Parent = Wd
		end
		for Qd, Rd in next, Pd, nil do
			Rd.Parent = Id
		end
		return math.max(0.25 * (Nd + Od) * 1.4142135623730951, 100)
	end
	function md.LODAddModel(Id, Jd)
		local Kd = Id.Parent
		assert(Kd)
		local Ld = {
			Model = Id,
			Parent = Kd,
			Center = Ed(Id),
			MinDist = Jd,
			Loaded = true,
			Locked = false
		}
		table.insert(Dd, Ld)
		return Ld
	end
	function md.LODAddModels(Id, Jd)
		local Kd = {}
		for Ld, Md in next, Id:GetChildren() do
			local Nd = md.LODAddModel(Md, Jd)
			table.insert(Kd, Nd)
		end
		return Kd
	end
	function md.LODLockModel(Id)
		for Jd = 1, #Dd do
			local Kd = Dd[Jd]
			if Kd.Model == Id then
				md.LODForceLoad(Kd)
				Kd.Locked = true
				return Kd
			end
		end
		return false
	end
	function md.LODForceLoad(Id)
		Id.Model.Parent = Id.Parent
		Id.Loaded = true
		Id.Locked = true
	end
	local Fd = {}
	local Gd = {}
	function md.LODUpdateInterest(Id)
		Fd = {}
		Gd = {}
		for Jd, Kd in next, Dd, nil do
			local Ld = (Kd.Center - Id).magnitude
			Kd.Sort = Ld
			local Md = Ld < Kd.MinDist
			if Kd.Locked then
				Md = true
			end
			local Nd = Kd.Loaded
			if Md and not Nd then
				local Od = v.BinaryFind(Fd, Ld)
				Bd(Fd, Od, Kd)
			elseif not Md and Nd then
				local Od = v.BinaryFind(Gd, Ld)
				Bd(Gd, Od, Kd)
			end
		end
	end
	local function Hd()
		if #Fd > 0 then
			local Id = Cd(Fd, 1)
			Id.Model.Parent = Id.Parent
			Id.Loaded = true
		end
		if #Gd > 0 then
			local Id = Cd(Gd)
			Id.Model.Parent = nil
			Id.Loaded = false
		end
	end
	function md.LODStart(Id)
		eb(Id, Hd, "LOD Queue")
	end
end
do
	local Bd = workspace:FindFirstChild("Trees")
	if Bd then
	end
	local Cd = workspace:FindFirstChild("Streetlights")
	if Cd and not i then
		local Id = md.LODSplitModel(Cd, 100)
		md.LODAddModels(Cd, Id * 3)
	end
	local Dd = workspace:FindFirstChild("Bush")
	if Dd then
		local Id = md.LODSplitModel(Dd, 100)
		md.LODAddModels(Dd, Id * 2.5)
	end
	local Ed = workspace:FindFirstChild("Cells")
	if Ed then
		md.LODSplitEach(Ed)
		e = md.LODAddModels(Ed, 200)
	end
	local Fd = workspace:FindFirstChild("Roads")
	if Fd then
		local Id = md.LODSplitModel(Fd, 150)
		md.LODAddModels(Fd, 1000)
	end
	local Gd = workspace:FindFirstChild("Railroad")
	if Gd then
		local Id = md.LODSplitModel(Gd, 150)
		md.LODAddModels(Gd, 800)
	end
	md.LODStart(0.06666666666666667)
	local function Hd()
		if q.CameraType == Enum.CameraType.Scriptable then
			local Md = q.CFrame.p
			md.LODUpdateInterest(Md)
			return
		end
		local Id = o.Character
		if not Id then
			local Md = q.CFrame.p
			md.LODUpdateInterest(Md)
			return
		end
		local Jd = Id:FindFirstChild("HumanoidRootPart")
		if not Jd then
			return
		end
		local Kd = Id:FindFirstChild("Humanoid")
		if not Kd then
			return
		end
		if Kd.Health <= 0 then
			return
		end
		local Ld = Jd.Position
		md.LODUpdateInterest(Ld)
	end
	eb(1, Hd, "LOD Interest Update")
	function R.quj0ickx(Id)
		md.LODUpdateInterest(Id)
	end
end
local nd, od
do
	local Bd = {}
	local Cd = {}
	local Dd = {}
	local Ed
	local function Fd(Gd, Hd)
		if not rb then
			return
		end
		local Id = Ob()
		if Id and not Dd[Id] then
			local Jd = {
				Closed = Id.Drawer.CFrame
			}
			Jd.Open = Jd.Closed * B(0, 0, -1.5)
			Dd[Id] = Jd
		end
		if Id and not Cd[Id] then
			Bd[Id] = {
				t = 0,
				Start = Id.Drawer.CFrame,
				Target = Dd[Id].Open * C(0, (math.random() * 2 - 1) * 0.1, 0)
			}
			Cd[Id] = true
		end
		if Ed and Id ~= Ed and Cd[Ed] then
			Bd[Ed] = {
				t = 0,
				Start = Ed.Drawer.CFrame,
				Target = Dd[Ed].Closed
			}
			Cd[Ed] = false
		end
		Ed = Id
		if Id then
			Ac(Fc, "Stash")
		else
			Bc(Fc, "Stash")
		end
		for Jd, Kd in next, Bd, nil do
			local Ld = Kd.t
			if Ld < 1 then
				Ld = Ld + Hd * 1 / 0.4
				Kd.t = Ld
				if Ld >= 1 then
					Ld = 1
				end
				if Cd[Jd] then
					local Md = gd(Ld, 0, 1, 1)
					Jd:SetPrimaryPartCFrame(Kd.Start:lerp(Kd.Target, Md))
				else
					local Md = gd(Ld, 0, 1, 1)
					Jd:SetPrimaryPartCFrame(Kd.Start:lerp(Kd.Target, Md))
				end
			end
		end
	end
	h.Stepped:connect(Fd)
	function nd(Gd, Hd)
		bc()
		for Id, Jd in next, ib.ItemStacks, nil do
			if Jd.i == Gd.i then
				table.remove(ib.ItemStacks, Id)
				break
			end
		end
		S:FireServer("xcx3lir3", Gd, Hd)
	end
	function od(Gd)
		local Hd = Gd.Name:match("Drawer(%d)")
		local Id = kb[o.Name]
		local Jd = hb.Model == Gd.Parent.Parent
		if Jd then
			local Kd = 0
			for Nd, Od in next, hb.Stash.ItemStacks, nil do
				Kd = Kd + 1
			end
			local function Ld()
				local Nd = g:UserOwnsGamePassAsync(o.UserId, z.Gamepass.Stash.PassId)
				if not Nd then
					Lb(z.Gamepass.Stash)
				end
				return Nd
			end
			local Md = hb.Stash.ItemStacks[Hd]
			if Id then
				local Nd = true
				if not Md and Kd > 0 then
					Nd = Ld()
				end
				if not Nd then
					return
				end
				nd(Id, Gd)
			elseif Md then
				S:FireServer("uceq23fn", Gd)
			end
		else
			local function Kd(Ld)
				if not Ld then
					return
				end
				if Id then
					nd(Id, Gd)
				else
					S:FireServer("ixgwj6ee", Gd)
				end
				id()
			end
			Kd(true)
		end
	end
end
do
	local Bd = ab.Banner
	local Cd = function(Dd)
		return {
			Font = Enum.Font.SourceSansBold,
			TextSize = 16,
			Text = Dd,
			TextColor3 = Color3.new(1, 1, 1),
			TextStrokeTransparency = 0.95
		}
	end
	function R.lqrmcbhf()
		xb.HasEscaped = true
		Bd.Title.Text = "You escaped!"
		Bd.Desc.Text = "You are now a criminal. Run, hide, rob banks, check out the city, find other criminals. Don't get caught!"
		Bd.Visible = true
		wait(6)
		Bd.Visible = false
	end
end
function R.byupsssk()
	if mb then
		local Bd = 0
		mb.TireHealth = Bd
	end
end
do
	local Bd = ab.CollectMoney
	function R.ragl8mi3(Dd, Ed)
		local Fd = Dd.Type
		local Gd = Dd.Money
		local Hd = Dd.Message
		Bd.Visible = true
		Bd.Message.Text = Hd
		Bd.Money.Text = Eb(Gd)
		Bd.Maximum.Text = ("/ %s"):format(Eb(Dd.Maximum))
		Bd.DuffelBag.Text = ("Upgrade Bag to Hold %s"):format(Eb(Dd.UpgradeMaximum))
		Bd.DuffelBag.Visible = math.abs(Dd.UpgradeMaximum - Dd.Maximum) > 1
		if Fd == "Bank" or Fd == "Train" then
			Bd.Progress.Frame:TweenSize(UDim2.new(Dd.Money / Dd.Maximum, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
		elseif Fd == "Jewelry" then
			Bd.Progress.Frame.Size = UDim2.new(1, 0, 1, 0)
		end
		if Ed then
			Bd.Time.Visible = true
			Bd.Time.Text = ("%ds"):format(math.max(Ed, 0))
		else
			Bd.Time.Visible = false
		end
	end
	function R.ndt2ck8t()
		Bd.Visible = false
		Bd.Progress.Frame.Size = UDim2.new(0, 0, 1, 0)
	end
	local function Cd()
		Lb(z.Gamepass.DuffelBag)
	end
	Bd.DuffelBag.MouseButton1Down:connect(Cd)
end
do
	local function Bd(Cd, Dd)
		local Ed, Fd = Dd[1], Dd[2]
		Jb("Button", {Source = Ed, Volume = 0.2})
		S:FireServer("o5unh9bt", Fd)
	end
end
function R.o4z8jxnx(Bd)
	hb = Bd
	md.LODLockModel(hb.Model.Parent)
end
function R.ttpv1nnt(Bd)
	Lb(Bd)
end
function R.rqhqza4g(Bd)
	local Cd = Bd == "Criminal"
	local Dd = ab.Sidebar.Bounty
	Dd.Visible = Cd
end
function R.msn4okvk(Bd)
	local Cd = ab.Sidebar.Bounty
	Cd.Text = Eb(Bd)
end
do
	local Bd = 1
	local function Cd()
		local Dd
		if Y.Value == z.Team.Prisoner then
			Dd = "Prisoner"
		elseif Y.Value == z.Team.Police then
			Dd = "Police"
		end
		if not Dd then
			return
		end
		local Ed = ab.Inventory.Help
		local Fd = z.Help[Dd]
		if not Fd then
			return
		end
		Bd = Bd % #Fd + 1
		local Gd = Fd[Bd]
		Ed.Text = Gd
		Ed.Visible = true
	end
	eb(z.Time.HelpMessageCycle, Cd, "Cycle Help Message")
end
function R.grf6gg9n(Bd, ...)
	if Bd == "ems" then
		delay(0.5, function()
			S:FireServer("grf6gg9n", Bd)
		end)
	else
		S:FireServer("grf6gg9n", Bd)
	end
	assert(R[Bd], Bd)(...)
end
S.OnClientEvent:connect(function(Bd, ...)
	assert(R[Bd], Bd)(...)
end)
local pd
do
	local function Bd(Dd)
		local Ed = o.Character
		if not Ed then
			return
		end
		local Fd = Ed:FindFirstChild("HumanoidRootPart")
		if not Fd then
			return
		end
		local Gd = {}
		local Hd = Dd.Model
		for Id, Jd in next, Hd:GetChildren() do
			if Jd.Name == "Seat" or Jd.Name == "Passenger" then
				local Kd = Jd:FindFirstChild("Player")
				local Ld = Jd:FindFirstChild("PlayerName")
				if Kd and Kd.Value and Ld then
					local Md = Ld.Value
					local Nd = {Part = Jd, PlayerName = Md}
					table.insert(Gd, Nd)
				end
			end
		end
		table.sort(Gd, function(Id, Jd)
			return Id.PlayerName < Jd.PlayerName
		end)
		return Gd
	end
	local function Cd()
		local Dd = ab.Eject
		if mb and not mb.Passenger then
			Dd.Visible = true
			local Gd = {}
			local Hd = Bd(mb)
			if Hd then
				local Id = 0
				for Jd, Kd in next, Hd, nil do
					do
						local Ld = Kd.PlayerName
						if Ld ~= o.Name then
							Id = Id + 1
							Gd[Ld] = true
							local Md = Dd.Inner:FindFirstChild(Ld)
							if not Md then
								Md = Dd.Preset:Clone()
								Md.Name = Ld
								Md.TextLabel.Text = Ld
								Md.Parent = Dd.Inner
								Md.MouseButton1Down:connect(function()
									S:FireServer("fqn1nelj", Ld)
								end)
							end
							Md.Visible = true
							Md.Position = UDim2.new(0, 0, 1 - Id)
						end
					end
				end
			end
			for Id, Jd in next, Dd.Inner:GetChildren() do
				if not Gd[Jd.Name] then
					Jd:Destroy()
				end
			end
		else
			Dd.Visible = false
		end
		local Ed = o.Character
		if not Ed then
			return
		end
		local Fd = Ed:FindFirstChild("HumanoidRootPart")
		if not Fd then
			return
		end
		for Gd, Hd in next, workspace.Vehicles:GetChildren() do
			local Id = Hd:FindFirstChild("Seat")
			local Jd = Hd:FindFirstChild("BoundingBox")
			local Kd = Hd:FindFirstChild("Make")
			if Jd and Id then
				local Ld = Id:FindFirstChild("Player")
				local Md = (Fd.Position - Jd.Position).magnitude
				local Nd = Jd:FindFirstChild("MoneyBillboard")
				if Nd and Kd and Ld then
					Nd.Enabled = Md < 50 and not Ld.Value and not nb.VehiclesOwned[Kd.Value]
				end
			end
		end
	end
	eb(0.1, Cd)
	function pd(Dd)
		if mb then
			return
		end
		S:FireServer("hj2kza2n", Dd.Parent, Dd)
	end
	function R.cd8uoa16()
		wait()
		s.CircleAction.NotAllowed()
	end
end
local qd = qb
local rd, sd
h.Stepped:connect(function(Bd, Cd)
	t.Update(Cd)
	if o.Character then
		for Ld, Md in next, s.CircleAction.Specs, nil do
			if Md.IsVehicle then
				local Nd = not mb
				local Od = Md.Part
				if Od and Od.Parent then
					local Pd, Qd
					if Y.Value == z.Team.Prisoner then
						local Sd = Od.Parent:FindFirstChild("TeamRestrict")
						if Sd and Od.Name == "Seat" and Sd.Value ~= Y.Value then
							Pd = true
						end
					elseif Y.Value == z.Team.Police then
						local Sd = kb[o.Name]
						if Sd and Sd.Name == "Handcuffs" then
							Qd = true
						end
					end
					Md.ShouldHotwire = Pd
					Md.ShouldEject = Qd
					local Rd = 10
					if Pd then
						Md.Name = "Hijack"
						Md.Timed = true
						Md.Duration = 8
					elseif Qd then
						Md.Name = "Eject"
						Md.Timed = false
						Md.Duration = 1
						Rd = 12
					else
						Md.Timed = false
						local Sd = Od:FindFirstChild("Player")
						if Sd and Sd.Value then
							Nd = false
						end
						Md.Name = Od.Name == "Seat" and "Enter Driver" or "Enter Passenger"
					end
					Md.Dist = Rd
				end
				Md.Enabled = Nd
			elseif Md.IsPlayer then
				local Nd, Od, Pd
				local Qd = kb[o.Name]
				if Qd and Qd.Name == "Handcuffs" then
					if Y.Value == z.Team.Police then
						local Sd = n:FindFirstChild(Md.PlayerName)
						if Sd and Sd.TeamValue.Value == z.Team.Prisoner and Sd.Character and not Sd.Character:FindFirstChild("Handcuffs") and not Sd.Character.Humanoid.Sit then
							Nd = true
						end
					end
				elseif Y.Value == z.Team.Prisoner then
					local Sd = n:FindFirstChild(Md.PlayerName)
					if Sd then
						if Sd.TeamValue.Value == z.Team.Police then
							if Sd.Character and o.Character then
								local Td = o.Character:FindFirstChild("HumanoidRootPart")
								local Ud = Sd.Character:FindFirstChild("HumanoidRootPart")
								if Td and Ud then
									local Vd = Td.CFrame
									local Wd = Ud.CFrame
									local Xd = Vd.lookVector:Dot(Wd.lookVector) >= 0.3333333333333333
									local Yd = 0.3333333333333333 <= Wd.lookVector:Dot((Wd.p - Vd.p).unit)
									if Xd and Yd then
										Od = true
									end
								end
							end
						elseif Sd.TeamValue.Value == z.Team.Prisoner and xb.HasEscaped and Sd.Character and o.Character then
							local Td = Sd.Character:FindFirstChild("Handcuffs")
							local Ud = o.Character:FindFirstChild("Handcuffs")
							if Td and not Ud then
								Pd = true
							end
						end
					end
				end
				Md.ShouldArrest = Nd
				Md.ShouldPickpocket = Od
				Md.ShouldBreakout = Pd
				local Rd = 10
				if Nd then
					Md.Duration = 0.5
					if k then
						Md.Timed = false
					else
						Md.Timed = true
					end
					Md.Name = "Arrest"
					Rd = 12
				elseif Od then
					Md.Duration = 3
					Md.Timed = true
					Md.Name = "Pickpocket"
				elseif Pd then
					Md.Duration = 2
					Md.Timed = true
					Md.Name = "Breakout"
				end
				Md.Dist = Rd
				Md.Enabled = Nd or Od or Pd
			elseif Md.IsRob then
				Md.Enabled = Y.Value == z.Team.Prisoner
			elseif Md.IsTrainVault then
				local Nd = Md.Part
				local Od = false
				if Nd then
					local Pd = Nd:FindFirstChild("Open")
					if Pd then
						Od = Pd.Value
					end
				end
				Md.Enabled = Y.Value == z.Team.Prisoner and not Od
			elseif Md.IsTrainDoor then
				local Nd = Md.Part
				local Od = false
				if Nd then
					local Pd = Nd:FindFirstChild("Open")
					if Pd then
						Od = Pd.Value
					end
				end
				Md.Enabled = Y.Value == z.Team.Prisoner and not Od
			end
		end
	end
	Q.profilebegin("Vehicle LQ Update")
	if ob and o.Character then
		local Ld = o.Character:FindFirstChild("HumanoidRootPart")
		if Ld then
			local Md = Ld.Position
			for Nd, Od in next, ob, nil do
				if Nd ~= o.Name then
					local Pd = Od.Model
					if Pd then
						local Qd = Pd:FindFirstChild("BoundingBox")
						if Qd and (Md - Qd.Position).magnitude < 600 then
							if Od.Type == "Chassis" then
								nc(Od, Cd)
							elseif Od.Type == "Heli" then
								oc(Od, Cd)
							elseif Od.Type == "Motorcycle" or Od.Type == "DuneBuggy" then
								pc(Od, Cd)
							end
						end
					end
				end
			end
		end
	end
	Q.profileend()
	sc(Cd)
	bd()
	local Dd = 0
	local Ed = o.Character
	if Ed then
		local Ld = Ed:FindFirstChild("HumanoidRootPart")
		if Ld then
			Q.profilebegin("Fall Damage")
			Dd = math.abs(Ld.Velocity.Y)
			local Md = Ld.Position.Y
			if mb or qc then
				rd = nil
			end
			if Dd > 90 and Dd < 200 then
				if not rd or Md > rd then
					rd = Md
				end
			elseif rd and Dd < 20 and M(sd - Md) < 20 * Cd then
				local Nd = rd - Md
				if Nd > 20 then
					uc()
					S:FireServer("eejzg4mb", Nd)
					rd = nil
				end
			end
			sd = Md
			Q.profileend()
		end
	end
	if qc and not k then
		ab.Parachute.Visible = true
	else
		ab.Parachute.Visible = false
	end
	if Dd > 110 and Dd < 200 then
		uc()
	end
	vc()
	Q.profilebegin("Mouse Icons")
	if qb - qd > 0.2 then
		qd = qb
		local Ld = Qb()
		if Ld then
			if not mb then
				local Md = Ld:FindFirstChild("TeamRestrict")
				if Y.Value == z.Team.Prisoner and Md and Md.Value ~= Y.Value then
					Ac(Fc, "Hotwire")
				else
					Bc(Fc, "Hotwire")
				end
			end
		else
			Bc(Fc, "Hotwire")
		end
	end
	Q.profileend()
	Q.profilebegin("Time/UI")
	local Fd = workspace:FindFirstChild("Time")
	if Fd then
		Fd = Fd.Value
		local Ld = Fd >= 12
		local Md = Fd % 1
		local Nd = Fd - Md
		Md = L(Md * 60 + 0.5)
		Md = L(Md / 15) * 15
		if Md >= 60 then
			Md = Md - 60
			Nd = Nd + 1
		end
		if Nd > 12 then
			Nd = Nd - 12
		end
		if Nd == 0 then
			Nd = 12
		end
		ab.Schedule.Text = ("%d:%02d %s   Schedule: %s"):format(Nd, Md, Ld and "PM" or "AM", ub)
	end
	local Gd = (J(qb) + 1) * 0.5
	local Hd = Color3.fromHSV(Gd, 0.8, 0.8)
	bb.Safe.Money.TextStrokeColor3 = Hd
	bb.DevProduct.Money.TextStrokeColor3 = Hd
	local Id = (J(4 * qb) + 1) * 0.5
	local Jd = Color3.fromHSV(0, Id, 0.7 + Gd * 0.3)
	bb.Safe.Sidebar.Buy.Inner.Stats.Legendary.TextStrokeColor3 = Jd
	bb.Safe.Sidebar.Buy.Inner.Stats.Legendary.Percent.TextStrokeColor3 = Jd
	local Kd = Color3.fromRGB(207 + J(8 * qb) * 20, J(7 * qb + 4) * 20 + 20, 235 + J(6 * qb + 8) * 20)
	bb.Nitro.Body.Bar.Value.BackgroundColor3 = Kd
	ab.Nitro.Value.BackgroundColor3 = Kd
	Q.profileend()
end)
function R.p25n6pkj(Bd)
	local Cd
	if Bd.NotEnoughMoney then
		Cd = "You don't have that much money."
	elseif Bd.TooLittleQuantity then
		Cd = ("Drop more than %s."):format(Eb(Bd.TooLittleQuantity))
	elseif Bd.TooMuchQuantity then
		Cd = ("Drop less than %s."):format(Eb(Bd.TooMuchQuantity))
	elseif Bd.Debounce then
		Cd = ("Wait %d seconds."):format(Bd.Debounce)
	elseif Bd.Daily then
		Cd = ("Can only donate %s per day."):format(Eb(Bd.Quantity))
	end
	if Cd then
		R.lsseynh8({Title = "Donation", Text = Cd})
	end
end
bb.DevProduct.Drop.Input.Box.Changed:connect(function(Bd)
	if Bd == "Text" then
		local Cd = bb.DevProduct.Drop.Input.Box.Text
		bb.DevProduct.Drop.Input.Box.Text = Cd:gsub("[^%d]+", "")
	end
end)
bb.DevProduct.Drop.Button.Submit.MouseButton1Down:connect(function()
	local Bd = bb.DevProduct.Drop.Input.Box.Text
	Bd = tonumber(Bd)
	if not Bd then
		return
	end
	S:FireServer("ey6qoldv", Bd)
end)
local td = {}
local function ud(Bd, Cd)
	local Dd, Ed
	if Cd then
		Dd = Cd.Center
		Ed = Cd.Touch
	end
	if Dd then
		local Jd = q.ViewportSize
		rb = D(Jd.X * 0.5, Jd.Y * 0.3, 0)
	else
		rb = D(p.X, p.Y, 0)
	end
	id()
	local Fd = Ob()
	local Gd = Pb()
	local Hd = Qb()
	local Id = kb[o.Name]
	if Fd then
		od(Fd)
	elseif Id then
		rb = Bd.Position
		fc(Id)
	elseif Gd then
		td.OnPlayer = Gd
		local Jd = Gd.TeamValue.Value
		if Y.Value == z.Team.Police and Jd == z.Team.Prisoner then
			Sb(Gd)
		end
	end
end
local function vd(Bd)
	if mb then
		if mb.Type == "Chassis" then
			U.InputChanged(Bd, W)
		elseif mb.Type == "Heli" then
			zb.InputChanged(Bd, W)
		end
	end
	if Bd.UserInputType == Enum.UserInputType.MouseMovement then
		rb = Bd.Position
		id(Bd)
	end
end
local function wd(Bd, Cd)
	if Cd and (Bd.UserInputType ~= Enum.UserInputType.Gamepad1 or Bd.KeyCode ~= Enum.KeyCode.ButtonA) then
		return
	end
	td.t = tick()
	kd(Bd)
	if mb then
		if mb.Type == "Chassis" then
			U.InputBegan(Bd)
		elseif mb.Type == "Heli" then
			zb.InputBegan(Bd)
		end
	end
	if Bd.UserInputType == Enum.UserInputType.Keyboard then
		local Dd = Bd.KeyCode
		local Ed = Dd.Value
		if Ed >= 49 and Ed <= 57 then
			local Fd = Ed - 49 + 1
			yc(Fd)
			id()
		elseif Dd == Enum.KeyCode.R then
			local Fd = kb[o.Name]
			if Fd then
				Bb(Fd)
			end
		elseif Dd == Enum.KeyCode.Space then
			if mb then
				dd()
			end
			if qc then
				tc()
			end
			if zb.Roped then
				zb.AttemptRopeDetach()
			end
		else
			if Dd == Enum.KeyCode.E and mb and mb.Type ~= "Heli" then
				dd()
			else
			end
		end
	elseif Bd.UserInputType == Enum.UserInputType.Gamepad1 then
		local Dd = Bd.KeyCode
		if Dd == Enum.KeyCode.ButtonA then
			if not l.SelectedObject then
				dd()
			end
		elseif Dd == Enum.KeyCode.ButtonY then
		elseif Dd == Enum.KeyCode.ButtonX then
			local Ed = kb[o.Name]
			if Ed then
				Bb(Ed)
			end
		elseif Dd == Enum.KeyCode.ButtonL1 then
			xc = xc - 1
			if xc < 0 then
				xc = 0
				bc()
			elseif xc > #ib.ItemStacks then
				xc = #ib.ItemStacks + 1
				bc()
			else
				yc(xc)
			end
		elseif Dd == Enum.KeyCode.ButtonR1 then
			xc = xc + 1
			if xc < 0 then
				xc = 0
				bc()
			elseif xc > #ib.ItemStacks then
				xc = #ib.ItemStacks + 1
				bc()
			else
				yc(xc)
			end
		elseif Dd == Enum.KeyCode.ButtonR2 then
			local Ed = kb[o.Name]
			if Ed then
				local Fd = q.ViewportSize
				fc(Ed, true)
			end
			ud(Bd, {Center = true})
		end
	elseif Bd.UserInputType == Enum.UserInputType.MouseButton1 then
		ud(Bd)
	end
end
local function xd(Bd, Cd)
	if Cd then
		return
	end
	if mb then
		if mb.Type == "Chassis" then
			U.InputEnded(Bd)
		elseif mb.Type == "Heli" then
			zb.InputEnded(Bd)
		end
	end
	if Bd.UserInputType == Enum.UserInputType.Keyboard then
	elseif Bd.UserInputType == Enum.UserInputType.MouseButton1 then
		gc()
	elseif Bd.UserInputType == Enum.UserInputType.Gamepad1 then
		local Dd = Bd.KeyCode
		if Dd == Enum.KeyCode.ButtonR2 then
			gc()
		end
	end
end
j.InputBegan:connect(wd)
j.InputEnded:connect(xd)
j.InputChanged:connect(vd)
local function yd(Bd)
	local Cd = Enum.UserInputType.Gamepad1 or Enum.UserInputType.Gamepad2
	local Dd = Enum.UserInputType.Keyboard
	if Bd ~= Cd and Bd ~= Dd then
		return
	end
	W = Bd
	local Ed
	if W == Enum.UserInputType.Gamepad1 then
		Ed = "Gamepad"
	elseif W == Enum.UserInputType.Keyboard then
		Ed = "Desktop"
	end
	if Rc.Style ~= Ed then
		Rc.Style = Ed
		w.UpdateUI(Rc)
	end
end
j.LastInputTypeChanged:connect(yd)
local function zd(Bd)
	rb = Bd.Position
	local Cd = kb[o.Name]
	if Cd then
		fc(Cd)
	end
	ud(Bd, {Touch = true})
end
local function Ad()
	gc()
end
do
	local Bd = s.CircleAction
	local Cd = t.MakeSpec()
	function Cd.QueryFun()
		local Id = workspace:FindFirstChild("Vehicles")
		return Id and Id:GetChildren() or nil
	end
	local Dd = {}
	local function Ed(Id, Jd)
		if Jd then
			if Id.ShouldHotwire then
				local Kd = Id.Part
				Wb(Kd.Parent)
			elseif Id.ShouldEject then
				local Kd = Id.Part
				Vb(Kd.Parent)
			else
				pd(Id.Part)
			end
			return true
		elseif Id.ShouldHotwire then
			R.lsseynh8({
				Title = "Vehicle",
				Text = "You can't drive this. Hold to hijack it."
			})
		end
	end
	local function Fd(Id)
		local Jd = {}
		for Kd, Ld in next, Id:GetChildren() do
			if Ld.Name == "Seat" or Ld.Name == "Passenger" then
				local Md = {
					Part = Ld,
					ValidRoot = Id,
					Name = "Enter",
					Timed = false,
					Duration = 1,
					Dist = 10,
					Callback = Ed
				}
				Md.IsVehicle = true
				Bd.Add(Md)
				table.insert(Jd, Md)
			end
		end
		Dd[Id] = Jd
	end
	local function Gd(Id)
		local Jd = Dd[Id]
		if Jd then
			for Kd, Ld in next, Jd, nil do
				Ld.Kill = true
			end
			Dd[Id] = nil
		end
	end
	local Hd = 0.5
	function Cd.AddedFun(Id, Jd)
		delay(Hd, function()
			Fd(Jd)
		end)
	end
	function Cd.RemovedFun(Id, Jd)
		delay(Hd, function()
			Gd(Jd)
		end)
	end
	t.Add(Cd)
end
do
	local Bd = s.CircleAction
	local Cd = t.MakeSpec()
	function Cd.QueryFun()
		local Ld = {}
		for Md, Nd in next, n:GetPlayers() do
			local Od = Nd.Character
			if Od then
				table.insert(Ld, Od)
			end
		end
		return Ld
	end
	local Dd = {}
	local function Ed(Ld)
		local Md = kb[o.Name]
		if not Md then
			return
		end
		if Md.Name ~= "Handcuffs" then
			return
		end
		if tick() - Md.LastFire < 0.1 then
			return
		end
		if Md.Reloading then
			return
		end
		Md.LastFire = tick()
		if Y.Value ~= z.Team.Police then
			return
		end
		local Nd = n:FindFirstChild(Ld.PlayerName)
		if not Nd then
			return
		end
		local Od = Nd.TeamValue.Value
		if mb then
			return
		end
		if Od ~= z.Team.Prisoner then
			return
		end
		local Pd = o.Character
		if not Pd then
			return
		end
		local Qd = Pd:FindFirstChild("Humanoid")
		if not Qd then
			return
		end
		if Qd.Health <= 0 then
			return
		end
		Rb(Nd)
		local Rd = Md.MagSize - 1
		Md.MagSize = Rd
		Cb(Md)
		if Rd <= 0 then
			Bb(Md, 2)
		end
		return true
	end
	local function Fd(Ld)
		local Md = n:FindFirstChild(Ld.PlayerName)
		if not Md then
			return
		end
		Tb(Md)
		return true
	end
	local function Gd(Ld)
		local Md = n:FindFirstChild(Ld.PlayerName)
		if not Md then
			return
		end
		Ub(Md)
		return true
	end
	local function Hd(Ld, Md)
		if Md then
			if Ld.ShouldArrest then
				return Ed(Ld)
			elseif Ld.ShouldPickpocket then
				return Fd(Ld)
			elseif Ld.ShouldBreakout then
				return Gd(Ld)
			end
			return false
		end
		return true
	end
	local function Id(Ld)
		if Ld ~= o.Character then
			local Md = {
				Part = Ld:FindFirstChild("UpperTorso"),
				ValidRoot = Ld,
				Name = "Player",
				Timed = true,
				Duration = 0.5,
				Dist = 15,
				Priority = 2,
				Callback = Hd
			}
			Md.PlayerName = Ld.Name
			Md.IsPlayer = true
			Bd.Add(Md)
			Dd[Ld] = Md
		end
	end
	local function Jd(Ld)
		local Md = Dd[Ld]
		if Md then
			Md.Kill = true
			Dd[Ld] = nil
		end
	end
	local Kd = 0.5
	function Cd.AddedFun(Ld, Md)
		delay(Kd, function()
			Id(Md)
		end)
	end
	function Cd.RemovedFun(Ld, Md)
		delay(Kd, function()
			Jd(Md)
		end)
	end
	t.Add(Cd)
end
do
	local Bd = s.CircleAction
	local Cd = t.MakeSpec()
	function Cd.QueryFun()
		local Fd = workspace:FindFirstChild("DroppedCash")
		return Fd and Fd:GetChildren()
	end
	local Dd = {}
	local function Ed(Fd, Gd)
		local Hd = Fd.Part.Parent
		if Gd then
			S:FireServer("vl1p1erc", Hd)
			return true
		end
	end
	function Cd.AddedFun(Fd, Gd)
		local Hd = Gd:FindFirstChild("Amount")
		local Id = Gd:FindFirstChild("PlayerName")
		local Jd = {
			Part = Gd.PrimaryPart,
			ValidRoot = Gd,
			Name = ("Collect %s from %s"):format(Eb(Hd.Value), Id.Value),
			Timed = true,
			Duration = 1,
			Dist = 10,
			Callback = Ed
		}
		Bd.Add(Jd)
		Dd[Gd] = Jd
	end
	function Cd.RemovedFun(Fd, Gd)
		local Hd = Dd[Gd]
		if Hd then
			Hd.Kill = true
			Dd[Gd] = nil
		end
	end
	t.Add(Cd)
end
do
	local Bd = s.CircleAction
	local Cd = t.MakeSpec()
	function Cd.QueryFun()
		local Fd = workspace:FindFirstChild("SmallStores")
		return Fd and Fd:GetChildren()
	end
	local Dd = {}
	local function Ed(Fd, Gd)
		if Gd then
			S:FireServer("cy5azvhn", Fd.Part)
		else
			S:FireServer("jqtyvyyr", Fd.Part)
		end
		return true
	end
	function Cd.AddedFun(Fd, Gd)
		local Hd = {
			Part = Gd,
			Name = "Rob",
			Timed = true,
			Duration = 10,
			Dist = 8,
			Callback = Ed
		}
		Hd.IsRob = true
		Bd.Add(Hd)
		Dd[Gd] = Hd
	end
	function Cd.RemovedFun(Fd, Gd)
		local Hd = Dd[Gd]
		if Hd then
			Hd.Kill = true
			Dd[Gd] = nil
		end
	end
	t.Add(Cd)
end
do
	local Bd = s.CircleAction
	do
		local function Cd(Ed, Fd)
			if Fd then
				S:FireServer("cbbiz152", "LiftGate")
			end
			return true
		end
		local Dd = {
			Part = workspace.EscapeRoutes.LiftGate,
			Name = "Lift Gate",
			Timed = true,
			Duration = 2,
			Dist = 8,
			Callback = Cd
		}
		Bd.Add(Dd)
	end
	do
		local function Cd(Ed, Fd)
			if Fd then
				S:FireServer("cbbiz152", "ExplodeWall")
			end
			return true
		end
		local Dd = {
			Part = workspace.EscapeRoutes.ExplodeWall,
			Name = "Explode Wall",
			Timed = true,
			Duration = 8,
			Dist = 8,
			Callback = Cd
		}
		Bd.Add(Dd)
	end
	local function Cd(Ed, Fd)
		if Fd then
			S:FireServer("cbbiz152", "BankDoor")
		end
		return true
	end
	local Dd = {
		Part = workspace.EscapeRoutes.BankDoor.Door.Model.Node,
		Name = "Place Dynamite",
		Timed = true,
		Duration = 5,
		Dist = 8,
		Callback = Cd
	}
	Bd.Add(Dd)
end
if k then
	j.TouchStarted:connect(zd)
	j.TouchEnded:connect(Ad)
	j.JumpRequest:connect(dd)
end
do
	local Bd = Instance.new("BindableEvent")
	Bd.Event:connect(function()
		S:FireServer("wjpp80tq")
	end)
	wait(1)
	local Cd, Dd = pcall(function()
		A:SetCore("ResetButtonCallback", Bd)
	end)
	if not Cd then
		print("MANUAL RESET ERROR")
		print(Dd)
	end
end
do
	local Bd = Instance.new("Part")
	Bd.Anchored = true
	Bd.Transparency = 1
	Bd.CanCollide = false
	Bd.Size = D(1, 1, 1)
	Bd.Archivable = false
	Bd.Parent = workspace
	local Cd = function()
		while true do
		end
	end
	Bd:GetPropertyChangedSignal("Archivable"):connect(Cd)
end
do
	local Bd = false
	local Cd, Dd
	local Ed = 0
	local Fd = 0
	local Gd = 0
	local Hd = false
	local function Id(Ud)
		local Vd = Ud:WaitForChild("Humanoid", 1)
		if not Vd then
			return
		end
		local Wd = Ud:WaitForChild("HumanoidRootPart", 1)
		if not Wd then
			return
		end
		Hd = false
		Gd = v.TimeAccumAdd(Gd, 2)
		if Dd then
			Dd:Disconnect()
			Dd = nil
		end
		Dd = Vd.StateChanged:Connect(function(Xd, Yd)
			if Yd == Enum.HumanoidStateType.StrafingNoPhysics then
				Fd = v.TimeAccumAdd(Fd, 1)
				local Zd = v.TimeAccumDiff(Fd)
				if Zd > 10 then
					Fd = 0
					if Bd then
						return
					end
					Bd = true
					T("sn5icnak", "NoClip StrafingNoPhysics", false)
				end
			end
		end)
	end
	if o.Character then
		Id(o.Character)
	end
	o.CharacterAdded:Connect(Id)
	spawn(function()
		local Ud = o:WaitForChild("Backpack", 10)
		Ud.ChildAdded:Connect(function(Vd)
			if Vd:IsA("BackpackItem") then
				if Bd then
					return
				end
				Bd = true
				T("sn5icnak", "BackpackTool", false)
			end
		end)
	end)
	local Jd = {
		"U",
		"p",
		"p",
		"e",
		"r",
		"T",
		"o",
		"r",
		"s",
		"o"
	}
	local Kd = {
		"L",
		"o",
		"w",
		"e",
		"r",
		"T",
		"o",
		"r",
		"s",
		"o"
	}
	local Ld = {
		"T",
		"o",
		"r",
		"s",
		"o"
	}
	local Md = {
		"B",
		"o",
		"d",
		"y",
		"P",
		"o",
		"s",
		"i",
		"t",
		"i",
		"o",
		"n"
	}
	local Nd = {
		"B",
		"o",
		"d",
		"y",
		"G",
		"y",
		"r",
		"o"
	}
	local Od = {
		"J",
		"u",
		"m",
		"p",
		"P",
		"o",
		"w",
		"e",
		"r"
	}
	local Pd = Instance.new("Model").FindFirstChildWhichIsA
	local Qd
	local Rd = {}
	local function Sd()
		if Bd then
			return
		end
		local Ud = o.Character
		if not Ud then
			return
		end
		local Vd = Ud:FindFirstChild("Humanoid")
		if not Vd then
			return
		end
		if Vd.Health <= 0.001 then
			if not Hd then
				Gd = v.TimeAccumAdd(Gd, 3)
			end
			Hd = true
			return
		end
		local Wd, Xd = false, nil
		do
			local Yd = Ud:FindFirstChild(table.concat(Ld), true)
			local Zd = Ud:FindFirstChild(table.concat(Jd), true)
			local ae = Ud:FindFirstChild(table.concat(Kd), true)
			if not Yd and not Zd and not ae and (Ud:FindFirstChild("Head") or Ud:FindFirstChild("HumanoidRootPart")) then
				Wd = true
				Xd = "NoClip " .. table.concat(Ld) .. "Change"
			end
		end
		if Pd(Ud, table.concat(Md), true) then
			Wd = true
			Xd = "BodyPosition"
		elseif Pd(Ud, table.concat(Nd), true) and not qc then
			Wd = true
			Xd = "BodyGyro"
		end
		if Vd.JumpPower > 60 then
			Wd = true
			Xd = "JumpPower"
		end
		do
			local Zd = {
				{
					"MainNitro",
					X:FindFirstChild("Nitro"),
					"Inf Nitro"
				},
				{
					"ProductNitro",
					bb:FindFirstChild("Nitro"),
					"Inf Nitro"
				}
			}
			for ae, be in next, Zd, nil do
				local ce, de, ee = be[1], be[2], be[3]
				if de then
					Rd[ce] = true
				elseif Rd[ce] then
					Wd = true
					Xd = ee
				end
			end
		end
		do
			local Yd = {
				"EscapeRoutes",
				"Doors",
				"Jewelrys.*StoreWindow",
				"Jewelrys.*Wall",
				"Banks.*Door"
			}
			for Zd, ae in next, Yd, nil do
				local be = workspace
				local ce = true
				for de in ae:gmatch("[^%.]+") do
					local ee = de
					local fe = false
					if ee:sub(1, 1) == "*" then
						fe = true
						ee = ee:sub(2)
					end
					if be == workspace and fe then
						warn("Bad idea to recurse workspace.")
					end
					be = be:FindFirstChild(ee, fe)
					if not be then
						ce = false
						break
					end
				end
				if ce then
					Rd[ae] = true
				elseif Rd[ae] then
					Wd = true
					Xd = "Deleted " .. ae
				elseif not i then
					print("Cannot find", ae, "& never saw.")
				end
			end
		end
		do
			local Yd = {
				"Workspace",
				"Players",
				"ReplicatedStorage"
			}
			for Zd, ae in next, Yd, nil do
				local be = game:GetService(ae)
				if be.Name ~= ae then
					Rd[ae] = true
				elseif Rd[ae] then
					Wd = true
					Xd = "Renamed Service"
				end
			end
		end
		if Wd then
			Bd = true
			T("sn5icnak", Xd, false)
		end
	end
	local function Td()
		local Ud, Vd = pcall(Sd)
		if not Ud then
			local Wd = "FailedPcall"
			Bd = true
			T("sn5icnak", Wd, false)
		end
	end
	eb(1, Td)
end
