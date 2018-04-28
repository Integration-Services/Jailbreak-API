repeat
	do break end
	while true do
	end
until true
local aa384925c = game:GetService("ReplicatedStorage")
local w2c080 = game:GetService("MarketplaceService")
local t4c33a3b55f = game:GetService("RunService")
local Oa55db57f2c = t4c33a3b55f:IsStudio()
local ce18781 = game:GetService("UserInputService")
local Vc386281d7f0 = ce18781.TouchEnabled
local pb35d25a965 = game:GetService("GuiService")
local f924b8d = game:GetService("SoundService")
local s4e429b5 = game:GetService("Players")
local Nc2e78 = s4e429b5.LocalPlayer
local m0e44a52 = Nc2e78:GetMouse()
local kc9675bdcc0 = workspace.CurrentCamera
local w6ea0b17 = require(aa384925c.Module.IKR15)
local x4aec5 = require(aa384925c.Module.UI)
local v778e0a8fb = game:GetService("CollectionService")
local n454765e6 = require(aa384925c.Module.Joint)
local D31148ae40c = require(aa384925c.Module.Math)
local Jbc53413f = require(aa384925c.Module.AlexInput)
local j4665d = require(aa384925c.Module.AlexParticles)
local Y7c1fa5 = require(aa384925c.Module.AlexWM)
local K083ad90 = require(aa384925c.Resource.Settings)
local Pc83d6d = game:GetService("StarterGui")
local Sbd7e7a858, W8b718e, A54ecff0 = CFrame.new, CFrame.Angles, Vector3.new
local cd4c73, u50fd37 = Sbd7e7a858(0, 0, 0), A54ecff0(0, 0, 0)
local V87db8587 = workspace.FindPartOnRayWithIgnoreList
local T731e02bfb46 = cd4c73.pointToObjectSpace
local c07597da = u50fd37.Dot
local g9acb056b7, d53ccc = math.sin, math.cos
local Ybf8a081, z968ef8f, Kb4831521942, Z728bf347053 = math.floor, math.abs, math.log, math.max
local ba9af77cbd
ba9af77cbd = {}
do
	local Rd19b0 = false
	if not Oa55db57f2c then
		Rd19b0 = false
	end
	if Rd19b0 then
		print("PROFILE DEBUGGING ENABLED")
		ba9af77cbd.profilebegin = debug.profilebegin
		ba9af77cbd.profileend = debug.profileend
	else
		local kf209a8f = function()
		end
		ba9af77cbd.profilebegin = kf209a8f
		ba9af77cbd.profileend = kf209a8f
	end
end
local Ma06a756880f = {}
local I24c9cc17, Kd0ace
do
	local n4d3242c0 = aa384925c.Resource.Event
	n4d3242c0.Name = D31148ae40c.GUID()
	for M5fc6c824 = 1, 10 do
		local ee8a71cf4a6 = Instance.new("RemoteEvent")
		ee8a71cf4a6.Name = D31148ae40c.GUID()
		ee8a71cf4a6.Parent = n4d3242c0.Parent
	end
	local f1fac4f6e7e
	I24c9cc17 = {}
	local baaaac46b = Instance.new("RemoteEvent").FireServer
	function Kd0ace(Eaf3b7e405, ...)
		baaaac46b(n4d3242c0, f1fac4f6e7e and f1fac4f6e7e[Eaf3b7e405] or Eaf3b7e405, ...)
	end
	function I24c9cc17:FireServer(of1fb25feb72, ...)
		return Kd0ace(of1fb25feb72, ...)
	end
	I24c9cc17.OnClientEvent = n4d3242c0.OnClientEvent
	function Ma06a756880f.sql8u1oz(xb961468)
		f1fac4f6e7e = xb961468
	end
end
local v50f125ed3 = require(aa384925c.Module.AlexChassis)
v50f125ed3.SetEvent(I24c9cc17)
local Ve816fadc = require(aa384925c.Module.AlexChassis2)
Ve816fadc.SetEvent(I24c9cc17)
local p0d0ce
Pc83d6d.ResetPlayerGuiOnSpawn = false
repeat
	wait()
until Nc2e78:FindFirstChild("PlayerGui")
local pd1f157bb417 = Nc2e78:FindFirstChild("PlayerGui")
local J7f47f5172c6 = Nc2e78:WaitForChild("TeamValue")
local function aefbc07581(nb4c4ccb9)
	local b67ff3 = aa384925c.StarterGui
	local E5e688 = b67ff3:FindFirstChild(nb4c4ccb9):Clone()
	E5e688.Parent = pd1f157bb417
	return E5e688
end
local N59f1a = aefbc07581("MainGui")
local m0e1ccdc = aefbc07581("ProductGui")
local T8d421366b05 = aefbc07581("Particles")
local B3fc5d899 = aefbc07581("DeathGui")
x4aec5.CircleAction.Frame = N59f1a.CircleAction
Pc83d6d:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
local e8acc30e
do
	local R7d29af929 = {}
	function e8acc30e(nf31c8e4103, ge8828bfea, jae3b12c39a9)
		local P07d50054ce = {
			t = 0,
			i = nf31c8e4103,
			c = ge8828bfea
		}
		table.insert(R7d29af929, P07d50054ce)
	end
	local function i4159ce2745e(d9346c791df3, t1b7a60)
		ba9af77cbd.profilebegin("Thread Loop")
		for J14cc0bf = 1, #R7d29af929 do
			local Q51fb05a498 = R7d29af929[J14cc0bf]
			if d9346c791df3 - Q51fb05a498.t > Q51fb05a498.i then
				Q51fb05a498.t = d9346c791df3
				Q51fb05a498.c(d9346c791df3, t1b7a60)
			end
		end
		ba9af77cbd.profileend()
	end
	t4c33a3b55f.Stepped:connect(i4159ce2745e)
end
local function M8db359d10b0(Nd48a784aac2)
	local Ye685a4b = false
	local r6e618b61, Pd667d = pcall(function()
		if Nd48a784aac2.Group then
			Ye685a4b = true
			Ye685a4b = Ye685a4b and Nc2e78:IsInGroup(Nd48a784aac2.Group)
			if Nd48a784aac2.Rank then
				Ye685a4b = Ye685a4b and Nc2e78:GetRankInGroup(Nd48a784aac2.Group) >= Nd48a784aac2.Rank
			end
		end
		if Ye685a4b then
			return
		end
		if Nd48a784aac2.Id then
			Ye685a4b = true
			Ye685a4b = Ye685a4b and Nd48a784aac2.Id[tostring(Nc2e78.UserId)]
		end
	end)
	if not r6e618b61 then
		print(Pd667d)
	end
	return r6e618b61 and Ye685a4b
end
local Tbfc2a6 = Y7c1fa5.MakeWindowGroup()
require(aa384925c.Module.Mission)(Ma06a756880f, I24c9cc17, e8acc30e, Tbfc2a6)
local Q75acc1b7f7
local Xcd5d94231 = {
	ItemStacks = {}
}
local Sb8bc07712b3 = {}
local z6e8a5d8c4 = {}
local Y6b22aaa4e = {}
local Ua4530cfaef
local ad69d2d35a3 = {
	VehiclesOwned = {},
	Nitro = 50,
	NitroLastMax = 50
}
local M45e261086
local Q4867d294 = {}
local D30e7130 = 0
local q9bfce6b5a = u50fd37
local k082adaf7b06, Y729e2c9 = false, false
local ie1e4cbb7 = "Yard"
local s03b36 = false
local function vc5c5e1033e2(hc0fa8e2)
	if p0d0ce == Enum.UserInputType.Gamepad1 then
		pb35d25a965.SelectedObject = hc0fa8e2
	end
end
local H1d9e9f398e9 = {}
H1d9e9f398e9.MainWindowGroup = Tbfc2a6
H1d9e9f398e9.ScreenGui = N59f1a
H1d9e9f398e9.ProductGui = m0e1ccdc
H1d9e9f398e9.Event = I24c9cc17
H1d9e9f398e9.em = Ma06a756880f
H1d9e9f398e9.UI = x4aec5
H1d9e9f398e9.LocalWalkSpeedModifier = 1
H1d9e9f398e9.SelectIfGamepad = vc5c5e1033e2
function H1d9e9f398e9.GetVehiclePacket()
	return Ua4530cfaef
end
local i7faa07631b, q51b0b
i7faa07631b = require(aa384925c.Module.Garage)(H1d9e9f398e9)
require(aa384925c.Module.Apartment)(H1d9e9f398e9)
require(aa384925c.Module.Minimap)(H1d9e9f398e9)
require(aa384925c.Module.StarterPack)(H1d9e9f398e9)
require(aa384925c.Module.Train)(H1d9e9f398e9)
q51b0b = require(aa384925c.Module.Heli)(H1d9e9f398e9)
spawn(function()
	if M8db359d10b0(K083ad90.Perm.Dev) then
		local reb228a8 = aefbc07581("AdminHax")
		require(aa384925c.Module.AdminHax)(H1d9e9f398e9, reb228a8)
	end
end)
function Ma06a756880f.uayucs6c()
	local n7f273 = aefbc07581("KickGui")
	require(aa384925c.Module.KickGui)(H1d9e9f398e9, n7f273)
end
local Y25c9fa, Wa924e, hd12ee57ee9a
local s2bbea1a3 = function(K58ab58d)
	local t303983e, pcbba89, C525b39faa63 = string.match(K58ab58d, "^([^%d]*%d)(%d*)(.-)$")
	return t303983e .. pcbba89:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. C525b39faa63
end
local function m5724e(Ue4854)
	local X2ba0d = Ue4854 >= 0 and "" or "-"
	return ("%s$%s"):format(X2ba0d, s2bbea1a3(z968ef8f(Ue4854)))
end
local function of8789ef40(D9adf4b3c, Wb4da5, ...)
	local q876a46 = Wb4da5.magnitude
	Wb4da5 = Wb4da5.unit
	local Qa9b15 = D9adf4b3c
	local p0a8f1d = 0
	local va53a6314b = {
		...
	}
	local Oc1c1f1987, T06843, d158d4769 = nil, u50fd37, u50fd37
	local ka6c40db7b4 = 0
	local Mca3135752
	repeat
		ka6c40db7b4 = ka6c40db7b4 + 1
		local q74ae8ae80 = Ray.new(Qa9b15, Wb4da5 * (q876a46 - p0a8f1d))
		Oc1c1f1987, T06843, d158d4769 = V87db8587(workspace, q74ae8ae80, va53a6314b, false, true)
		Mca3135752 = Oc1c1f1987 and Oc1c1f1987.CanCollide
		if not Mca3135752 then
			table.insert(va53a6314b, Oc1c1f1987)
		end
		p0a8f1d = (D9adf4b3c - T06843).magnitude
		Qa9b15 = T06843
	until Mca3135752 or q876a46 - p0a8f1d <= 0.001 or ka6c40db7b4 > 4
	if not Oc1c1f1987 then
		T06843, d158d4769 = D9adf4b3c + Wb4da5 * q876a46, u50fd37
	end
	return Oc1c1f1987, T06843, d158d4769
end
local i3b149 = function(k9a30b29a, U3b45608, z987c4)
	local x0fe5e91 = {}
	for P1dfaa, lbb6ac2a02 in next, U3b45608, nil do
		local V0765c6b, p5f49fd8, E162b71 = lbb6ac2a02, k9a30b29a[P1dfaa], nil
		if type(lbb6ac2a02) == "number" then
			local Ja85981e = 1 - z987c4
			E162b71 = Ja85981e * p5f49fd8 + z987c4 * V0765c6b
		else
			E162b71 = p5f49fd8:lerp(V0765c6b, z987c4)
		end
		x0fe5e91[P1dfaa] = E162b71
	end
	return x0fe5e91
end
local function Hd676003e13b(p85a40)
	local b3945ae419 = Q4867d294[p85a40]
	if not b3945ae419 then
		return
	end
	local h7ca40b66d = s4e429b5:FindFirstChild(p85a40)
	if not h7ca40b66d then
		Q4867d294[p85a40] = nil
		return
	end
	local d5abc4890 = h7ca40b66d.Character
	if not d5abc4890 then
		Q4867d294[p85a40] = nil
		return
	end
	w6ea0b17.EnableRightArm(b3945ae419, d5abc4890, false)
	w6ea0b17.EnableLeftArm(b3945ae419, d5abc4890, false)
	Q4867d294[p85a40] = nil
end
local function f4a1015c(M89b5b5ade84, aaad336)
	aaad336 = aaad336 or {LeftArm = true, RightArm = true}
	local c142b3f = s4e429b5:FindFirstChild(M89b5b5ade84)
	if not c142b3f then
		return
	end
	local p5fabff = c142b3f.Character
	if not p5fabff then
		return
	end
	local De78b0932f = Q4867d294[M89b5b5ade84]
	if De78b0932f then
		if De78b0932f.RightArm ~= aaad336.RightArm then
			w6ea0b17.EnableRightArm(De78b0932f, p5fabff, aaad336.RightArm)
		end
		if De78b0932f.LeftArm ~= aaad336.LeftArm then
			w6ea0b17.EnableLeftArm(De78b0932f, p5fabff, aaad336.LeftArm)
		end
	else
		De78b0932f = {}
		w6ea0b17.EnableRightArm(De78b0932f, p5fabff, aaad336.RightArm)
		w6ea0b17.EnableLeftArm(De78b0932f, p5fabff, aaad336.LeftArm)
	end
	Q4867d294[M89b5b5ade84] = De78b0932f
	return De78b0932f
end
local q12db8, x3b0d9
do
	local ge223a0f3d7 = {}
	function q12db8(Qd99e023c3, A0b6c75099, c5656fa4020)
		if not A0b6c75099.Source then
			return
		end
		A0b6c75099.Play = true
		if not c5656fa4020 then
			I24c9cc17:FireServer("jaoly3ss", Qd99e023c3, A0b6c75099)
		end
		Ma06a756880f.jaoly3ss(Nc2e78.Name, Qd99e023c3, A0b6c75099)
	end
	function x3b0d9(P5bd1bf, T99da60dd)
		local fc96f0b = {}
		if not T99da60dd then
			I24c9cc17:FireServer("jaoly3ss", P5bd1bf, fc96f0b)
		end
		Ma06a756880f.jaoly3ss(Nc2e78.Name, P5bd1bf, fc96f0b)
	end
	local K1ed1cb178c = 0
	function Ma06a756880f.jaoly3ss(cb381b7015e1, L4ff465f8cdf, Fc563963)
		local U8c8f8e777 = Fc563963.Source
		local W1a2f798e5cd = Fc563963.Volume or 0.5
		local I46cf22 = Fc563963.Pitch or 1
		local n586b029 = Fc563963.MaxTime or 1
		local be39fc51 = Fc563963.Looped
		local S1a1d8dda1 = Fc563963.Play
		local wba6ab0346d = Fc563963.TimeStart
		local u2faa0e7dba2 = Fc563963.Delay
		local K61c4502 = Fc563963.EmitterSize or 10
		if Fc563963.TimeStop then
			n586b029 = wba6ab0346d + Fc563963.TimeStop
		end
		local Ab3032fd5 = K1ed1cb178c + 1
		K1ed1cb178c = Ab3032fd5
		local V670ce6bb7 = Fc563963.Multi and ("%s_%s_%d"):format(cb381b7015e1, L4ff465f8cdf, Ab3032fd5) or ("%s_%s"):format(cb381b7015e1, L4ff465f8cdf)
		local Nb9287cf36 = ge223a0f3d7[V670ce6bb7]
		if Nb9287cf36 then
			Nb9287cf36.Object:Stop()
			Nb9287cf36.Object:Destroy()
			ge223a0f3d7[V670ce6bb7] = nil
		end
		if not S1a1d8dda1 then
			return
		end
		if not U8c8f8e777 then
			return
		end
		local E07a01 = K083ad90.Sounds[L4ff465f8cdf]
		if not E07a01 then
			return
		end
		local Sfda29 = Instance.new("Sound")
		Sfda29.SoundId = "rbxassetid://" .. E07a01
		if wba6ab0346d then
			Sfda29.TimePosition = wba6ab0346d
		end
		if Fc563963.SoundGroup then
			Sfda29.SoundGroup = Fc563963.SoundGroup
		end
		Sfda29.Name = V670ce6bb7
		Sfda29.Looped = be39fc51
		Sfda29.Volume = W1a2f798e5cd
		Sfda29.PlaybackSpeed = I46cf22
		Sfda29.EmitterSize = K61c4502
		Sfda29.MaxDistance = 400
		Sfda29.Parent = U8c8f8e777
		if u2faa0e7dba2 then
			delay(u2faa0e7dba2, function()
				Sfda29:Play()
			end)
		else
			Sfda29:Play()
		end
		ge223a0f3d7[V670ce6bb7] = {Object = Sfda29, Proxy = Ab3032fd5}
		local function Xe16be952()
			local h46eeb53d9 = ge223a0f3d7[V670ce6bb7]
			if not h46eeb53d9 then
				return
			end
			if h46eeb53d9.Proxy > Ab3032fd5 then
				return
			end
			h46eeb53d9.Object:Stop()
			h46eeb53d9.Object:Destroy()
			ge223a0f3d7[V670ce6bb7] = nil
		end
		delay(n586b029, Xe16be952)
	end
end
local pcbe77
do
	local xc2e2c9896 = require(aa384925c.Module.RoundedBackingBuilder).new()
	xc2e2c9896:Create(m0e1ccdc.Gamepass.ContainerFrame)
	local Qcb2f479387 = 0
	function pcbe77(k74be02)
		local Q68ccc = k74be02.PassId
		local W363537 = Qcb2f479387 + 1
		Qcb2f479387 = W363537
		if k74be02.OldPassId then
			w2c080:PromptPurchase(Nc2e78, k74be02.OldPassId)
		else
			w2c080:PromptGamePassPurchase(Nc2e78, Q68ccc)
		end
		m0e1ccdc.Gamepass.ContainerFrame.TextLabel.Text = k74be02.Text
		delay(0.2, function()
			if Qcb2f479387 ~= W363537 then
				return
			end
			m0e1ccdc.Gamepass.Visible = true
		end)
	end
	local function R12365f8c91(e3d478b682, h17a8a79a4, Of16563c460)
		local K55690 = Qcb2f479387 + 1
		Qcb2f479387 = K55690
		delay(0.1, function()
			if Qcb2f479387 ~= K55690 then
				return
			end
			m0e1ccdc.Gamepass.Visible = false
		end)
	end
	w2c080.PromptGamePassPurchaseFinished:connect(R12365f8c91)
	w2c080.PromptPurchaseFinished:connect(R12365f8c91)
end
H1d9e9f398e9.PromptPurchase = pcbe77
local function Yf3cb11d7(n29f599)
	local j780ac3f8c71 = j4665d.MakeState()
	j780ac3f8c71.Frame = T8d421366b05.Particles
	j4665d.EasySimulate(j780ac3f8c71, 4)
	local Fb5f59bb40a = j780ac3f8c71.Frame.AbsoluteSize
	local afbfbbfa1af, h01a83edd86a = Fb5f59bb40a.X, Fb5f59bb40a.Y
	local function jebbb4562f(M5d253)
		if n29f599 <= 4 or math.random() > 0.2 then
			q12db8("FireworkBang", {
				Source = N59f1a,
				Volume = 0.2 + math.random() * 0.3,
				Multi = true
			}, true)
		end
	end
	for D48033bbf7 = 1, n29f599 do
		local Yb8f92665e = h01a83edd86a * 0.3 + h01a83edd86a * 0.6 * math.random()
		local D2474744062 = A54ecff0(0, -400, 0) + D31148ae40c.Uniform2D(150)
		local uadeca27 = (h01a83edd86a - Yb8f92665e) / D2474744062.magnitude
		local je41ad297 = j4665d.Firework(j780ac3f8c71, A54ecff0(math.random() * afbfbbfa1af, h01a83edd86a, 0), D2474744062, u50fd37)
		je41ad297.ttl = uadeca27
		je41ad297.OnDestroy = jebbb4562f
		wait(0.1 + math.random() * 0.1 * 0.5)
	end
end
function Ma06a756880f.lzto1un8(Wf23019b8170)
	assert(Wf23019b8170 <= 50)
	Yf3cb11d7(Wf23019b8170)
end
H1d9e9f398e9.Fireworks = Yf3cb11d7
local H0e728 = {}
for zb6b52, h7e652 in next, workspace.Cells:GetChildren() do
	table.insert(H0e728, h7e652.Stash.Drawer1.Drawer)
	table.insert(H0e728, h7e652.Stash.Drawer2.Drawer)
	table.insert(H0e728, h7e652.Stash.Drawer3.Drawer)
end
local function v3a33770d25d()
	if not Nc2e78.Character then
		return
	end
	local C1a02c2ef = kc9675bdcc0:ScreenPointToRay(q9bfce6b5a.X, q9bfce6b5a.Y)
	local kce98854b4c, ad214b607907 = workspace:FindPartOnRayWithWhitelist(Ray.new(C1a02c2ef.Origin, C1a02c2ef.Direction * 16), H0e728)
	if kce98854b4c and kce98854b4c.Name == "Drawer" then
		local r4e24978a37a = (Nc2e78.Character.HumanoidRootPart.Position - ad214b607907).magnitude
		return r4e24978a37a < 8 and kce98854b4c.Parent
	end
	return false
end
local function R3e15b57()
	if not Nc2e78.Character then
		return
	end
	local gf907f7 = kc9675bdcc0:ScreenPointToRay(q9bfce6b5a.X, q9bfce6b5a.Y)
	gf907f7 = Ray.new(gf907f7.Origin, gf907f7.Direction * 99)
	local zdf252e18 = {}
	for Ice2c033, D2dfd29826b in next, s4e429b5:GetPlayers() do
		if D2dfd29826b.Character and D2dfd29826b ~= Nc2e78 then
			table.insert(zdf252e18, D2dfd29826b.Character)
		end
	end
	local d2b23336a0c, z8405b9 = of8789ef40(gf907f7.Origin, gf907f7.Direction, Nc2e78.Character, z6e8a5d8c4[Nc2e78.Name] and z6e8a5d8c4[Nc2e78.Name].Model)
	if d2b23336a0c then
		local lc78db62aa17
		for uca767, l539ca8950 in next, zdf252e18, nil do
			if d2b23336a0c:IsDescendantOf(l539ca8950) then
				lc78db62aa17 = l539ca8950
				break
			end
		end
		if not lc78db62aa17 then
			return
		end
		local bc9496a93e = s4e429b5:GetPlayerFromCharacter(lc78db62aa17)
		if bc9496a93e then
			local O7eca1 = (Nc2e78.Character.HumanoidRootPart.Position - z8405b9).magnitude
			return O7eca1 < 10 and bc9496a93e
		end
	end
	return false
end
local function G3f4402()
	if not Nc2e78.Character then
		return
	end
	local oeabb04269 = kc9675bdcc0:ScreenPointToRay(q9bfce6b5a.X, q9bfce6b5a.Y)
	local ec2c7b00e7 = {}
	for a324879b, P20c3261f in next, workspace.Vehicles:GetChildren() do
		table.insert(ec2c7b00e7, P20c3261f)
	end
	local zbee3751fb19, g3340f = of8789ef40(oeabb04269.Origin, oeabb04269.Direction * 99, Nc2e78.Character)
	if zbee3751fb19 then
		local T679f36f94
		for Tcedb4, Ndd48e56ec in next, ec2c7b00e7, nil do
			if zbee3751fb19:IsDescendantOf(Ndd48e56ec) then
				T679f36f94 = Ndd48e56ec
				break
			end
		end
		if not T679f36f94 then
			return
		end
		local A7f0961f33 = Nc2e78.Character
		if A7f0961f33 then
			local L43132a40e1e = A7f0961f33:FindFirstChild("HumanoidRootPart")
			if L43132a40e1e then
				local dfe94a = (L43132a40e1e.Position - g3340f).magnitude
				return dfe94a < 16 and T679f36f94
			end
		end
	end
	return false
end
local function G200c3b22(Lde35d7cd5c8)
	I24c9cc17:FireServer("i1ltlx5v", Lde35d7cd5c8.Name)
end
function Ma06a756880f.j6lklsj9(qb111949219d)
	if qb111949219d.Bribed then
		Ma06a756880f.j1mrr9vx({
			Title = "Arrest",
			Text = ("You are bribed! Wait %d seconds."):format(qb111949219d.Bribed)
		})
	end
end
local function V7c6032a(o0cd4376)
	I24c9cc17:FireServer("vtdt3zuo", o0cd4376.Name)
end
local function q2183226f(q9aedb82b)
	I24c9cc17:FireServer("v5riqi6z", q9aedb82b.Name)
end
local function Odf552a7(h417d10f960)
	I24c9cc17:FireServer("eaj8k3cc", h417d10f960.Name)
end
function Ma06a756880f.nib4jnob(Baf228)
	if Baf228.Cooldown then
		Ma06a756880f.j1mrr9vx({
			Title = "Breakout",
			Text = ("Wait %d seconds."):format(Baf228.Cooldown)
		})
	end
end
local function g92b97(O79221)
	I24c9cc17:FireServer("evg9bdj5", O79221)
end
local function eb2b7a(Iad4f024e6a)
	I24c9cc17:FireServer("ktyjk0pj", Iad4f024e6a)
end
local function y135e496(X4d7ce5, b96369f, L9f7cbf46, Ic1fc5f72d)
	if z6e8a5d8c4[X4d7ce5] then
		return
	end
	local Z3652746f0 = s4e429b5:FindFirstChild(X4d7ce5)
	if not Z3652746f0 then
		return
	end
	local P3a0370 = Z3652746f0.Character
	if not P3a0370 then
		return
	end
	local He1842af85 = P3a0370:FindFirstChild("HumanoidRootPart")
	if not He1842af85 then
		return
	end
	local h242d2b2b7dc = P3a0370:FindFirstChild("UpperTorso")
	if not h242d2b2b7dc then
		return
	end
	local Q22d305677c = h242d2b2b7dc:FindFirstChild("Waist")
	if not Q22d305677c then
		return
	end
	local i7e80e663aab = P3a0370:FindFirstChild("Head")
	if not i7e80e663aab then
		return
	end
	local p3dc6c9 = i7e80e663aab:FindFirstChild("Neck")
	if not p3dc6c9 then
		return
	end
	local Ra7d36ce2 = aa384925c.Resource.Item
	local H4220b = Ra7d36ce2:FindFirstChild(b96369f.Name)
	assert(H4220b)
	H4220b = H4220b:Clone()
	H4220b.Parent = workspace
	n454765e6.WeldAllTo(H4220b, H4220b.Center)
	b96369f.Waist = Q22d305677c
	b96369f.Neck = p3dc6c9
	b96369f.WaistC0 = Q22d305677c.C0
	b96369f.NeckC0 = p3dc6c9.C0
	b96369f.LastFire = b96369f.LastFire or 0
	local v193ecafaf51 = not not H4220b.Skeleton:FindFirstChild("RightArm")
	local Ue2dba221383 = not not H4220b.Skeleton:FindFirstChild("LeftArm")
	local X64732 = {RightArm = v193ecafaf51, LeftArm = Ue2dba221383}
	local N39ca0, o77de21279
	if v193ecafaf51 and Ue2dba221383 then
		N39ca0 = A54ecff0(0.5, -0.5, -0.5)
		o77de21279 = A54ecff0(-math.pi * 0.5, 0, 0)
	else
		N39ca0 = A54ecff0(-0.1, 0.5, -0.2)
		o77de21279 = A54ecff0(math.pi * 0.5, 0, 0)
	end
	b96369f.PosSpring = D31148ae40c.MakeSpring(N39ca0, 10, 0.6)
	b96369f.RotSpring = D31148ae40c.MakeSpring(o77de21279, 14, 0.7)
	b96369f.NeckSpring = D31148ae40c.MakeSpring(u50fd37, 2, 0.5)
	b96369f.WaistSpring = D31148ae40c.MakeSpring(u50fd37, 10, 0.8)
	D31148ae40c.SpringSetTarget(b96369f.RotSpring, D30e7130, u50fd37)
	D31148ae40c.SpringSetTarget(b96369f.PosSpring, D30e7130, A54ecff0(0, 0.7, 0))
	if b96369f.Name == "Rifle" or b96369f.Name == "AK47" then
		D31148ae40c.SpringSetTarget(b96369f.NeckSpring, D30e7130, A54ecff0(0, 0.43, 0))
		D31148ae40c.SpringSetTarget(b96369f.WaistSpring, D30e7130, A54ecff0(0, -0.43, 0))
		D31148ae40c.SpringSetTarget(b96369f.PosSpring, D30e7130, u50fd37)
	elseif b96369f.Name == "Shotgun" then
		D31148ae40c.SpringSetTarget(b96369f.NeckSpring, D30e7130, A54ecff0(0, 0.6, 0))
		D31148ae40c.SpringSetTarget(b96369f.WaistSpring, D30e7130, A54ecff0(0, -0.6, 0))
	elseif b96369f.Name == "Cuffed" then
		D31148ae40c.SpringSetTarget(b96369f.NeckSpring, D30e7130, A54ecff0(-0.5, 0, 0))
		D31148ae40c.SpringSetTarget(b96369f.WaistSpring, D30e7130, A54ecff0(-0.4, 0, 0))
		D31148ae40c.SpringSetTarget(b96369f.PosSpring, D30e7130, A54ecff0(0, -0.7, 0))
	elseif b96369f.Name == "Pistol" and b96369f.HasSWAT then
		H4220b.Model.Body.BrickColor = BrickColor.new("Black")
	end
	if b96369f.Name == "Donut" then
		local b2af706 = Color3.fromHSV(math.random() * 0.8 + 0.2, 0.59, 1)
		H4220b.Model.icing.Color = b2af706
	elseif b96369f.Name == "Flashlight" then
		b96369f.FlashOn = false
	end
	local dee65f31a, M67c1bc37 = true, true
	X64732 = f4a1015c(X4d7ce5, {
		RightArm = X64732.RightArm,
		LeftArm = X64732.LeftArm
	})
	b96369f.IK = X64732
	local k439ec41410
	if b96369f.Name == "Cuffed" then
		k439ec41410 = P3a0370.UpperTorso
	else
		k439ec41410 = P3a0370.Head
	end
	local o895a3 = Sbd7e7a858(b96369f.PosSpring.p) * D31148ae40c.CFrameFromAxisAngle(b96369f.RotSpring.p)
	local d399a2366f = n454765e6.CustomMotor(H4220b.Center, k439ec41410, o895a3, cd4c73)
	b96369f.Motor = d399a2366f
	b96369f.Model = H4220b
	z6e8a5d8c4[X4d7ce5] = b96369f
	if Ic1fc5f72d and b96369f.MagSize then
		local a57e0b3a8 = N59f1a.Ammo
		a57e0b3a8.Visible = true
		hd12ee57ee9a(b96369f)
	end
	if Ic1fc5f72d and b96369f.CrossHair then
		ce18781.MouseIconEnabled = false
		N59f1a.CrossHair.Visible = true
	end
end
local function vd7aec8(s24428, c6ef9d, l9b5e2)
	local Bdbbf48 = s4e429b5:FindFirstChild(s24428)
	if not Bdbbf48 then
		return
	end
	local m6583b19e9 = z6e8a5d8c4[s24428]
	if not m6583b19e9 then
		return
	end
	local K32f7d340d9 = Bdbbf48.Character
	m6583b19e9.Model:Destroy()
	m6583b19e9.Motor = nil
	z6e8a5d8c4[s24428] = nil
	if l9b5e2 then
		N59f1a.Ammo.Visible = false
		if m6583b19e9.CrossHair then
			ce18781.MouseIconEnabled = true
			N59f1a.CrossHair.Visible = false
		end
	end
	if not c6ef9d then
		Hd676003e13b(s24428)
	end
	local je32f980 = K32f7d340d9:FindFirstChild("UpperTorso")
	if je32f980 then
		local O84640f = je32f980:FindFirstChild("Waist")
		if O84640f then
			O84640f.C0 = m6583b19e9.WaistC0
		end
	end
	local qc3c43793 = K32f7d340d9:FindFirstChild("Head")
	if qc3c43793 then
		local Kcab97e = qc3c43793:FindFirstChild("Neck")
		if Kcab97e then
			Kcab97e.C0 = m6583b19e9.NeckC0
		end
	end
end
local function v6600bbbd32(v458c0f4b194, Qf33c9f4c, Od927c472)
	if not Qf33c9f4c then
		return
	end
	local Q2fdd3 = s4e429b5:FindFirstChild(v458c0f4b194)
	if not Q2fdd3 then
		return
	end
	local za7f74d31 = z6e8a5d8c4[v458c0f4b194]
	if not za7f74d31 then
		return
	end
	local nd19ee = za7f74d31.Model
	local X223b0fac = za7f74d31.Name
	if X223b0fac == "Rifle" or X223b0fac == "Pistol" or X223b0fac == "Shotgun" or X223b0fac == "AK47" then
		do
			local Of3f9cf218 = nd19ee.Skeleton.Tip
			local R1faa8bb09ac = Instance.new("PointLight")
			R1faa8bb09ac.Parent = Of3f9cf218
			delay(0.1, function()
				R1faa8bb09ac:Destroy()
			end)
		end
	end
	if X223b0fac == "Taser" then
		local d14d982e = nd19ee.Skeleton.Tip
		local g440e5c2 = (Qf33c9f4c - d14d982e.Position).magnitude
		local b006aa = Instance.new("Part")
		b006aa.BrickColor = X223b0fac == "Taser" and BrickColor.new("Black")
		b006aa.Anchored = true
		b006aa.CanCollide = false
		b006aa.Size = A54ecff0(0.2, 0.2, g440e5c2)
		b006aa.CFrame = Sbd7e7a858(d14d982e.Position, Qf33c9f4c) * Sbd7e7a858(0, 0, -g440e5c2 * 0.5)
		local Ab80f282a = Instance.new("BlockMesh")
		Ab80f282a.Scale = A54ecff0(0.4, 0.4, 1)
		Ab80f282a.Parent = b006aa
		b006aa.Parent = za7f74d31.Model
		game.Debris:AddItem(b006aa, 0.1)
	elseif za7f74d31.Name == "Rifle" or za7f74d31.Name == "Pistol" or za7f74d31.Name == "AK47" then
		local U42df61 = nd19ee.Skeleton.Tip
		local W21a21a9e6a2 = (Qf33c9f4c - U42df61.Position).magnitude
		local T3c3482670b = Instance.new("Part")
		T3c3482670b.BrickColor = BrickColor.new("White")
		T3c3482670b.Transparency = 0.8
		T3c3482670b.Anchored = true
		T3c3482670b.CanCollide = false
		T3c3482670b.Size = A54ecff0(0.2, W21a21a9e6a2, 0.2)
		T3c3482670b.CFrame = Sbd7e7a858(U42df61.Position, Qf33c9f4c) * Sbd7e7a858(0, 0, -W21a21a9e6a2 * 0.5) * W8b718e(math.pi * 0.5, 0, 0)
		local Qe309c5b = Instance.new("CylinderMesh")
		Qe309c5b.Scale = A54ecff0(0.2, 1, 0.2)
		Qe309c5b.Parent = T3c3482670b
		T3c3482670b.Parent = za7f74d31.Model
		game.Debris:AddItem(T3c3482670b, 0.1)
	elseif za7f74d31.Name == "Flashlight" then
		if Od927c472 then
			za7f74d31.FlashOn = not za7f74d31.FlashOn
		end
		local z7e0b20de39 = za7f74d31.FlashOn
		nd19ee.Model.Light.Material = z7e0b20de39 and Enum.Material.Neon or Enum.Material.Plastic
		nd19ee.Model.Light.SpotLight.Enabled = z7e0b20de39
	elseif za7f74d31.Name == "Donut" then
		D31148ae40c.SpringSetTarget(za7f74d31.PosSpring, D30e7130, A54ecff0(0, -0.1, -0.7))
		D31148ae40c.SpringSetTarget(za7f74d31.RotSpring, D30e7130, A54ecff0(math.random() * 0.3 - 0.15, math.random() * 0.3 - 0.15, 0))
		delay(0.5, function()
			D31148ae40c.SpringSetTarget(za7f74d31.PosSpring, D30e7130, A54ecff0(0, 0.7, 0))
			D31148ae40c.SpringSetTarget(za7f74d31.RotSpring, D30e7130, u50fd37)
		end)
	elseif za7f74d31.Name == "Shotgun" then
		local f8391042d2 = Qf33c9f4c
		for ab4eadf9a = 1, 5 do
			local r6604d87, c914692, M7274f3fb1 = (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23
			local Da9754e0 = nd19ee.Skeleton.Tip
			local ge3c6a0932 = (Qf33c9f4c - Da9754e0.Position).magnitude
			Qf33c9f4c = f8391042d2 + A54ecff0(r6604d87, c914692, M7274f3fb1) * ge3c6a0932 * 0.9
			local b44de3 = Instance.new("Part")
			b44de3.BrickColor = BrickColor.new("White")
			b44de3.Transparency = 0.8
			b44de3.Anchored = true
			b44de3.CanCollide = false
			b44de3.Size = A54ecff0(0.2, ge3c6a0932, 0.2)
			b44de3.CFrame = Sbd7e7a858(Da9754e0.Position, Qf33c9f4c) * Sbd7e7a858(0, 0, -ge3c6a0932 * 0.5) * W8b718e(math.pi * 0.5, 0, 0)
			local d398025f5 = Instance.new("CylinderMesh")
			d398025f5.Scale = A54ecff0(0.2, 1, 0.2)
			d398025f5.Parent = b44de3
			b44de3.Parent = za7f74d31.Model
			game.Debris:AddItem(b44de3, 0.1)
		end
	end
end
local function Kdbdf8(q82414cf, N72efe14)
	if q82414cf then
		local g5d4c24 = N59f1a.Inventory.Inner:FindFirstChild(q82414cf.Name)
		if g5d4c24 then
			g5d4c24.ImageColor3 = Color3.new(0.7, 0.7, 0.7)
			g5d4c24.ImageTransparency = 0.5
		end
	end
	I24c9cc17:FireServer("pw8pqrjk", q82414cf)
	return y135e496(Nc2e78.Name, q82414cf, N72efe14, true)
end
local function l74279f62a25(k414ef)
	local l68a7a = z6e8a5d8c4[Nc2e78.Name]
	if l68a7a then
		local ad103902edf = N59f1a.Inventory.Inner:FindFirstChild(l68a7a.Name)
		if ad103902edf then
			ad103902edf.ImageColor3 = Color3.new(1, 1, 1)
			ad103902edf.ImageTransparency = 0
		end
	end
	I24c9cc17:FireServer("chblwbxt")
	return vd7aec8(Nc2e78.Name, k414ef, true)
end
local u3028a56dd9 = false
local function gb1a2ed908(fb7c6651f, I6c74ea94f5f, l115eaa)
	local f73428 = fb7c6651f.Model
	local G117167 = f73428:FindFirstChild("Skeleton")
	if not G117167 then
		return
	end
	local m0de8e81de = G117167:FindFirstChild("Tip")
	if not m0de8e81de then
		return
	end
	local E71299, g8e1275b7
	E71299, g8e1275b7 = m0e44a52.X, m0e44a52.Y
	local iaed4c3 = kc9675bdcc0:ScreenPointToRay(E71299, g8e1275b7)
	local c2e99fad2b, n307c88 = of8789ef40(iaed4c3.Origin, iaed4c3.Direction * 999, fb7c6651f.Model, Nc2e78.Character)
	local b65e6cb58 = (n307c88 - m0de8e81de.Position).unit
	if l115eaa then
		b65e6cb58 = b65e6cb58 + l115eaa
	end
	local l24a0d329 = 300
	if fb7c6651f.Name == "Taser" then
		l24a0d329 = 65
	end
	local o2ce5ea420, H4b46ae = of8789ef40(m0de8e81de.Position, b65e6cb58 * l24a0d329, fb7c6651f.Model)
	return o2ce5ea420, H4b46ae
end
function hd12ee57ee9a(d5c8473869)
	if d5c8473869.MagSize then
		local K6ff0304d8e = N59f1a:FindFirstChild("Ammo")
		if K6ff0304d8e then
			K6ff0304d8e.Current.Text = ("%d/"):format(d5c8473869.MagSize)
			K6ff0304d8e.MagSize.Text = d5c8473869.MaxMagSize
		end
	end
end
function Y25c9fa(re359ec35, zac1e176, u20c47d)
	if not re359ec35 then
		return
	end
	if re359ec35:IsDescendantOf(workspace.Vehicles) then
		local Ha7061c1 = 0
		repeat
			re359ec35 = re359ec35.Parent
			Ha7061c1 = Ha7061c1 + 1
		until re359ec35:FindFirstChild("Engine") or Ha7061c1 >= 5
		local z10c0b965 = re359ec35:FindFirstChild("Engine")
		if not z10c0b965 then
			return
		end
		I24c9cc17:FireServer("eglwqgc8", z10c0b965.Parent, u20c47d)
	elseif re359ec35.Parent:FindFirstChild("Humanoid") then
		local Uc532526ea = re359ec35.Parent
		local Z2c61df = s4e429b5:GetPlayerFromCharacter(Uc532526ea)
		if not Z2c61df then
			return
		end
		I24c9cc17:FireServer("ow4m4jmc", Z2c61df.Name, re359ec35, zac1e176, u20c47d)
	elseif re359ec35:IsDescendantOf(workspace.ShootingRange) then
		I24c9cc17:FireServer("ux3gs4h4", re359ec35)
	end
end
function Wa924e(G45f8371c68, m20053e8854b)
	m20053e8854b = m20053e8854b or 2
	if G45f8371c68.Name == "AK47" then
		m20053e8854b = 2.5
	end
	if G45f8371c68.Reloading then
		return
	end
	G45f8371c68.Reloading = true
	q12db8("RifleReload", {
		Source = N59f1a,
		MaxTime = 2,
		Volume = 0.3
	}, true)
	N59f1a.Ammo.Reloading.Visible = true
	local function qc4bc74f86()
		q12db8("RifleReload", {Source = N59f1a, MaxTime = 2}, true)
		G45f8371c68.MagSize = G45f8371c68.MaxMagSize
		hd12ee57ee9a(G45f8371c68)
		G45f8371c68.Reloading = false
		N59f1a.Ammo.Reloading.Visible = false
	end
	delay(m20053e8854b, qc4bc74f86)
end
local Md38ca3001d5 = 0
local function Ded244f(S7545672c2, k2b6564182)
	local h36cea810e = Nc2e78.Character
	if not h36cea810e then
		return
	end
	local k2e3fae8a0 = h36cea810e:FindFirstChild("HumanoidRootPart")
	if not k2e3fae8a0 then
		return
	end
	local Gda72f13d34 = Md38ca3001d5 + 1
	Md38ca3001d5 = Gda72f13d34
	u3028a56dd9 = true
	if S7545672c2.Name == "Rifle" or S7545672c2.Name == "AK47" then
		if tick() - S7545672c2.LastFire < 0.1 then
			return
		end
		while true do
			if Md38ca3001d5 ~= Gda72f13d34 then
				return
			end
			if S7545672c2.Reloading then
				return
			end
			if not u3028a56dd9 then
				break
			end
			S7545672c2.LastFire = tick()
			q12db8("RifleFire", {
				Source = k2e3fae8a0,
				Multi = true,
				SoundGroup = f924b8d.Guns
			})
			local v19ae5e0, z7f09e61de = gb1a2ed908(S7545672c2, k2b6564182)
			Y25c9fa(v19ae5e0, z7f09e61de, S7545672c2)
			I24c9cc17:FireServer("ycxorlux", z7f09e61de)
			v6600bbbd32(Nc2e78.Name, z7f09e61de, true)
			local Y313ac = S7545672c2.MagSize - 1
			S7545672c2.MagSize = Y313ac
			hd12ee57ee9a(S7545672c2)
			if Y313ac <= 0 then
				return Wa924e(S7545672c2)
			end
			local Dd285be = 0.1
			wait(Dd285be)
		end
	elseif S7545672c2.Name == "Pistol" then
		if tick() - S7545672c2.LastFire < 0.2 then
			return
		end
		if S7545672c2.Reloading then
			return
		end
		S7545672c2.LastFire = tick()
		q12db8("PistolFire", {
			Source = k2e3fae8a0,
			TimeStart = 8,
			MaxTime = 1,
			Volume = 0.2,
			Multi = true
		})
		local sced997c5d, Wb17720 = gb1a2ed908(S7545672c2, k2b6564182)
		Y25c9fa(sced997c5d, Wb17720, S7545672c2)
		I24c9cc17:FireServer("ycxorlux", Wb17720)
		v6600bbbd32(Nc2e78.Name, Wb17720, true)
		local Z7f83fd7d = S7545672c2.MagSize - 1
		S7545672c2.MagSize = Z7f83fd7d
		hd12ee57ee9a(S7545672c2)
		if Z7f83fd7d <= 0 then
			return Wa924e(S7545672c2)
		end
	elseif S7545672c2.Name == "Flashlight" then
		if tick() - S7545672c2.LastFire < 0.2 then
			return
		end
		if S7545672c2.Reloading then
			return
		end
		S7545672c2.LastFire = tick()
		local ib7832 = u50fd37
		I24c9cc17:FireServer("ycxorlux", ib7832)
		v6600bbbd32(Nc2e78.Name, ib7832, true)
	elseif S7545672c2.Name == "Shotgun" then
		if tick() - S7545672c2.LastFire < 0.4 then
			return
		end
		if S7545672c2.Reloading then
			return
		end
		S7545672c2.LastFire = tick()
		q12db8("ShotgunFire", {
			Source = k2e3fae8a0,
			MaxTime = 2,
			Volume = 0.4,
			Multi = true
		})
		q12db8("ShotgunPump", {
			Source = k2e3fae8a0,
			MaxTime = 1,
			Volume = 0.4,
			Delay = 0.2,
			Multi = true
		})
		local j9d1ef07fab, M72f356d73e8 = gb1a2ed908(S7545672c2, k2b6564182)
		Y25c9fa(j9d1ef07fab, M72f356d73e8, S7545672c2)
		for G12e93331 = 1, 2 do
			local h1f8e7eacd8c, G21137c9b32, y657630e291 = (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23, (math.random() - 0.5) * 0.23
			local b0038c7, vea012f = gb1a2ed908(S7545672c2, k2b6564182, A54ecff0(h1f8e7eacd8c, G21137c9b32, y657630e291))
			Y25c9fa(b0038c7, vea012f, S7545672c2)
		end
		I24c9cc17:FireServer("ycxorlux", M72f356d73e8)
		v6600bbbd32(Nc2e78.Name, M72f356d73e8, true)
		local S643e78b3 = S7545672c2.MagSize - 1
		S7545672c2.MagSize = S643e78b3
		hd12ee57ee9a(S7545672c2)
		if S643e78b3 <= 0 then
			return Wa924e(S7545672c2)
		end
	elseif S7545672c2.Name == "Taser" then
		if tick() - S7545672c2.LastFire < 0.2 then
			return
		end
		if S7545672c2.Reloading then
			return
		end
		S7545672c2.LastFire = tick()
		q12db8("Taser", {
			Source = k2e3fae8a0,
			MaxTime = 1,
			Volume = 0.4
		})
		local De1176ae8bc, S9c8a63 = gb1a2ed908(S7545672c2, k2b6564182)
		local Jdcb21b24 = 5
		if De1176ae8bc and De1176ae8bc.Parent:FindFirstChild("Humanoid") then
			local X01a7bea82 = De1176ae8bc.Parent
			local p836d43ec4 = s4e429b5:GetPlayerFromCharacter(X01a7bea82)
			if p836d43ec4 and p836d43ec4.TeamValue.Value == K083ad90.Team.Prisoner then
				I24c9cc17:FireServer("typwksjs", p836d43ec4.Name, De1176ae8bc, S9c8a63)
				Jdcb21b24 = 10
			end
		end
		I24c9cc17:FireServer("ycxorlux", S9c8a63)
		v6600bbbd32(Nc2e78.Name, S9c8a63, true)
		local b20a9a9c73e9 = S7545672c2.MagSize - 1
		S7545672c2.MagSize = b20a9a9c73e9
		hd12ee57ee9a(S7545672c2)
		if b20a9a9c73e9 <= 0 then
			return Wa924e(S7545672c2, Jdcb21b24)
		end
	elseif S7545672c2.Name == "Donut" then
		if 1 > tick() - S7545672c2.LastFire then
			return
		end
		S7545672c2.LastFire = tick()
		if S7545672c2.Used then
			return false
		end
		S7545672c2.Used = true
		local x114b0 = u50fd37
		I24c9cc17:FireServer("ycxorlux", x114b0)
		v6600bbbd32(Nc2e78.Name, x114b0, true)
	elseif S7545672c2.Name == "Glider" then
		if 1 > tick() - S7545672c2.LastFire then
			return
		end
		S7545672c2.LastFire = tick()
		if S7545672c2.Used then
			return false
		end
		S7545672c2.Used = true
		local Mcacf3ed5 = u50fd37
		I24c9cc17:FireServer("ycxorlux", Mcacf3ed5)
		v6600bbbd32(Nc2e78.Name, Mcacf3ed5, true)
	end
end
local function zff2e0()
	u3028a56dd9 = false
end
local Oa323e54, bc09a7d67
function Oa323e54()
	return {
		StartPosition = nil,
		Position = u50fd37,
		TargetPosition = nil,
		LookVector = A54ecff0(0, 0, -1),
		TargetFocus = nil,
		TargetLookVector = nil
	}
end
function bc09a7d67(rd15734d4, j1bc1e774be8, n070629dd6cf, Z19947450983)
	if rd15734d4.TargetPosition then
		if rd15734d4.StartPosition then
			rd15734d4.Position = rd15734d4.StartPosition * (1 - n070629dd6cf) + rd15734d4.TargetPosition * n070629dd6cf
		else
			rd15734d4.Position = rd15734d4.Position + (rd15734d4.TargetPosition - rd15734d4.Position) * j1bc1e774be8 * n070629dd6cf
		end
	end
	local L203f0 = rd15734d4.TargetLookVector
	if rd15734d4.TargetFocus then
		L203f0 = (rd15734d4.TargetFocus - rd15734d4.Position).unit
	end
	if L203f0 then
		rd15734d4.LookVector = rd15734d4.LookVector + (L203f0 - rd15734d4.LookVector) * j1bc1e774be8 * Z19947450983
	end
	kc9675bdcc0.CFrame = Sbd7e7a858(u50fd37, rd15734d4.LookVector) + rd15734d4.Position
end
local Ffb5b1, L7e9189985
do
	local R7b0eae5 = tick()
	local wd7fe59f0 = false
	local function oce0fa067a()
		if wd7fe59f0 then
			wd7fe59f0 = false
			local n379cf1 = tick() - R7b0eae5
			I24c9cc17:FireServer("rmimrhkg", n379cf1)
		end
	end
	local yaf901841e38 = tick()
	function Ffb5b1()
		if tick() - yaf901841e38 < 0.1 then
			return
		end
		yaf901841e38 = tick()
		if wd7fe59f0 then
			oce0fa067a()
		end
		wd7fe59f0 = true
		R7b0eae5 = tick()
		if Ua4530cfaef and not Ua4530cfaef.Passenger then
			Ua4530cfaef.Nitro = true
			q12db8("Nitro1", {
				Source = Ua4530cfaef.Nitrous[1].Parent,
				TimeStart = 0.5,
				Volume = 1
			})
			q12db8("NitroLoop", {
				Source = Ua4530cfaef.Nitrous[1].Parent,
				Looped = true,
				MaxTime = 30,
				Volume = 1,
				Delay = 0.3
			})
			for x7981b47ab, b83c8738644 in next, Ua4530cfaef.Nitrous, nil do
				b83c8738644.Enabled = true
			end
		end
		I24c9cc17:FireServer("dbpqwa4g")
		if ad69d2d35a3.Nitro / ad69d2d35a3.NitroLastMax <= 0.01 then
			Ma06a756880f.u26pr5ye(true, true)
		end
	end
	function L7e9189985()
		x3b0d9("NitroLoop")
		if Ua4530cfaef and not Ua4530cfaef.Passenger then
			Ua4530cfaef.Nitro = false
			if Ua4530cfaef.Nitrous then
				for Re10cbe03, Fea242a2 in next, Ua4530cfaef.Nitrous, nil do
					Fea242a2.Enabled = false
				end
			end
		end
		oce0fa067a()
		I24c9cc17:FireServer("uzzgzq5c")
	end
	function Ma06a756880f.np1p0vap(Ref053c69, t2862b88c15a)
		ad69d2d35a3.Nitro = Ref053c69
		ad69d2d35a3.NitroLastMax = t2862b88c15a
		ad69d2d35a3.NitroForceUIUpdate = true
		m0e1ccdc.Nitro.Body.Bar.Value.Size = UDim2.new(Ref053c69 / K083ad90.Scalar.NitroMax, 0, 1, 0)
		m0e1ccdc.Nitro.Body.Bar.TextLabel.Text = ("%d/%d Fuel"):format(Ref053c69, K083ad90.Scalar.NitroMax)
	end
end
local cfce0a238c = 0
local X8c82f67 = u50fd37
t4c33a3b55f.Heartbeat:connect(function(zb34460)
	D30e7130 = D30e7130 + zb34460
	cfce0a238c = cfce0a238c + zb34460
	ba9af77cbd.profilebegin("Inverse Kinematics")
	for K3ca3f, s548a09 in next, z6e8a5d8c4, nil do
		local xbf634eacd = s548a09.Model:FindFirstChild("Skeleton")
		if xbf634eacd then
			if s548a09.IK.RightArm then
				w6ea0b17.RightArm(s548a09.IK, xbf634eacd.RightArm.Position, s548a09.IK.RightAngle)
			end
			if s548a09.IK.LeftArm then
				w6ea0b17.LeftArm(s548a09.IK, xbf634eacd.LeftArm.Position, s548a09.IK.LeftAngle)
			end
		end
		local g0e2ec146ae6, f945383 = D31148ae40c.Spring(s548a09.PosSpring, D30e7130)
		local D01d7a4, jbf189e = D31148ae40c.Spring(s548a09.RotSpring, D30e7130)
		local aaf13c32e06 = Sbd7e7a858(g0e2ec146ae6) * D31148ae40c.CFrameFromAxisAngle(D01d7a4)
		if D31148ae40c.IsNaNcf(aaf13c32e06) then
			aaf13c32e06 = cd4c73
		end
		s548a09.Motor.C0 = aaf13c32e06
		local Lfe9b4a1, kc560da = D31148ae40c.Spring(s548a09.WaistSpring, D30e7130)
		local D797bd = s548a09.WaistC0 * D31148ae40c.CFrameFromAxisAngle(Lfe9b4a1)
		if D31148ae40c.IsNaNcf(D797bd) then
			D797bd = cd4c73
		end
		s548a09.Waist.C0 = D797bd
		local v79cfaf4bda, Bb04de46a = D31148ae40c.Spring(s548a09.NeckSpring, D30e7130)
		local O19580e4 = s548a09.NeckC0 * D31148ae40c.CFrameFromAxisAngle(v79cfaf4bda)
		if D31148ae40c.IsNaNcf(O19580e4) then
			O19580e4 = cd4c73
		end
		s548a09.Neck.C0 = O19580e4
	end
	ba9af77cbd.profileend()
	local Jf5954729 = z6e8a5d8c4[Nc2e78.Name]
	if Jf5954729 and Jf5954729.CrossHair then
		N59f1a.CrossHair.Position = UDim2.new(0, m0e44a52.X - 30, 0, m0e44a52.Y - 30)
	end
	if Jf5954729 and Jf5954729.Name == "Binoculars" then
		local Xfd6e006bb32 = 0.6
		local U34feddd = N59f1a.AbsoluteSize.X + 40
		local fce51a10a = N59f1a.AbsoluteSize.Y
		N59f1a.Binoculars.ImageLabel.Size = UDim2.new(0, U34feddd, 0, U34feddd * Xfd6e006bb32)
		N59f1a.Binoculars.ImageLabel.Position = UDim2.new(0.5, -U34feddd * 0.5, 0.5, -U34feddd * Xfd6e006bb32 * 0.5)
		N59f1a.Binoculars.BarTop.Size = UDim2.new(1, 0, 0, (fce51a10a - U34feddd * Xfd6e006bb32) * 0.5 + 20)
		N59f1a.Binoculars.BarBottom.Size = UDim2.new(1, 0, 0, (fce51a10a - U34feddd * Xfd6e006bb32) * 0.5 + 20)
		N59f1a.Binoculars.BarBottom.Position = UDim2.new(0, 0, 1, -((fce51a10a - U34feddd * Xfd6e006bb32) * 0.5 + 20))
		N59f1a.Binoculars.Visible = true
		kc9675bdcc0.FieldOfView = 20
	elseif N59f1a.Binoculars.Visible then
		N59f1a.Binoculars.Visible = false
		kc9675bdcc0.FieldOfView = 70
	end
	local h32165f8a09 = Jf5954729 and Jf5954729.Name
	local Nf78c030, Nebca7d = q9bfce6b5a.X, q9bfce6b5a.Y
	ba9af77cbd.profilebegin("Camera Looking")
	local pc5677d = kc9675bdcc0:ScreenPointToRay(Nf78c030, Nebca7d)
	X8c82f67 = X8c82f67 + (pc5677d.Origin + pc5677d.Direction * 30 - X8c82f67) * 0.2
	local F37a06ecb = Nc2e78.Character
	if F37a06ecb then
		local x1710087ec = F37a06ecb:FindFirstChild("HumanoidRootPart")
		if x1710087ec then
			local Ua761a0bf = F37a06ecb:FindFirstChild("Head")
			local B67622db64ba = F37a06ecb:FindFirstChild("UpperTorso")
			if Ua761a0bf and B67622db64ba then
				local U05d652444ec = B67622db64ba:FindFirstChild("Waist")
				local ta73e6e = Ua761a0bf:FindFirstChild("Neck")
				if U05d652444ec and ta73e6e then
					local E88cd361af50, R929bdbf2df = 0, 0
					local Cd18ffeeeba, Pf799f04
					ba9af77cbd.profilebegin("Calculate looking")
					if not Y729e2c9 then
						local Vabaf88d06b4 = x1710087ec.CFrame.lookVector
						local of79b4f8b
						if h32165f8a09 and K083ad90.MouseLookAt[h32165f8a09] then
							of79b4f8b = (X8c82f67 - x1710087ec.CFrame.p).unit
						else
							of79b4f8b = (kc9675bdcc0.CFrame * W8b718e(0.2, 0, 0)).lookVector
						end
						if D31148ae40c.IsNaNv3(of79b4f8b) then
							of79b4f8b = A54ecff0(0, 0, -1)
						end
						local b36907ab88 = 1
						E88cd361af50, R929bdbf2df = c07597da(Vabaf88d06b4, of79b4f8b:Cross(A54ecff0(0, 1, 0))), math.asin(of79b4f8b.Y)
						if Ua4530cfaef and (not Ua4530cfaef.Passenger or Ua4530cfaef.NoLook) then
							E88cd361af50, R929bdbf2df = 0, 0
						end
						if D31148ae40c.IsNaN(E88cd361af50) then
							E88cd361af50 = 0
						end
						if D31148ae40c.IsNaN(R929bdbf2df) then
							R929bdbf2df = 0
						end
						Cd18ffeeeba = Sbd7e7a858(U05d652444ec.C1.p) * W8b718e(0, -E88cd361af50 * 0.5 * b36907ab88, 0) * W8b718e(-R929bdbf2df * 0.2 * b36907ab88, 0, 0)
						Pf799f04 = Sbd7e7a858(ta73e6e.C1.p) * W8b718e(-R929bdbf2df * 0.5 * b36907ab88, 0, 0) * W8b718e(0, -E88cd361af50 * 0.5 * b36907ab88, 0)
					else
						Cd18ffeeeba = Sbd7e7a858(U05d652444ec.C1.p)
						Pf799f04 = Sbd7e7a858(ta73e6e.C1.p)
					end
					if D31148ae40c.IsNaNcf(Cd18ffeeeba) then
						Cd18ffeeeba = Sbd7e7a858(U05d652444ec.C1.p)
					end
					if D31148ae40c.IsNaNcf(Pf799f04) then
						Pf799f04 = Sbd7e7a858(ta73e6e.C1.p)
					end
					U05d652444ec.C1 = Cd18ffeeeba
					ta73e6e.C1 = Pf799f04
					if cfce0a238c >= 0.4 then
						cfce0a238c = 0
						if D31148ae40c.IsNaN(E88cd361af50) then
							E88cd361af50 = 0
						end
						if D31148ae40c.IsNaN(R929bdbf2df) then
							R929bdbf2df = 0
						end
						I24c9cc17:FireServer("pjkyukfo", E88cd361af50, R929bdbf2df)
					end
					ba9af77cbd.profileend()
				end
			end
		end
	end
	for g4358e, B78f9c3a6b07 in next, Y6b22aaa4e, nil do
		local Wc7aba706b, Q4c08a9cf89a = D31148ae40c.Spring(B78f9c3a6b07.HeadingSpring, D30e7130)
		local cea1739fd, a70c2a9cd8c = D31148ae40c.Spring(B78f9c3a6b07.PitchSpring, D30e7130)
		local S5c57d95aa, Af47398e5d
		local K7b1a3e8 = B78f9c3a6b07.Waist
		if K7b1a3e8 then
			S5c57d95aa = Sbd7e7a858(K7b1a3e8.C1.p) * W8b718e(-cea1739fd * 0.2, -Wc7aba706b * 0.5, 0)
			if D31148ae40c.IsNaNcf(S5c57d95aa) then
				S5c57d95aa = cd4c73
			end
			K7b1a3e8.C1 = S5c57d95aa
		end
		local h99caab22cf = B78f9c3a6b07.Neck
		if h99caab22cf then
			Af47398e5d = Sbd7e7a858(h99caab22cf.C1.p) * W8b718e(-cea1739fd * 0.5, -Wc7aba706b * 0.5, 0)
			if D31148ae40c.IsNaNcf(Af47398e5d) then
				Af47398e5d = cd4c73
			end
			h99caab22cf.C1 = Af47398e5d
		end
	end
	ba9af77cbd.profileend()
	ba9af77cbd.profilebegin("Vehicle Updates")
	if Ua4530cfaef and not Ua4530cfaef.Passenger then
		if Ua4530cfaef.Type == "Chassis" then
			v50f125ed3.Update(Ua4530cfaef, zb34460)
		elseif Ua4530cfaef.Type == "Heli" then
			q51b0b.Update(Ua4530cfaef, zb34460)
		elseif Ua4530cfaef.Type == "Motorcycle" or Ua4530cfaef.Type == "DuneBuggy" then
			Ve816fadc.UpdateHQ(Ua4530cfaef, zb34460)
		end
	end
	ba9af77cbd.profileend()
	x4aec5.CircleAction.Update(zb34460)
	if Ua4530cfaef and not Ua4530cfaef.Passenger and Ua4530cfaef.Type ~= "Heli" then
		local Q09aa2f93 = false
		if Ua4530cfaef.Type ~= "Heli" and not N59f1a.Nitro.Visible then
			N59f1a.Nitro.Visible = true
			Q09aa2f93 = true
		end
		if ad69d2d35a3.NitroForceUIUpdate then
			ad69d2d35a3.NitroForceUIUpdate = false
			Q09aa2f93 = true
		end
		if Ua4530cfaef.Nitro then
			Q09aa2f93 = true
			ad69d2d35a3.Nitro = ad69d2d35a3.Nitro - zb34460 * 5
		end
		if 0 >= ad69d2d35a3.Nitro then
			Q09aa2f93 = true
			ad69d2d35a3.Nitro = 1
			L7e9189985()
		end
		if Q09aa2f93 then
			local p6bc1d1c7 = ad69d2d35a3.Nitro / K083ad90.Scalar.NitroMax
			N59f1a.Nitro.Value.Size = UDim2.new(1, 0, p6bc1d1c7, 0)
			N59f1a.Nitro.Value.Position = UDim2.new(0, 0, 1 - p6bc1d1c7, 0)
		end
	elseif N59f1a.Nitro.Visible then
		N59f1a.Nitro.Visible = false
	end
end)
local function F557c494b8(K5029bf, zbee1f6)
	local sf626985ca, ya0707, E46073e2f13d = K5029bf.Model, K5029bf.Height, K5029bf.IKP
	if not sf626985ca then
		return
	end
	local x5422b758 = sf626985ca:FindFirstChild("Engine")
	if not x5422b758 then
		return
	end
	local pfea15f75130 = (x5422b758.Position - kc9675bdcc0.CFrame.p).magnitude
	if pfea15f75130 > 350 then
		return
	end
	if not K5029bf.Dead and not E46073e2f13d and K5029bf.Character then
		local y7cf90893b0a = K5029bf.Character.Name
		if z6e8a5d8c4[y7cf90893b0a] then
			vd7aec8(y7cf90893b0a)
		end
		E46073e2f13d = f4a1015c(y7cf90893b0a, {RightArm = true, LeftArm = true})
		K5029bf.IKP = E46073e2f13d
	end
	local H5f8afca5 = x5422b758.CFrame:vectorToObjectSpace(x5422b758.Velocity)
	local Sb03d1 = H5f8afca5.Z * zbee1f6
	local lb9733 = K5029bf.WheelRotation + Sb03d1 / (sf626985ca.WheelFrontRight.Wheel.Size.Y * 0.5 * math.pi)
	lb9733 = lb9733 % (2 * math.pi)
	K5029bf.WheelRotation = lb9733
	v50f125ed3.UpdateWheelLowQuality(sf626985ca, ya0707, K5029bf.PartFrontRight, lb9733)
	v50f125ed3.UpdateWheelLowQuality(sf626985ca, ya0707, K5029bf.PartFrontLeft, lb9733)
	v50f125ed3.UpdateWheelLowQuality(sf626985ca, ya0707, K5029bf.PartBackRight, lb9733)
	v50f125ed3.UpdateWheelLowQuality(sf626985ca, ya0707, K5029bf.PartBackLeft, lb9733)
	v50f125ed3.UpdateSoundLowQuality(K5029bf, K5029bf.Gears, H5f8afca5)
	local sde3f7b9 = z968ef8f(H5f8afca5.X)
	if sde3f7b9 > 10 then
		K5029bf.Sounds.DriftSqueal.Volume = math.min((sde3f7b9 - 10) / 4, 0.3)
	else
		K5029bf.Sounds.DriftSqueal.Volume = 0
	end
	local Xb262f = 0.7 * x5422b758.RotVelocity.Y
	if K5029bf.WeldSteer then
		K5029bf.WeldSteer.C0 = W8b718e(0, Xb262f, 0)
		local M06e5940db80 = sf626985ca.Steer.CFrame
		w6ea0b17.RightArm(E46073e2f13d, M06e5940db80 * A54ecff0(0.8, 0.1, 0), -Xb262f)
		w6ea0b17.LeftArm(E46073e2f13d, M06e5940db80 * A54ecff0(-0.8, 0.1, 0), -Xb262f)
	end
end
local function p82857d707e7(S1d0a13624d4, b37a82)
	local Jf713d = S1d0a13624d4.Model
	if not Jf713d then
		return
	end
	local F02d13773a3 = Jf713d:FindFirstChild("Engine")
	if not F02d13773a3 then
		return
	end
	local Ibbc3e30b2c = S1d0a13624d4.Make
	if S1d0a13624d4.HasProp then
		q51b0b.SpinProp(S1d0a13624d4, b37a82)
	end
end
local function Q8660dcd75a(Bc4fa1, j525de40146)
	local W6d79386 = Bc4fa1.IKP
	if not Bc4fa1.Dead and not W6d79386 then
		local A43190b3 = Bc4fa1.PlayerName
		if z6e8a5d8c4[A43190b3] then
			vd7aec8(A43190b3)
		end
		W6d79386 = f4a1015c(A43190b3, {RightArm = true, LeftArm = true})
		Bc4fa1.IKP = W6d79386
	end
	Ve816fadc.UpdateLQ(Bc4fa1, j525de40146)
end
local cd9edbaf
cd9edbaf = {}
do
	local Pcdd86eb02fa = {}
	Pcdd86eb02fa.Parachute = {
		Descent = 40,
		Forward = 60,
		Parachute = true
	}
	Pcdd86eb02fa.Glider = {
		Descent = 60,
		Forward = 90,
		Glider = true
	}
	local reacd7ff49
	function cd9edbaf.Parachute(zf01e56e6a)
		if cd9edbaf.IsParachuting then
			return
		end
		if reacd7ff49 then
			return
		end
		cd9edbaf.IsParachuting = true
		local e5742c9 = Nc2e78.Character
		if not e5742c9 then
			return
		end
		local d3292d = e5742c9:FindFirstChild("HumanoidRootPart")
		if not d3292d then
			return
		end
		local Z9a48c935be = e5742c9:FindFirstChild("Humanoid")
		if not Z9a48c935be then
			return
		end
		if Z9a48c935be.PlatformStand then
			return
		end
		I24c9cc17:FireServer("i0jlmyaf", zf01e56e6a)
		e5742c9.Humanoid.PlatformStand = true
		local Rad497e19c2a = kc9675bdcc0.CFrame * W8b718e(0.2, 0, 0)
		local ze648ad = Instance.new("BodyGyro")
		ze648ad.Name = "Parachute"
		ze648ad.MaxTorque = A54ecff0(10000, 10000, 10000)
		if zf01e56e6a == "Glider" then
			ze648ad.P = 300
			ze648ad.D = 50
		end
		ze648ad.CFrame = Rad497e19c2a
		ze648ad.Parent = d3292d
		local W2ac72c = Instance.new("BodyVelocity")
		W2ac72c.MaxForce = A54ecff0(1000000, 1000000, 1000000)
		W2ac72c.Parent = d3292d
		local Q1431e9 = {}
		Q1431e9.Gyro = ze648ad
		Q1431e9.Velocity = W2ac72c
		Q1431e9.Type = zf01e56e6a
		reacd7ff49 = Q1431e9
		if not Vc386281d7f0 then
			N59f1a.Parachute.Visible = true
			N59f1a.Parachute.Text = ("[Space] to close %s"):format(zf01e56e6a:lower())
		end
	end
	function cd9edbaf.ParachuteStop()
		if not cd9edbaf.IsParachuting then
			return
		end
		local Dafc470 = reacd7ff49
		if not Dafc470 then
			return
		end
		if Dafc470.Part then
			Dafc470.Part:Destroy()
		end
		if Dafc470.Gyro then
			Dafc470.Gyro:Destroy()
		end
		if Dafc470.Velocity then
			Dafc470.Velocity:Destroy()
		end
		cd9edbaf.IsParachuting = false
		I24c9cc17:FireServer("dzr8zhz5")
		N59f1a.Parachute.Visible = false
		reacd7ff49 = nil
		local p53e348 = Nc2e78.Character
		if not p53e348 then
			return
		end
		local o4a0976 = p53e348:FindFirstChild("HumanoidRootPart")
		if not o4a0976 then
			return
		end
		p53e348.Humanoid.PlatformStand = false
		p53e348.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	end
	function cd9edbaf.ParachuteUpdate(d0414a06ba4)
		if not cd9edbaf.IsParachuting then
			return
		end
		local d279d3a = Nc2e78.Character
		if not d279d3a then
			return
		end
		local Sf10adf = d279d3a:FindFirstChild("HumanoidRootPart")
		if not Sf10adf then
			return
		end
		local f7d2bf636b = reacd7ff49
		if not f7d2bf636b then
			return
		end
		local R7df1e3386 = kc9675bdcc0.CFrame * W8b718e(0.2, 0, 0)
		local Fa7e5133c3f = f7d2bf636b.Type
		local lc79cbf3e = Pcdd86eb02fa[Fa7e5133c3f]
		local a2fe94b12 = lc79cbf3e.Forward
		local Xd5ce2b = lc79cbf3e.Descent
		if lc79cbf3e.Parachute then
			local R1988e2c5c99 = math.clamp(Sf10adf.RotVelocity.y, -4, 4)
			local s6fb9dc2 = z968ef8f(R7df1e3386.lookVector:Dot(A54ecff0(0, 1, 0)))
			local i2f7a0e = A54ecff0(R7df1e3386.lookVector.X, 0, R7df1e3386.lookVector.Z)
			f7d2bf636b.Velocity.Velocity = i2f7a0e * a2fe94b12 * Z728bf347053(0.5, s6fb9dc2) + A54ecff0(0, s6fb9dc2, 0) * -Xd5ce2b
			f7d2bf636b.Gyro.CFrame = Sbd7e7a858(u50fd37, R7df1e3386.lookVector) * Sbd7e7a858(0, 0, R1988e2c5c99 * 0.125)
		elseif lc79cbf3e.Glider then
			local mef537732109 = z968ef8f(math.clamp(R7df1e3386.lookVector:Dot(A54ecff0(0, 1, 0)), -1, -0.06))
			local l29319 = A54ecff0(R7df1e3386.lookVector.X, 0, R7df1e3386.lookVector.Z)
			f7d2bf636b.Velocity.Velocity = l29319 * a2fe94b12 * Z728bf347053(0.9, mef537732109) + A54ecff0(0, mef537732109, 0) * -Xd5ce2b
			f7d2bf636b.Gyro.CFrame = Sbd7e7a858(u50fd37, R7df1e3386.lookVector * 1) * W8b718e(math.pi, 0, 0)
		end
		local lb713cc, Te2543a35f4b = of8789ef40(Sf10adf.Position, A54ecff0(0, -1, 0) * 6, d279d3a)
		if lb713cc and not lb713cc:IsDescendantOf(workspace.Vehicles) then
			cd9edbaf.ParachuteStop()
		end
	end
	Ma06a756880f.rjxhilg4 = cd9edbaf.Parachute
end
local i15b9b1, U40d625d1e13, z735ed6
do
	local C74aa58 = require(aa384925c.Module.AlexRagdoll)
	z735ed6 = false
	local Yed28c1fb0c = 0
	local x68b7c8046 = true
	local function Z4ce193721()
		if not z735ed6 then
			return
		end
		local vd7306a3323 = D30e7130 - Yed28c1fb0c
		if vd7306a3323 >= 2 then
			local Rf5db1745 = Nc2e78.Character
			local K6a81494de = Rf5db1745:FindFirstChild("HumanoidRootPart")
			if not K6a81494de then
				x68b7c8046 = false
				return
			end
			local M41ccfbe = K6a81494de.Velocity.magnitude
			if M41ccfbe < 28 or vd7306a3323 >= 5 then
				x68b7c8046 = false
				I24c9cc17:FireServer("ztumq4b9")
			end
		end
	end
	function U40d625d1e13()
		if z735ed6 and x68b7c8046 then
			Z4ce193721()
		end
	end
	function i15b9b1()
		if z735ed6 then
			return
		end
		if cd9edbaf.IsParachuting then
			return
		end
		local Te2adb68 = Nc2e78.Character
		if not Te2adb68 then
			return
		end
		if Ua4530cfaef then
			return
		end
		local Tef8cb = Te2adb68:FindFirstChild("HumanoidRootPart")
		if not Tef8cb then
			return
		end
		local Q5b8e4ad4 = Te2adb68:FindFirstChild("Humanoid")
		if not Q5b8e4ad4 then
			return
		end
		if Q5b8e4ad4.Health <= 4 then
			return
		end
		if Q5b8e4ad4.PlatformStand then
			return
		end
		local lcb659 = z6e8a5d8c4[Nc2e78.Name]
		if lcb659 and lcb659.Locked then
			return
		end
		local N2d42afd8a = Tef8cb.Velocity.magnitude
		z735ed6 = true
		x68b7c8046 = true
		Yed28c1fb0c = D30e7130
		local function Hbbe52()
			local Pa42376e686 = false
			local Rad30f3 = Te2adb68:FindFirstChild("HumanoidRootPart")
			if not Rad30f3 then
				Pa42376e686 = true
			end
			if Ua4530cfaef then
				Pa42376e686 = true
			end
			if Pa42376e686 then
				z735ed6 = false
				return
			end
			l74279f62a25()
			C74aa58.Ragdoll(Te2adb68)
			I24c9cc17:FireServer("qwr9r00a")
		end
		delay(0.1, Hbbe52)
	end
	function Ma06a756880f.ztumq4b9(Nd31388)
		x68b7c8046 = false
		if Nd31388 then
			local Gcf92f = Nc2e78.Character
			C74aa58.Unragdoll(Gcf92f)
		end
		wait(0.2)
		z735ed6 = false
	end
end
local Cdbea9028b = 0
local function aee540a3(p28ac81)
	Cdbea9028b = p28ac81
	local J3b4111a1a3c = z6e8a5d8c4[Nc2e78.Name]
	local p116c9b5d58 = true
	if Ua4530cfaef then
		if Ua4530cfaef.Passenger and Ua4530cfaef.Type == "Heli" then
			p116c9b5d58 = true
		else
			p116c9b5d58 = false
		end
		if Ua4530cfaef.Seat:FindFirstChild("Items") then
			p116c9b5d58 = true
		end
	end
	if z735ed6 then
		p116c9b5d58 = false
	end
	if Y729e2c9 then
		p116c9b5d58 = false
	end
	if not p116c9b5d58 then
		return
	end
	if J3b4111a1a3c and J3b4111a1a3c.Locked then
		return
	end
	local l976b93 = Xcd5d94231.ItemStacks[p28ac81]
	local m1e4c370feba
	if not J3b4111a1a3c then
		m1e4c370feba = true
	elseif J3b4111a1a3c and l976b93 then
		m1e4c370feba = l976b93.i ~= J3b4111a1a3c.i
	end
	local M8e123a14
	if J3b4111a1a3c then
		M8e123a14 = J3b4111a1a3c.IK
		l74279f62a25(m1e4c370feba)
	end
	if l976b93 and m1e4c370feba then
		Kdbdf8(l976b93, M8e123a14)
		local dbe4f5a125e = Nc2e78.Character
		if dbe4f5a125e then
			local xffe79c5 = dbe4f5a125e:FindFirstChild("HumanoidRootPart")
			q12db8("Equip", {Source = xffe79c5, Volume = 0.8})
		end
	end
end
local Ha3f70a4f8da, J4b2c8a8, Nb7279e4b7e7, v6cefcee250d
function Ha3f70a4f8da()
	return {}
end
function Nb7279e4b7e7(E5a8a1df0b24, Qa53efdf568)
	for sba0f2be3 = #E5a8a1df0b24, 1, -1 do
		if E5a8a1df0b24[sba0f2be3] == Qa53efdf568 then
			return table.remove(E5a8a1df0b24, sba0f2be3)
		end
	end
end
function J4b2c8a8(Pedaca1, Yd16b9f)
	Nb7279e4b7e7(Pedaca1, Yd16b9f)
	table.insert(Pedaca1, Yd16b9f)
end
function v6cefcee250d(Nb82709d)
	return Nb82709d[#Nb82709d]
end
local J286eed4, nd600d, r0bf3e
r0bf3e = Ha3f70a4f8da()
local X1a1065d3, R31947b02
do
	local Y19d02deee1 = 0
	function X1a1065d3()
		local Q649c37f = tick()
		if Q649c37f - Y19d02deee1 < 0.15 then
			return
		end
		Y19d02deee1 = Q649c37f
		if Ua4530cfaef and not Ua4530cfaef.Passenger then
			if M8db359d10b0(K083ad90.Perm.InjanHorn) then
				q12db8("InjanHorn", {
					Source = Ua4530cfaef.Model.Engine,
					Volume = 1
				})
			else
				q12db8("Horn", {
					Source = Ua4530cfaef.Model.Engine,
					Volume = 0.3,
					Pitch = 0.96,
					MaxTime = 8
				})
			end
		end
	end
	function R31947b02()
		if Ua4530cfaef and not Ua4530cfaef.Passenger then
			x3b0d9("Horn")
		end
	end
end
local N63c9f0c34
do
	local Ba17593897b2 = N59f1a:WaitForChild("Radio")
	local function q2a25a4()
		Ba17593897b2.Visible = true
	end
	local function Y7712d21af()
		Ba17593897b2.Visible = false
	end
	N63c9f0c34 = Y7c1fa5.MakeWindow()
	N63c9f0c34.OpenFun = q2a25a4
	N63c9f0c34.CloseFun = Y7712d21af
	Y7c1fa5.WindowGroupAdd(Tbfc2a6, N63c9f0c34)
	local function P2e9c6e()
		local b928bb925 = Ba17593897b2.TextBox
		local c317aed8c5 = b928bb925.Text:match("%d+")
		if not c317aed8c5 then
			return
		end
		local e832f5838c = Nc2e78.Character:FindFirstChild("HumanoidRootPart")
		if not e832f5838c then
			return
		end
		I24c9cc17:FireServer("qkiigru0", c317aed8c5)
	end
	local function F70419148a0()
		local la59c64 = Nc2e78.Character:FindFirstChild("HumanoidRootPart")
		if not la59c64 then
			return
		end
		I24c9cc17:FireServer("qexz141z")
	end
	local function Ld81fdedad()
		local N12391c = w2c080:UserOwnsGamePassAsync(Nc2e78.UserId, K083ad90.Gamepass.Stereo.PassId)
		if not N12391c then
			pcbe77(K083ad90.Gamepass.Stereo)
			return
		end
		return P2e9c6e()
	end
	Ba17593897b2.Play.MouseButton1Down:connect(Ld81fdedad)
	Ba17593897b2.Stop.MouseButton1Down:connect(F70419148a0)
	Ba17593897b2.Close.MouseButton1Down:connect(Y7712d21af)
	local Xa235be57 = {
		Bass = {Scalar = 0.5}
	}
	local yc50050ac871 = 0
	local function befb7e(Rf55c346c9db, f53121ccf9)
		local H4de8a207 = Xa235be57[Rf55c346c9db]
		local s10e08900fe = Ba17593897b2[Rf55c346c9db .. "Level"]
		s10e08900fe.TextButton.MouseButton1Down:connect(function(Qf8dcdc27, I4bcea)
			H4de8a207.MinY = s10e08900fe.AbsolutePosition.Y + 5
			H4de8a207.MaxY = H4de8a207.MinY + s10e08900fe.AbsoluteSize.Y - s10e08900fe.TextButton.AbsoluteSize.Y + 5
			local t693e14eae02 = yc50050ac871 + 1
			yc50050ac871 = t693e14eae02
			while yc50050ac871 == t693e14eae02 do
				local O1f4a3295f = q9bfce6b5a.y + 5
				O1f4a3295f = O1f4a3295f < H4de8a207.MinY and H4de8a207.MinY or O1f4a3295f > H4de8a207.MaxY and H4de8a207.MaxY or O1f4a3295f
				local h047c39 = (O1f4a3295f - H4de8a207.MinY) / (H4de8a207.MaxY - H4de8a207.MinY)
				H4de8a207.Scalar = h047c39
				f53121ccf9(Rf55c346c9db, h047c39)
				s10e08900fe.TextButton.Position = UDim2.new(0.5, -15, 0, O1f4a3295f - H4de8a207.MinY - 5)
				t4c33a3b55f.Stepped:wait()
			end
		end)
	end
	ce18781.InputEnded:connect(function(Cb58810b8bc4)
		if Cb58810b8bc4.UserInputType == Enum.UserInputType.MouseButton1 then
			yc50050ac871 = yc50050ac871 + 1
		end
	end)
	local if676cca = f924b8d.Music
	local Uec09893, Ic3344 = 0, 10
	local uc54d31, k2f966da6 = 0, 3
	local B9de4c251c9, q661b454372d = 0, 3
	local function Dfc746d(Gcefaf61f12, Ta594235d7)
		local vcc4c9ac = 2 * Ta594235d7 - 1
		Ta594235d7 = vcc4c9ac ^ 3 * 0.5 + 0.5
		local Nae953974a8 = 1 - Ta594235d7
		if Gcefaf61f12 == "Bass" then
			local o86155127dd = Ta594235d7 * (Uec09893 - Ic3344 * 0.5) + Nae953974a8 * (Uec09893 + Ic3344 * 0.5)
			local lf132c757 = Nae953974a8 * (uc54d31 - k2f966da6 * 0.5) + Ta594235d7 * (uc54d31 + k2f966da6 * 0.5)
			local Aef4bcc08e = Nae953974a8 * (uc54d31 - k2f966da6 * 0.5) + Ta594235d7 * (uc54d31 + k2f966da6 * 0.5)
			if676cca.EqualizerSoundEffect.LowGain = o86155127dd
			if676cca.EqualizerSoundEffect.MidGain = lf132c757
			if676cca.EqualizerSoundEffect.HighGain = Aef4bcc08e
		end
	end
	befb7e("Bass", Dfc746d)
end
H1d9e9f398e9.RadioWindow = N63c9f0c34
local S537be = Instance.new("Animation")
S537be.AnimationId = "rbxassetid://685258011"
local a82601ed1, E1a08d278e
E1a08d278e = {}
do
	local Lb920170 = Instance.new("Animation")
	Lb920170.AnimationId = "rbxassetid://758003506"
	table.insert(E1a08d278e, Lb920170)
	local t532bc = Instance.new("Animation")
	t532bc.AnimationId = "rbxassetid://758005053"
	table.insert(E1a08d278e, t532bc)
end
local r8e885
local oed8ca0603b0 = tick()
local j33e637082a = tick()
local L48285d526 = {
	0,
	0,
	0
}
local function h0e018271(q35065, q9375ab5b3, t165efa2d5)
	local l8c9cb5 = q35065.Name
	if q9375ab5b3 then
		if l8c9cb5 == "Sprint" then
			k082adaf7b06 = true
		elseif l8c9cb5 == "Crawl" then
			do
				local p507b843aaa = Nc2e78.Character
				if not p507b843aaa then
					return
				end
				local m1d1d4fd3df8 = p507b843aaa:FindFirstChild("Humanoid")
				if not m1d1d4fd3df8 then
					return
				end
				if not a82601ed1 and m1d1d4fd3df8.Sit then
					return
				end
				local O39318543 = p507b843aaa:FindFirstChild("HumanoidRootPart")
				if not O39318543 then
					return
				end
				if z735ed6 then
					return
				end
				if cd9edbaf.IsParachuting then
					return
				end
				local Se1f9bc = z6e8a5d8c4[Nc2e78.Name]
				if Se1f9bc and Se1f9bc.Locked then
					return
				end
				if tick() - j33e637082a < 0.25 then
					return
				end
				if tick() - L48285d526[#L48285d526] < 4 then
					return
				end
				j33e637082a = tick()
				if a82601ed1 then
					table.remove(L48285d526)
					table.insert(L48285d526, 1, j33e637082a)
				end
				Y729e2c9 = not a82601ed1
				local Ac055bf7c15b = p507b843aaa:FindFirstChild("UpperTorso")
				local oa8724 = p507b843aaa:FindFirstChild("LowerTorso")
				local b9070d4 = {}
				local function o3a031dff(K3ee72)
					for b6b7a254fa, v959f895ce in next, K3ee72:GetChildren() do
						if v959f895ce:IsA("JointInstance") and (v959f895ce.Part1 == Ac055bf7c15b or v959f895ce.Part1 == oa8724 or v959f895ce.Part0 == Ac055bf7c15b or v959f895ce.Part0 == oa8724) then
							table.insert(b9070d4, {
								Motor = v959f895ce,
								Part0 = v959f895ce.Part0,
								Part1 = v959f895ce.Part1
							})
							v959f895ce.Part0, v959f895ce.Part1 = nil, nil
						end
						o3a031dff(v959f895ce)
					end
				end
				o3a031dff(p507b843aaa)
				do
					local zc34f7485eee = Ac055bf7c15b.Size
					Ac055bf7c15b.Size = Y729e2c9 and Vector3.new(zc34f7485eee.x, zc34f7485eee.y, math.min(zc34f7485eee.z, 1.2)) or Ac055bf7c15b.OriginalSize.Value
				end
				do
					local Dca432c = oa8724.Size
					oa8724.Size = Y729e2c9 and Vector3.new(Dca432c.x, Dca432c.y, math.min(Dca432c.z, 1.2)) or oa8724.OriginalSize.Value
				end
				for s625239, Mb5be238 in next, b9070d4, nil do
					Mb5be238.Motor.Part0, Mb5be238.Motor.Part1 = Mb5be238.Part0, Mb5be238.Part1
				end
				p507b843aaa.HumanoidRootPart.CanCollide = not Y729e2c9
				if a82601ed1 then
					a82601ed1:Stop()
					a82601ed1 = nil
					return
				end
				l74279f62a25()
				a82601ed1 = m1d1d4fd3df8:LoadAnimation(S537be)
				a82601ed1:Play()
			end
		elseif l8c9cb5 == "Punch" then
			if tick() - oed8ca0603b0 < 0.5 then
				return
			end
			local Zd164c1c0 = Nc2e78.Character
			if not Zd164c1c0 then
				return
			end
			local Qdba1f6697e = Zd164c1c0:FindFirstChild("Humanoid")
			if not Qdba1f6697e then
				return
			end
			local Xd32cac = z6e8a5d8c4[Nc2e78.Name]
			if Xd32cac then
				return
			end
			if r8e885 then
				r8e885:Stop()
			end
			local q85366 = table.remove(E1a08d278e, 1)
			table.insert(E1a08d278e, q85366)
			r8e885 = Qdba1f6697e:LoadAnimation(q85366)
			r8e885:Play()
			oed8ca0603b0 = tick()
			I24c9cc17:FireServer("l2qemunc")
		elseif l8c9cb5 == "Horn" then
			X1a1065d3()
		elseif l8c9cb5 == "Radio" then
			if Ua4530cfaef then
				Y7c1fa5.WindowToggle(N63c9f0c34)
			end
		elseif l8c9cb5 == "Flip" then
			if Ua4530cfaef then
				I24c9cc17:FireServer("esfnkxm5", Ua4530cfaef.Model)
			end
		elseif l8c9cb5 == "Nitro" and Ua4530cfaef and not Ua4530cfaef.Passenger then
			Ffb5b1()
		end
	elseif l8c9cb5 == "Sprint" then
		k082adaf7b06 = false
	elseif l8c9cb5 == "Horn" then
		R31947b02()
	elseif l8c9cb5 == "Nitro" then
		L7e9189985()
	end
end
local Pfbfe35 = Jbc53413f.MakeUI()
Jbc53413f.UpdateUI(Pfbfe35)
Pfbfe35.Container.Parent = N59f1a.ActionButtons
local Y4c44179f, r9bd79, j7fcface405, qde8cdf0d539, Tdf048bc7, M2d70eea, k3526d84, ed5d54
do
	local S1c4cfb283 = Jbc53413f.MakeBindA("Crawl", h0e018271, Enum.KeyCode.C, Enum.KeyCode.Z, Enum.KeyCode.ButtonL3)
	S1c4cfb283.Image = K083ad90.Images.Crawl
	local j7037c45b4 = Jbc53413f.MakeBindA("Punch", h0e018271, Enum.KeyCode.F, Enum.KeyCode.ButtonB)
	j7037c45b4.Image = K083ad90.Images.Punch
	local Ke2dce915aa1 = Jbc53413f.MakeBindA("Sprint", h0e018271, Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift, Enum.KeyCode.ButtonL2)
	Ke2dce915aa1.Image = K083ad90.Images.Sprint
	Y4c44179f = Jbc53413f.MakeGroupA(S1c4cfb283, j7037c45b4, Ke2dce915aa1)
	Y4c44179f.UI = Pfbfe35
	local Kaea28 = Jbc53413f.MakeBindA("Horn", h0e018271, Enum.KeyCode.H, Enum.KeyCode.ButtonL3)
	Kaea28.Image = K083ad90.Images.Horn
	local yd5b4d8 = Jbc53413f.MakeBindA("Drift", v50f125ed3.OnAction, Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift, Enum.KeyCode.ButtonX)
	yd5b4d8.Image = K083ad90.Images.Drift
	local C636e61 = Jbc53413f.MakeBindA("Lights", v50f125ed3.OnAction, Enum.KeyCode.L, Enum.KeyCode.ButtonY)
	C636e61.Image = K083ad90.Images.Headlights
	k3526d84 = Jbc53413f.MakeBindA("Sirens", v50f125ed3.OnAction, Enum.KeyCode.F, Enum.KeyCode.ButtonB)
	k3526d84.Image = K083ad90.Images.Siren
	k3526d84.Hidden = true
	local zfe7c1227d = Jbc53413f.MakeBindA("Radio", h0e018271, Enum.KeyCode.R)
	zfe7c1227d.Image = K083ad90.Images.Radio
	local Nf3578 = Jbc53413f.MakeBindA("Flip", h0e018271, Enum.KeyCode.V, Enum.KeyCode.ButtonR1)
	Nf3578.Image = K083ad90.Images.CarFlip
	local D3200c1deb18 = Jbc53413f.MakeBindA("Nitro", h0e018271, Enum.KeyCode.Q, Enum.KeyCode.ButtonL1)
	D3200c1deb18.Image = K083ad90.Images.Nitro
	r9bd79 = Jbc53413f.MakeGroupA(yd5b4d8, D3200c1deb18, Kaea28, C636e61, zfe7c1227d, Nf3578, k3526d84)
	r9bd79.UI = Pfbfe35
	Tdf048bc7 = Jbc53413f.MakeGroupA(yd5b4d8, D3200c1deb18, Kaea28, C636e61, zfe7c1227d, Nf3578)
	Tdf048bc7.UI = Pfbfe35
	if M8db359d10b0(K083ad90.Perm.Autopilot) then
		local N7a1991 = Jbc53413f.MakeBindA("Autopilot", v50f125ed3.OnAction, Enum.KeyCode.G)
		N7a1991.Hidden = true
		table.insert(r9bd79.Binds, N7a1991)
	end
	local W397372300 = Jbc53413f.MakeBindA("Up", q51b0b.OnAction, Enum.KeyCode.E, Enum.KeyCode.ButtonR2)
	W397372300.Image = K083ad90.Images.HeliUp
	local r70f72e = Jbc53413f.MakeBindA("Down", q51b0b.OnAction, Enum.KeyCode.Q, Enum.KeyCode.ButtonL2)
	r70f72e.Image = K083ad90.Images.HeliDown
	local E05ac0a = Jbc53413f.MakeBindA("Rope", q51b0b.OnAction, Enum.KeyCode.G, Enum.KeyCode.ButtonY)
	E05ac0a.Image = K083ad90.Images.HeliRope
	ed5d54 = Jbc53413f.MakeBindA("Missile", q51b0b.OnAction, Enum.KeyCode.F, Enum.KeyCode.ButtonX)
	ed5d54.Image = K083ad90.Images.HeliMissile
	j7fcface405 = Jbc53413f.MakeGroupA(Kaea28, W397372300, r70f72e, E05ac0a, ed5d54, zfe7c1227d)
	j7fcface405.UI = Pfbfe35
	qde8cdf0d539 = Jbc53413f.MakeGroupA(E05ac0a)
	qde8cdf0d539.UI = Pfbfe35
	M2d70eea = Jbc53413f.MakeGroupA()
	M2d70eea.UI = Pfbfe35
	Jbc53413f.BindGroup(Y4c44179f)
end
local Af254526aa4
Af254526aa4 = {}
do
	local M3cddc1, D633399 = table.insert, table.remove
	local C1540beb = {}
	function Af254526aa4.AddPart(O3a6c59e5, S2824d, C60318e402eb, I64ae80715)
		local u969a03db = {
			Part = O3a6c59e5,
			Distance = S2824d,
			f = C60318e402eb,
			Meta = I64ae80715
		}
		table.insert(C1540beb, u969a03db)
		return u969a03db
	end
	function Af254526aa4.RemovePart(j3f084b1c9e)
		for u4244d7b = #C1540beb, 1, -1 do
			local Sdaa95 = C1540beb[u4244d7b]
			if Sdaa95.Part == u4244d7b then
				return table.remove(C1540beb, u4244d7b)
			end
		end
		return false
	end
	local c066845cc = {}
	local S6a6c56 = {}
	function Af254526aa4.UpdateInterest(we74a1b3a4c)
		c066845cc = {}
		S6a6c56 = {}
		for i985f8eeb4 = #C1540beb, 1, -1 do
			local Nbb388ec0c = C1540beb[i985f8eeb4]
			if not Nbb388ec0c.Part then
				table.remove(C1540beb, i985f8eeb4)
			end
		end
		for R14eeb45, O7a9c2ff in next, C1540beb, nil do
			O7a9c2ff.Center = O7a9c2ff.Part.Position
			local eca1f0621 = (O7a9c2ff.Center - we74a1b3a4c).magnitude
			O7a9c2ff.Sort = eca1f0621
			local ke58c5 = eca1f0621 < O7a9c2ff.Distance
			if O7a9c2ff.Locked then
				ke58c5 = true
			end
			local q390f4a882e = O7a9c2ff.Loaded
			if ke58c5 and not q390f4a882e then
				M3cddc1(c066845cc, O7a9c2ff)
			elseif not ke58c5 and q390f4a882e then
				M3cddc1(S6a6c56, O7a9c2ff)
			end
		end
	end
	local function rd498b()
		while #c066845cc > 0 do
			local rb3572 = D633399(c066845cc, 1)
			rb3572.Loaded = true
			rb3572:f(rb3572.Loaded)
		end
		while #S6a6c56 > 0 do
			local K52d375e0 = D633399(S6a6c56)
			K52d375e0.Loaded = false
			K52d375e0:f(K52d375e0.Loaded)
		end
	end
	function Af254526aa4.Run(j1ef58b)
		e8acc30e(j1ef58b, rd498b, "Proximity Queue")
	end
	Af254526aa4.Run(0.1)
	local function w8e8ea33()
		local Sbc9f38 = Nc2e78.Character
		if not Sbc9f38 then
			return
		end
		local k47452c1523f = Sbc9f38:FindFirstChild("HumanoidRootPart")
		if not k47452c1523f then
			return
		end
		local Kdf42c9c0f29 = Sbc9f38:FindFirstChild("Humanoid")
		if not Kdf42c9c0f29 then
			return
		end
		if Kdf42c9c0f29.Health <= 0 then
			return
		end
		local Ae77c12dc = k47452c1523f.Position
		Af254526aa4.UpdateInterest(Ae77c12dc)
	end
	e8acc30e(0.1, w8e8ea33, "Proximity Update Interest")
end
local function Xf60f60ae()
	local N0ed19890 = Nc2e78.Character
	if not N0ed19890 then
		return
	end
	local k66e3daf = N0ed19890:FindFirstChild("Humanoid")
	if not k66e3daf then
		return
	end
	local i8537a6417b = k66e3daf.WalkSpeed
	local h84deb8b0 = k66e3daf.Health
	local Q85d787be4aa = Z728bf347053(Kb4831521942(h84deb8b0 + 1) / Kb4831521942(101), 0.5)
	local F2d7fd7086f = z6e8a5d8c4[Nc2e78.Name]
	if F2d7fd7086f then
		if F2d7fd7086f.Name == "Cuffed" then
			Q85d787be4aa = 0
		elseif F2d7fd7086f.Name == "ShieldSWAT" then
			Q85d787be4aa = Q85d787be4aa * 0.75
		end
	end
	if s03b36 then
		Q85d787be4aa = 0
	end
	local z9c843 = Q85d787be4aa * 16
	if Y729e2c9 then
		z9c843 = z9c843 * 0.4
	end
	if k082adaf7b06 then
		z9c843 = z9c843 * 1.5
	end
	z9c843 = z9c843 * math.clamp(H1d9e9f398e9.LocalWalkSpeedModifier, 0, 1)
	local Hd6cbcc61 = z968ef8f(z9c843 - i8537a6417b)
	if Hd6cbcc61 > 0.1 then
		k66e3daf.WalkSpeed = z9c843
	end
	if a82601ed1 then
		local Xb1b4997 = N0ed19890:FindFirstChild("HumanoidRootPart")
		if Xb1b4997 then
			local Uafc5f1f03cf = N0ed19890.HumanoidRootPart.CFrame:vectorToObjectSpace(Xb1b4997.Velocity)
			a82601ed1:AdjustSpeed(-Uafc5f1f03cf.Z / 6)
		end
	end
end
local dd5dfc5 = function(U8558e)
	local E7317a970170 = Instance.new("Frame")
	E7317a970170.BackgroundTransparency = 1
	E7317a970170.Visible = false
	E7317a970170.Parent = workspace
	local v93691958b3, b8c1c4e = 0, 0
	for bc42c4e, e3f0f42f4f in next, U8558e, nil do
		local Eb57668c1f = Instance.new("TextLabel")
		Eb57668c1f.BackgroundTransparency = 1
		Eb57668c1f.BorderSizePixel = 0
		Eb57668c1f.TextColor3 = Color3.new(0, 0, 0)
		Eb57668c1f.Parent = E7317a970170
		Eb57668c1f.TextSize = e3f0f42f4f.TextSize
		Eb57668c1f.TextColor3 = e3f0f42f4f.TextColor3
		Eb57668c1f.TextStrokeTransparency = e3f0f42f4f.TextStrokeTransparency
		Eb57668c1f.Text = e3f0f42f4f.Text
		local H510a84645 = Eb57668c1f.TextBounds
		Eb57668c1f.Size = UDim2.new(0, H510a84645.X, 0, H510a84645.Y)
		Eb57668c1f.Position = UDim2.new(0, v93691958b3, 0, 0)
		if b8c1c4e < H510a84645.Y then
			b8c1c4e = H510a84645.Y
		end
		if e3f0f42f4f.Underline then
			local X605ba1 = Instance.new("Frame")
			X605ba1.Parent = E7317a970170
			X605ba1.Size = UDim2.new(0, H510a84645.X, 0, e3f0f42f4f.UnderlineHeight or 1)
			X605ba1.Position = UDim2.new(0, v93691958b3, 0, H510a84645.Y)
			X605ba1.BorderSizePixel = 0
			X605ba1.BackgroundColor3 = e3f0f42f4f.TextColor3
		end
		v93691958b3 = v93691958b3 + H510a84645.X
	end
	E7317a970170.Size = UDim2.new(0, v93691958b3, 0, b8c1c4e)
	E7317a970170.Position = UDim2.new(0.5, -v93691958b3 * 0.5, 0.5, -b8c1c4e * 0.5)
	return E7317a970170, v93691958b3, b8c1c4e
end
function Ma06a756880f.b24hp2pn(Ia10e58d0857, h75d198875dc)
	ie1e4cbb7 = Ia10e58d0857
	if h75d198875dc then
		return
	end
	local r5081b267 = K083ad90.Schedule[Ia10e58d0857]
	local V68961d42cf9 = N59f1a.Banner
	V68961d42cf9.Visible = true
	V68961d42cf9.Title.Text = r5081b267.Title
	V68961d42cf9.Desc.Text = r5081b267.Desc
	delay(8, function()
		V68961d42cf9.Visible = false
	end)
end
function Ma06a756880f.pjkyukfo(Y6897657eb7, A082150e1d7a, xa02ac0f937)
	local T203897b0 = Y6b22aaa4e[Y6897657eb7]
	if not T203897b0 then
		T203897b0 = {}
		T203897b0.HeadingSpring = D31148ae40c.MakeSpring(0, 10, 0.8)
		T203897b0.PitchSpring = D31148ae40c.MakeSpring(0, 10, 0.8)
		Y6b22aaa4e[Y6897657eb7] = T203897b0
	end
	local Ha9826fb6b3 = s4e429b5:FindFirstChild(Y6897657eb7)
	if not Ha9826fb6b3 then
		Y6b22aaa4e[Y6897657eb7] = nil
		return
	end
	local z87eeae = Ha9826fb6b3.Character
	if not z87eeae then
		Y6b22aaa4e[Y6897657eb7] = nil
		return
	end
	local c58d91 = z87eeae:FindFirstChild("UpperTorso")
	if not c58d91 then
		Y6b22aaa4e[Y6897657eb7] = nil
		return
	end
	local yeeb8c16c8f9 = c58d91:FindFirstChild("Waist")
	local t3716574735b = z87eeae.Head:FindFirstChild("Neck")
	T203897b0.Waist = yeeb8c16c8f9
	T203897b0.Neck = t3716574735b
	D31148ae40c.SpringSetTarget(T203897b0.HeadingSpring, D30e7130, A082150e1d7a)
	D31148ae40c.SpringSetTarget(T203897b0.PitchSpring, D30e7130, xa02ac0f937)
end
local function icef74e0841a(B0224f00894f)
	if Ua4530cfaef then
		B0224f00894f = true
		I24c9cc17:FireServer("jct3x6q9")
		if (not Ua4530cfaef or not Ua4530cfaef.Passenger) and i7faa07631b.Window.IsOpen then
			Y7c1fa5.WindowClose(i7faa07631b.Window)
		end
	end
	if not B0224f00894f then
		delay(0.1, function()
			icef74e0841a(true)
		end)
	end
end
do
	local b1d1a51, da2b9c70
	function Ma06a756880f.s4xc8ups()
		wait()
		local Fef203bfc53 = Nc2e78.Character
		if not Fef203bfc53 then
			return
		end
		local Fd84a2bce1b = Fef203bfc53:FindFirstChild("Humanoid")
		if not Fd84a2bce1b then
			return
		end
		Fd84a2bce1b.Seated:connect(function(l2ab5e2)
			if l2ab5e2 and Y729e2c9 then
				h0e018271({Name = "Crawl"}, true)
			end
		end)
		if da2b9c70 then
			do
				local g30740 = game.Lighting:FindFirstChild("ColorCorrection")
				local I9dbfec9e8 = game.Lighting:FindFirstChild("Blur")
				local Ffc8e05, C279b234 = 0, nil
				local function G1bb16ce7d()
					if C279b234 then
						C279b234:Disconnect()
					end
					local Mce29aa7b86 = i3b149(da2b9c70, b1d1a51, 1)
					g30740.Saturation = Mce29aa7b86.Saturation
					I9dbfec9e8.Size = Mce29aa7b86.Blur
					I9dbfec9e8.Enabled = false
				end
				local function c52db8143aa6(e1b2621)
					Ffc8e05 = Ffc8e05 + e1b2621 * 2
					if Ffc8e05 >= 1 then
						return G1bb16ce7d()
					end
					local W2657155 = i3b149(da2b9c70, b1d1a51, 1)
					g30740.Saturation = W2657155.Saturation
					I9dbfec9e8.Size = W2657155.Blur
				end
				C279b234 = t4c33a3b55f.RenderStepped:connect(c52db8143aa6)
				B3fc5d899.Frame:TweenSizeAndPosition(UDim2.new(1, 40, 0, 0), UDim2.new(0, -20, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, function()
					B3fc5d899.Frame.Visible = false
				end)
			end
		end
	end
	function Ma06a756880f.xockj2y0(O3f3511)
		Y729e2c9 = false
		k082adaf7b06 = false
		z735ed6 = false
		s03b36 = false
		H1d9e9f398e9.HasEscaped = false
		icef74e0841a(true)
		if O3f3511 then
			return
		end
		B3fc5d899.Frame.TextLabel.Text = K083ad90.DeathMessages[math.random(1, #K083ad90.DeathMessages)]
		local r793a95 = game.Lighting:FindFirstChild("ColorCorrection")
		local t0ceea5770 = game.Lighting:FindFirstChild("Blur")
		t0ceea5770.Enabled = true
		b1d1a51 = {Blur = 0, Saturation = 0}
		da2b9c70 = {Blur = 8, Saturation = -1}
		local Abd34215408, re90fd = 0, nil
		local function o5e238f13dc()
			if re90fd then
				re90fd:Disconnect()
			end
			local Re6521a = i3b149(b1d1a51, da2b9c70, 1)
			r793a95.Saturation = Re6521a.Saturation
			t0ceea5770.Size = Re6521a.Blur
		end
		local function i6528579d3(J50ba2b)
			Abd34215408 = Abd34215408 + J50ba2b * 1
			if Abd34215408 >= 1 then
				return o5e238f13dc()
			end
			local p4c25565ce3 = i3b149(b1d1a51, da2b9c70, Abd34215408)
			r793a95.Saturation = p4c25565ce3.Saturation
			t0ceea5770.Size = p4c25565ce3.Blur
		end
		re90fd = t4c33a3b55f.RenderStepped:connect(i6528579d3)
		delay(0.5, function()
			B3fc5d899.Frame.Size = UDim2.new(1, 40, 0, 0)
			B3fc5d899.Frame.Position = UDim2.new(0, -20, 0.5, 0)
			B3fc5d899.Frame:TweenSizeAndPosition(UDim2.new(1, 40, 0, 150), UDim2.new(0, -20, 0.5, -75), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
			B3fc5d899.Frame.Visible = true
		end)
	end
end
function Ma06a756880f.vf0wuf38()
	s03b36 = true
	i15b9b1()
	wait(K083ad90.Time.Stunned)
	s03b36 = false
end
function Ma06a756880f.twah38le(cbfbb52fa075)
	N59f1a.Rank.Text = ("Level %d (%d/%d)"):format(1, cbfbb52fa075, 999)
end
function Ma06a756880f.j1mrr9vx(z13705628c)
	q12db8("Notification", {Source = Pc83d6d, Volume = 0.3}, true)
	pcall(function()
		Pc83d6d:SetCore("SendNotification", z13705628c)
	end)
end
H1d9e9f398e9.Notification = Ma06a756880f.j1mrr9vx
function Ma06a756880f.ev0oglqj(e4068823eb70)
	pcall(function()
		Pc83d6d:SetCore("ChatMakeSystemMessage", {
			Text = ("[Server] %s"):format(e4068823eb70),
			Color = Color3.new(0.9490196078431372, 0.8588235294117647, 0.06274509803921569)
		})
	end)
end
function Ma06a756880f.cbxqz1uj(u1d888e69)
	Sb8bc07712b3 = u1d888e69
	local V1bf7b382f18 = m5724e(u1d888e69.Cash)
	m0e1ccdc.Safe.Money.Text = V1bf7b382f18
	m0e1ccdc.DevProduct.Money.Text = V1bf7b382f18
	N59f1a.BuyVehicle.Money.Text = V1bf7b382f18
	N59f1a.MissilesBuy.Money.Text = V1bf7b382f18
	m0e1ccdc.GarageSide.Money.Text = V1bf7b382f18
end
function Ma06a756880f.czkjgodf(Z12841280, c3c02cb9cf5)
	if Z12841280 > 0 then
		Yf3cb11d7(2)
		N59f1a.PlusCash.TextColor3 = Color3.fromRGB(68, 194, 93)
		N59f1a.PlusCash.TextStrokeColor3 = Color3.fromRGB(33, 97, 44)
	else
		N59f1a.PlusCash.TextColor3 = Color3.fromRGB(240, 30, 30)
		N59f1a.PlusCash.TextStrokeColor3 = Color3.fromRGB(180, 0, 0)
	end
	N59f1a.PlusCash.Text = ("%s Cash"):format(m5724e(Z12841280))
	if c3c02cb9cf5 then
		N59f1a.PlusCash.Desc.Text = c3c02cb9cf5
		N59f1a.PlusCash.Desc.Visible = true
	else
		N59f1a.PlusCash.Desc.Visible = false
	end
	N59f1a.PlusCash.Visible = true
	delay(3, function()
		N59f1a.PlusCash.Visible = false
	end)
end
do
	local Kfeaaf75d5a = 0
	function Ma06a756880f.a6gur03u()
		local t663d4e7aad = Kfeaaf75d5a + 1
		Kfeaaf75d5a = t663d4e7aad
		local I6a98f19447 = K083ad90.Time.Cell
		local Xe2379713f04 = N59f1a.CellTime
		Xe2379713f04.Time.Text = ("%ds"):format(I6a98f19447)
		Xe2379713f04.Visible = true
		local sfc8eaed01 = tick()
		repeat
			wait(1)
			if t663d4e7aad ~= Kfeaaf75d5a then
				return
			end
			Xe2379713f04.Time.Text = ("%ds"):format(K083ad90.Time.Cell - tick() + sfc8eaed01)
		until I6a98f19447 <= tick() - sfc8eaed01
		if t663d4e7aad ~= Kfeaaf75d5a then
			return
		end
		Xe2379713f04.Visible = false
	end
end
function Ma06a756880f.pik2gduy(h4dd0e54a5e7, A57bbf45)
	if A57bbf45 then
		if A57bbf45.Sounds then
			for c3267d2, g0b7a48f6ef9 in next, A57bbf45.Sounds, nil do
				g0b7a48f6ef9.Volume = 0
			end
		end
		if A57bbf45.Type == "Heli" then
			A57bbf45.PropAlpha = 0
			p82857d707e7(A57bbf45, 0)
		end
		local X3de000a0659 = A57bbf45.Model
		if X3de000a0659 then
			local qdc5921d9f = X3de000a0659:FindFirstChild("BoundingBox")
			if qdc5921d9f then
				Af254526aa4.RemovePart(qdc5921d9f)
			end
		end
		if M45e261086 then
			for sf9b97a32e06, Z7b9850bc6 in next, M45e261086, nil do
				if A57bbf45.Character == Z7b9850bc6.Character then
					if Z7b9850bc6.Character and Z7b9850bc6.Character ~= Nc2e78.Character and Z7b9850bc6.IKP then
						Z7b9850bc6.Dead = true
						Hd676003e13b(sf9b97a32e06)
						Z7b9850bc6.IKP = nil
					end
					break
				end
			end
		end
	end
	M45e261086 = h4dd0e54a5e7
end
function Ma06a756880f.zl2ps2sd(Aa281e60)
	z6e8a5d8c4[Aa281e60] = nil
	Y6b22aaa4e[Aa281e60] = nil
	Q4867d294[Aa281e60] = nil
end
local b1dc5fb01c
do
	local m63dc6bbb = 0
	local j1a279ba76d = false
	function b1dc5fb01c(Hbad4866594, N16008727b, G62d65c, C5a61a12afec, J50437, Oaafe3, Sd2a9787f2)
		local Z01709 = m63dc6bbb + 1
		m63dc6bbb = Z01709
		local j64435 = Oa323e54()
		j64435.Position = kc9675bdcc0.CFrame.p
		j64435.LookVector = kc9675bdcc0.CFrame.lookVector
		kc9675bdcc0.CameraType = Enum.CameraType.Scriptable
		local Sf2a24 = 0
		local function j5236e878f()
			t4c33a3b55f:UnbindFromRenderStep("MoveTransitionCamera" .. Z01709)
			if m63dc6bbb ~= Z01709 then
				return
			end
			kc9675bdcc0.CameraType = Enum.CameraType.Custom
			local vc4e9cd53a = Nc2e78.PlayerScripts.ZoomCamera
			vc4e9cd53a:Fire(J50437)
		end
		local Xdee08d08 = Sd2a9787f2 or Hbad4866594.CFrame - Hbad4866594.CFrame.p
		local function Vb749cc3ba()
			local Dd93493346b = 0.016666666666666666
			Sf2a24 = Sf2a24 + Dd93493346b * (1 / N16008727b)
			if m63dc6bbb ~= Z01709 then
				j5236e878f()
				return
			end
			local ecec815e93e1
			if Oaafe3 then
				ecec815e93e1 = Xdee08d08 + Hbad4866594.CFrame.p
			else
				ecec815e93e1 = Hbad4866594.CFrame
			end
			j64435.TargetPosition = ecec815e93e1 * G62d65c
			j64435.TargetFocus = ecec815e93e1 * C5a61a12afec
			bc09a7d67(j64435, Dd93493346b, 6 + 50 * Sf2a24 * Sf2a24, 10 + 50 * Sf2a24 * Sf2a24)
			if Sf2a24 >= 1 then
				j5236e878f()
			end
		end
		t4c33a3b55f:BindToRenderStep("MoveTransitionCamera" .. Z01709, Enum.RenderPriority.Camera.Value + 1, Vb749cc3ba)
	end
end
do
	local Ne66b36
	local e87e31b5c3c0 = N59f1a.BuyVehicle
	local function F90b8d7bde8()
		e87e31b5c3c0.Visible = false
		icef74e0841a()
	end
	local function a660b69()
		if not Ne66b36 then
			F90b8d7bde8()
			return
		end
		I24c9cc17:FireServer("x6b55fhr", Ne66b36)
	end
	local function n6742de57()
		F90b8d7bde8()
		Pe4821c7d18()
	end
	e87e31b5c3c0.Buy.MouseButton1Down:connect(a660b69)
	e87e31b5c3c0.Cancel.MouseButton1Down:connect(F90b8d7bde8)
	e87e31b5c3c0.BuyCash.MouseButton1Down:connect(n6742de57)
	function Ma06a756880f.x6b55fhr(bdf8a1c)
		if bdf8a1c.Success then
			e87e31b5c3c0.Visible = false
			Yf3cb11d7(5)
		elseif bdf8a1c.NotEnoughMoney then
			n6742de57()
		else
			F90b8d7bde8()
		end
	end
	function Ma06a756880f.wrc36j2t(Dad2bb008d4)
		ad69d2d35a3.VehiclesOwned = Dad2bb008d4
	end
	function Ma06a756880f.x4gh1xh2(v3097fc4fe6, ea4bf686)
		Ne66b36 = v3097fc4fe6
		local yed906 = K083ad90.Price[v3097fc4fe6]
		if ea4bf686 then
			pcbe77(ea4bf686)
		elseif yed906 then
			local i8b8baac = ("Buy %s for %s?"):format(v3097fc4fe6, m5724e(K083ad90.Price[v3097fc4fe6]))
			local Iff10508d = N59f1a.BuyVehicle
			Iff10508d.TextLabel.Text = i8b8baac
			Iff10508d.Visible = true
			vc5c5e1033e2(Iff10508d.Buy)
		end
	end
	function Ma06a756880f.x8lf86vr()
		local m5e1e92 = N59f1a.SimpleMessage
		m5e1e92.Visible = true
		m5e1e92.Text = "That vehicle is locked. Ask the owner to unlock it!"
		local function B1bf9909b8()
			m5e1e92.Visible = false
		end
		delay(1, B1bf9909b8)
	end
	local function W7d5c8()
		if not Ua4530cfaef or Ua4530cfaef.Passenger then
			N59f1a.Lock.Visible = false
			return
		end
		local I371b36df73 = Ua4530cfaef.Locked
		N59f1a.Lock.Visible = true
		N59f1a.Lock.TextLabel.Text = I371b36df73 and "Unlock" or "Lock"
		N59f1a.Lock.ImageColor3 = I371b36df73 and Color3.fromRGB(82, 149, 208) or Color3.new(0.6, 0.6, 0.6)
		N59f1a.Lock.TextLabel.TextColor3 = I371b36df73 and Color3.fromRGB(51, 93, 130) or Color3.new(0.4, 0.4, 0.4)
	end
	local function K9fdb5311fb()
		if not Ua4530cfaef or Ua4530cfaef.Passenger then
			N59f1a.Lock.Visible = false
			return
		end
		Ua4530cfaef.Locked = not Ua4530cfaef.Locked
		I24c9cc17:FireServer("j0ojv1gy", Ua4530cfaef.Locked)
		W7d5c8()
	end
	N59f1a.Lock.MouseButton1Down:Connect(K9fdb5311fb)
	function Ma06a756880f.yzwy06kk(Q90fca)
		if Y729e2c9 then
			h0e018271({Name = "Crawl"}, true)
		end
		local mcecedb100 = Q90fca.Type
		local F6b54c6 = Q90fca.Make
		k082adaf7b06 = false
		Jbc53413f.UnbindGroup(Y4c44179f)
		local Hbb390623a2a = false
		if Q90fca.Passenger and Q90fca.Seat:FindFirstChild("Items") then
			Hbb390623a2a = true
		end
		if not Hbb390623a2a then
			l74279f62a25()
		end
		b1dc5fb01c(Q90fca.Model.Camera, 0.5, A54ecff0(0, 7, 24), A54ecff0(0, 0, 0), 25)
		wait(0.09)
		if Q90fca.Type == "Chassis" then
			if not Q90fca.Passenger and Q90fca.WeldSteer then
				local y1b29e = f4a1015c(Nc2e78.Name)
				Q90fca.IK = y1b29e
			end
			if Q90fca.Model.Model:FindFirstChild("Lights") then
				k3526d84.Hidden = false
			else
				k3526d84.Hidden = true
			end
			if Q90fca.Passenger then
				Jbc53413f.BindGroup(M2d70eea)
			else
				Jbc53413f.BindGroup(r9bd79)
			end
			v50f125ed3.VehicleEnter(Q90fca)
		elseif Q90fca.Type == "Heli" then
			if Q90fca.IsBlackHawk then
				ed5d54.Hidden = false
			else
				ed5d54.Hidden = true
			end
			if Q90fca.Passenger then
				Jbc53413f.BindGroup(qde8cdf0d539)
			else
				Jbc53413f.BindGroup(j7fcface405)
			end
			q51b0b.VehicleEnter(Q90fca)
		elseif Q90fca.Type == "Motorcycle" or Q90fca.Type == "DuneBuggy" then
			if not Q90fca.Passenger and Q90fca.WeldSteer then
				local Qcdb96155 = f4a1015c(Nc2e78.Name)
				Q90fca.IKP = Qcdb96155
			end
			if Q90fca.Passenger then
				Jbc53413f.BindGroup(M2d70eea)
			else
				Jbc53413f.BindGroup(Tdf048bc7)
			end
			Ve816fadc.VehicleEnter(Q90fca)
		end
		if Q90fca.Passenger then
			Q90fca.Nitro = false
		end
		Ua4530cfaef = Q90fca
		W7d5c8()
	end
	function Ma06a756880f.lnu1qaoh()
		if not Ua4530cfaef then
			return
		end
		local F1f46b3c7469 = Ua4530cfaef
		local pfd18d61ab8 = F1f46b3c7469.Type
		Ua4530cfaef = nil
		if F1f46b3c7469.Nitro then
			L7e9189985()
		end
		F1f46b3c7469.Nitro = false
		if F1f46b3c7469.Nitrous then
			for k3bc37887, Gb819b0 in next, F1f46b3c7469.Nitrous, nil do
				Gb819b0.Enabled = false
			end
		end
		if pfd18d61ab8 == "Chassis" then
			Jbc53413f.UnbindGroup(r9bd79)
			v50f125ed3.VehicleLeave(F1f46b3c7469)
			if not F1f46b3c7469.Passenger then
				Hd676003e13b(Nc2e78.Name)
			end
		elseif pfd18d61ab8 == "Heli" then
			Jbc53413f.UnbindGroup(j7fcface405)
			q51b0b.VehicleLeave(F1f46b3c7469)
		elseif pfd18d61ab8 == "Motorcycle" or pfd18d61ab8 == "DuneBuggy" then
			Jbc53413f.UnbindGroup(Tdf048bc7)
			Ve816fadc.VehicleLeave(F1f46b3c7469)
			if not F1f46b3c7469.Passenger then
				Hd676003e13b(Nc2e78.Name)
			end
		end
		Jbc53413f.BindGroup(Y4c44179f)
		Y7c1fa5.WindowClose(N63c9f0c34)
		if Nc2e78.Character then
		end
		local Aa6cab = Nc2e78.PlayerScripts.ZoomCamera
		Aa6cab:Fire(15)
		W7d5c8()
		if pfd18d61ab8 == "Heli" then
			do
				local E3b603 = Nc2e78.Character
				local ec52295 = false
				local function Q3466110c()
					if ec52295 then
						return
					end
					local uc27c6e5d = E3b603:FindFirstChild("HumanoidRootPart")
					if uc27c6e5d then
						local Gca816 = E3b603:FindFirstChild("Humanoid")
						if Gca816 and not Gca816.PlatformStand then
							local N4f6cf5648f = uc27c6e5d.Velocity.magnitude
							if N4f6cf5648f >= 30 then
								ec52295 = true
								cd9edbaf.Parachute("Parachute")
							end
						end
					end
				end
				for z6d584 = 1, 8 do
					delay(0.2 + z6d584 * 0.25, Q3466110c)
				end
			end
		end
	end
	function Ma06a756880f.vipa55gz(Bb29420c)
		if not Ua4530cfaef then
			return
		end
		for Tedf43, H8d2c616e694 in next, Bb29420c, nil do
			Ua4530cfaef[Tedf43] = H8d2c616e694
		end
	end
	function Ma06a756880f.w8yjc020()
		if not Ua4530cfaef then
			return
		end
		if Ua4530cfaef.Type ~= "Heli" then
			return
		end
		q51b0b.FallOutOfSky(Ua4530cfaef)
	end
end
function Ma06a756880f.e1e4cs8s()
	N59f1a.FaultyAction.Visible = true
	wait(4)
	N59f1a.FaultyAction.Visible = false
end
function Ma06a756880f.pw8pqrjk(M615122faefa, t1d518aca)
	y135e496(M615122faefa, t1d518aca)
end
function Ma06a756880f.chblwbxt(v385a87bb4)
	vd7aec8(v385a87bb4)
end
function Ma06a756880f.ycxorlux(Nf232f0bf545, X31a58c, He8b86960)
	local H0476e = z6e8a5d8c4[Nf232f0bf545]
	if H0476e then
		for x89ecc2c930, Z7a6b1476510 in next, He8b86960, nil do
			H0476e[x89ecc2c930] = Z7a6b1476510
		end
	end
	v6600bbbd32(Nf232f0bf545, X31a58c)
end
do
	local h7bc67cd3 = false
	local function Q2c40076(ca56993)
		h7bc67cd3 = true
		for D2bc2f0b = 1, #Xcd5d94231.ItemStacks do
			Xcd5d94231.ItemStacks[D2bc2f0b].j = D2bc2f0b
		end
		local K52abd = ca56993.j
		local a5b849, T8dfb962456
		T8dfb962456 = t4c33a3b55f.Heartbeat:Connect(function(a998b250d159)
			local N3a2dc17e2 = N59f1a.Inventory.AbsolutePosition
			local bdb78d = ce18781:GetMouseLocation()
			local O09449 = bdb78d.X - N3a2dc17e2.X
			local jea4c50f685 = math.floor(O09449 / 80) + 1
			if jea4c50f685 < 1 then
				jea4c50f685 = 1
			end
			if jea4c50f685 > #Xcd5d94231.ItemStacks then
				jea4c50f685 = #Xcd5d94231.ItemStacks
			end
			a5b849 = jea4c50f685
			for nef1495a4, W5880e4 in next, Xcd5d94231.ItemStacks, nil do
				local n11f9a75df5f = 0
				if jea4c50f685 > K52abd then
					if nef1495a4 > K52abd and nef1495a4 <= jea4c50f685 then
						n11f9a75df5f = -1
					end
				elseif jea4c50f685 <= K52abd and nef1495a4 < K52abd and nef1495a4 >= jea4c50f685 then
					n11f9a75df5f = 1
				end
				local D741064f = W5880e4.Frame
				D741064f.Position = UDim2.new(0, 80 * (nef1495a4 - 1 + n11f9a75df5f), 0, 0)
			end
			local u61500 = ca56993.Frame
			u61500.Position = UDim2.new(0, 80 * (jea4c50f685 - 1), 0, 0)
		end)
		local M3c9c9
		M3c9c9 = ce18781.InputEnded:Connect(function(J893b1)
			if J893b1.UserInputType == Enum.UserInputType.MouseButton1 or J893b1.UserInputType == Enum.UserInputType.Touch then
				T8dfb962456:Disconnect()
				M3c9c9:Disconnect()
				assert(a5b849, "No LastIndex set")
				if K52abd ~= a5b849 then
					local hc8c603 = table.remove(Xcd5d94231.ItemStacks, K52abd)
					table.insert(Xcd5d94231.ItemStacks, a5b849, hc8c603)
				end
				h7bc67cd3 = false
				Ma06a756880f.phudyuk6()
			end
		end)
	end
	local J759a82a7ca5 = 0
	ce18781.InputEnded:Connect(function(E15fa084e)
		if E15fa084e.UserInputType == Enum.UserInputType.MouseButton1 or E15fa084e.UserInputType == Enum.UserInputType.Touch then
			J759a82a7ca5 = J759a82a7ca5 + 1
		end
	end)
	function Ma06a756880f.phudyuk6(y0a90b9142d, i9edf7f7a)
		if y0a90b9142d then
			local J7cd509b7a5 = {}
			for E596e68c, Ia6babba9 in next, Xcd5d94231.ItemStacks, nil do
				J7cd509b7a5[Ia6babba9.i] = true
			end
			local Naf0425349c6 = {}
			for V48707d8ad, O6deaa27e774 in next, y0a90b9142d.ItemStacks, nil do
				Naf0425349c6[O6deaa27e774.i] = true
			end
			for y304e659ea6a = #Xcd5d94231.ItemStacks, 1, -1 do
				local L6cb1e9bca97 = Xcd5d94231.ItemStacks[y304e659ea6a]
				if not Naf0425349c6[L6cb1e9bca97.i] then
					table.remove(Xcd5d94231.ItemStacks, y304e659ea6a)
				end
			end
			for S4d0731fba3 = 1, #y0a90b9142d.ItemStacks do
				local d9de29 = y0a90b9142d.ItemStacks[S4d0731fba3]
				if not J7cd509b7a5[d9de29.i] then
					table.insert(Xcd5d94231.ItemStacks, d9de29)
				end
			end
		end
		local h8485c = z6e8a5d8c4[Nc2e78.Name]
		if h8485c then
			local r534de = false
			for i22aa50, f2a8d9865a82 in next, Xcd5d94231.ItemStacks, nil do
				if f2a8d9865a82.i == h8485c.i then
					r534de = true
					break
				end
			end
			if not r534de then
				l74279f62a25()
			end
		end
		local zfabc7a1ed87 = N59f1a.Inventory.Inner
		local o632e9b3a2 = N59f1a.Inventory.ItemPreset
		local tfdf81fda = {}
		for F5a853, Vc7705f in next, Xcd5d94231.ItemStacks, nil do
			do
				local o593ba46702 = Vc7705f.Name
				local g5e2e1 = zfabc7a1ed87:FindFirstChild(o593ba46702)
				if not g5e2e1 then
					g5e2e1 = o632e9b3a2:Clone()
					g5e2e1.Name = o593ba46702
					g5e2e1.Parent = zfabc7a1ed87
					g5e2e1.Visible = true
					local function K5faf9ce7c()
						local pa67ba95d1 = J759a82a7ca5 + 1
						J759a82a7ca5 = pa67ba95d1
						if h7bc67cd3 then
							return
						end
						local ycbeb25e = 1
						for Jb1e725c9 = 1, #Xcd5d94231.ItemStacks do
							local p3ec6f0 = Xcd5d94231.ItemStacks[Jb1e725c9]
							if p3ec6f0.i == Vc7705f.i then
								ycbeb25e = Jb1e725c9
								break
							end
						end
						aee540a3(ycbeb25e)
					end
					g5e2e1.MouseButton1Up:Connect(K5faf9ce7c)
					local function Xf05483()
						local z036d42b98cb = J759a82a7ca5 + 1
						J759a82a7ca5 = z036d42b98cb
						delay(0.3, function()
							if J759a82a7ca5 == z036d42b98cb then
								Q2c40076(Vc7705f)
							end
						end)
					end
					g5e2e1.MouseButton1Down:Connect(Xf05483)
				end
				g5e2e1.Position = UDim2.new(0, 80 * (F5a853 - 1), 0, 0)
				g5e2e1.TextLabel.Text = F5a853
				local wd6aa8c0
				if o593ba46702 == "Rifle" then
					wd6aa8c0 = K083ad90.Images.Rifle
				elseif o593ba46702 == "Pistol" then
					wd6aa8c0 = K083ad90.Images.Pistol
				elseif o593ba46702 == "Shotgun" then
					wd6aa8c0 = K083ad90.Images.Shotgun
				elseif o593ba46702 == "AK47" then
					wd6aa8c0 = K083ad90.Images.AK47
				elseif o593ba46702 == "Flashlight" then
					wd6aa8c0 = K083ad90.Images.Flashlight
				elseif o593ba46702 == "Knife" then
					wd6aa8c0 = K083ad90.Images.Knife
				elseif o593ba46702 == "Taser" then
					wd6aa8c0 = K083ad90.Images.Taser
				elseif o593ba46702 == "Handcuffs" then
					wd6aa8c0 = K083ad90.Images.Handcuffs
				elseif o593ba46702 == "Key" then
					wd6aa8c0 = K083ad90.Images.Key
				elseif o593ba46702 == "ShieldSWAT" then
					wd6aa8c0 = K083ad90.Images.ShieldSWAT
				elseif o593ba46702 == "Donut" then
					wd6aa8c0 = K083ad90.Images.Donut
				elseif o593ba46702 == "Binoculars" then
					wd6aa8c0 = K083ad90.Images.Binoculars
				elseif o593ba46702 == "Glider" then
					wd6aa8c0 = K083ad90.Images.Glider
				end
				g5e2e1.ImageLabel.Image = wd6aa8c0 or ""
				if J7f47f5172c6.Value == "Prisoner" then
					g5e2e1.Image = K083ad90.Images.CirclePrisoner
					g5e2e1.TextLabel.TextColor3 = K083ad90.Images.CirclePrisonerColor
				elseif J7f47f5172c6.Value == "Police" then
					g5e2e1.Image = K083ad90.Images.CirclePolice
					g5e2e1.TextLabel.TextColor3 = K083ad90.Images.CirclePoliceColor
				end
				Vc7705f.Frame = g5e2e1
				tfdf81fda[g5e2e1] = true
			end
		end
		for wa01b9572, ze412f39d in next, zfabc7a1ed87:GetChildren() do
			if not tfdf81fda[ze412f39d] then
				ze412f39d:Destroy()
			end
		end
		local w20bdf06 = 80 * #Xcd5d94231.ItemStacks - 40
		N59f1a.Inventory.Size = UDim2.new(0, w20bdf06, 0, 60, 0)
		N59f1a.Inventory.Position = UDim2.new(0.5, -w20bdf06 * 0.5, 0.97, -84)
		if i9edf7f7a then
			local d8ca5fe5e79f = z6e8a5d8c4[Nc2e78.Name]
			if Ua4530cfaef then
				return
			end
			if d8ca5fe5e79f and d8ca5fe5e79f.Locked then
				return
			end
			Kdbdf8(i9edf7f7a)
		end
	end
end
local function tf906071bd(u501eecf5d09)
	local tb5c7e31 = aa384925c.Resource.Item:FindFirstChild(u501eecf5d09)
	if not tb5c7e31 then
		return
	end
	tb5c7e31 = tb5c7e31:Clone()
	tb5c7e31.Skeleton.BoundingBox.Parent = tb5c7e31.Model
	tb5c7e31 = tb5c7e31.Model
	tb5c7e31.PrimaryPart = tb5c7e31.BoundingBox
	tb5c7e31.PrimaryPart.CanCollide = true
	tb5c7e31.Parent = workspace
	return tb5c7e31
end
local Kddb936680b = function(x87d84d, Taf173ed14, J65615, K6448f46)
	x87d84d = x87d84d / K6448f46 * 2
	if x87d84d < 1 then
		return J65615 * 0.5 * x87d84d * x87d84d + Taf173ed14
	else
		return -J65615 * 0.5 * ((x87d84d - 1) * (x87d84d - 3) - 1) + Taf173ed14
	end
end
local e39641ff4c8
local function T7c95cda7044(Nf6c08ed05df)
	if Vc386281d7f0 then
		return
	end
	local G9b31b7 = v6cefcee250d(r0bf3e)
	if G9b31b7 then
		if G9b31b7 ~= e39641ff4c8 then
			N59f1a.MouseIcon.Visible = true
			ce18781.MouseIconEnabled = false
		end
		local Gb9e0288
		if G9b31b7 == "Stash" then
			local L2ca433207 = z6e8a5d8c4[Nc2e78.Name]
			if L2ca433207 then
				Gb9e0288 = "Drawer"
			else
				Gb9e0288 = "Grab"
			end
		elseif G9b31b7 == "Hotwire" then
			Gb9e0288 = "Lockpick"
		end
		N59f1a.MouseIcon.Image = K083ad90.Images[Gb9e0288]
		local O674c0 = A54ecff0(m0e44a52.X, m0e44a52.Y, 0)
		if O674c0 then
			N59f1a.MouseIcon.Position = UDim2.new(0, O674c0.X - 16, 0, O674c0.Y - 16)
		end
	elseif e39641ff4c8 then
		N59f1a.MouseIcon.Visible = false
		local l279ba8c29 = true
		local a205494b48 = z6e8a5d8c4[Nc2e78.Name]
		if a205494b48 and a205494b48.CrossHair then
			l279ba8c29 = false
		end
		ce18781.MouseIconEnabled = l279ba8c29
	end
	e39641ff4c8 = G9b31b7
end
local h4ca926, f791dac
do
	local Se2478c6e = aa384925c.Resource.ButtonY:Clone()
	local v582ed255387 = {}
	local function ldd513f(yaa06f, r21c82563)
		if r21c82563 then
			local g45b8302deff = D31148ae40c.BinaryFind(v582ed255387, yaa06f.Sort)
			table.insert(v582ed255387, g45b8302deff, yaa06f)
		else
			for bc0bbf692b6 = #v582ed255387, 1, -1 do
				if v582ed255387[bc0bbf692b6] == yaa06f then
					table.remove(v582ed255387, bc0bbf692b6)
					break
				end
			end
		end
		local t2481530e349 = v582ed255387[1]
		if t2481530e349 and p0d0ce == Enum.UserInputType.Gamepad1 then
			Se2478c6e.Parent = t2481530e349.Meta.Button
		else
			Se2478c6e.Parent = nil
		end
	end
	function h4ca926(D4d0bfc8, ve8ae22a7, ze1abc975)
		return Af254526aa4.AddPart(D4d0bfc8, ve8ae22a7, ldd513f, {Callback = ze1abc975})
	end
	function f791dac(h14e3207674d)
		local e8ca282b = false
		if h14e3207674d.UserInputType == Enum.UserInputType.Gamepad1 then
			local c84bc83e6b24 = h14e3207674d.KeyCode
			if c84bc83e6b24 == Enum.KeyCode.ButtonY then
				e8ca282b = true
			end
		elseif h14e3207674d.UserInputType == Enum.UserInputType.Keyboard then
			local e274d2 = h14e3207674d.KeyCode
			if e274d2 == Enum.KeyCode.Y then
				e8ca282b = true
			end
		end
		if not e8ca282b then
			return
		end
		local W6ed83 = v582ed255387[1]
		if not W6ed83 then
			return
		end
		for e631d3a8ae, L7973609c275 in next, v582ed255387, nil do
			if L7973609c275.Meta.Button == W6ed83.Meta.Button then
				coroutine.resume(coroutine.create(function()
					L7973609c275.Meta.Callback(Nc2e78)
				end))
			end
		end
	end
end
local odcda098
odcda098 = {}
do
	local e5770d = {}
	local V1a880e7ff07 = {}
	local e306818bc8a = {}
	local function R15a5807a8(cfeac0b3)
		local O5f1ffc63ed = cfeac0b3.State.Open
		local H89f4d6cb9 = cfeac0b3.Model
		local b089fb052137 = H89f4d6cb9.Model:FindFirstChild("light")
		if not b089fb052137 then
			b089fb052137 = H89f4d6cb9:FindFirstChild("Light")
			if b089fb052137 and b089fb052137:IsA("ObjectValue") then
				if b089fb052137.Value then
					b089fb052137 = b089fb052137.Value.Parent:FindFirstChild("light")
				else
					b089fb052137 = nil
				end
			end
		end
		local neb26691a93, ge49afa = cfeac0b3.OpenCFrame, cfeac0b3.ClosedCFrame
		local function M3ec9587()
			if O5f1ffc63ed then
				H89f4d6cb9.Model:SetPrimaryPartCFrame(neb26691a93)
			else
				H89f4d6cb9.Model:SetPrimaryPartCFrame(ge49afa)
				if b089fb052137 then
					b089fb052137.BrickColor = BrickColor.new("Dusty Rose")
				end
			end
		end
		if cfeac0b3.State.NoAnimate then
			cfeac0b3.State.NoAnimate = false
			return M3ec9587()
		end
		if O5f1ffc63ed and b089fb052137 then
			b089fb052137.BrickColor = BrickColor.new("Bright green")
		end
		local Ree1537a4152
		local R6b1183, t733202785 = 0, cfeac0b3.Settings.Duration
		local function s22fe07505(y028f43fc4, G9d3464f58b2)
			R6b1183 = R6b1183 + G9d3464f58b2 * 1 / t733202785
			local s8b3d592 = Kddb936680b(R6b1183, 0, 1, 1)
			if not O5f1ffc63ed then
				s8b3d592 = 1 - s8b3d592
			end
			H89f4d6cb9.Model:SetPrimaryPartCFrame(ge49afa:lerp(neb26691a93, s8b3d592))
			if R6b1183 >= 1 then
				Ree1537a4152:disconnect()
				M3ec9587()
			end
		end
		Ree1537a4152 = t4c33a3b55f.Stepped:connect(s22fe07505)
	end
	local function xf611f(Aa1dbcc)
		local xd7f35680 = Aa1dbcc.State.Open
		local fe3147e71 = Aa1dbcc.Model
		local I3d4db7d739 = fe3147e71.Model:FindFirstChild("light")
		if not I3d4db7d739 then
			I3d4db7d739 = fe3147e71:FindFirstChild("Light")
			if I3d4db7d739 and I3d4db7d739:IsA("ObjectValue") then
				if I3d4db7d739.Value then
					I3d4db7d739 = I3d4db7d739.Value.Parent:FindFirstChild("light")
				else
					I3d4db7d739 = nil
				end
			end
		end
		local hbbce5ea0 = Aa1dbcc.State.Direction * Aa1dbcc.Direction
		local feb76af57a48, T8b0f48f = Aa1dbcc.ClosedCFrame, Aa1dbcc.HingeRelativeCFrame
		local K6fe32be2cc = A54ecff0(0, math.pi * 0.55 * hbbce5ea0, 0)
		local function Re81946()
			if xd7f35680 then
				fe3147e71.Model:SetPrimaryPartCFrame(feb76af57a48 * T8b0f48f * D31148ae40c.CFrameFromAxisAngle(K6fe32be2cc) * T8b0f48f:inverse())
			else
				fe3147e71.Model:SetPrimaryPartCFrame(feb76af57a48)
				if I3d4db7d739 then
					I3d4db7d739.BrickColor = BrickColor.new("Dusty Rose")
				end
			end
		end
		if Aa1dbcc.State.NoAnimate then
			Aa1dbcc.State.NoAnimate = false
			return Re81946()
		end
		if xd7f35680 and I3d4db7d739 then
			I3d4db7d739.BrickColor = BrickColor.new("Bright green")
		end
		local O423d380f
		local yfe2be6f1, Q022699d45d0 = 0, Aa1dbcc.Settings.Duration
		local function K38a40(a0b4f410891, u78185f)
			yfe2be6f1 = yfe2be6f1 + u78185f * 1 / Q022699d45d0
			local e72750 = Kddb936680b(yfe2be6f1, 0, 1, 1)
			if not xd7f35680 then
				e72750 = 1 - e72750
			end
			fe3147e71.Model:SetPrimaryPartCFrame(feb76af57a48 * T8b0f48f * D31148ae40c.CFrameFromAxisAngle(u50fd37:lerp(K6fe32be2cc, e72750)) * T8b0f48f:inverse())
			if yfe2be6f1 >= 1 then
				O423d380f:disconnect()
				return Re81946()
			end
		end
		O423d380f = t4c33a3b55f.Stepped:connect(K38a40)
	end
	local Udc347dd1 = 1
	local function Id2ec2b(g92b84cfb)
		local k888a84 = g92b84cfb.Model
		local Me51e53d0 = V1a880e7ff07[k888a84]
		if not Me51e53d0 then
			return
		end
		Me51e53d0.State = g92b84cfb.State
		Me51e53d0.Settings = g92b84cfb.Settings
		Me51e53d0.State.Open = true
		if Me51e53d0.OpenFun then
			Me51e53d0:OpenFun()
		end
	end
	local function x0379e0(Je84ff0bc7)
		local k2137b4c4 = Je84ff0bc7.Model
		local k6dac3f = V1a880e7ff07[k2137b4c4]
		if not k6dac3f then
			return
		end
		k6dac3f.State = Je84ff0bc7.State
		k6dac3f.Settings = Je84ff0bc7.Settings
		k6dac3f.State.Open = false
		k6dac3f.State.CloseTime = os.time()
		if k6dac3f.CloseFun then
			k6dac3f:CloseFun()
		end
	end
	Ma06a756880f.u26vm9le = Id2ec2b
	Ma06a756880f.wzqbldc4 = x0379e0
	local function h4beeaee(P36103ec)
		if not Nc2e78.Character then
			return
		end
		if P36103ec.Parent == Nc2e78.Character or P36103ec.Parent.Parent == Nc2e78.Character then
			return Nc2e78
		else
			return false
		end
	end
	local function A1813abf99(l18e0fb)
		if l18e0fb.Settings.SequenceRequireState and l18e0fb.State.Open then
			return
		end
		Id2ec2b(l18e0fb)
		I24c9cc17:FireServer("mwig649h", l18e0fb)
	end
	local function gf7e2f5d6a74(A124de00ea3, O594e63b7e, Bb5f3d7, hacb4ce025)
		if A124de00ea3.Settings.ServerOnly then
			return false
		end
		if A124de00ea3.Settings.Locked then
			return false
		end
		local A8d5e9d = false
		local od0ea983fa0 = Bb5f3d7:FindFirstChild("Humanoid")
		if od0ea983fa0.Sit or Bb5f3d7:FindFirstChild("InVehicle") then
			A8d5e9d = true
		end
		local x5433d4e = J7f47f5172c6.Value == K083ad90.Team.Police
		for jf6594f, Z93128f in next, Xcd5d94231.ItemStacks, nil do
			if Z93128f.Name == "Key" then
				x5433d4e = true
				break
			end
		end
		local W18a9dac = false
		if A124de00ea3.Settings.Vehicle and not A124de00ea3.Settings.Character then
			W18a9dac = A8d5e9d
		elseif A124de00ea3.Settings.Character and not A124de00ea3.Settings.Vehicle then
			W18a9dac = not A8d5e9d
		elseif A124de00ea3.Settings.Character and A124de00ea3.Settings.Vehicle then
			W18a9dac = true
		end
		if hacb4ce025 then
			W18a9dac = true
		end
		if A124de00ea3.Settings.Key and W18a9dac then
			W18a9dac = x5433d4e
		end
		if A124de00ea3.Settings.Team then
			W18a9dac = W18a9dac and O594e63b7e.TeamValue.Value == A124de00ea3.Settings.Team
		end
		if A124de00ea3.Settings.TeamBlacklist then
			W18a9dac = W18a9dac and O594e63b7e.TeamValue.Value ~= A124de00ea3.Settings.TeamBlacklist
		end
		return W18a9dac
	end
	local function Y20b0d(bcdc8dc588)
		local n6271346 = assert(bcdc8dc588.Model)
		local b22ec0cea00, md1c467e2 = tick(), tick()
		local function M8a192e8d056(i3547be, J48ce6)
			if i3547be ~= Nc2e78 then
				return
			end
			local R393aaa8a411 = tick()
			local L403cb21 = i3547be.Character
			if not L403cb21 then
				return
			end
			local F77f1da83b5 = L403cb21:FindFirstChild("HumanoidRootPart")
			if not F77f1da83b5 then
				return
			end
			if R393aaa8a411 - md1c467e2 < 0.1 then
				return
			end
			md1c467e2 = R393aaa8a411
			if bcdc8dc588.State.Open then
				return
			end
			if os.time() - bcdc8dc588.State.CloseTime < bcdc8dc588.Settings.Duration then
				return
			end
			local Z64cc22 = gf7e2f5d6a74(bcdc8dc588, i3547be, L403cb21, J48ce6)
			if bcdc8dc588.Settings.Character then
				if Z64cc22 then
					q12db8("Door", {
						Source = n6271346.Closed,
						TimeStart = 1,
						Volume = 0.2
					})
				else
					q12db8("Door", {
						Source = n6271346.Closed,
						TimeStart = 0,
						MaxTime = 0.6,
						Volume = 0.2
					})
				end
			end
			if not Z64cc22 then
				return
			end
			if bcdc8dc588.Settings.Type == "Swing" then
				local Sf4db8f3d = (bcdc8dc588.Model.Closed.Position - L403cb21.HumanoidRootPart.Position).unit
				local vb822f8659 = bcdc8dc588.Model.Closed.CFrame.lookVector
				local Qd36aa18e9b = Sf4db8f3d:Dot(vb822f8659)
				local ofbffe = Qd36aa18e9b > 0 and 1 or -1
				bcdc8dc588.State.Direction = ofbffe
			end
			A1813abf99(bcdc8dc588)
		end
		local function Q346a3(Qf500ee)
			local L28b67745a = tick()
			if L28b67745a - b22ec0cea00 < 0.03333333333333333 then
				return
			end
			b22ec0cea00 = L28b67745a
			local x8054ea91 = h4beeaee(Qf500ee)
			if not x8054ea91 then
				return
			end
			M8a192e8d056(x8054ea91)
		end
		local function Zf920ef8(U48797d)
			if U48797d ~= Nc2e78 then
				return
			end
			M8a192e8d056(Nc2e78, true)
		end
		for vce650dae, L914f10 in next, n6271346:GetChildren() do
			if L914f10:IsA("BasePart") and L914f10.Name == "Touch" then
				table.insert(e306818bc8a, {Part = L914f10, Fun = Q346a3})
			elseif L914f10:IsA("ObjectValue") and L914f10.Name == "Touch" then
				table.insert(e306818bc8a, {
					Part = L914f10.Value,
					Fun = Q346a3
				})
			elseif L914f10:IsA("ObjectValue") and L914f10.Name == "Button" then
				local S1161d252f = L914f10.Value
				if S1161d252f:IsA("Part") then
					S1161d252f = S1161d252f.Parent
				end
				if S1161d252f:IsA("Model") then
					S1161d252f = S1161d252f:FindFirstChild("Click").ClickDetector
				end
				local O2df99 = h4ca926(S1161d252f.Parent, S1161d252f.MaxActivationDistance, Zf920ef8)
				O2df99.Meta.Button = S1161d252f.Parent
				S1161d252f.MouseClick:connect(Zf920ef8)
			end
		end
	end
	function Ma06a756880f.as31puwa(e490af141)
		local R89e553d99f8 = e490af141.Model
		local d046ed0bb = V1a880e7ff07[R89e553d99f8]
		if d046ed0bb then
			local I7fe277641 = d046ed0bb.State.Open ~= e490af141.State.Open
			d046ed0bb.State = e490af141.State
			d046ed0bb.Settings = e490af141.Settings
			if I7fe277641 then
				d046ed0bb.State.NoAnimate = true
				if d046ed0bb.State.Open then
					Id2ec2b(d046ed0bb)
				else
					x0379e0(d046ed0bb)
				end
			end
		else
			Y20b0d(e490af141)
			V1a880e7ff07[R89e553d99f8] = e490af141
			table.insert(e5770d, e490af141)
			if e490af141.Settings.Type == "Swing" then
				e490af141.OpenFun = xf611f
				e490af141.CloseFun = xf611f
			elseif e490af141.Settings.Type == "Slide" then
				e490af141.OpenFun = R15a5807a8
				e490af141.CloseFun = R15a5807a8
			end
			e490af141.State.NoAnimate = true
			if e490af141.State.Open then
				Id2ec2b(e490af141)
			else
				x0379e0(e490af141)
			end
		end
	end
	function Ma06a756880f.qyzjqvpu(R75928c4)
		for Ye9a3e31e8, p64993 in next, R75928c4, nil do
			Ma06a756880f.as31puwa(p64993)
		end
	end
	function odcda098.Open(b03c19d)
		Id2ec2b(b03c19d)
	end
	function odcda098.Close(ga62f07691f)
		x0379e0(ga62f07691f)
	end
	for hd6074783d0, j29c651273ce in next, workspace.TouchTrigger:GetChildren() do
		do
			local n6c024 = tick()
			local function Nb1ea4b(h7d75c19)
				if tick() - n6c024 < 5 then
					return
				end
				n6c024 = tick()
				I24c9cc17:FireServer("xfu1u9h0", j29c651273ce.Name)
			end
			table.insert(e306818bc8a, {Part = j29c651273ce, Fun = Nb1ea4b})
		end
	end
	local function K256a4d()
		local T69b04a9316d = Nc2e78.Character
		if not T69b04a9316d then
			return
		end
		local Id69789d = T69b04a9316d:FindFirstChild("HumanoidRootPart")
		if not Id69789d then
			return
		end
		local F13244ea1 = Id69789d.Position
		local w1708efa = A54ecff0(4, 6, 4)
		for L5c7300100e, K07d81dc31 in next, e306818bc8a, nil do
			if (F13244ea1 - K07d81dc31.Part.Position).magnitude < 50 and D31148ae40c.IsPointInPrism(F13244ea1, K07d81dc31.Part.CFrame, K07d81dc31.Part.Size + w1708efa) then
				K07d81dc31.Fun(Id69789d)
			end
		end
	end
	e8acc30e(0.16666666666666666, K256a4d)
end
do
	local J9afea24b1c2 = 0
	local e7dbe5a08157 = require(aa384925c.Module.Easing)
	local a430a150 = m0e1ccdc:WaitForChild("Safe")
	local q2ad145013d = 480
	if Vc386281d7f0 then
		q2ad145013d = 250
	end
	local d74c9229fa4 = q2ad145013d * 1.6
	a430a150.Size = UDim2.new(0, d74c9229fa4, 0, q2ad145013d)
	a430a150.Position = UDim2.new(0.5, -d74c9229fa4 * 0.5, 0.5, -q2ad145013d * 0.5)
	do
		local wb860b83194 = Vc386281d7f0 and 0.4 or 0.323
		N59f1a.Sidebar.Size = UDim2.new(wb860b83194 * 0.242, 0, wb860b83194, 0)
		N59f1a.Sidebar.Position = UDim2.new(0.01, 0, 0.5 - wb860b83194 * 0.5 - (Vc386281d7f0 and 0.1 or 0), 0)
	end
	local Q8ad2835 = function(Qe3a9f40, eee7e8db02, Teb23253)
		return Color3.new(Qe3a9f40 / 255, eee7e8db02 / 255, Teb23253 / 255)
	end
	local jf170b = {}
	local m80231d = {
		"Legendary",
		"Ultra Rare",
		"Rare",
		"Uncommon",
		"Common"
	}
	local u8e489f4 = 0
	local function N41e9db874e5(Hcd529a67d)
		local t53fc2d9f0d1 = K083ad90.Safes.Price[Hcd529a67d]
		local y42f7b = K083ad90.Safes.Weights[Hcd529a67d]
		local ofb0e87af8 = u8e489f4 + 1
		u8e489f4 = ofb0e87af8
		local W47306fa5b5a = a430a150.Sidebar.Buy.Inner
		W47306fa5b5a.Title.Text = K083ad90.Safes.Names[Hcd529a67d]
		W47306fa5b5a.Price.Text = ("$%s"):format(s2bbea1a3(t53fc2d9f0d1))
		W47306fa5b5a.Icon.Image = K083ad90.Images[("Safe%d"):format(Hcd529a67d)]
		local C0b4f8b762 = 0
		for Ia8fb07a, B8abe8bfa in next, y42f7b, nil do
			C0b4f8b762 = C0b4f8b762 + B8abe8bfa
		end
		for bb5920, e20523 in next, m80231d, nil do
			do
				local w4c9835cb = W47306fa5b5a.Stats:FindFirstChild(e20523)
				local bb9bc0b979fd = Ybf8a081(y42f7b[bb5920] / C0b4f8b762 * 100 + 0.5)
				local aab9f6e = w4c9835cb.Percent.Text:match("%d+")
				local function n4e2f049c9e()
					for Rbc401ff = 0, 1, 0.1 do
						if u8e489f4 ~= ofb0e87af8 then
							return
						end
						local Wf4e108 = Ybf8a081((1 - Rbc401ff) * aab9f6e + Rbc401ff * bb9bc0b979fd + 0.5)
						w4c9835cb.Percent.Text = ("%d%%"):format(Wf4e108)
						t4c33a3b55f.Stepped:wait()
					end
					w4c9835cb.Percent.Text = ("%d%%"):format(bb9bc0b979fd)
				end
				spawn(n4e2f049c9e)
			end
		end
	end
	local T7a5f17c = "Inventory"
	local p77f8af5
	local function E9539b()
		if #jf170b > 0 or T7a5f17c ~= "Inventory" then
		else
			p77f8af5("Buy")
		end
	end
	function p77f8af5(m7af8d9f)
		if m7af8d9f == "Inventory" then
			m0e1ccdc.SafeSlider.Visible = false
			a430a150.Visible = true
			a430a150.Body.Buy.Visible = false
			a430a150.Body.Inventory.Visible = true
			a430a150.Body.Back.Visible = false
			a430a150.Body.BuySafes.Visible = true
			a430a150.Sidebar.Gift.Visible = false
			a430a150.Sidebar.Buy.Gift.Visible = false
			a430a150.Sidebar.Buy.Buy.Visible = false
			a430a150.Sidebar.Buy.Open.Visible = true
			if T7a5f17c ~= m7af8d9f then
				if #jf170b > 0 then
					N41e9db874e5(jf170b[1].Type)
				end
				E9539b()
			end
			vc5c5e1033e2(a430a150.Body.Inventory.Inner:GetChildren()[1])
		elseif m7af8d9f == "Slider" then
			m0e1ccdc.SafeSlider.Visible = true
			a430a150.Visible = false
		elseif m7af8d9f == "Buy" then
			a430a150.Body.Buy.Visible = true
			a430a150.Body.Inventory.Visible = false
			a430a150.Body.Back.Visible = true
			a430a150.Body.BuySafes.Visible = false
			a430a150.Sidebar.Gift.Visible = false
			a430a150.Sidebar.Buy.Visible = true
			a430a150.Sidebar.Buy.Gift.Visible = true
			a430a150.Sidebar.Buy.Buy.Visible = true
			a430a150.Sidebar.Buy.Open.Visible = false
			N41e9db874e5(1)
			vc5c5e1033e2(a430a150.Body.Buy.Tier1)
		end
		T7a5f17c = m7af8d9f
		E9539b()
	end
	local eb2ca3854b = 138
	local n17ea8 = function(U666fb50, I611453)
		return U666fb50.Type > I611453.Type
	end
	function Ma06a756880f.nao25l4o()
		Yf3cb11d7(12)
	end
	function Ma06a756880f.p2ox3gwi(P577820)
		p77f8af5("Slider")
		local e5f1ea46a = m0e1ccdc.SafeSlider
		local x5ae715f0bc7 = 30
		for ncb7684, X0b634406b6 in next, P577820, nil do
			local uc32fdbb981 = e5f1ea46a.Preset:Clone()
			if X0b634406b6.Image then
				uc32fdbb981.ImageLabel.Image = X0b634406b6.Image
			elseif X0b634406b6.BackgroundColor then
				uc32fdbb981.ImageLabel.BackgroundTransparency = 0
				uc32fdbb981.ImageLabel.BackgroundColor3 = X0b634406b6.BackgroundColor
			end
			uc32fdbb981.TextLabel.Text = X0b634406b6.Desc
			uc32fdbb981.Patch.Inner.BackgroundColor3 = X0b634406b6.Color
			uc32fdbb981.Parent = e5f1ea46a.Inner
			X0b634406b6.Frame = uc32fdbb981
		end
		local Bce42d0c06 = e5f1ea46a.AbsoluteSize.X
		local O707ae6a = 0
		local mbd6b6622e = Bce42d0c06 * 0.5 - eb2ca3854b + (math.random() * 90 + 5)
		local D77386 = -2
		local c19778f3 = 0.12
		local p2cdb6, g2d14e0f52
		local function Y0382f8b753()
			c19778f3 = 1
		end
		g2d14e0f52 = e5f1ea46a.Skip.MouseButton1Down:connect(Y0382f8b753)
		vc5c5e1033e2(e5f1ea46a.Skip)
		local function R2c353bc347()
			g2d14e0f52:disconnect()
			local c1ffe83e0 = P577820[x5ae715f0bc7].Frame
			c1ffe83e0.BackgroundColor3 = Q8ad2835(0, 0, 0)
			I24c9cc17:FireServer("zy0nc6gk")
			wait(1.5)
			p77f8af5("Inventory")
			for e99b9122f, J2902e19e in next, P577820, nil do
				J2902e19e.Frame:Destroy()
			end
		end
		local function q0ff020f99(kb16d9ab)
			O707ae6a = O707ae6a + kb16d9ab * c19778f3
			if O707ae6a >= 1 then
				O707ae6a = 1
			end
			local Zec460 = e7dbe5a08157.outQuad(O707ae6a, 0, 1, 1)
			for Uf6d5131622 = 1, #P577820 do
				local k54123a8 = P577820[Uf6d5131622].Frame
				local h8fa14a69f06 = (Uf6d5131622 - Zec460 * x5ae715f0bc7) * eb2ca3854b + mbd6b6622e
				k54123a8.Position = UDim2.new(0, h8fa14a69f06, 0, 0)
				k54123a8.Visible = true
			end
			local m6325b7fe = Ybf8a081(Zec460 * x5ae715f0bc7 - mbd6b6622e / eb2ca3854b + 0.5)
			if D77386 ~= m6325b7fe then
				D77386 = m6325b7fe
				N59f1a.Tick.PlaybackSpeed = 1 + (1 - Zec460) * 0.05
				N59f1a.Tick:Play()
			end
			if O707ae6a >= 1 then
				p2cdb6:disconnect()
				R2c353bc347()
			end
		end
		p2cdb6 = t4c33a3b55f.Heartbeat:connect(q0ff020f99)
	end
	local Nff7e6ffd = a430a150.Visible
	local d6048d41f60 = false
	local k405ffe = 0
	local function O7d1f1c32c()
		local h82c6ab5 = k405ffe + 1
		k405ffe = h82c6ab5
		while not d6048d41f60 do
			if h82c6ab5 ~= k405ffe then
				return
			end
			local e7bd0bec = g9acb056b7(tick() * 8) * 0.2 + 0.8
			N59f1a.Sidebar.ToggleSafes.ImageColor3 = Color3.new(e7bd0bec, e7bd0bec, e7bd0bec)
			wait()
		end
		N59f1a.Sidebar.ToggleSafes.ImageColor3 = Color3.new(1, 1, 1)
	end
	local pe9287b = 0
	local n05c503
	local function mca4d41()
		if not n05c503 then
			return
		end
		I24c9cc17:FireServer("p2ox3gwi", n05c503)
	end
	function Ma06a756880f.xre0mptd(gd61c9, Q45a09)
		table.sort(gd61c9, n17ea8)
		J9afea24b1c2 = Q45a09
		jf170b = gd61c9
		E9539b()
		for A85f5d9dbfe, T2b3307a3fe in next, a430a150.Body.Inventory.Inner:GetChildren() do
			T2b3307a3fe:Destroy()
		end
		local Fa55300028df = a430a150.Body.Inventory.Preset
		local t60ef3 = Ybf8a081((#jf170b - 1) / 3)
		local qebe30a4, ta5dc97 = Fa55300028df.AbsoluteSize.X, Fa55300028df.AbsoluteSize.Y
		local r08282645ae9 = ta5dc97 * (t60ef3 + 1)
		a430a150.Body.Inventory.Inner.CanvasSize = UDim2.new(0, 0, 0, r08282645ae9)
		for r4a322, M552e4a5 in next, jf170b, nil do
			do
				local c04dbaaf2a = M552e4a5.Type
				local m5fb9ff49 = K083ad90.Safes.Color[c04dbaaf2a]
				local r34758a1587 = Fa55300028df:Clone()
				r34758a1587.Visible = true
				r34758a1587.ImageLabel.Image = K083ad90.Images[("Safe%d"):format(c04dbaaf2a)]
				local J975025ca339 = (r4a322 - 1) % 3
				local X78fd1d873b1 = Ybf8a081((r4a322 - 1) / 3)
				r34758a1587.Size = UDim2.new(0, qebe30a4, 0, ta5dc97)
				r34758a1587.Position = UDim2.new(0, qebe30a4 * J975025ca339, 0, ta5dc97 * X78fd1d873b1)
				r34758a1587.Parent = a430a150.Body.Inventory.Inner
				r34758a1587.MouseButton1Down:connect(function()
					n05c503 = M552e4a5
					N41e9db874e5(c04dbaaf2a)
					if p0d0ce == Enum.UserInputType.Gamepad1 then
						mca4d41()
					end
				end)
				if r4a322 == 1 then
					n05c503 = M552e4a5
					if T7a5f17c == "Inventory" then
						N41e9db874e5(M552e4a5.Type)
						vc5c5e1033e2(r34758a1587)
					end
				end
				if r4a322 % 3 == 0 then
					r34758a1587.NextSelectionRight = a430a150.Sidebar.Buy.Open
				end
			end
		end
		local Hdebc4d1fb1 = Q45a09
		N59f1a.Sidebar.ToggleSafes.Label.Visible = Hdebc4d1fb1 > 0
		N59f1a.Sidebar.ToggleSafes.Label.Amount.Text = Hdebc4d1fb1
		if Hdebc4d1fb1 ~= pe9287b and not Nff7e6ffd then
			d6048d41f60 = false
			spawn(O7d1f1c32c)
		end
		pe9287b = Hdebc4d1fb1
	end
	local b90014a4004 = 0
	function Ma06a756880f.ggq4lx0x(Eebb1d2af0)
		local w17de9b17c = m0e1ccdc.SafeSlider
		local Fdc306 = b90014a4004 + 1
		b90014a4004 = Fdc306
		w17de9b17c.Message.Text = Eebb1d2af0
		w17de9b17c.Message.Visible = true
		delay(2, function()
			if b90014a4004 > Fdc306 then
				return
			end
			w17de9b17c.Message.Visible = false
		end)
	end
	local H1bac141e6 = #K083ad90.Safes.Price
	local l550346fd65 = 1
	for Bba524 = 1, H1bac141e6 do
		do
			local q2a88b29646 = a430a150.Body.Buy:FindFirstChild(("Tier%d"):format(Bba524))
			local r7b6cb1 = K083ad90.Safes.Price[Bba524]
			q2a88b29646.Price.Text = ("$%d"):format(r7b6cb1)
			assert(q2a88b29646)
			local function Dab0b7e94bb()
				l550346fd65 = Bba524
				N41e9db874e5(Bba524)
				vc5c5e1033e2(a430a150.Sidebar.Buy.Buy)
			end
			q2a88b29646.MouseButton1Down:connect(Dab0b7e94bb)
		end
	end
	local x9d871e9 = function(S1b76e68)
		return ("https://www.roblox.com/bust-thumbnail/image?width=420&height=420&format=png&userId=%d"):format(S1b76e68)
	end
	local function N1293c1ba43()
		a430a150.Sidebar.Gift.Inner.Username.Text = "Your Friend's Username..."
		a430a150.Sidebar.Gift.Inner.ImageLabel.Image = ""
		a430a150.Sidebar.Gift.Visible = true
		a430a150.Sidebar.Buy.Visible = false
	end
	local function se87aa7a6dd9()
		a430a150.Sidebar.Buy.Visible = true
		a430a150.Sidebar.Gift.Visible = false
	end
	local i27789, wc5fd4 = 0, 0
	local function mbec5f9d4(G0c6df7, f6f7f76785ea)
		local m71bbf8 = j4665d.MakeState()
		m71bbf8.Frame = T8d421366b05.Particles
		j4665d.Explosion(m71bbf8, A54ecff0(G0c6df7, f6f7f76785ea - 36, 0))
		j4665d.EasySimulate(m71bbf8, 3)
	end
	local function B7bbbe(ka9386632, o17bece028ab)
		i27789, wc5fd4 = ka9386632, o17bece028ab
		I24c9cc17:FireServer("ux2on9fy", l550346fd65)
	end
	local function Zbac4667(N2d67c8a, Edde92320e3)
		i27789, wc5fd4 = N2d67c8a, Edde92320e3
		local W993886a028d = a430a150.Sidebar.Gift.Inner.Username.Text
		I24c9cc17:FireServer("xb9lmhlg", l550346fd65, W993886a028d)
		se87aa7a6dd9()
	end
	function Ma06a756880f.zdjgxpi2(F53e56a4a2)
		if F53e56a4a2.Success then
			mbec5f9d4(i27789, wc5fd4)
		elseif F53e56a4a2.NotEnoughMoney then
			nd719f()
			Pe4821c7d18()
		end
	end
	local function D08e19dd82()
		p77f8af5("Inventory")
	end
	local function Mac0f87()
		p77f8af5("Buy")
	end
	local function i59f50740(ecbae2e8960)
		if ecbae2e8960 == "Text" then
			do
				local B360bc = a430a150.Sidebar.Gift.Inner.Username.Text
				local Q1306a0a9
				local l42c004 = pcall(function()
					Q1306a0a9 = s4e429b5:GetUserIdFromNameAsync(B360bc)
				end)
				a430a150.Sidebar.Gift.Inner.ImageLabel.Image = l42c004 and x9d871e9(Q1306a0a9) or ""
			end
		end
	end
	a430a150.Sidebar.Buy.Buy.MouseButton1Down:connect(B7bbbe)
	a430a150.Sidebar.Buy.Gift.MouseButton1Down:connect(N1293c1ba43)
	a430a150.Sidebar.Gift.Back.MouseButton1Down:connect(se87aa7a6dd9)
	a430a150.Sidebar.Gift.Gift.MouseButton1Up:connect(Zbac4667)
	a430a150.Sidebar.Gift.Inner.Username.Changed:connect(i59f50740)
	a430a150.Body.Back.MouseButton1Down:connect(D08e19dd82)
	a430a150.Body.BuySafes.MouseButton1Down:connect(Mac0f87)
	a430a150.Sidebar.Buy.Open.MouseButton1Down:connect(mca4d41)
	function u9b41c3()
		d6048d41f60 = true
		if Nff7e6ffd then
			return
		end
		D08e19dd82()
		Nff7e6ffd = true
		a430a150.Visible = Nff7e6ffd
	end
	function nd719f()
		if not Nff7e6ffd then
			return
		end
		Nff7e6ffd = false
		a430a150.Visible = Nff7e6ffd
	end
	local w86b74a66c2 = Y7c1fa5.MakeWindow()
	w86b74a66c2.OpenFun = u9b41c3
	w86b74a66c2.CloseFun = nd719f
	Y7c1fa5.WindowGroupAdd(Tbfc2a6, w86b74a66c2)
	N59f1a.Sidebar.ToggleSafes.MouseButton1Down:connect(function()
		Y7c1fa5.WindowToggle(w86b74a66c2)
	end)
	a430a150.Close.MouseButton1Down:connect(function()
		Y7c1fa5.WindowClose(w86b74a66c2)
	end)
end
do
	local i5a17f32dce7 = false
	local function P8872771d()
		i5a17f32dce7 = not i5a17f32dce7
		if i5a17f32dce7 then
			f924b8d.Music.Volume = 0
			N59f1a.Sidebar.ToggleMute.Image = K083ad90.Images.Mute
		else
			f924b8d.Music.Volume = 1
			N59f1a.Sidebar.ToggleMute.Image = K083ad90.Images.Unmute
		end
	end
	N59f1a.Sidebar.ToggleMute.MouseButton1Down:connect(P8872771d)
end
do
	local Yb37e2b7 = game.Lighting.ColorCorrection
	local Pef5b69ae2 = N59f1a:WaitForChild("Team")
	local hcadafba7799 = workspace:WaitForChild("Cameras")
	local R58de9e1, w4196d1
	local k29dd35199 = Oa323e54()
	local function O44866421d96()
		kc9675bdcc0.CameraType = Enum.CameraType.Custom
		Pef5b69ae2.Visible = false
		N59f1a.MenuText.Visible = false
		if w4196d1 then
			w4196d1:disconnect()
		end
	end
	local Ef84b5f494f = 0
	local function L7906eb103d()
		if R58de9e1 == "Neutral" then
			Ef84b5f494f = Ef84b5f494f % 3 + 1
			local E07c0efa = hcadafba7799["City" .. Ef84b5f494f .. "_Start"]
			local iea7aaf9a = hcadafba7799["City" .. Ef84b5f494f .. "_Stop"]
			k29dd35199.StartPosition = E07c0efa.Position
			k29dd35199.TargetPosition = iea7aaf9a.Position
			k29dd35199.LookVector = E07c0efa.CFrame.lookVector
			k29dd35199.TargetLookVector = nil
		elseif R58de9e1 == "Prisoner" then
			local Re6eda96878 = "Yard"
			if ie1e4cbb7 == "Cells" then
				Re6eda96878 = "Cells"
			elseif ie1e4cbb7 == "Breakfast" or ie1e4cbb7 == "Dinner" then
				Re6eda96878 = "Foodcourt"
			end
			local Y8bf64374808 = hcadafba7799["Prisoner_" .. Re6eda96878]
			k29dd35199.StartPosition = nil
			k29dd35199.Position = (Y8bf64374808.CFrame * Sbd7e7a858(0, 0, -10) + A54ecff0(0, -5, 0)).p
			k29dd35199.TargetPosition = Y8bf64374808.Position
			k29dd35199.LookVector = (Y8bf64374808.CFrame * W8b718e(-math.pi * 0.1, 0, 0)).lookVector
			k29dd35199.TargetLookVector = Y8bf64374808.CFrame.lookVector
		elseif R58de9e1 == "Police" then
			local y0cde78 = hcadafba7799.PoliceBase2
			k29dd35199.StartPosition = nil
			k29dd35199.Position = (y0cde78.CFrame * Sbd7e7a858(0, 0, -10) + A54ecff0(0, -5, 0)).p
			k29dd35199.TargetPosition = y0cde78.Position
			k29dd35199.LookVector = (y0cde78.CFrame * W8b718e(-math.pi * 0.1, 0, 0)).lookVector
			k29dd35199.TargetLookVector = y0cde78.CFrame.lookVector
		end
	end
	local function f2d73f4()
		kc9675bdcc0.CameraType = Enum.CameraType.Scriptable
		if w4196d1 then
			w4196d1:disconnect()
		end
		local Vced7994e2 = 0
		local gb09c3804 = 24
		local function eb751bab33(Vb89e50808)
			Vced7994e2 = Vced7994e2 + Vb89e50808
			if R58de9e1 == "Neutral" then
				if Vced7994e2 >= gb09c3804 then
					L7906eb103d()
					Vced7994e2 = 0
				end
				local xb2cfe09d4a = Vced7994e2 / gb09c3804
				if xb2cfe09d4a <= 0.1 then
					local Ecdbdd = xb2cfe09d4a / 0.1
					Yb37e2b7.TintColor = Color3.new(Ecdbdd, Ecdbdd, Ecdbdd)
				elseif xb2cfe09d4a >= 0.9 then
					local i1eab90ac7 = 1 - (xb2cfe09d4a - 0.9) / 0.1
					Yb37e2b7.TintColor = Color3.new(i1eab90ac7, i1eab90ac7, i1eab90ac7)
				end
				bc09a7d67(k29dd35199, Vb89e50808, xb2cfe09d4a, 0.1)
			else
				bc09a7d67(k29dd35199, Vb89e50808, 1, 2)
			end
		end
		w4196d1 = t4c33a3b55f.Heartbeat:connect(eb751bab33)
		Pef5b69ae2.Visible = true
		N59f1a.MenuText.Visible = true
		vc5c5e1033e2(Pef5b69ae2.Police)
	end
	local function c51fe977a2da()
		Pef5b69ae2.Confirm.Visible = true
		vc5c5e1033e2(Pef5b69ae2.Confirm)
		if R58de9e1 == K083ad90.Team.Police then
			return
		end
		R58de9e1 = K083ad90.Team.Police
		Yb37e2b7.TintColor = Color3.new(1, 1, 1)
		L7906eb103d()
	end
	local function C2a9fd()
		Pef5b69ae2.Confirm.Visible = true
		vc5c5e1033e2(Pef5b69ae2.Confirm)
		if R58de9e1 == K083ad90.Team.Prisoner then
			return
		end
		R58de9e1 = K083ad90.Team.Prisoner
		Yb37e2b7.TintColor = Color3.new(1, 1, 1)
		L7906eb103d()
	end
	local function y2d353cce5()
		I24c9cc17:FireServer("xhvf3hyr", R58de9e1)
	end
	Pef5b69ae2.Police.MouseButton1Down:connect(c51fe977a2da)
	Pef5b69ae2.Prisoner.MouseButton1Down:connect(C2a9fd)
	Pef5b69ae2.Confirm.MouseButton1Down:connect(y2d353cce5)
	function Ma06a756880f.xhvf3hyr()
		R58de9e1 = "Neutral"
		Pef5b69ae2.Confirm.Visible = false
		N59f1a.Inventory.Visible = false
		L7906eb103d()
		f2d73f4()
	end
	local La306782148 = 0
	function Ma06a756880f.r65r62zw()
		local Y382b6 = La306782148 + 1
		local s86cce8 = Pef5b69ae2.Full
		s86cce8.Visible = true
		delay(1, function()
			if La306782148 > Y382b6 then
				return
			end
			s86cce8.Visible = false
		end)
	end
	function Ma06a756880f.mlguqorh()
		Yb37e2b7.TintColor = Color3.new(1, 1, 1)
		O44866421d96()
		N59f1a.Inventory.Visible = true
	end
	local Sc77344 = 0
	local function i740f36325e()
		l74279f62a25()
		icef74e0841a()
		Ma06a756880f.xockj2y0(true)
		I24c9cc17:FireServer("aj0wyp5y")
		Ma06a756880f.xhvf3hyr()
	end
	local R88b6e4a9, M22509a98
	local function r1409457c753()
		local S52875ea6a2 = tick()
		if S52875ea6a2 - Sc77344 < K083ad90.Time.BetweenTeamChange then
			N59f1a.Confirm.Later.Visible = true
			N59f1a.Confirm.Later.Text = ("You're doing that too much. Try again in %s seconds."):format(s2bbea1a3(math.ceil(K083ad90.Time.BetweenTeamChange - S52875ea6a2 + Sc77344)))
			delay(1, function()
				N59f1a.Confirm.Later.Visible = false
			end)
			return
		end
		Sc77344 = tick()
		if R88b6e4a9 then
			R88b6e4a9:Disconnect()
		end
		if M22509a98 then
			M22509a98:Disconnect()
		end
		N59f1a.Confirm.Visible = false
		i740f36325e()
	end
	local function mee99c454()
		if R88b6e4a9 then
			R88b6e4a9:Disconnect()
		end
		if M22509a98 then
			M22509a98:Disconnect()
		end
		N59f1a.Confirm.Visible = false
	end
	local function Va20ee3()
		N59f1a.Confirm.Title.Text = "Switch Teams?"
		N59f1a.Confirm.Visible = true
		R88b6e4a9 = N59f1a.Confirm.Yes.MouseButton1Down:connect(r1409457c753)
		M22509a98 = N59f1a.Confirm.No.MouseButton1Down:connect(mee99c454)
	end
	local s24fb5a7 = Y7c1fa5.MakeWindow()
	s24fb5a7.OpenFun = Va20ee3
	s24fb5a7.CloseFun = mee99c454
	Y7c1fa5.WindowGroupAdd(Tbfc2a6, s24fb5a7)
	N59f1a.Sidebar.SwitchTeams.MouseButton1Down:connect(function()
		if Pef5b69ae2.Visible then
			return
		end
		Y7c1fa5.WindowToggle(s24fb5a7)
	end)
end
do
	local v05a9f7176c = {}
	if not Oa55db57f2c or Oa55db57f2c and K083ad90.Test.Ambient then
		for Nd54de7d6, a8cfcd5f in next, K083ad90.AmbientIds, nil do
			local caa8e30 = Instance.new("Sound")
			caa8e30.SoundId = "rbxassetid://" .. a8cfcd5f
			caa8e30.Name = Nd54de7d6
			caa8e30.Looped = true
			caa8e30.SoundGroup = f924b8d.Ambient
			caa8e30.Parent = f924b8d.Ambient
			v05a9f7176c[Nd54de7d6] = caa8e30
		end
	end
	local function g9bd94a81a0d(l42de2437b)
		for Y54b764d3b, Pb8d86d2fe18 in next, v05a9f7176c, nil do
			local F635c71cb25 = l42de2437b[Y54b764d3b] or 0
			if not Pb8d86d2fe18.IsPlaying and F635c71cb25 > 0.01 then
				Pb8d86d2fe18:Play()
			elseif Pb8d86d2fe18.IsPlaying and F635c71cb25 <= 0.01 then
				Pb8d86d2fe18:Stop()
			end
			Pb8d86d2fe18.Volume = F635c71cb25
		end
	end
	g9bd94a81a0d(i3b149(K083ad90.Ambient.Day, K083ad90.Ambient.Day, 1))
	local function r21c25b92(j10889, pf465e)
		local udbee0922
		do
			local Z4168a = pd1f157bb417:FindFirstChild("Main")
			if Z4168a then
				udbee0922 = Z4168a.Frame.Vig
			end
		end
		local C920e4c, r8dbb029aa = 0, nil
		local function p917d5ef3e(e33c4ce8514, Gf7094baa202)
			C920e4c = C920e4c + Gf7094baa202 * 1 / 4
			if C920e4c >= 1 then
				C920e4c = 1
				r8dbb029aa:disconnect()
			end
			local D56a0e = i3b149(j10889, pf465e, C920e4c)
			g9bd94a81a0d(D56a0e)
			if udbee0922 then
				udbee0922.ImageColor3 = D56a0e.Vig
			end
			N59f1a.Minimap.ImageLabel.ImageColor3 = D56a0e.Minimap
		end
		r8dbb029aa = t4c33a3b55f.Stepped:connect(p917d5ef3e)
	end
	local Y96b98d8 = aa384925c.Resource.Rain
	local hf660024c71f
	local function o1bf330()
		local o1409201 = Vector3.new()
		Y96b98d8.Parent = workspace
		hf660024c71f = t4c33a3b55f.Stepped:connect(function()
			local F62bbc6e1b = false
			if Nc2e78.Character then
				local H11801f6c = Nc2e78.Character:FindFirstChild("HumanoidRootPart")
				if H11801f6c then
					o1409201 = H11801f6c.Position + H11801f6c.Velocity
				end
				local Vf7173288545 = Nc2e78.Character:FindFirstChild("Humanoid")
				if Vf7173288545 then
					F62bbc6e1b = Vf7173288545.Sit
				end
			end
			local U95eabda8451 = Y96b98d8.RainFall:FindFirstChild("Rain")
			local n0e5c2bb = Y96b98d8.RainDroplets:FindFirstChild("Rain")
			Y96b98d8.RainFall.CFrame = CFrame.new(o1409201) + Vector3.new(0, 80, 0)
			local v3bb97e1ead, V3f6952a77 = workspace:FindPartOnRayWithIgnoreList(Ray.new(o1409201, Vector3.new(0, -1, 0) * 10), {
				workspace.Vehicles,
				Nc2e78.Character
			})
			Y96b98d8.RainDroplets.CFrame = CFrame.new(V3f6952a77) + A54ecff0(0, -0.5, 0)
			local fc4e59262fb, I3fbcd703f73 = workspace:FindPartOnRayWithIgnoreList(Ray.new(o1409201, Vector3.new(0, 1, 0) * 200), {
				workspace.Vehicles,
				Nc2e78.Character,
				Y96b98d8,
				workspace:FindFirstChild("Clouds")
			})
			if U95eabda8451 then
				U95eabda8451.Enabled = not fc4e59262fb
			end
			f924b8d.Ambient.CompressorSoundEffect.Enabled = not not fc4e59262fb
			if n0e5c2bb then
				n0e5c2bb.Enabled = not not v3bb97e1ead and not fc4e59262fb and not F62bbc6e1b
			end
		end)
	end
	local function j5ce64d9f47()
		Y96b98d8.Parent = aa384925c.Resource
		if hf660024c71f then
			hf660024c71f:Disconnect()
		end
		hf660024c71f = nil
	end
	local Y07d88b72a31 = "Day"
	function Ma06a756880f.pzavur4o(D8b622c34935)
		if D8b622c34935 == Y07d88b72a31 then
			return
		end
		if D8b622c34935 == "Day" then
			r21c25b92(K083ad90.Ambient[Y07d88b72a31], K083ad90.Ambient.Day)
		elseif D8b622c34935 == "Night" then
			r21c25b92(K083ad90.Ambient[Y07d88b72a31], K083ad90.Ambient.Night)
		elseif D8b622c34935 == "Storm" then
			o1bf330()
			r21c25b92(K083ad90.Ambient[Y07d88b72a31], K083ad90.Ambient.Storm)
		end
		if D8b622c34935 ~= "Storm" then
			j5ce64d9f47()
		end
		Y07d88b72a31 = D8b622c34935
	end
end
do
	local q2df344178ba = m0e1ccdc.DevProduct
	local Sc31690df = 260
	if Vc386281d7f0 then
		Sc31690df = 125
	end
	local T62345f4e59b = Sc31690df * 4.03846154
	q2df344178ba.Size = UDim2.new(0, T62345f4e59b, 0, Sc31690df)
	q2df344178ba.Position = UDim2.new(0.5, -T62345f4e59b * 0.5, 0.5, -Sc31690df * 0.5)
	function Pe4821c7d18()
		q2df344178ba.Visible = true
		vc5c5e1033e2(q2df344178ba.Body.Buy:GetChildren()[1])
	end
	Ma06a756880f.zglnfd38 = Pe4821c7d18
	function D006fca()
		q2df344178ba.Visible = false
	end
	local I4385459d6b = Y7c1fa5.MakeWindow()
	I4385459d6b.OpenFun = Pe4821c7d18
	I4385459d6b.CloseFun = D006fca
	Y7c1fa5.WindowGroupAdd(Tbfc2a6, I4385459d6b)
	N59f1a.Sidebar.ToggleDevProducts.MouseButton1Down:connect(function()
		Y7c1fa5.WindowToggle(I4385459d6b)
	end)
	q2df344178ba.Close.MouseButton1Down:connect(function()
		Y7c1fa5.WindowClose(I4385459d6b)
	end)
	local function F576a7e()
		m0e1ccdc.Nitro.Visible = true
		vc5c5e1033e2(m0e1ccdc.Nitro.Body.Purchase.Tier1.Buy)
	end
	local function bb974fee8()
		m0e1ccdc.Nitro.Visible = false
	end
	local Iaa72c810f = Y7c1fa5.MakeWindow()
	Iaa72c810f.OpenFun = F576a7e
	Iaa72c810f.CloseFun = bb974fee8
	Y7c1fa5.WindowGroupAdd(Tbfc2a6, Iaa72c810f)
	m0e1ccdc.Nitro.Close.MouseButton1Down:connect(function()
		Y7c1fa5.WindowClose(Iaa72c810f)
	end)
	ad69d2d35a3.AtGasStation = false
	function Ma06a756880f.u26pr5ye(B539009879f9, c068ee)
		if B539009879f9 then
			if not c068ee then
				ad69d2d35a3.AtGasStation = true
			end
			Y7c1fa5.WindowOpen(Iaa72c810f)
		else
			ad69d2d35a3.AtGasStation = false
			Y7c1fa5.WindowClose(Iaa72c810f)
		end
	end
	N59f1a.Nitro.Purchase.MouseButton1Down:Connect(function()
		Ma06a756880f.u26pr5ye(true, true)
	end)
	local function ic4dbde376()
		if not K083ad90.FetchedMarketplace then
			return false
		end
		for K88a0a, w1482a515 in next, q2df344178ba.Body.Buy:GetChildren() do
			do
				local web609d2d = w1482a515.Name:match("Tier(%d+)")
				local Me0cc8d6f = tonumber(web609d2d)
				local E1d75c4e35a6 = K083ad90.DevProduct[Me0cc8d6f]
				if E1d75c4e35a6 then
					w1482a515.Price.Text = m5724e(E1d75c4e35a6.Cash)
					local i5a2761 = E1d75c4e35a6.Robux
					w1482a515.Robux.Text = ("%s R$"):format(s2bbea1a3(i5a2761))
					w1482a515.MouseButton1Down:connect(function()
						w2c080:PromptProductPurchase(Nc2e78, E1d75c4e35a6.Id)
					end)
				end
			end
		end
		for F747b9ae, b80969ea2a5e in next, K083ad90.DevProduct, nil do
			if b80969ea2a5e.Type == "Nitro" then
				local T2f4c33 = b80969ea2a5e.Name
				local zfd6789a6 = m0e1ccdc.Nitro.Body.Purchase:FindFirstChild(T2f4c33)
				if zfd6789a6 then
					zfd6789a6.Buy.TextLabel.Text = ("+%d Fuel"):format(b80969ea2a5e.Fuel)
					zfd6789a6.Buy.MouseButton1Down:connect(function()
						if ad69d2d35a3.Nitro >= K083ad90.Scalar.NitroMax - 25 then
							Ma06a756880f.j1mrr9vx({
								Title = "Rocket Fuel",
								Text = "You have a lot of fuel, go use it!"
							})
						else
							local ve760ee176ce = true
							if not ad69d2d35a3.AtGasStation then
								local T99d55345 = w2c080:UserOwnsGamePassAsync(Nc2e78.UserId, K083ad90.Gamepass.MobileGarage.PassId)
								if not T99d55345 then
									ve760ee176ce = false
									pcbe77(K083ad90.Gamepass.MobileGarage)
								end
							end
							if ve760ee176ce then
								w2c080:PromptProductPurchase(Nc2e78, b80969ea2a5e.Id)
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
			local Wf1b54528de2 = ic4dbde376()
			if Wf1b54528de2 then
				break
			end
			wait(1)
		end
	end)
end
local if71db85c7dc
if71db85c7dc = {}
do
	local P776191548f, N4e7f19e7 = table.insert, table.remove
	local z04288ac505 = {}
	local function Va6485a79(Fce424e)
		local k19759977c = u50fd37
		local z8b4a6452a64 = Fce424e:GetChildren()
		for sf969b3c, v948d1e4cf81 in next, z8b4a6452a64, nil do
			if not v948d1e4cf81.PrimaryPart then
				v948d1e4cf81.PrimaryPart = v948d1e4cf81:GetChildren()[1]
			end
			k19759977c = k19759977c + v948d1e4cf81.PrimaryPart.Position
		end
		k19759977c = k19759977c / #z8b4a6452a64
		return k19759977c
	end
	function if71db85c7dc.LODSplitEach(K6e2377a)
		local Z207e341a = {}
		for Fc5273965680, Q11389207 in next, K6e2377a:GetChildren() do
			local v5d90370e5f = Instance.new("Model")
			Q11389207.Parent = v5d90370e5f
			table.insert(Z207e341a, v5d90370e5f)
		end
		for efaeca4c, Pa5820a06e in next, Z207e341a, nil do
			Pa5820a06e.Parent = K6e2377a
		end
	end
	function if71db85c7dc.LODSplitModel(N3c2ea9b, u3d116457e)
		local f2d88ee11 = Ybf8a081(u3d116457e ^ 0.5)
		local h4d84f84 = N3c2ea9b:GetExtentsSize()
		local y248455a = Va6485a79(N3c2ea9b)
		local U4001540502f = Ybf8a081(h4d84f84.X / f2d88ee11 + 0.5)
		local u2000b6d344 = Ybf8a081(h4d84f84.Z / f2d88ee11 + 0.5)
		local pcca17cc8d = {}
		for t343a6d7a32, qe16b0f6f in next, N3c2ea9b:GetChildren() do
			local D2fc3b03 = qe16b0f6f.PrimaryPart.Position
			local Pf73e596d880 = Ybf8a081((D2fc3b03.X - y248455a.X) / U4001540502f) * U4001540502f
			local w4e81d581 = Ybf8a081((D2fc3b03.Z - y248455a.Z) / u2000b6d344) * u2000b6d344
			local jb778fd94ab = ("%d/%d"):format(Pf73e596d880, w4e81d581)
			local ua7caddaac46 = pcca17cc8d[jb778fd94ab]
			if not ua7caddaac46 then
				ua7caddaac46 = Instance.new("Model")
				ua7caddaac46.Parent = workspace
				ua7caddaac46.Name = jb778fd94ab
				pcca17cc8d[jb778fd94ab] = ua7caddaac46
			end
			qe16b0f6f.Parent = ua7caddaac46
		end
		for Cda3d5181ed, L23c9f226075 in next, pcca17cc8d, nil do
			L23c9f226075.Parent = N3c2ea9b
		end
		return math.max(0.25 * (U4001540502f + u2000b6d344) * 1.4142135623730951, 100)
	end
	function if71db85c7dc.LODAddModel(i73ba283ca22, Mf92d5)
		local R9afda0c4 = i73ba283ca22.Parent
		assert(R9afda0c4)
		local Wb41fd71 = {
			Model = i73ba283ca22,
			Parent = R9afda0c4,
			Center = Va6485a79(i73ba283ca22),
			MinDist = Mf92d5,
			Loaded = true,
			Locked = false
		}
		table.insert(z04288ac505, Wb41fd71)
		return Wb41fd71
	end
	function if71db85c7dc.LODAddModels(ebd40106, e6e3be9)
		local t8ad375fe96 = {}
		for e59ac6c9422, Gb785740b in next, ebd40106:GetChildren() do
			local gec554cc86e = if71db85c7dc.LODAddModel(Gb785740b, e6e3be9)
			table.insert(t8ad375fe96, gec554cc86e)
		end
		return t8ad375fe96
	end
	function if71db85c7dc.LODLockModel(fce91e446c7)
		for z35bf9bd2b = 1, #z04288ac505 do
			local pbaea0c3 = z04288ac505[z35bf9bd2b]
			if pbaea0c3.Model == fce91e446c7 then
				if71db85c7dc.LODForceLoad(pbaea0c3)
				pbaea0c3.Locked = true
				return pbaea0c3
			end
		end
		return false
	end
	function if71db85c7dc.LODForceLoad(g4789ccf)
		g4789ccf.Model.Parent = g4789ccf.Parent
		g4789ccf.Loaded = true
		g4789ccf.Locked = true
	end
	local nc56c6e346 = {}
	local c7b60fcce275 = {}
	function if71db85c7dc.LODUpdateInterest(W315397a91)
		nc56c6e346 = {}
		c7b60fcce275 = {}
		for Q92afecfd, T2fd9dbdd4 in next, z04288ac505, nil do
			local P39a837c3d1c = (T2fd9dbdd4.Center - W315397a91).magnitude
			T2fd9dbdd4.Sort = P39a837c3d1c
			local Y112042 = P39a837c3d1c < T2fd9dbdd4.MinDist
			if T2fd9dbdd4.Locked then
				Y112042 = true
			end
			local g585d128 = T2fd9dbdd4.Loaded
			if Y112042 and not g585d128 then
				local Hbfa7a4 = D31148ae40c.BinaryFind(nc56c6e346, P39a837c3d1c)
				P776191548f(nc56c6e346, Hbfa7a4, T2fd9dbdd4)
			elseif not Y112042 and g585d128 then
				local eb4aafbda2e9 = D31148ae40c.BinaryFind(c7b60fcce275, P39a837c3d1c)
				P776191548f(c7b60fcce275, eb4aafbda2e9, T2fd9dbdd4)
			end
		end
	end
	local function Y7af63f249()
		if #nc56c6e346 > 0 then
			local hfee232a = N4e7f19e7(nc56c6e346, 1)
			hfee232a.Model.Parent = hfee232a.Parent
			hfee232a.Loaded = true
		end
		if #c7b60fcce275 > 0 then
			local kf94379fa1 = N4e7f19e7(c7b60fcce275)
			kf94379fa1.Model.Parent = nil
			kf94379fa1.Loaded = false
		end
	end
	function if71db85c7dc.LODStart(Na91287ca01)
		e8acc30e(Na91287ca01, Y7af63f249, "LOD Queue")
	end
end
do
	local kf7820d648db = workspace:FindFirstChild("Trees")
	if kf7820d648db then
	end
	local d8542d18 = workspace:FindFirstChild("Streetlights")
	if d8542d18 and not Oa55db57f2c then
		local k543f44cddc = if71db85c7dc.LODSplitModel(d8542d18, 100)
		if71db85c7dc.LODAddModels(d8542d18, k543f44cddc * 3)
	end
	local s3429f72 = workspace:FindFirstChild("Bush")
	if s3429f72 then
		local e08bfdeb89 = if71db85c7dc.LODSplitModel(s3429f72, 100)
		if71db85c7dc.LODAddModels(s3429f72, e08bfdeb89 * 2.5)
	end
	local nbe6ced4be8e = workspace:FindFirstChild("Cells")
	if nbe6ced4be8e then
		if71db85c7dc.LODSplitEach(nbe6ced4be8e)
		G992071342 = if71db85c7dc.LODAddModels(nbe6ced4be8e, 200)
	end
	local o55e96 = workspace:FindFirstChild("Roads")
	if o55e96 then
		local jb7a927 = if71db85c7dc.LODSplitModel(o55e96, 150)
		if71db85c7dc.LODAddModels(o55e96, 1000)
	end
	local Oa9907b = workspace:FindFirstChild("Railroad")
	if Oa9907b then
		local Q9d675cb9 = if71db85c7dc.LODSplitModel(Oa9907b, 150)
		if71db85c7dc.LODAddModels(Oa9907b, 800)
	end
	if71db85c7dc.LODStart(0.06666666666666667)
	local function g30baf()
		if kc9675bdcc0.CameraType == Enum.CameraType.Scriptable then
			local S87681e1f = kc9675bdcc0.CFrame.p
			if71db85c7dc.LODUpdateInterest(S87681e1f)
			return
		end
		local Pa8b06ec5ba7 = Nc2e78.Character
		if not Pa8b06ec5ba7 then
			local Yb712465 = kc9675bdcc0.CFrame.p
			if71db85c7dc.LODUpdateInterest(Yb712465)
			return
		end
		local K21de9dffc = Pa8b06ec5ba7:FindFirstChild("HumanoidRootPart")
		if not K21de9dffc then
			return
		end
		local L5fd3e = Pa8b06ec5ba7:FindFirstChild("Humanoid")
		if not L5fd3e then
			return
		end
		if L5fd3e.Health <= 0 then
			return
		end
		local qc2d998 = K21de9dffc.Position
		if71db85c7dc.LODUpdateInterest(qc2d998)
	end
	e8acc30e(1, g30baf, "LOD Interest Update")
	function Ma06a756880f.beu4onvw(s4abc0580f24)
		if71db85c7dc.LODUpdateInterest(s4abc0580f24)
	end
end
local Wa9345a4, ib55214d
do
	local ne20f764bc5f = {}
	local pe8086575a = {}
	local z0568a06b06 = {}
	local U22894
	local function tcd7b55a87e(q696d00838, na76e9e)
		if not q9bfce6b5a then
			return
		end
		local if69c8 = v3a33770d25d()
		if if69c8 and not z0568a06b06[if69c8] then
			local yceb98210f9c = {
				Closed = if69c8.Drawer.CFrame
			}
			yceb98210f9c.Open = yceb98210f9c.Closed * Sbd7e7a858(0, 0, -1.5)
			z0568a06b06[if69c8] = yceb98210f9c
		end
		if if69c8 and not pe8086575a[if69c8] then
			ne20f764bc5f[if69c8] = {
				t = 0,
				Start = if69c8.Drawer.CFrame,
				Target = z0568a06b06[if69c8].Open * W8b718e(0, (math.random() * 2 - 1) * 0.1, 0)
			}
			pe8086575a[if69c8] = true
		end
		if U22894 and if69c8 ~= U22894 and pe8086575a[U22894] then
			ne20f764bc5f[U22894] = {
				t = 0,
				Start = U22894.Drawer.CFrame,
				Target = z0568a06b06[U22894].Closed
			}
			pe8086575a[U22894] = false
		end
		U22894 = if69c8
		if if69c8 then
			J4b2c8a8(r0bf3e, "Stash")
		else
			Nb7279e4b7e7(r0bf3e, "Stash")
		end
		for O3216271, Y1396e830 in next, ne20f764bc5f, nil do
			local Y9957c552bfa = Y1396e830.t
			if Y9957c552bfa < 1 then
				Y9957c552bfa = Y9957c552bfa + na76e9e * 1 / 0.4
				Y1396e830.t = Y9957c552bfa
				if Y9957c552bfa >= 1 then
					Y9957c552bfa = 1
				end
				if pe8086575a[O3216271] then
					local i98b792 = Kddb936680b(Y9957c552bfa, 0, 1, 1)
					O3216271:SetPrimaryPartCFrame(Y1396e830.Start:lerp(Y1396e830.Target, i98b792))
				else
					local j548a00faeda = Kddb936680b(Y9957c552bfa, 0, 1, 1)
					O3216271:SetPrimaryPartCFrame(Y1396e830.Start:lerp(Y1396e830.Target, j548a00faeda))
				end
			end
		end
	end
	t4c33a3b55f.Stepped:connect(tcd7b55a87e)
	function Wa9345a4(f3dddc, z1e451)
		l74279f62a25()
		for Me452a4426, m1c2d80a5bc in next, Xcd5d94231.ItemStacks, nil do
			if m1c2d80a5bc.i == f3dddc.i then
				table.remove(Xcd5d94231.ItemStacks, Me452a4426)
				break
			end
		end
		I24c9cc17:FireServer("bjwcz5bn", f3dddc, z1e451)
	end
	function ib55214d(Gb1c781f)
		local pd3259f4a4 = Gb1c781f.Name:match("Drawer(%d)")
		local Dbedfc377c = z6e8a5d8c4[Nc2e78.Name]
		local F3825fc2ba1 = Q75acc1b7f7.Model == Gb1c781f.Parent.Parent
		if F3825fc2ba1 then
			local v870197c = 0
			for Lc6fa8bb658, w815a5d79 in next, Q75acc1b7f7.Stash.ItemStacks, nil do
				v870197c = v870197c + 1
			end
			local function sfd620()
				local qba0a15a819d = w2c080:UserOwnsGamePassAsync(Nc2e78.UserId, K083ad90.Gamepass.Stash.PassId)
				if not qba0a15a819d then
					pcbe77(K083ad90.Gamepass.Stash)
				end
				return qba0a15a819d
			end
			local rc5a24 = Q75acc1b7f7.Stash.ItemStacks[pd3259f4a4]
			if Dbedfc377c then
				local K044021391 = true
				if not rc5a24 and v870197c > 0 then
					K044021391 = sfd620()
				end
				if not K044021391 then
					return
				end
				Wa9345a4(Dbedfc377c, Gb1c781f)
			elseif rc5a24 then
				I24c9cc17:FireServer("j2iqe01o", Gb1c781f)
			end
		else
			local function mea4087(m15d24ee7)
				if not m15d24ee7 then
					return
				end
				if Dbedfc377c then
					Wa9345a4(Dbedfc377c, Gb1c781f)
				else
					I24c9cc17:FireServer("wphzogq3", Gb1c781f)
				end
				T7c95cda7044()
			end
			mea4087(true)
		end
	end
end
do
	local dd71003 = N59f1a.Banner
	local Mc84726572cd = function(d6793733bebd)
		return {
			Font = Enum.Font.SourceSansBold,
			TextSize = 16,
			Text = d6793733bebd,
			TextColor3 = Color3.new(1, 1, 1),
			TextStrokeTransparency = 0.95
		}
	end
	function Ma06a756880f.fia635js()
		H1d9e9f398e9.HasEscaped = true
		dd71003.Title.Text = "You escaped!"
		dd71003.Desc.Text = "You are now a criminal. Run, hide, rob banks, check out the city, find other criminals. Don't get caught!"
		dd71003.Visible = true
		wait(6)
		dd71003.Visible = false
	end
end
function Ma06a756880f.aioakydw()
	if Ua4530cfaef then
		local h110f56a08 = 0
		Ua4530cfaef.TireHealth = h110f56a08
	end
end
do
	local B333feeb89b6 = N59f1a.CollectMoney
	function Ma06a756880f.w0g1z4ar(b2044429f7, Vb0698)
		local x94245e9 = b2044429f7.Type
		local z90ab40 = b2044429f7.Money
		local Xa664a7da = b2044429f7.Message
		B333feeb89b6.Visible = true
		B333feeb89b6.Message.Text = Xa664a7da
		B333feeb89b6.Money.Text = m5724e(z90ab40)
		B333feeb89b6.Maximum.Text = ("/ %s"):format(m5724e(b2044429f7.Maximum))
		B333feeb89b6.DuffelBag.Text = ("Upgrade Bag to Hold %s"):format(m5724e(b2044429f7.UpgradeMaximum))
		B333feeb89b6.DuffelBag.Visible = math.abs(b2044429f7.UpgradeMaximum - b2044429f7.Maximum) > 1
		if x94245e9 == "Bank" or x94245e9 == "Train" then
			B333feeb89b6.Progress.Frame:TweenSize(UDim2.new(b2044429f7.Money / b2044429f7.Maximum, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
		elseif x94245e9 == "Jewelry" then
			B333feeb89b6.Progress.Frame.Size = UDim2.new(1, 0, 1, 0)
		end
		if Vb0698 then
			B333feeb89b6.Time.Visible = true
			B333feeb89b6.Time.Text = ("%ds"):format(math.max(Vb0698, 0))
		else
			B333feeb89b6.Time.Visible = false
		end
	end
	function Ma06a756880f.rjycpa4s()
		B333feeb89b6.Visible = false
		B333feeb89b6.Progress.Frame.Size = UDim2.new(0, 0, 1, 0)
	end
	local function uaa73c24d9d()
		pcbe77(K083ad90.Gamepass.DuffelBag)
	end
	B333feeb89b6.DuffelBag.MouseButton1Down:connect(uaa73c24d9d)
end
do
	local function E4da80ca9a70(vfba3945f2ea, y8adf837)
		local L212e1d7, u0ad3183a6 = y8adf837[1], y8adf837[2]
		q12db8("Button", {Source = L212e1d7, Volume = 0.2})
		I24c9cc17:FireServer("fv8ioglp", u0ad3183a6)
	end
end
function Ma06a756880f.cvnvi0i1(ye7236)
	Q75acc1b7f7 = ye7236
	if71db85c7dc.LODLockModel(Q75acc1b7f7.Model.Parent)
end
function Ma06a756880f.xmszdxfo(r0fe50f47ac3)
	pcbe77(r0fe50f47ac3)
end
function Ma06a756880f.qt0rdxbm(h65a1fbd)
	local Ucbd90 = h65a1fbd == "Criminal"
	local dea74793623 = N59f1a.Sidebar.Bounty
	dea74793623.Visible = Ucbd90
end
function Ma06a756880f.nepd60pu(X3231bd)
	local u3657162e447 = N59f1a.Sidebar.Bounty
	u3657162e447.Text = m5724e(X3231bd)
end
do
	local Va6dfa9 = 1
	local function Z0f41b24()
		local I4d94ec98ee1
		if J7f47f5172c6.Value == K083ad90.Team.Prisoner then
			I4d94ec98ee1 = "Prisoner"
		elseif J7f47f5172c6.Value == K083ad90.Team.Police then
			I4d94ec98ee1 = "Police"
		end
		if not I4d94ec98ee1 then
			return
		end
		local ta1fdf9576d = N59f1a.Inventory.Help
		local c74178e6 = K083ad90.Help[I4d94ec98ee1]
		if not c74178e6 then
			return
		end
		Va6dfa9 = Va6dfa9 % #c74178e6 + 1
		local N10c5889ad = c74178e6[Va6dfa9]
		ta1fdf9576d.Text = N10c5889ad
		ta1fdf9576d.Visible = true
	end
	e8acc30e(K083ad90.Time.HelpMessageCycle, Z0f41b24, "Cycle Help Message")
end
function Ma06a756880f.v54bv1sn(f83be179286b, ...)
	if f83be179286b == "ems" then
		delay(0.5, function()
			I24c9cc17:FireServer("v54bv1sn", f83be179286b)
		end)
	else
		I24c9cc17:FireServer("v54bv1sn", f83be179286b)
	end
	assert(Ma06a756880f[f83be179286b], f83be179286b)(...)
end
I24c9cc17.OnClientEvent:connect(function(Ma7a189b, ...)
	assert(Ma06a756880f[Ma7a189b], Ma7a189b)(...)
end)
local K53540f49
do
	local function s568f5(e5421eb8230)
		local o641434 = Nc2e78.Character
		if not o641434 then
			return
		end
		local l35602 = o641434:FindFirstChild("HumanoidRootPart")
		if not l35602 then
			return
		end
		local b3f92b683e = {}
		local r0c39759 = e5421eb8230.Model
		for Qf557e0a8df, kba868f in next, r0c39759:GetChildren() do
			if kba868f.Name == "Seat" or kba868f.Name == "Passenger" then
				local N6ef59 = kba868f:FindFirstChild("Player")
				local q3739863df = kba868f:FindFirstChild("PlayerName")
				if N6ef59 and N6ef59.Value and q3739863df then
					local ec4f562f8709 = q3739863df.Value
					local mf2d29a5c = {Part = kba868f, PlayerName = ec4f562f8709}
					table.insert(b3f92b683e, mf2d29a5c)
				end
			end
		end
		table.sort(b3f92b683e, function(Dc8735, U5e3a94170)
			return Dc8735.PlayerName < U5e3a94170.PlayerName
		end)
		return b3f92b683e
	end
	local function g623bd2()
		local Icbd1854b26a = N59f1a.Eject
		if Ua4530cfaef and not Ua4530cfaef.Passenger then
			Icbd1854b26a.Visible = true
			local o062a9deb17f = {}
			local ea2fb4aef = s568f5(Ua4530cfaef)
			if ea2fb4aef then
				local v43591 = 0
				for S4af7efd539, Sefd5ca213d2 in next, ea2fb4aef, nil do
					do
						local s0c2d243 = Sefd5ca213d2.PlayerName
						if s0c2d243 ~= Nc2e78.Name then
							v43591 = v43591 + 1
							o062a9deb17f[s0c2d243] = true
							local Y368f92 = Icbd1854b26a.Inner:FindFirstChild(s0c2d243)
							if not Y368f92 then
								Y368f92 = Icbd1854b26a.Preset:Clone()
								Y368f92.Name = s0c2d243
								Y368f92.TextLabel.Text = s0c2d243
								Y368f92.Parent = Icbd1854b26a.Inner
								Y368f92.MouseButton1Down:connect(function()
									I24c9cc17:FireServer("d1rf5bo8", s0c2d243)
								end)
							end
							Y368f92.Visible = true
							Y368f92.Position = UDim2.new(0, 0, 1 - v43591)
						end
					end
				end
			end
			for T80011b, dbe2a7e in next, Icbd1854b26a.Inner:GetChildren() do
				if not o062a9deb17f[dbe2a7e.Name] then
					dbe2a7e:Destroy()
				end
			end
		else
			Icbd1854b26a.Visible = false
		end
		local H1bb1f57 = Nc2e78.Character
		if not H1bb1f57 then
			return
		end
		local P3561a36e5b7 = H1bb1f57:FindFirstChild("HumanoidRootPart")
		if not P3561a36e5b7 then
			return
		end
		for T248cca4, P78ec8744 in next, workspace.Vehicles:GetChildren() do
			local T1b9036720b4 = P78ec8744:FindFirstChild("Seat")
			local l57ea91f = P78ec8744:FindFirstChild("BoundingBox")
			local na6f6d94e = P78ec8744:FindFirstChild("Make")
			if l57ea91f and T1b9036720b4 then
				local P0333d68 = T1b9036720b4:FindFirstChild("Player")
				local Obe834 = (P3561a36e5b7.Position - l57ea91f.Position).magnitude
				local g8908ade254 = l57ea91f:FindFirstChild("MoneyBillboard")
				if g8908ade254 and na6f6d94e and P0333d68 then
					g8908ade254.Enabled = Obe834 < 50 and not P0333d68.Value and not ad69d2d35a3.VehiclesOwned[na6f6d94e.Value]
				end
			end
		end
	end
	e8acc30e(0.1, g623bd2)
	function K53540f49(M8669d)
		if Ua4530cfaef then
			return
		end
		I24c9cc17:FireServer("ytja658w", M8669d.Parent, M8669d)
	end
	function Ma06a756880f.ukczrrss()
		wait()
		x4aec5.CircleAction.NotAllowed()
	end
end
local Ha0d004f = D30e7130
local i4fcc08551, c9e122b
t4c33a3b55f.Stepped:connect(function(ff5bec623, H50a9858c)
	if Nc2e78.Character then
		for q6e4d89d9, Jb3f5a5a22bf in next, x4aec5.CircleAction.Specs, nil do
			if Jb3f5a5a22bf.IsVehicle then
				local o2f837aab = not Ua4530cfaef
				local Ufea971d6e83 = Jb3f5a5a22bf.Part
				if Ufea971d6e83 and Ufea971d6e83.Parent then
					local I43e4d, p8a754b8e1
					if J7f47f5172c6.Value == K083ad90.Team.Prisoner then
						local N7b373acf = Ufea971d6e83.Parent:FindFirstChild("TeamRestrict")
						if N7b373acf and Ufea971d6e83.Name == "Seat" and N7b373acf.Value ~= J7f47f5172c6.Value then
							I43e4d = true
						end
					elseif J7f47f5172c6.Value == K083ad90.Team.Police then
						local v7440a4 = z6e8a5d8c4[Nc2e78.Name]
						if v7440a4 and v7440a4.Name == "Handcuffs" then
							p8a754b8e1 = true
						end
					end
					Jb3f5a5a22bf.ShouldHotwire = I43e4d
					Jb3f5a5a22bf.ShouldEject = p8a754b8e1
					local se718b7 = 10
					if I43e4d then
						Jb3f5a5a22bf.Name = "Hijack"
						Jb3f5a5a22bf.Timed = true
						Jb3f5a5a22bf.Duration = 8
					elseif p8a754b8e1 then
						Jb3f5a5a22bf.Name = "Eject"
						Jb3f5a5a22bf.Timed = false
						Jb3f5a5a22bf.Duration = 1
						se718b7 = 12
					else
						Jb3f5a5a22bf.Timed = false
						local P010db9 = Ufea971d6e83:FindFirstChild("Player")
						if P010db9 and P010db9.Value then
							o2f837aab = false
						end
						Jb3f5a5a22bf.Name = Ufea971d6e83.Name == "Seat" and "Enter Driver" or "Enter Passenger"
					end
					Jb3f5a5a22bf.Dist = se718b7
				end
				Jb3f5a5a22bf.Enabled = o2f837aab
			elseif Jb3f5a5a22bf.IsPlayer then
				local web7eb3, Hc5a328e1e6, Wf20c13f
				local Bb036d9f5ad0 = z6e8a5d8c4[Nc2e78.Name]
				if Bb036d9f5ad0 and Bb036d9f5ad0.Name == "Handcuffs" then
					if J7f47f5172c6.Value == K083ad90.Team.Police then
						local ee16d87a45c2 = s4e429b5:FindFirstChild(Jb3f5a5a22bf.PlayerName)
						if ee16d87a45c2 and ee16d87a45c2.TeamValue.Value == K083ad90.Team.Prisoner and ee16d87a45c2.Character and not ee16d87a45c2.Character:FindFirstChild("Handcuffs") and not ee16d87a45c2.Character.Humanoid.Sit then
							web7eb3 = true
						end
					end
				elseif J7f47f5172c6.Value == K083ad90.Team.Prisoner then
					local lc0b47dd = s4e429b5:FindFirstChild(Jb3f5a5a22bf.PlayerName)
					if lc0b47dd then
						if lc0b47dd.TeamValue.Value == K083ad90.Team.Police then
							if lc0b47dd.Character and Nc2e78.Character then
								local f47a487fac8 = Nc2e78.Character:FindFirstChild("HumanoidRootPart")
								local X28f9e327d5 = lc0b47dd.Character:FindFirstChild("HumanoidRootPart")
								if f47a487fac8 and X28f9e327d5 then
									local S57a827e = f47a487fac8.CFrame
									local Df97f0d75afe = X28f9e327d5.CFrame
									local O6d8d607 = S57a827e.lookVector:Dot(Df97f0d75afe.lookVector) >= 0.3333333333333333
									local Tfd72a = 0.3333333333333333 <= Df97f0d75afe.lookVector:Dot((Df97f0d75afe.p - S57a827e.p).unit)
									if O6d8d607 and Tfd72a then
										Hc5a328e1e6 = true
									end
								end
							end
						elseif lc0b47dd.TeamValue.Value == K083ad90.Team.Prisoner and H1d9e9f398e9.HasEscaped and lc0b47dd.Character and Nc2e78.Character then
							local Zda04d77e8 = lc0b47dd.Character:FindFirstChild("Handcuffs")
							local z72637c = Nc2e78.Character:FindFirstChild("Handcuffs")
							if Zda04d77e8 and not z72637c then
								Wf20c13f = true
							end
						end
					end
				end
				Jb3f5a5a22bf.ShouldArrest = web7eb3
				Jb3f5a5a22bf.ShouldPickpocket = Hc5a328e1e6
				Jb3f5a5a22bf.ShouldBreakout = Wf20c13f
				local p42c80d6544 = 10
				if web7eb3 then
					Jb3f5a5a22bf.Duration = 0.5
					if Vc386281d7f0 then
						Jb3f5a5a22bf.Timed = false
					else
						Jb3f5a5a22bf.Timed = true
					end
					Jb3f5a5a22bf.Name = "Arrest"
					p42c80d6544 = 12
				elseif Hc5a328e1e6 then
					Jb3f5a5a22bf.Duration = 3
					Jb3f5a5a22bf.Timed = true
					Jb3f5a5a22bf.Name = "Pickpocket"
				elseif Wf20c13f then
					Jb3f5a5a22bf.Duration = 2
					Jb3f5a5a22bf.Timed = true
					Jb3f5a5a22bf.Name = "Breakout"
				end
				Jb3f5a5a22bf.Dist = p42c80d6544
				Jb3f5a5a22bf.Enabled = web7eb3 or Hc5a328e1e6 or Wf20c13f
			elseif Jb3f5a5a22bf.IsRob then
				Jb3f5a5a22bf.Enabled = J7f47f5172c6.Value == K083ad90.Team.Prisoner
			elseif Jb3f5a5a22bf.IsTrainVault then
				local H9e1185f = Jb3f5a5a22bf.Part
				local Id2f121268a = false
				if H9e1185f then
					local p50c3a4a979 = H9e1185f:FindFirstChild("Open")
					if p50c3a4a979 then
						Id2f121268a = p50c3a4a979.Value
					end
				end
				Jb3f5a5a22bf.Enabled = J7f47f5172c6.Value == K083ad90.Team.Prisoner and not Id2f121268a
			elseif Jb3f5a5a22bf.IsTrainDoor then
				local a62388b7047d = Jb3f5a5a22bf.Part
				local rc0517 = false
				if a62388b7047d then
					local q5b77446b9 = a62388b7047d:FindFirstChild("Open")
					if q5b77446b9 then
						rc0517 = q5b77446b9.Value
					end
				end
				Jb3f5a5a22bf.Enabled = J7f47f5172c6.Value == K083ad90.Team.Prisoner and not rc0517
			end
		end
	end
	ba9af77cbd.profilebegin("Vehicle LQ Update")
	if M45e261086 and Nc2e78.Character then
		local rf753392 = Nc2e78.Character:FindFirstChild("HumanoidRootPart")
		if rf753392 then
			local O8b661 = rf753392.Position
			for o3867b55ae, a617b0128d in next, M45e261086, nil do
				if o3867b55ae ~= Nc2e78.Name then
					local S74530eff51 = a617b0128d.Model
					if S74530eff51 then
						local B90e9db658e9 = S74530eff51:FindFirstChild("BoundingBox")
						if B90e9db658e9 and (O8b661 - B90e9db658e9.Position).magnitude < 600 then
							if a617b0128d.Type == "Chassis" then
								F557c494b8(a617b0128d, H50a9858c)
							elseif a617b0128d.Type == "Heli" then
								p82857d707e7(a617b0128d, H50a9858c)
							elseif a617b0128d.Type == "Motorcycle" or a617b0128d.Type == "DuneBuggy" then
								Q8660dcd75a(a617b0128d, H50a9858c)
							end
						end
					end
				end
			end
		end
	end
	ba9af77cbd.profileend()
	cd9edbaf.ParachuteUpdate(H50a9858c)
	Xf60f60ae()
	local Ga3d063a5 = 0
	local Wa11446f = Nc2e78.Character
	if Wa11446f then
		local y0350e0a9 = Wa11446f:FindFirstChild("HumanoidRootPart")
		if y0350e0a9 then
			ba9af77cbd.profilebegin("Fall Damage")
			Ga3d063a5 = math.abs(y0350e0a9.Velocity.Y)
			local P6741c = y0350e0a9.Position.Y
			if Ua4530cfaef or cd9edbaf.IsParachuting then
				i4fcc08551 = nil
			end
			if Ga3d063a5 > 90 and Ga3d063a5 < 200 then
				if not i4fcc08551 or P6741c > i4fcc08551 then
					i4fcc08551 = P6741c
				end
			elseif i4fcc08551 and Ga3d063a5 < 20 and z968ef8f(c9e122b - P6741c) < 20 * H50a9858c then
				local Z14038 = i4fcc08551 - P6741c
				if Z14038 > 20 then
					i15b9b1()
					I24c9cc17:FireServer("rorrkcpb", Z14038)
					i4fcc08551 = nil
				end
			end
			c9e122b = P6741c
			ba9af77cbd.profileend()
		end
	end
	if Ga3d063a5 > 110 and Ga3d063a5 < 200 then
		i15b9b1()
	end
	U40d625d1e13()
	ba9af77cbd.profilebegin("Mouse Icons")
	if D30e7130 - Ha0d004f > 0.2 then
		Ha0d004f = D30e7130
		local bc76b3a62a = G3f4402()
		if bc76b3a62a then
			if not Ua4530cfaef then
				local y5631f9435a = bc76b3a62a:FindFirstChild("TeamRestrict")
				if J7f47f5172c6.Value == K083ad90.Team.Prisoner and y5631f9435a and y5631f9435a.Value ~= J7f47f5172c6.Value then
					J4b2c8a8(r0bf3e, "Hotwire")
				else
					Nb7279e4b7e7(r0bf3e, "Hotwire")
				end
			end
		else
			Nb7279e4b7e7(r0bf3e, "Hotwire")
		end
	end
	ba9af77cbd.profileend()
	ba9af77cbd.profilebegin("Time/UI")
	local Tc00a6c = workspace:FindFirstChild("Time")
	if Tc00a6c then
		Tc00a6c = Tc00a6c.Value
		local S0ee8e = Tc00a6c >= 12
		local qf5d31bae = Tc00a6c % 1
		local Lced1330 = Tc00a6c - qf5d31bae
		qf5d31bae = Ybf8a081(qf5d31bae * 60 + 0.5)
		qf5d31bae = Ybf8a081(qf5d31bae / 15) * 15
		if qf5d31bae >= 60 then
			qf5d31bae = qf5d31bae - 60
			Lced1330 = Lced1330 + 1
		end
		if Lced1330 > 12 then
			Lced1330 = Lced1330 - 12
		end
		if Lced1330 == 0 then
			Lced1330 = 12
		end
		N59f1a.Schedule.Text = ("%d:%02d %s   Schedule: %s"):format(Lced1330, qf5d31bae, S0ee8e and "PM" or "AM", ie1e4cbb7)
	end
	local R5973bc5be3 = (g9acb056b7(D30e7130) + 1) * 0.5
	local b1a8587f76e = Color3.fromHSV(R5973bc5be3, 0.8, 0.8)
	m0e1ccdc.Safe.Money.TextStrokeColor3 = b1a8587f76e
	m0e1ccdc.DevProduct.Money.TextStrokeColor3 = b1a8587f76e
	local A9c4fbefa357 = (g9acb056b7(4 * D30e7130) + 1) * 0.5
	local E09647e20 = Color3.fromHSV(0, A9c4fbefa357, 0.7 + R5973bc5be3 * 0.3)
	m0e1ccdc.Safe.Sidebar.Buy.Inner.Stats.Legendary.TextStrokeColor3 = E09647e20
	m0e1ccdc.Safe.Sidebar.Buy.Inner.Stats.Legendary.Percent.TextStrokeColor3 = E09647e20
	local a08b2c4087 = Color3.fromRGB(207 + g9acb056b7(8 * D30e7130) * 20, g9acb056b7(7 * D30e7130 + 4) * 20 + 20, 235 + g9acb056b7(6 * D30e7130 + 8) * 20)
	m0e1ccdc.Nitro.Body.Bar.Value.BackgroundColor3 = a08b2c4087
	N59f1a.Nitro.Value.BackgroundColor3 = a08b2c4087
	ba9af77cbd.profileend()
end)
function Ma06a756880f.lqbir120(Cc4722fd222)
	local oe8803e
	if Cc4722fd222.NotEnoughMoney then
		oe8803e = "You don't have that much money."
	elseif Cc4722fd222.TooLittleQuantity then
		oe8803e = ("Drop more than %s."):format(m5724e(Cc4722fd222.TooLittleQuantity))
	elseif Cc4722fd222.TooMuchQuantity then
		oe8803e = ("Drop less than %s."):format(m5724e(Cc4722fd222.TooMuchQuantity))
	elseif Cc4722fd222.Debounce then
		oe8803e = ("Wait %d seconds."):format(Cc4722fd222.Debounce)
	elseif Cc4722fd222.Daily then
		oe8803e = ("Can only donate %s per day."):format(m5724e(Cc4722fd222.Quantity))
	end
	if oe8803e then
		Ma06a756880f.j1mrr9vx({Title = "Donation", Text = oe8803e})
	end
end
m0e1ccdc.DevProduct.Drop.Input.Box.Changed:connect(function(T83c004)
	if T83c004 == "Text" then
		local A89df07d1 = m0e1ccdc.DevProduct.Drop.Input.Box.Text
		m0e1ccdc.DevProduct.Drop.Input.Box.Text = A89df07d1:gsub("[^%d]+", "")
	end
end)
m0e1ccdc.DevProduct.Drop.Button.Submit.MouseButton1Down:connect(function()
	local T5f04d = m0e1ccdc.DevProduct.Drop.Input.Box.Text
	T5f04d = tonumber(T5f04d)
	if not T5f04d then
		return
	end
	I24c9cc17:FireServer("bw8u2pf5", T5f04d)
end)
local S784dbe75e6 = {}
local function h9c42176b9(za9e33, G4714c9d2)
	local Gd0d47, K5d4943d
	if G4714c9d2 then
		Gd0d47 = G4714c9d2.Center
		K5d4943d = G4714c9d2.Touch
	end
	if Gd0d47 then
		local n63fc955c6 = kc9675bdcc0.ViewportSize
		q9bfce6b5a = A54ecff0(n63fc955c6.X * 0.5, n63fc955c6.Y * 0.3, 0)
	else
		q9bfce6b5a = A54ecff0(m0e44a52.X, m0e44a52.Y, 0)
	end
	T7c95cda7044()
	local t60e531 = v3a33770d25d()
	local pf220f = R3e15b57()
	local h7a93651f56d = G3f4402()
	local S8cbe037 = z6e8a5d8c4[Nc2e78.Name]
	if t60e531 then
		ib55214d(t60e531)
	elseif S8cbe037 then
		q9bfce6b5a = za9e33.Position
		Ded244f(S8cbe037)
	elseif pf220f then
		S784dbe75e6.OnPlayer = pf220f
		local D90e684f2d38 = pf220f.TeamValue.Value
		if J7f47f5172c6.Value == K083ad90.Team.Police and D90e684f2d38 == K083ad90.Team.Prisoner then
			V7c6032a(pf220f)
		end
	end
end
local function U8e9bf8c(C3232d)
	if Ua4530cfaef then
		if Ua4530cfaef.Type == "Chassis" then
			v50f125ed3.InputChanged(C3232d, p0d0ce)
		elseif Ua4530cfaef.Type == "Heli" then
			q51b0b.InputChanged(C3232d, p0d0ce)
		end
	end
	if C3232d.UserInputType == Enum.UserInputType.MouseMovement then
		q9bfce6b5a = C3232d.Position
		T7c95cda7044(C3232d)
	end
end
local function Wd813626d(tcbed2861d, g52eb310)
	if g52eb310 and (tcbed2861d.UserInputType ~= Enum.UserInputType.Gamepad1 or tcbed2861d.KeyCode ~= Enum.KeyCode.ButtonA) then
		return
	end
	S784dbe75e6.t = tick()
	f791dac(tcbed2861d)
	if Ua4530cfaef then
		if Ua4530cfaef.Type == "Chassis" then
			v50f125ed3.InputBegan(tcbed2861d)
		elseif Ua4530cfaef.Type == "Heli" then
			q51b0b.InputBegan(tcbed2861d)
		end
	end
	if tcbed2861d.UserInputType == Enum.UserInputType.Keyboard then
		local u10b353c3 = tcbed2861d.KeyCode
		local T3d779 = u10b353c3.Value
		if T3d779 >= 49 and T3d779 <= 57 then
			local r454c39 = T3d779 - 49 + 1
			aee540a3(r454c39)
			T7c95cda7044()
		elseif u10b353c3 == Enum.KeyCode.R then
			local Ub14db42b = z6e8a5d8c4[Nc2e78.Name]
			if Ub14db42b then
				Wa924e(Ub14db42b)
			end
		elseif u10b353c3 == Enum.KeyCode.Space then
			if Ua4530cfaef then
				icef74e0841a()
			end
			if cd9edbaf.IsParachuting then
				cd9edbaf.ParachuteStop()
			end
			if q51b0b.Roped then
				q51b0b.AttemptRopeDetach()
			end
		else
			if u10b353c3 == Enum.KeyCode.E and Ua4530cfaef and Ua4530cfaef.Type ~= "Heli" then
				icef74e0841a()
			else
			end
		end
	elseif tcbed2861d.UserInputType == Enum.UserInputType.Gamepad1 then
		local x82f9840511 = tcbed2861d.KeyCode
		if x82f9840511 == Enum.KeyCode.ButtonA then
			if not pb35d25a965.SelectedObject then
				icef74e0841a()
			end
		elseif x82f9840511 == Enum.KeyCode.ButtonY then
		elseif x82f9840511 == Enum.KeyCode.ButtonX then
			local L3392958e0d = z6e8a5d8c4[Nc2e78.Name]
			if L3392958e0d then
				Wa924e(L3392958e0d)
			end
		elseif x82f9840511 == Enum.KeyCode.ButtonL1 then
			Cdbea9028b = Cdbea9028b - 1
			if Cdbea9028b < 0 then
				Cdbea9028b = 0
				l74279f62a25()
			elseif Cdbea9028b > #Xcd5d94231.ItemStacks then
				Cdbea9028b = #Xcd5d94231.ItemStacks + 1
				l74279f62a25()
			else
				aee540a3(Cdbea9028b)
			end
		elseif x82f9840511 == Enum.KeyCode.ButtonR1 then
			Cdbea9028b = Cdbea9028b + 1
			if Cdbea9028b < 0 then
				Cdbea9028b = 0
				l74279f62a25()
			elseif Cdbea9028b > #Xcd5d94231.ItemStacks then
				Cdbea9028b = #Xcd5d94231.ItemStacks + 1
				l74279f62a25()
			else
				aee540a3(Cdbea9028b)
			end
		elseif x82f9840511 == Enum.KeyCode.ButtonR2 then
			local H3a26432d = z6e8a5d8c4[Nc2e78.Name]
			if H3a26432d then
				local k9b3c32437 = kc9675bdcc0.ViewportSize
				Ded244f(H3a26432d, true)
			end
			h9c42176b9(tcbed2861d, {Center = true})
		end
	elseif tcbed2861d.UserInputType == Enum.UserInputType.MouseButton1 then
		h9c42176b9(tcbed2861d)
	end
end
local function z510afc8c7(b69b07ac1b, Jee142b4a0)
	if Jee142b4a0 then
		return
	end
	if Ua4530cfaef then
		if Ua4530cfaef.Type == "Chassis" then
			v50f125ed3.InputEnded(b69b07ac1b)
		elseif Ua4530cfaef.Type == "Heli" then
			q51b0b.InputEnded(b69b07ac1b)
		end
	end
	if b69b07ac1b.UserInputType == Enum.UserInputType.Keyboard then
	elseif b69b07ac1b.UserInputType == Enum.UserInputType.MouseButton1 then
		zff2e0()
	elseif b69b07ac1b.UserInputType == Enum.UserInputType.Gamepad1 then
		local P9404b85a = b69b07ac1b.KeyCode
		if P9404b85a == Enum.KeyCode.ButtonR2 then
			zff2e0()
		end
	end
end
ce18781.InputBegan:connect(Wd813626d)
ce18781.InputEnded:connect(z510afc8c7)
ce18781.InputChanged:connect(U8e9bf8c)
local function D115961a4(h18259a)
	local ze3d3d1 = Enum.UserInputType.Gamepad1 or Enum.UserInputType.Gamepad2
	local nf51eab6dd = Enum.UserInputType.Keyboard
	if h18259a ~= ze3d3d1 and h18259a ~= nf51eab6dd then
		return
	end
	p0d0ce = h18259a
	local C2db9db9
	if p0d0ce == Enum.UserInputType.Gamepad1 then
		C2db9db9 = "Gamepad"
	elseif p0d0ce == Enum.UserInputType.Keyboard then
		C2db9db9 = "Desktop"
	end
	if Pfbfe35.Style ~= C2db9db9 then
		Pfbfe35.Style = C2db9db9
		Jbc53413f.UpdateUI(Pfbfe35)
	end
end
ce18781.LastInputTypeChanged:connect(D115961a4)
local function f8da04614(M6142b53)
	q9bfce6b5a = M6142b53.Position
	local lee3c8e0152 = z6e8a5d8c4[Nc2e78.Name]
	if lee3c8e0152 then
		Ded244f(lee3c8e0152)
	end
	h9c42176b9(M6142b53, {Touch = true})
end
local function oeb65de2cbc4()
	zff2e0()
end
do
	local L6d970004 = x4aec5.CircleAction
	local function D0293a(N7cd44, P4fbc75)
		if P4fbc75 then
			if N7cd44.ShouldHotwire then
				local Wf4ef06d = N7cd44.Part
				eb2b7a(Wf4ef06d.Parent)
			elseif N7cd44.ShouldEject then
				local Ce9602 = N7cd44.Part
				g92b97(Ce9602.Parent)
			else
				K53540f49(N7cd44.Part)
			end
			return true
		elseif N7cd44.ShouldHotwire then
			Ma06a756880f.j1mrr9vx({
				Title = "Vehicle",
				Text = "You can't drive this. Hold to hijack it."
			})
		end
	end
	local function ua68b00efbaf(Xf1d862a20)
		local Cd3beaee = {
			Part = Xf1d862a20,
			ValidRoot = Xf1d862a20.Parent,
			Name = "Enter",
			Timed = false,
			Duration = 1,
			Dist = 10,
			Callback = D0293a
		}
		Cd3beaee.IsVehicle = true
		L6d970004.Add(Cd3beaee, Xf1d862a20)
	end
	local function O2d582(B811fe8f169)
		L6d970004.Remove(B811fe8f169)
	end
	for Mb7f606d6, U8b9dbbf in next, v778e0a8fb:GetTagged("VehicleSeat") do
		ua68b00efbaf(U8b9dbbf)
	end
	v778e0a8fb:GetInstanceAddedSignal("VehicleSeat"):Connect(ua68b00efbaf)
	v778e0a8fb:GetInstanceRemovedSignal("VehicleSeat"):Connect(O2d582)
end
do
	local ya05d5795 = x4aec5.CircleAction
	local function pf5a941ca54(v51639c)
		local Lbc88e2f9bfc = z6e8a5d8c4[Nc2e78.Name]
		if not Lbc88e2f9bfc then
			return
		end
		if Lbc88e2f9bfc.Name ~= "Handcuffs" then
			return
		end
		if tick() - Lbc88e2f9bfc.LastFire < 0.1 then
			return
		end
		if Lbc88e2f9bfc.Reloading then
			return
		end
		Lbc88e2f9bfc.LastFire = tick()
		if J7f47f5172c6.Value ~= K083ad90.Team.Police then
			return
		end
		local F5da2d67 = s4e429b5:FindFirstChild(v51639c.PlayerName)
		if not F5da2d67 then
			return
		end
		local p3c3919595a8 = F5da2d67.TeamValue.Value
		if Ua4530cfaef then
			return
		end
		if p3c3919595a8 ~= K083ad90.Team.Prisoner then
			return
		end
		local W884d065d = Nc2e78.Character
		if not W884d065d then
			return
		end
		local g7113c2 = W884d065d:FindFirstChild("Humanoid")
		if not g7113c2 then
			return
		end
		if g7113c2.Health <= 0 then
			return
		end
		G200c3b22(F5da2d67)
		local Xb9231 = Lbc88e2f9bfc.MagSize - 1
		Lbc88e2f9bfc.MagSize = Xb9231
		hd12ee57ee9a(Lbc88e2f9bfc)
		if Xb9231 <= 0 then
			Wa924e(Lbc88e2f9bfc, 2)
		end
		return true
	end
	local function t8b2281771(Qafe6f5f7)
		local Sb6f44636 = s4e429b5:FindFirstChild(Qafe6f5f7.PlayerName)
		if not Sb6f44636 then
			return
		end
		q2183226f(Sb6f44636)
		return true
	end
	local function Q62800d4(V5b90e263)
		local K02caccd80e = s4e429b5:FindFirstChild(V5b90e263.PlayerName)
		if not K02caccd80e then
			return
		end
		Odf552a7(K02caccd80e)
		return true
	end
	local function S709ba15(we31c8, A2dd63e2dc)
		if A2dd63e2dc then
			if we31c8.ShouldArrest then
				return pf5a941ca54(we31c8)
			elseif we31c8.ShouldPickpocket then
				return t8b2281771(we31c8)
			elseif we31c8.ShouldBreakout then
				return Q62800d4(we31c8)
			end
			return false
		end
		return true
	end
	local function N5eaf381(D1c8e9)
		if D1c8e9 ~= Nc2e78.Character then
			local Na68b652ba4 = {
				Part = D1c8e9:WaitForChild("UpperTorso", 3),
				ValidRoot = D1c8e9,
				Name = "Player",
				Timed = true,
				Duration = 0.5,
				Dist = 15,
				Priority = 2,
				Callback = S709ba15
			}
			Na68b652ba4.PlayerName = D1c8e9.Name
			Na68b652ba4.IsPlayer = true
			ya05d5795.Add(Na68b652ba4, D1c8e9)
		end
	end
	local function M32702(M2b944)
		if M2b944 ~= Nc2e78.Character then
			ya05d5795.Remove(M2b944)
		end
	end
	for Of5e11b58f, m2c8e020d228 in next, v778e0a8fb:GetTagged("Player") do
		N5eaf381(m2c8e020d228)
	end
	v778e0a8fb:GetInstanceAddedSignal("Player"):Connect(N5eaf381)
	v778e0a8fb:GetInstanceRemovedSignal("Player"):Connect(M32702)
end
do
	local Ya5394c = x4aec5.CircleAction
	local function Cc0ddacfa2c(raab25, jd7d9b9ed)
		local s6538a8fc050 = raab25.Part.Parent
		if jd7d9b9ed then
			I24c9cc17:FireServer("iw1izuqo", s6538a8fc050)
			return true
		end
	end
	local function k2181ee600(Le9003c2089)
		local ae8dceeac = Le9003c2089:WaitForChild("Amount", 2)
		local A57e48bb = Le9003c2089:WaitForChild("PlayerName", 2)
		local ie6c71b = {
			Part = Le9003c2089.PrimaryPart,
			ValidRoot = Le9003c2089,
			Name = ("Collect %s from %s"):format(m5724e(ae8dceeac.Value), A57e48bb.Value),
			Timed = true,
			Duration = 1,
			Dist = 10,
			Callback = Cc0ddacfa2c
		}
		Ya5394c.Add(ie6c71b, Le9003c2089)
	end
	local function y36c25a(L07ca8553bfc)
		Ya5394c.Remove(L07ca8553bfc)
	end
	for fabc1c, u7166e94bd in next, v778e0a8fb:GetTagged("CashDrop") do
		k2181ee600(u7166e94bd)
	end
	v778e0a8fb:GetInstanceAddedSignal("CashDrop"):Connect(k2181ee600)
	v778e0a8fb:GetInstanceRemovedSignal("CashDrop"):Connect(y36c25a)
end
do
	local ab2f3f018996 = x4aec5.CircleAction
	local function j74c37aad(T6718f0c4, I5ccd6d0080)
		if I5ccd6d0080 then
			I24c9cc17:FireServer("efafqcvi", T6718f0c4.Part)
		else
			I24c9cc17:FireServer("hlr3mdyr", T6718f0c4.Part)
		end
		return true
	end
	local function Dc33d509(wdbe22cdc3)
		local P000b2dc = {
			Part = wdbe22cdc3,
			Name = "Rob",
			Timed = true,
			Duration = 10,
			Dist = 8,
			Callback = j74c37aad
		}
		P000b2dc.IsRob = true
		ab2f3f018996.Add(P000b2dc, wdbe22cdc3)
	end
	local function nebb17(v0be21b9e)
		ab2f3f018996.Remove(v0be21b9e)
	end
	for Pb56f2e1cc, z8617dba6f in next, v778e0a8fb:GetTagged("SmallStore") do
		Dc33d509(z8617dba6f)
	end
	v778e0a8fb:GetInstanceAddedSignal("SmallStore"):Connect(Dc33d509)
	v778e0a8fb:GetInstanceRemovedSignal("SmallStore"):Connect(nebb17)
end
do
	local z82dfb9de = x4aec5.CircleAction
	local function j1902edec8(V2d1f337f27b)
		local function J97fee0(Ce5076b5b5, Cac9ef75)
			if Cac9ef75 then
				I24c9cc17:FireServer("dnsyc3g5", "LiftGate")
			end
			return true
		end
		local yf4d83b65b9 = {
			Part = V2d1f337f27b,
			Name = "Lift Gate",
			Timed = true,
			Duration = 2,
			Dist = 8,
			Callback = J97fee0
		}
		z82dfb9de.Add(yf4d83b65b9, V2d1f337f27b)
	end
	local function Kd3927(P1a79d)
		local function G73b54c20804(k23478bc74, Ed2ead29cc)
			if Ed2ead29cc then
				I24c9cc17:FireServer("dnsyc3g5", "ExplodeWall")
			end
			return true
		end
		local G5c27f2 = {
			Part = P1a79d,
			Name = "Explode Wall",
			Timed = true,
			Duration = 8,
			Dist = 8,
			Callback = G73b54c20804
		}
		z82dfb9de.Add(G5c27f2, P1a79d)
	end
	local function r89e21df39d(Kf306f1)
		local function W7eef49a0(ke2f9d88328, Fe80e313567f)
			if Fe80e313567f then
				I24c9cc17:FireServer("dnsyc3g5", "BankDoor")
			end
			return true
		end
		local h72867bdb00 = {
			Part = Kf306f1,
			Name = "Place Dynamite",
			Timed = true,
			Duration = 5,
			Dist = 8,
			Callback = W7eef49a0
		}
		z82dfb9de.Add(h72867bdb00, Kf306f1)
	end
	local function p13875cd7(k385e7c7)
		if k385e7c7.Name == "LiftGate" then
			j1902edec8(k385e7c7)
		elseif k385e7c7.Name == "ExplodeWall" then
			Kd3927(k385e7c7)
		elseif k385e7c7.Name == "BankDoor" then
			r89e21df39d(k385e7c7)
		else
			assert(false, k385e7c7.Name)
		end
	end
	for b08286fc381b, Td914cd8787 in next, v778e0a8fb:GetTagged("EscapeRoute") do
		p13875cd7(Td914cd8787)
	end
	v778e0a8fb:GetInstanceAddedSignal("EscapeRoute"):Connect(p13875cd7)
	v778e0a8fb:GetInstanceRemovedSignal("EscapeRoute"):Connect(z82dfb9de.Remove)
end
if Vc386281d7f0 then
	ce18781.TouchStarted:connect(f8da04614)
	ce18781.TouchEnded:connect(oeb65de2cbc4)
	ce18781.JumpRequest:connect(icef74e0841a)
end
do
	local jd84ba85cfbd = Instance.new("BindableEvent")
	jd84ba85cfbd.Event:connect(function()
		I24c9cc17:FireServer("xos25y2u")
	end)
	wait(1)
	local Od411105f6cd, fb4203b9 = pcall(function()
		Pc83d6d:SetCore("ResetButtonCallback", jd84ba85cfbd)
	end)
	if not Od411105f6cd then
		print("MANUAL RESET ERROR")
		print(fb4203b9)
	end
end
do
	local H84abaa = Instance.new("Part")
	H84abaa.Anchored = true
	H84abaa.Transparency = 1
	H84abaa.CanCollide = false
	H84abaa.Size = A54ecff0(1, 1, 1)
	H84abaa.Archivable = false
	H84abaa.Parent = workspace
	local Zd3d0090bf = function()
		while true do
		end
	end
	H84abaa:GetPropertyChangedSignal("Archivable"):connect(Zd3d0090bf)
end
do
	local M69b33 = false
	local Cda2972278e, j3dbf92bc0f
	local n77152ca854 = 0
	local he202383da = 0
	local O984a4238a = 0
	local Ga6866c498 = false
	local function C410c3298(c311c682c23)
		local Q60324a023 = c311c682c23:WaitForChild("Humanoid", 1)
		if not Q60324a023 then
			return
		end
		local c30fe5ac9c0f = c311c682c23:WaitForChild("HumanoidRootPart", 1)
		if not c30fe5ac9c0f then
			return
		end
		Ga6866c498 = false
		O984a4238a = D31148ae40c.TimeAccumAdd(O984a4238a, 2)
		if j3dbf92bc0f then
			j3dbf92bc0f:Disconnect()
			j3dbf92bc0f = nil
		end
		j3dbf92bc0f = Q60324a023.StateChanged:Connect(function(u68fa6c, scd49db8c09f)
			if scd49db8c09f == Enum.HumanoidStateType.StrafingNoPhysics then
				he202383da = D31148ae40c.TimeAccumAdd(he202383da, 1)
				local a8cb6a8 = D31148ae40c.TimeAccumDiff(he202383da)
				if a8cb6a8 > 10 then
					he202383da = 0
					if M69b33 then
						return
					end
					M69b33 = true
					Kd0ace("fp9tvphj", "NoClip StrafingNoPhysics", false)
				end
			end
		end)
	end
	if Nc2e78.Character then
		C410c3298(Nc2e78.Character)
	end
	Nc2e78.CharacterAdded:Connect(C410c3298)
	spawn(function()
		local Kf69ecd630 = Nc2e78:WaitForChild("Backpack", 10)
		Kf69ecd630.ChildAdded:Connect(function(Q2b8f1d)
			if Q2b8f1d:IsA("BackpackItem") then
				if M69b33 then
					return
				end
				M69b33 = true
				Kd0ace("fp9tvphj", "BackpackTool", false)
			end
		end)
	end)
	local W379d8a84539 = {
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
	local Mb1e7db0c1cf = {
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
	local J519da68 = {
		"T",
		"o",
		"r",
		"s",
		"o"
	}
	local be6e89e = {
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
	local E7f3421 = {
		"B",
		"o",
		"d",
		"y",
		"G",
		"y",
		"r",
		"o"
	}
	local i909c7168e76 = {
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
	local Gde5066cfc6 = Instance.new("Model").FindFirstChildWhichIsA
	local q7a8d5
	local b4133e3a3 = {}
	local function e602c4154d()
		if M69b33 then
			return
		end
		local Y95a3c152 = Nc2e78.Character
		if not Y95a3c152 then
			return
		end
		local f23f906e5e = Y95a3c152:FindFirstChild("Humanoid")
		if not f23f906e5e then
			return
		end
		if f23f906e5e.Health <= 0.001 then
			if not Ga6866c498 then
				O984a4238a = D31148ae40c.TimeAccumAdd(O984a4238a, 3)
			end
			Ga6866c498 = true
			return
		end
		local re143cb169, f1c37fff6 = false, nil
		do
			local ged1675cb2f6 = Y95a3c152:FindFirstChild(table.concat(J519da68), true)
			local a38bf1 = Y95a3c152:FindFirstChild(table.concat(W379d8a84539), true)
			local Le18c2fd5 = Y95a3c152:FindFirstChild(table.concat(Mb1e7db0c1cf), true)
			if not ged1675cb2f6 and not a38bf1 and not Le18c2fd5 and (Y95a3c152:FindFirstChild("Head") or Y95a3c152:FindFirstChild("HumanoidRootPart")) then
				re143cb169 = true
				f1c37fff6 = "NoClip " .. table.concat(J519da68) .. "Change"
			end
		end
		if Gde5066cfc6(Y95a3c152, table.concat(be6e89e), true) then
			re143cb169 = true
			f1c37fff6 = "BodyPosition"
		elseif Gde5066cfc6(Y95a3c152, table.concat(E7f3421), true) and not cd9edbaf.IsParachuting then
			re143cb169 = true
			f1c37fff6 = "BodyGyro"
		end
		if f23f906e5e.JumpPower > 60 then
			re143cb169 = true
			f1c37fff6 = "JumpPower"
		end
		do
			local qc9f5a = {
				{
					"MainNitro",
					pd1f157bb417:FindFirstChild("Nitro"),
					"Inf Nitro"
				},
				{
					"ProductNitro",
					m0e1ccdc:FindFirstChild("Nitro"),
					"Inf Nitro"
				}
			}
			for y4cbaa, Dd3c39358e in next, qc9f5a, nil do
				local fec03e33d4, i01142, Bf00a7dc82e = Dd3c39358e[1], Dd3c39358e[2], Dd3c39358e[3]
				if i01142 then
					b4133e3a3[fec03e33d4] = true
				elseif b4133e3a3[fec03e33d4] then
					re143cb169 = true
					f1c37fff6 = Bf00a7dc82e
				end
			end
		end
		do
			local i0716d69 = {
				"Workspace",
				"Players",
				"ReplicatedStorage"
			}
			for C2cd9b, N4ad874f1a64 in next, i0716d69, nil do
				local R0c88d75 = game:GetService(N4ad874f1a64)
				if R0c88d75.Name ~= N4ad874f1a64 then
					b4133e3a3[N4ad874f1a64] = true
				elseif b4133e3a3[N4ad874f1a64] then
					re143cb169 = true
					f1c37fff6 = "Renamed Service"
				end
			end
		end
		if re143cb169 then
			M69b33 = true
			Kd0ace("fp9tvphj", f1c37fff6, false)
		end
	end
	local function b25ffc()
		local u6f6a286e, aef8e9c0 = pcall(e602c4154d)
		if not u6f6a286e then
			local V20251319a4 = "FailedPcall"
			M69b33 = true
			Kd0ace("fp9tvphj", V20251319a4, false)
		end
	end
	e8acc30e(1, b25ffc)
end
