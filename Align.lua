local plr = game.Players.LocalPlayer
local chr = plr.Character
getgenv() function Alignhat(hat, part, a, b, c, d, e, f)
    local hat2 = chr[hat].Handle -- The hat you choose
    hat2:BreakJoints()
    local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

    Weld.Part1 = hat2 -- (Hat)
    Weld.Part0 = part -- What your welding the hat to (has to be a BasePart)

    Weld.C0 = CFrame.new(a,b,c)*CFrame.Angles(math.rad(d),math.rad(e),math.rad(f)) -- Offset & Angles
    print("Ran with no errors")
end
getgenv() function Alignfling(fling, part1, g, h, i, j, k, l)
    local fling2 = chr[fling] -- The hat you choose
    fling2:BreakJoints()
    local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

    Weld.Part1 = fling2 -- (Hat)
    Weld.Part0 = part1 -- What your welding the hat to (has to be a BasePart)

    Weld.C0 = CFrame.new(a,b,c)*CFrame.Angles(math.rad(d),math.rad(e),math.rad(f)) -- Offset & Angles
    print("Ran with no errors")
end
getgenv() function clearmesh(hat)
    local hat1 = game.Players.LocalPlayer.Character.Reanimate[hat].Handle:FindFirstChildOfClass("SpecialMesh") or game.Players.LocalPlayer.Character[hat].Handle:FindFirstChildOfClass("SpecialMesh")
    hat1:Destroy()
end
getgenv() function makepartsinvis(part)
    for _,v in pairs(part:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Transparency = 1
        end
    end
end
