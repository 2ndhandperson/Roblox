local plr = game.Players.LocalPlayer
local chr = plr.Character
getgenv() function Alignhat(hat, part, a, b, c, d, e, f)
    local hat2 = chr.Reanimate[hat] -- The hat you choose
    hat2:BreakJoints()
    local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

    Weld.Part1 = hat2 -- (Hat)
    Weld.Part0 = part -- What your welding the hat to (has to be a BasePart)

    Weld.C0 = CFrame.new(a,b,c)*CFrame.Angles(math.rad(d),math.rad(e),math.rad(f)) -- Offset & Angles
    print("Aligned Hats")
end
getgenv() function makepart(hatname, newname)
    chr[hatname].Handle.Name = newname
    chr[hatname][newname].Parent = chr
    chr[hatname]:destroy()
end
getgenv() function Destroy_Mesh(hat)
    local hat1 = game.Players.LocalPlayer.Character.Reanimate[hat]:FindFirstChildOfClass("SpecialMesh") or game.Players.LocalPlayer.Character[hat]:FindFirstChildOfClass("SpecialMesh")
    hat1:Destroy()
end
getgenv() function Lerp_CFrame(part, cframe, duration)
	for i=0, 1, 0.01*duration do
		wait()
		part.CFrame = part.CFrame:Lerp(cframe, i)

	end
end
getgenv() function Make_Parts_Transparent(part)
    for _,v in pairs(part:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Transparency = 1
        end
    end
end
