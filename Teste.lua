
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Cat558-uz/Testaaa/refs/heads/main/LibTeste.txt"))()

local Window = redzlib:MakeWindow({
    Title = "Havens Scripts | brookhaven",
    SubTitle = "| beta script  GHOST ",
    SaveFolder = "ConfigFolderArcs"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://119245873411783", BackgroundTransparency = 7 },
    Corner = { CornerRadius = UDim.new(0, 8) },
})

-- Aba Home
local Tab1 = Window:MakeTab({ "Home", "menu" })


local function detectExecutor()
    if identifyexecutor then
        return identifyexecutor()
    elseif syn then
        return "Synapse X"
    elseif KRNL_LOADED then
        return "KRNL"
    elseif is_sirhurt_closure then
        return "SirHurt"
    elseif pebc_execute then
        return "ProtoSmasher"
    elseif getexecutorname then
        return getexecutorname()
    else
        return "Executor Desconhecido"
    end
end

local executorName = detectExecutor()



local Paragraph = Tab1:AddParagraph({"Execultor", executorName})

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Pega nickname do jogador
local nickname = player.Name 

-- Novo bloco igual ao do Executor
Tab1:AddParagraph({"Nickname", nickname})
Tab1:AddParagraph({"Version", "[almost]"})

local Section = Tab1:AddSection({"Outros / Tipos"})

Tab1:AddButton({
    Name = "Rejoin Server",
    Callback = function()
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "SysAdmin UIâ€¢",
    Text = "rejoing..",
    Icon = "rbxthumb://type=Asset&id=119245873411783&w=150&h=150",
    Duration = 0.5
})
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")

        TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
    end
})

Tab1:AddButton({
    Name = "Abrir Console",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        print("[LOL BOT] OlÃ¡ User [" .. player.Name .. "]")

        local StarterGui = game:GetService("StarterGui")
        pcall(function()
            StarterGui:SetCore("DevConsoleVisible", true)
        end)
    end
})  

Tab1:AddButton({
    Name = "UI' GLITCH [NEW]",
    Callback = function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

-- VariÃ¡vel para controle do loop
local glitchActive = false
local currentLoop = nil

-- Criar GUI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "GlitchV3_GUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function createRound(instance, radius)
	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, radius or 8)
	uicorner.Parent = instance
end

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 350, 0, 220)
Frame.Position = UDim2.new(0.5, -175, 0.5, -110)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Active = true
Frame.Draggable = true
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.05
createRound(Frame)

-- TÃ­tulo
local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "ðŸ”§ Glitch V3. | version 4.487v"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

-- Caixa de texto
local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(1, -20, 0, 35)
TextBox.Position = UDim2.new(0, 10, 0, 40)
TextBox.PlaceholderText = "Digite parte do nome ou nickname"
TextBox.Text = ""
TextBox.ClearTextOnFocus = false
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 14
TextBox.BorderSizePixel = 0
createRound(TextBox)

-- Imagem do avatar
local Avatar = Instance.new("ImageLabel", Frame)
Avatar.Size = UDim2.new(0, 60, 0, 60)
Avatar.Position = UDim2.new(0, 10, 0, 85)
Avatar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Avatar.Image = ""
Avatar.BorderSizePixel = 0
createRound(Avatar)

-- Nome e nickname
local PlayerName = Instance.new("TextLabel", Frame)
PlayerName.Size = UDim2.new(1, -80, 0, 30)
PlayerName.Position = UDim2.new(0, 80, 0, 85)
PlayerName.Text = "Nome: -"
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1
PlayerName.Font = Enum.Font.Gotham
PlayerName.TextSize = 14
PlayerName.TextXAlignment = Enum.TextXAlignment.Left

local PlayerNick = Instance.new("TextLabel", Frame)
PlayerNick.Size = UDim2.new(1, -80, 0, 30)
PlayerNick.Position = UDim2.new(0, 80, 0, 110)
PlayerNick.Text = "Nickname: -"
PlayerNick.TextColor3 = Color3.fromRGB(200, 200, 200)
PlayerNick.BackgroundTransparency = 1
PlayerNick.Font = Enum.Font.Gotham
PlayerNick.TextSize = 14
PlayerNick.TextXAlignment = Enum.TextXAlignment.Left

-- BotÃ£o
local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, -20, 0, 40)
Button.Position = UDim2.new(0, 10, 0, 160)
Button.Text = "ðŸŸ¢ Ativar Glitch"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundColor3 = Color3.fromRGB(50, 120, 50)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 16
Button.BorderSizePixel = 0
createRound(Button)

-- Buscar player parcial
local function findPlayerByPartialName(partial)
    partial = partial:lower()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Name:lower():find(partial) or player.DisplayName:lower():find(partial) then
            return player
        end
    end
    return nil
end

-- Atualiza preview
local function updatePlayerInfo()
	local text = TextBox.Text
	local target = findPlayerByPartialName(text)

	if target then
		PlayerName.Text = "Nome: " .. target.Name
		PlayerNick.Text = "Nickname: " .. target.DisplayName
		local thumb = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. target.UserId .. "&width=420&height=420&format=png"
		Avatar.Image = thumb
	else
		PlayerName.Text = "Nome: -"
		PlayerNick.Text = "Nickname: -"
		Avatar.Image = ""
	end
end

TextBox:GetPropertyChangedSignal("Text"):Connect(updatePlayerInfo)

-- Iniciar glitch
local function startGlitch(targetPlayer)
    if currentLoop then task.cancel(currentLoop) end
    glitchActive = true
    Button.Text = " Desativar Glitch"
    Button.BackgroundColor3 = Color3.fromRGB(140, 50, 50)

    currentLoop = task.spawn(function()
        while glitchActive and targetPlayer and targetPlayer.Parent == Players do
            local hrp = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local args = {
                    [1] = hrp,
                    [2] = hrp,
                    [3] = Vector3.new(100000000376832, 100000000376832, 100000000376832),
                    [4] = Vector3.new(0/0, 0/0, 0/0),
                    [5] = LocalPlayer.Backpack:FindFirstChild("Assault") and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local") and LocalPlayer.Backpack.Assault.GunScript_Local:FindFirstChild("MuzzleEffect"),
                    [6] = LocalPlayer.Backpack:FindFirstChild("Assault") and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local") and LocalPlayer.Backpack.Assault.GunScript_Local:FindFirstChild("HitEffect"),
                    [7] = 0,
                    [8] = 0,
                    [9] = { [1] = false },
                    [10] = {
                        [1] = 25,
                        [2] = Vector3.new(100, 100, 100),
                        [3] = BrickColor.new(29),
                        [4] = 0.25,
                        [5] = Enum.Material.SmoothPlastic,
                        [6] = 0.25
                    },
                    [11] = true,
                    [12] = false
                }

                local remote = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
                if remote then
                    remote:FireServer(unpack(args))
                end
            end
            task.wait(0.1)
        end

        Button.Text = "Ativar Glitch"
        Button.BackgroundColor3 = Color3.fromRGB(50, 120, 50)
        glitchActive = false
    end)
end

-- Parar glitch
local function stopGlitch()
    glitchActive = false
    if currentLoop then
        task.cancel(currentLoop)
        currentLoop = nil
    end
    Button.Text = "Ativar Glitch"
    Button.BackgroundColor3 = Color3.fromRGB(50, 120, 50)
end

-- Clique
Button.MouseButton1Click:Connect(function()
    if glitchActive then
        stopGlitch()
        return
    end

    local partialName = TextBox.Text
    local targetPlayer = findPlayerByPartialName(partialName)

    if targetPlayer then
        startGlitch(targetPlayer)

        targetPlayer.AncestryChanged:Connect(function()
            if not targetPlayer:IsDescendantOf(Players) then
                stopGlitch()
            end
        end)
    else
        warn("Nenhum jogador encontrado")
    end
end)

    end
})

Tab1:AddButton({
    Name = "UI'  sky Box Fe [NEW]",
    Callback = function()

--// este Foi comprado
--// Serviços
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local WearRemote = Remotes:WaitForChild("Wear")
local ChangeCharacterBody = Remotes:WaitForChild("ChangeCharacterBody")
local WearShirtRemote = Remotes:WaitForChild("WearShirt")

--// Variáveis
local CurrentTrack
local BodyId = "100839513065432"
local SkyboxActive = false
local Humanoid, Animator

--// Atualiza humanoid sempre que o player respawnar
local function SetupCharacter(char)
    Humanoid = char:WaitForChild("Humanoid")

    Animator = Humanoid:FindFirstChildOfClass("Animator")
    if not Animator then
        Animator = Instance.new("Animator")
        Animator.Parent = Humanoid
    end
end

SetupCharacter(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
LocalPlayer.CharacterAdded:Connect(SetupCharacter)

--// Funções
local function ApplyAccessories()
    local Desc = Humanoid:GetAppliedDescription()
    for _, accessory in ipairs(Desc:GetAccessories(true)) do
        if accessory.AssetId then
            pcall(function()
                WearRemote:InvokeServer(accessory.AssetId)
            end)
        end
    end
end

local function ApplyBody()
    pcall(function()
        ChangeCharacterBody:InvokeServer({
            [1] = tonumber(BodyId),
            [2] = nil,
            [3] = nil,
            [4] = nil,
            [5] = nil,
            [6] = nil
        })
    end)
end

local function PlayAnimation()
    local AnimId = "rbxassetid://101852027997337"
    local newAnim = Instance.new("Animation")
    newAnim.AnimationId = AnimId

    local newTrack
    pcall(function()
        newTrack = Animator:LoadAnimation(newAnim)
        newTrack.Priority = Enum.AnimationPriority.Action4
        newTrack:Play(0.1, 1, 1)
    end)

    CurrentTrack = newTrack
end

local function StopAnimation()
    if CurrentTrack then
        pcall(function()
            CurrentTrack:Stop(0)
        end)
    end
end

--// GUI Principal
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "SkyboxChangerGui"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 250, 0, 150)
Frame.Position = UDim2.new(0.5, -125, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true -- arrastável

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

-- Título
local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = " SKY BOX [HAVENS]"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16

-- Label Id roupa
local Label = Instance.new("TextLabel", Frame)
Label.Size = UDim2.new(1, -20, 0, 20)
Label.Position = UDim2.new(0, 10, 0, 60)
Label.BackgroundTransparency = 1
Label.Text = "Id roupa:"
Label.TextColor3 = Color3.fromRGB(200,200,200)
Label.Font = Enum.Font.Gotham
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

-- Animação de "digitando..."
task.spawn(function()
    while task.wait(0.5) do
        Label.Text = "Id roupa"
        task.wait(0.5)
        Label.Text = "Id roupa."
        task.wait(0.5)
        Label.Text = "Id roupa.."
        task.wait(0.5)
        Label.Text = "Id roupa..."
    end
end)

-- Caixa de texto Id roupa
local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(1, -20, 0, 30)
TextBox.Position = UDim2.new(0, 10, 0, 80)
TextBox.BackgroundColor3 = Color3.fromRGB(50,50,50)
TextBox.TextColor3 = Color3.fromRGB(255,255,255)
TextBox.PlaceholderText = "Id de roupa [ROUPA ID]"
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 14
Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 8)

-- Botão ativar/desativar Skybox + roupa
local ShirtButton = Instance.new("TextButton", Frame)
ShirtButton.Size = UDim2.new(1, -20, 0, 30)
ShirtButton.Position = UDim2.new(0, 10, 0, 115)
ShirtButton.BackgroundColor3 = Color3.fromRGB(70,70,70)
ShirtButton.TextColor3 = Color3.fromRGB(255,255,255)
ShirtButton.Text = "Ativar"
ShirtButton.Font = Enum.Font.GothamBold
ShirtButton.TextSize = 14
Instance.new("UICorner", ShirtButton).CornerRadius = UDim.new(0, 8)

ShirtButton.MouseButton1Click:Connect(function()
    SkyboxActive = not SkyboxActive
    ShirtButton.Text = SkyboxActive and "Desativar" or "Ativar"

    if SkyboxActive then
        local id = tonumber(TextBox.Text)
        if id then
            local args = { [1] = id }
            pcall(function()
                WearShirtRemote:InvokeServer(unpack(args))
            end)
        end
        ApplyAccessories()
        ApplyBody()
        PlayAnimation()
    else
        StopAnimation()
    end
end)

--// Botão Flutuante para abrir/fechar a GUI
local ToggleGuiButton = Instance.new("TextButton", ScreenGui)
ToggleGuiButton.Size = UDim2.new(0, 120, 0, 40)
ToggleGuiButton.Position = UDim2.new(0, 20, 0.8, 0) -- canto esquerdo inferior
ToggleGuiButton.BackgroundColor3 = Color3.fromRGB(35,35,35)
ToggleGuiButton.TextColor3 = Color3.fromRGB(255,255,255)
ToggleGuiButton.Text = "Abrir SKY BOX"
ToggleGuiButton.Font = Enum.Font.GothamBold
ToggleGuiButton.TextSize = 14
ToggleGuiButton.Active = true
ToggleGuiButton.Draggable = true
Instance.new("UICorner", ToggleGuiButton).CornerRadius = UDim.new(0, 10)

ToggleGuiButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
    ToggleGuiButton.Text = Frame.Visible and "Fechar SKY BOX" or "Abrir SKY BOX"
end)

-- GUI começa aberta
Frame.Visible = true


end})

local Paragraph = Tab1:AddParagraph({"Aviso", "obrigado por usar"})

local TabPlayers = Window:MakeTab({ "Players", "User" })


local viewing = false
local loopTP = false
local selectedPlayer = nil
local cam = workspace.CurrentCamera
local player = game.Players.LocalPlayer

-- blockedUsers para devs da hub
local blockedUsers = {
    ["h26337"] = true,
    ["ex_toddy"] = true,
    ["hpato"] = true,
    ["fanofgg"] = true,
    ["pkj0"] = true,
    ["kitynALT"] = true,
    ["MeKS3"] = true
}

-- FunÃ§Ã£o para encontrar jogador pelo nome (parcial ou completo)
local function findPlayerByName(name)
    name = name:lower()
    for _, plr in ipairs(game.Players:GetPlayers()) do
        if plr.Name:lower():sub(1, #name) == name then
            return plr.Name
        end
    end
    return nil
end

-- Caixa de texto para definir o player alvo
TabPlayers:AddTextBox({
    Name = "Target Player",
    Default = "Sla",
    TextDisappear = false,
    Callback = function(Value)
        local match = findPlayerByName(Value)
        if match then
            if blockedUsers[match] then
                game.Players.LocalPlayer:Kick("Você Não Pode selecionar um ADM.")
                selectedPlayer = nil
            else
                selectedPlayer = match
                print("FOUND your USER:", selectedPlayer)
            end
        else
            print("No Found.")
        end
    end
})

local viewing = false
local cam = workspace.CurrentCamera
local player = game.Players.LocalPlayer

-- FunÃ§Ã£o de notificaÃ§Ã£o com imagem
local function ShowPlayerNotification(plr)
    local username = plr.Name
    local displayname = plr.DisplayName

    local thumbUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. plr.UserId .. "&width=150&height=150&format=png"

    local playerGui = player:WaitForChild("PlayerGui")
    local screenGui = playerGui:FindFirstChild("AnexedNotificationUI")
    if not screenGui then
        screenGui = Instance.new("ScreenGui")
        screenGui.IgnoreGuiInset = true
        screenGui.Name = "AnexedNotificationUI"
        screenGui.ResetOnSpawn = false
        screenGui.Parent = playerGui
    end

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 60)
    frame.Position = UDim2.new(1, 0, 0, -10)
    frame.AnchorPoint = Vector2.new(1, 0)
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0
    frame.ZIndex = 20
    frame.Parent = screenGui

    local image = Instance.new("ImageLabel", frame)
    image.Size = UDim2.new(0, 40, 0, 40)
    image.Position = UDim2.new(0, 10, 0, 10)
    image.BackgroundTransparency = 1
    image.Image = thumbUrl

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, -60, 0, 20)
    title.Position = UDim2.new(0, 60, 0, 8)
    title.BackgroundTransparency = 1
    title.Text = "Visualizando " .. displayname
    title.TextColor3 = Color3.new(1, 1, 1)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left

    local subtitle = Instance.new("TextLabel", frame)
    subtitle.Size = UDim2.new(1, -60, 0, 18)
    subtitle.Position = UDim2.new(0, 60, 0, 30)
    subtitle.BackgroundTransparency = 1
    subtitle.Text = "@" .. username
    subtitle.TextColor3 = Color3.new(1, 1, 1)
    subtitle.Font = Enum.Font.Gotham
    subtitle.TextSize = 12
    subtitle.TextXAlignment = Enum.TextXAlignment.Left

    local TweenService = game:GetService("TweenService")
    local enterTween = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quart), {
        Position = UDim2.new(1, -10, 0, 10)
    })
    enterTween:Play()

    task.delay(3, function()
        local exitTween = TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Position = UDim2.new(1, 0, 0, -60)
        })
        exitTween:Play()
        exitTween.Completed:Wait()
        frame:Destroy()
    end)
end

-- NotificaÃ§Ã£o de saÃ­da
local function ShowLeaveNotification(playerName)
    local playerGui = player:WaitForChild("PlayerGui")
    local screenGui = playerGui:FindFirstChild("AnexedNotificationUI")
    if not screenGui then
        screenGui = Instance.new("ScreenGui")
        screenGui.IgnoreGuiInset = true
        screenGui.Name = "AnexedNotificationUI"
        screenGui.ResetOnSpawn = false
        screenGui.Parent = playerGui
    end

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 240, 0, 40)
    frame.Position = UDim2.new(1, 0, 0, -10)
    frame.AnchorPoint = Vector2.new(1, 0)
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0
    frame.ZIndex = 20
    frame.Parent = screenGui

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, -20, 1, -10)
    title.Position = UDim2.new(0, 10, 0, 5)
    title.BackgroundTransparency = 1
    title.Text = "@" .. playerName .. " saiu do jogo"
    title.TextColor3 = Color3.fromRGB(255, 120, 120)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left

    local TweenService = game:GetService("TweenService")
    local enterTween = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quart), {
        Position = UDim2.new(1, -10, 0, 10)
    })
    enterTween:Play()

    task.delay(3, function()
        local exitTween = TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Position = UDim2.new(1, 0, 0, -60)
        })
        exitTween:Play()
        exitTween.Completed:Wait()
        frame:Destroy()
    end)
end

-- Toggle View com notificaÃ§Ã£o e auto-unview
TabPlayers:AddToggle({
    Name = "View",
    Callback = function(Value)
        viewing = Value
        if viewing then
            task.spawn(function()
                local shown = false
                while viewing do
                    local target = game.Players:FindFirstChild(selectedPlayer)
                    if target then
                        if not shown then
                            ShowPlayerNotification(target)
                            shown = true
                        end
                        local character = target.Character or target.CharacterAdded:Wait()
                        local humanoid = character:FindFirstChild("Humanoid")
                        if humanoid then
                            cam.CameraSubject = humanoid
                        end
                    else
                        -- Jogador saiu
                        ShowLeaveNotification(selectedPlayer)
                        viewing = false
                        local myChar = player.Character
                        if myChar and myChar:FindFirstChild("Humanoid") then
                            cam.CameraSubject = myChar.Humanoid
                        end
                        break
                    end
                    task.wait(0.1)
                end
            end)
        else
            local myChar = player.Character
            if myChar and myChar:FindFirstChild("Humanoid") then
                cam.CameraSubject = myChar.Humanoid
            end
        end
    end
})

TabPlayers:AddButton({
    Name = "Teleport",
    Callback = function()
        local Players = game:GetService("Players")
        local Workspace = game:GetService("Workspace")
        local LocalPlayer = Players.LocalPlayer
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local HRP = Character:FindFirstChild("HumanoidRootPart")

        if not selectedPlayer then
            warn("Nenhum jogador selecionado.")
            return
        end

        local target = Players:FindFirstChild(selectedPlayer)
        if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then
            warn("User no Found")
            return
        end

        local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")
        HRP.CFrame = targetHRP.CFrame + Vector3.new(0, 3, 0) -- TP acima do player
    end
})

TabPlayers:AddToggle({
    Name = "Loop TP",
    Callback = function(Value)
        loopTP = Value
        if loopTP then
            task.spawn(function()
                while loopTP do
                    local target = game.Players:FindFirstChild(selectedPlayer)
                    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        local myChar = player.Character
                        if myChar and myChar:FindFirstChild("HumanoidRootPart") then
                            -- Teleporta exatamente para a posiÃ§Ã£o do HumanoidRootPart do alvo
                            myChar.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
                        end
                    end
                    task.wait(0.02)
                end
            end)
        end
    end
})

TabPlayers:AddSection({Name = "Function Glitch / Adm- "})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

-- Função para equipar a Assault só se não tiver
local function garantirArma(equipar)
    local temAssault = (LocalPlayer.Backpack:FindFirstChild("Assault") or LocalPlayer.Character:FindFirstChild("Assault"))

    if equipar and not temAssault then
        local args = { "Assault", "StockAssault" }
        ReplicatedStorage.Remotes.GunEquip:InvokeServer(unpack(args))
    elseif not equipar and temAssault then
        -- "Desequipar" pedindo a mesma função mas sem Assault
        local args = { "None", "None" }
        ReplicatedStorage.Remotes.GunEquip:InvokeServer(unpack(args))
    end
end

-- Função para atirar no player alvo
local function fireAtPart(clickedPart)
    local targetPlayer = Players:GetPlayerFromCharacter(clickedPart:FindFirstAncestorOfClass("Model"))
    if not targetPlayer or targetPlayer == LocalPlayer then return end

    local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault")
        and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")
        or (LocalPlayer.Character:FindFirstChild("Assault")
        and LocalPlayer.Character.Assault:FindFirstChild("GunScript_Local"))

    if gunScript then
        local args = {
            clickedPart,
            clickedPart,
            Vector3.new(1e14, 1e14, 1e14),
            clickedPart.Position,
            gunScript:FindFirstChild("MuzzleEffect"),
            gunScript:FindFirstChild("HitEffect"),
            0,
            0,
            { [1] = false },
            {
                [1] = 25,
                [2] = Vector3.new(100, 100, 100),
                [3] = BrickColor.new(29),
                [4] = 0.25,
                [5] = Enum.Material.SmoothPlastic,
                [6] = 0.25
            },
            true,
            false
        }

        local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
        if event then
            event:FireServer(unpack(args))
        end
    end
end

-- Tabela para armazenar loops ativos por toggle
local loopsAtivos = {}

-- Função genérica para criar toggles de ataque
local function criarToggle(nome, delay)
    TabPlayers:AddToggle({
        Name = nome,
        Default = false,
        Callback = function(state)
            if state then
                -- quando ativa, garante que a arma esteja equipada
                garantirArma(true)

                local loopId = {}
                loopsAtivos[nome] = loopId

                task.spawn(function()
                    while loopsAtivos[nome] == loopId do
                        local targetPlayer = Players:FindFirstChild(selectedPlayer)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            fireAtPart(targetPlayer.Character.HumanoidRootPart)
                        end
                        task.wait(delay)
                    end
                end)
            else
                -- quando desativa, tenta desequipar a arma
                loopsAtivos[nome] = nil
                garantirArma(false)
            end
        end
    })
end

-- Criar os dois toggles
criarToggle("Glitch Player (FE)", 0.05)
criarToggle("Lag Player (FE)", 1)

-- Função que executa o "Stuck Player"
local function stuckPlayer(targetPlayer)
    if not targetPlayer or not targetPlayer.Character then return end
    local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault")
        and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")
        or (LocalPlayer.Character:FindFirstChild("Assault")
        and LocalPlayer.Character.Assault:FindFirstChild("GunScript_Local"))

    if not gunScript then return end

    local args = {
        [1] = hrp,
        [2] = hrp,
        [3] = Vector3.new(0, 1551000066326528, 0), -- mesma força absurda
        [4] = Vector3.new(0.25879302620887756, 3.7838504314422607, -28.692333221435547), -- posição fixa que você mandou
        [5] = gunScript:FindFirstChild("MuzzleEffect"),
        [6] = gunScript:FindFirstChild("HitEffect"),
        [7] = 0,
        [8] = 0,
        [9] = { [1] = false },
        [10] = {
            [1] = 25,
            [2] = Vector3.new(100, 100, 100),
            [3] = BrickColor.new(29),
            [4] = 0.25,
            [5] = Enum.Material.SmoothPlastic,
            [6] = 0.25
        },
        [11] = true,
        [12] = false
    }

    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
    if event then
        event:FireServer(unpack(args))
    end
end

-- Criar toggle "Stuck Player" no mesmo estilo do antigo
TabPlayers:AddToggle({
    Name = "Stuck Player",
    Description = "função que faz o alvo fica bugado no chao",
    Default = false,
    Callback = function(state)
        if state then
            garantirArma(true)
            local loopId = {}
            loopsAtivos["Stuck Player"] = loopId
            task.spawn(function()
                while loopsAtivos["Stuck Player"] == loopId do
                    local targetPlayer = Players:FindFirstChild(selectedPlayer)
                    if targetPlayer then
                        stuckPlayer(targetPlayer)
                    end
                    task.wait(0.05) -- velocidade do spam
                end
            end)
        else
            loopsAtivos["Stuck Player"] = nil
            garantirArma(false)
        end
    end
})

-- Função Annoy Player [BETA]
local function annoyPlayer(targetPlayer)
    if not targetPlayer or not targetPlayer.Character then return end
    local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault")
        and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")
        or (LocalPlayer.Character:FindFirstChild("Assault")
        and LocalPlayer.Character.Assault:FindFirstChild("GunScript_Local"))

    if not gunScript then return end

    -- posições aleatórias X e Z
    local randomX = math.random(-20000000, 20000000)
    local randomZ = math.random(-20000000, 20000000)

    local args = {
        [1] = hrp,
        [2] = hrp,
        [3] = Vector3.new(randomX, 0, randomZ),
        [4] = hrp.Position, -- posição atual como referência
        [5] = gunScript:FindFirstChild("MuzzleEffect"),
        [6] = gunScript:FindFirstChild("HitEffect"),
        [7] = 0,
        [8] = 0,
        [9] = { [1] = false },
        [10] = {
            [1] = 25,
            [2] = Vector3.new(100, 100, 100),
            [3] = BrickColor.new(29),
            [4] = 0.25,
            [5] = Enum.Material.SmoothPlastic,
            [6] = 0.25
        },
        [11] = true,
        [12] = false
    }

    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
    if event then
        event:FireServer(unpack(args))
    end
end

-- Toggle "Annoy Player [BETA]"
TabPlayers:AddToggle({
    Name = "Annoy Player [BETA]",
    Description = "quando o alvo andar F pra ele ! [isto e infinito so que ant Supera]",
    Default = false,
    Callback = function(state)
        if state then
            garantirArma(true)
            local loopId = {}
            loopsAtivos["Annoy Player [BETA]"] = loopId
            task.spawn(function()
                while loopsAtivos["Annoy Player [BETA]"] == loopId do
                    local targetPlayer = Players:FindFirstChild(selectedPlayer)
                    if targetPlayer then
                        annoyPlayer(targetPlayer)
                    end
                    task.wait(0.1) -- intervalo entre as posições
                end
            end)
        else
            loopsAtivos["Annoy Player [BETA]"] = nil
            garantirArma(false)
        end
    end
})

TabPlayers:AddSection({ " functions Target" })

local cam = workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local flingActive = false

TabPlayers:AddToggle({
    Name = "fling Croch",
    Description = "Faz o jogador voar com física bruta, usando delay e posição compensada.",
    Default = false,
    Callback = function(state)
        flingActive = state
        task.spawn(function()
            while flingActive do
                if selectedPlayer then
                    local target = Players:FindFirstChild(selectedPlayer)
                    if target and target.Character then
                        local char = LocalPlayer.Character
                        local root = char and char:FindFirstChild("HumanoidRootPart")
                        local tRoot = target.Character:FindFirstChild("HumanoidRootPart")
                        local tHum = target.Character:FindFirstChildOfClass("Humanoid")
                        local hum = char and char:FindFirstChildOfClass("Humanoid")
                        if root and tRoot and tHum and hum then
                            local args = {[1]="ClearAllTools"}
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer(unpack(args))
                            wait(0.3)
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools","Couch")
                            local original = root.CFrame
                            local tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                            if tool then tool.Parent = char end
                            workspace.FallenPartsDestroyHeight = -math.huge
                            local bv = Instance.new("BodyVelocity")
                            bv.Name = "FlingForce"
                            bv.Velocity = Vector3.new(9e8,9e8,9e8)
                            bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                            bv.Parent = root
                            hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
                            hum.PlatformStand = false
                            cam.CameraSubject = tRoot
                            local angle = 0
                            while flingActive and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
                                tHum = target.Character:FindFirstChildOfClass("Humanoid")
                                tRoot = target.Character:FindFirstChild("HumanoidRootPart")
                                if not tRoot or tHum.Sit or tRoot.Position.Y>=70000 then break end
                                local moveDir = tHum.MoveDirection
                                local offset = Vector3.new(0,0,0)
                                if moveDir.Magnitude>=0.01 then
                                    local speed = tHum.WalkSpeed
                                    local studs = 13
                                    if speed>16 then studs=studs+math.floor((speed-16)/9)*9 end
                                    offset=moveDir.Unit*studs
                                end
                                angle+=30
                                root.CFrame = CFrame.new(tRoot.Position+offset+Vector3.new(0,1,0))*CFrame.Angles(math.rad(angle),0,0)
                                root.Velocity = Vector3.new(9e8,9e8,9e8)
                                root.RotVelocity = Vector3.new(9e8,9e8,9e8)
                                task.wait()
                            end
                            bv:Destroy()
                            hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
                            hum.PlatformStand=false
                            root.CFrame=original
                            cam.CameraSubject=hum
                            for _,p in pairs(char:GetDescendants()) do if p:IsA("BasePart") then p.Velocity=Vector3.zero p.RotVelocity=Vector3.zero end end
                            hum:UnequipTools()
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools","Couch")
                        end
                    end
                end
                task.wait(0.5)
            end
        end)
    end
})

local cam = workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local flingActive = false

TabPlayers:AddButton({
    Name = "Invisivel Kill",
    Description = "Mata o player remotamente sem precisar estar perto",
    Callback = function()
        if not selectedPlayer then
            warn("Nenhum jogador selecionado!")
            return
        end

        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local LocalPlayer = Players.LocalPlayer
        local TargetPlayer = Players:FindFirstChild(selectedPlayer)

        if not TargetPlayer or not TargetPlayer.Character then
            warn("Jogador alvo não encontrado!")
            return
        end

        -- Garantir que temos a arma equipada
        local function garantirArma()
            local temAssault = (LocalPlayer.Backpack:FindFirstChild("Assault") or LocalPlayer.Character:FindFirstChild("Assault"))
            if not temAssault then
                local args = { "Assault", "StockAssault" }
                ReplicatedStorage.Remotes.GunEquip:InvokeServer(unpack(args))
                task.wait(0.5)
            end
        end

        -- Função de kill remota com força máxima
        local function killRemoto()
            local targetChar = TargetPlayer.Character
            if not targetChar then return end
            
            local hrp = targetChar:FindFirstChild("HumanoidRootPart")
            if not hrp then return end

            local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault")
                and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")
                or (LocalPlayer.Character:FindFirstChild("Assault")
                and LocalPlayer.Character.Assault:FindFirstChild("GunScript_Local"))

            if gunScript then
                -- Força EXTREMA para kill instantâneo
                local args = {
                    [1] = hrp,
                    [2] = hrp,
                    [3] = Vector3.new(1e20, 1e20, 1e20), -- Força absurda
                    [4] = Vector3.new(0, -1e10, 0), -- Posição para void
                    [5] = gunScript:FindFirstChild("MuzzleEffect"),
                    [6] = gunScript:FindFirstChild("HitEffect"),
                    [7] = 0,
                    [8] = 0,
                    [9] = { [1] = false },
                    [10] = {
                        [1] = 100, -- Dano máximo
                        [2] = Vector3.new(1000, 1000, 1000),
                        [3] = BrickColor.new("Really red"),
                        [4] = 1,
                        [5] = Enum.Material.Neon,
                        [6] = 1
                    },
                    [11] = true,
                    [12] = false
                }

                local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
                if event then
                    -- Spam de tiros para garantir o kill
                    for i = 1, 10 do
                        event:FireServer(unpack(args))
                        task.wait(0.05)
                    end
                end
            end
        end

        -- Executar o kill
        garantirArma()
        killRemoto()

        -- Notificação de sucesso
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Invisivel Kill",
            Text = "Kill executado em " .. TargetPlayer.Name,
            Duration = 3
        })
    end

TabPlayers:AddToggle({
    Name = "Fling Fast",
    Description = "Faz o jogador voar rápido com física otimizada.",
    Default = false,
    Callback = function(state)
        flingActive = state
        if state and selectedPlayer then
            local target = Players:FindFirstChild(selectedPlayer)
            if not target or not target.Character then return end

            -- Ativa Couch no início
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")

            local char = LocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            local tRoot = target.Character:FindFirstChild("HumanoidRootPart")
            if not root or not tRoot then return end

            local hum = char:FindFirstChildOfClass("Humanoid")
            local original = root.CFrame

            local tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
            if tool then tool.Parent = char end

            workspace.FallenPartsDestroyHeight = -math.huge

            local bv = Instance.new("BodyVelocity")
            bv.Name = "FlingForce"
            bv.Velocity = Vector3.new(1e5, 1e5, 1e5) -- mais rápido e menos extremo
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.Parent = root

            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            hum.PlatformStand = true -- mantém estabilidade

            cam.CameraSubject = tRoot

            task.spawn(function()
                local angle = 0
                while flingActive and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
                    local tHum = target.Character:FindFirstChildOfClass("Humanoid")
                    local offset = Vector3.new(0, 2, 0)

                    -- se o player alvo estiver andando, fica 5 studs na frente
                    if tHum and tHum.MoveDirection.Magnitude > 0.1 then
                        offset = tHum.MoveDirection.Unit * 5 + Vector3.new(0, 2, 0)
                    end

                    angle += 45
                    root.CFrame = CFrame.new(tRoot.Position + offset) * CFrame.Angles(math.rad(angle), 0, 0)
                    task.wait(0.03)
                end

                flingActive = false
                bv:Destroy()
                hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                hum.PlatformStand = false
                root.CFrame = original
                cam.CameraSubject = hum

                for _, p in pairs(char:GetDescendants()) do
                    if p:IsA("BasePart") then
                        p.Velocity = Vector3.zero
                        p.RotVelocity = Vector3.zero
                    end
                end

                hum:UnequipTools()
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
            end)
        end
    end
})

TabPlayers:AddSection({Name = "functions Target- "})

TabPlayers:AddButton({
    Name = "Fling Ball  ",
    Description = "fling com bola op mais si tiver com ant n e boa",
    Callback = function()
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")

        local player = Players.LocalPlayer
        local targetPlayer = Players:FindFirstChild(selectedPlayer)
        print("FOUND your USER:", selectedPlayer)

        if not targetPlayer or not targetPlayer.Character then
            warn("Jogador alvo invÃ¡lido.")
            return
        end

        local character = player.Character or player.CharacterAdded:Wait()
        local backpack = player:WaitForChild("Backpack")
        local ServerBalls = Workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_SoccerBalls")

        -- Solicita e equipa a bola
        if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
            ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        end

        repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")

        local ballTool = backpack:FindFirstChild("SoccerBall")
        if ballTool then
            ballTool.Parent = character
        end

        repeat task.wait() until ServerBalls:FindFirstChild("Soccer" .. player.Name)
        local Ball = ServerBalls:FindFirstChild("Soccer" .. player.Name)

        Ball.CanCollide = false
        Ball.Massless = true
        Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

        -- Aplicar o fling
        local tchar = targetPlayer.Character
        local troot = tchar and tchar:FindFirstChild("HumanoidRootPart")
        local thum = tchar and tchar:FindFirstChild("Humanoid")
        if not troot or not thum then return end

        if Ball:FindFirstChildWhichIsA("BodyVelocity") then
            Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
        end

        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlingPower"
        bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.P = 9e900
        bv.Parent = Ball

        -- loop a colar no alvo
        task.spawn(function()
            repeat
                if troot.Velocity.Magnitude > 0 then
                    local pos = troot.Position + (troot.Velocity / 1.5)
                    Ball.CFrame = CFrame.new(pos)
                    Ball.Orientation += Vector3.new(45, 60, 30)
                else
                    for _, v in pairs(tchar:GetChildren()) do
                        if v:IsA("BasePart") and v.CanCollide and not v.Anchored then
                            Ball.CFrame = v.CFrame
                            task.wait(1/6000)
                        end
                    end
                end
                task.wait(1/6000)
            until troot.Velocity.Magnitude > 1000 or thum.Health <= 0 or not tchar:IsDescendantOf(Workspace) or targetPlayer.Parent ~= Players
        end)
    end
})

TabPlayers:AddToggle({
    Name = "Fling Toch ",
    Description = "e um fling ball so que quem encosta leva fling",
    Default = false,
    Callback = function(state)
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local backpack = player:WaitForChild("Backpack")
        local serverBalls = Workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_SoccerBalls")

        -- Guardar refs dentro do char
        if state then
            -- Se já existir, ignora
            if character:FindFirstChild("ShieldBall") then return end

            -- Pega bola caso não tenha
            if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
                ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
            end

            repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")
            local ballTool = backpack:FindFirstChild("SoccerBall")
            if ballTool then
                ballTool.Parent = character
            end

            repeat task.wait() until serverBalls:FindFirstChild("Soccer"..player.Name)
            local shieldBall = serverBalls:FindFirstChild("Soccer"..player.Name)
            if not shieldBall then return end
            shieldBall.Name = "ShieldBall"

            -- Configurações
            shieldBall.CanCollide = false
            shieldBall.Massless = true
            shieldBall.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

            -- Limpa BodyVelocity antigo
            if shieldBall:FindFirstChildWhichIsA("BodyVelocity") then
                shieldBall:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
            end

            -- Cria BodyVelocity forte
            local bv = Instance.new("BodyVelocity")
            bv.Name = "FlingPower"
            bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.P = 9e900
            bv.Parent = shieldBall

            -- Cola no torso
            local torso = character:FindFirstChild("UpperTorso") or character:FindFirstChild("HumanoidRootPart")

            local loop = Instance.new("BindableEvent")
            loop.Name = "ShieldLoop"
            loop.Parent = character

            task.spawn(function()
                while loop.Parent and shieldBall and shieldBall.Parent and torso and torso.Parent do
                    shieldBall.CFrame = torso.CFrame
                    task.wait(1/60)
                end
            end)

        else
            -- Desligar
            local shieldBall = character:FindFirstChild("ShieldBall")
            if shieldBall then
                shieldBall:Destroy()
            end
            local loop = character:FindFirstChild("ShieldLoop")
            if loop then
                loop:Destroy()
            end
        end
    end
})

TabPlayers:AddButton({
    Name = "Fling Canoe (10s)",
    Description = "mais o menos quando flinga faz tu ir junto.",
    Callback = function()
        local nome = selectedPlayer
        if not nome then
            warn("Nenhum jogador definido.")
            return
        end

        local AlvoSelecionado = game.Players:FindFirstChild(nome)
        if not AlvoSelecionado then
            warn("Jogador nÃ£o encontrado.")
            return
        end

        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local humanoid = char:WaitForChild("Humanoid")
        local root = char:WaitForChild("HumanoidRootPart")

        if humanoid.Sit then
            humanoid.Sit = false
            task.wait(0.5)
        end

        root.CFrame = workspace.WorkspaceCom["001_CanoeCloneButton"].Button.CFrame
        task.wait(0.4)
        fireclickdetector(workspace.WorkspaceCom["001_CanoeCloneButton"].Button.ClickDetector, 0)
        task.wait(0.4)

        local canoe = workspace.WorkspaceCom["001_CanoeStorage"].Canoe
        local seat = canoe:FindFirstChild("VehicleSeat")

        if not canoe.PrimaryPart then
            canoe.PrimaryPart = seat
        end

        -- Sentar
        local tentativas = 0
        repeat
            char:MoveTo(seat.Position + Vector3.new(0, 3, 0))
            task.wait(0.05)
            seat:Sit(humanoid)
            tentativas += 1
        until humanoid.Sit or tentativas > 100

        if not humanoid.Sit then
            warn("Falhou em sentar no barco.")
            return
        end

        -- Alvo
        local alvoChar = AlvoSelecionado.Character or AlvoSelecionado.CharacterAdded:Wait()
        local alvoRoot = alvoChar:WaitForChild("HumanoidRootPart")
        local alvoHum = alvoChar:WaitForChild("Humanoid")

        local force = Instance.new("BodyForce", canoe.PrimaryPart)
        local angular = Instance.new("BodyAngularVelocity", canoe.PrimaryPart)
        angular.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
        angular.AngularVelocity = Vector3.new(1000, 5000, 1000)
        angular.P = 1e9

        local distancia = 10
        local sentido = 1

        local start = tick()
        while tick() - start < 10 and humanoid.Sit and alvoChar and alvoHum and alvoHum.Health > 0 do
            local offset = alvoRoot.CFrame.LookVector * distancia * sentido
            local pos = alvoRoot.Position + offset
            canoe:SetPrimaryPartCFrame(CFrame.new(pos, alvoRoot.Position))
            sentido = -sentido

            local dir = (alvoRoot.Position - canoe.PrimaryPart.Position).Unit
            force.Force = dir * 1e6 + Vector3.new(0, workspace.Gravity * canoe.PrimaryPart:GetMass(), 0)
            task.wait()
        end

        force:Destroy()
        angular:Destroy()
    end
})

TabPlayers:AddButton({
    Name = "Car - Bring",
    Description = "puxa pra sua localização",
    Callback = function()
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

        local LocalPlayer = Players.LocalPlayer
        local selectedPlayerName = selectedPlayer -- seu sistema define o player selecionado

        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            warn("Erro: HumanoidRootPart do jogador local não encontrado")
            return
        end

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if not humanoid then
            warn("Erro: Humanoid do jogador local não encontrado")
            return
        end

        local originalPosition = humanoidRootPart.CFrame

        local function GetBus()
            local vehicles = workspace:FindFirstChild("Vehicles")
            if vehicles then
                return vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
            end
            return nil
        end

        -- TP1: Pegar ônibus
        local bus = GetBus()
        if not bus then
            humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
            task.wait(0.5)
            local remoteEvent = ReplicatedStorage:FindFirstChild("RE")
            if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then
                remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
            end
            task.wait(1)
            bus = GetBus()
        end

        if not bus or not bus.PrimaryPart then
            warn("Ônibus não encontrado ou PrimaryPart faltando!")
            return
        end

        -- TP2: posição inicial
        humanoidRootPart.CFrame = CFrame.new(1108.079956, 78.852867, -1146.426147)
        task.wait(0.4)

        -- Sentar no ônibus (até 5 tentativas)
        local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")
        if seat and not humanoid.Sit then
            for i = 1, 5 do
                seat:Sit(humanoid)
                local timeout = tick() + 1
                repeat task.wait(0.2) until humanoid.Sit or tick() > timeout
                if humanoid.Sit then break end
            end
        end

        -- Função para “seguir” o jogador alvo
        local function TrackPlayer()
            while true do
                if selectedPlayerName then
                    local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local targetRoot = targetPlayer.Character.HumanoidRootPart
                        local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                        if targetHumanoid and targetHumanoid.Sit then
                            -- Alvo sentado: devolve ônibus e deleta
                            bus:SetPrimaryPartCFrame(originalPosition)
                            task.wait(0.7)
                            local args = { [1] = "DeleteAllVehicles" }
                            ReplicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
                            break
                        else
                            -- Aproxima o ônibus do jogador alvo
                            local time = tick() * 35
                            local lateralOffset = math.sin(time) * 4
                            local frontBackOffset = math.cos(time) * 20
                            bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                        end
                    end
                end
                RunService.RenderStepped:Wait()
            end
        end

        spawn(TrackPlayer)
    end
})

TabPlayers:AddButton({
    Name = "Car - Kill",
    Description = "si o player estiver sentado ou voando n pega",
    Callback = function()
        if not selectedPlayer then
            warn("Nenhum jogador selecionado!")
            return
        end

        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character:FindFirstChild("HumanoidRootPart")
        local Vehicles = workspace:FindFirstChild("Vehicles")
        local OldPos = RootPart and RootPart.CFrame

        if not Humanoid or not RootPart then return end

        -- ==== TP 1: pegar carro ====
        RootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
        task.wait(0.5)

        -- Pegar o carro
        local PCar = Vehicles and Vehicles:FindFirstChild(Player.Name.."Car")
        if not PCar then
            game.ReplicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer("PickingCar", "SchoolBus")
            task.wait(1)
            PCar = Vehicles:FindFirstChild(Player.Name.."Car")
        end

        -- ==== TP 2: posição de ataque ====
        RootPart.CFrame = CFrame.new(1108.079956, 78.852867, -1146.426147)
        task.wait(0.4)

        -- Garantir que o player sente no carro (até 2 tentativas)
        if PCar then
            local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
            if Seat then
                for i = 1, 2 do
                    Seat:Sit(Humanoid)
                    local timeout = tick() + 1
                    repeat task.wait(0.2) until Humanoid.Sit or tick() > timeout
                    if Humanoid.Sit then break end
                end
            end
        end

        -- Ajustar PrimaryPart se faltar
        if PCar and not PCar.PrimaryPart then
            local Body = PCar:FindFirstChild("Body")
            if Body and Body:FindFirstChild("VehicleSeat") then
                PCar.PrimaryPart = Body.VehicleSeat
            end
        end

        -- ==== Iniciar kill ====
        local TargetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if TargetPlayer then
            local TargetC = TargetPlayer.Character
            local TargetH = TargetC and TargetC:FindFirstChildOfClass("Humanoid")
            local TargetRP = TargetC and TargetC:FindFirstChild("HumanoidRootPart")

            if TargetC and TargetH and TargetRP and not TargetH.Sit then
                while TargetH.Health > 0 and not TargetH.Sit do
                    task.wait()

                    local randomX, randomY, randomZ = math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)

                    local function kill(alvo, pos, angulo)
                        if PCar and PCar.PrimaryPart then
                            PCar:PivotTo(CFrame.new(alvo.Position) * pos * angulo)
                        end
                    end

                    local offset = TargetH.MoveDirection * (TargetRP.Velocity.Magnitude / 1.05)
                    kill(TargetRP, CFrame.new(0, 1, 0) + offset, CFrame.Angles(math.rad(randomX), math.rad(randomY), math.rad(randomZ)))
                    kill(TargetRP, CFrame.new(0, -2.25, 5) + offset, CFrame.Angles(math.rad(randomX), math.rad(randomY), math.rad(randomZ)))
                    kill(TargetRP, CFrame.new(0, 2.25, 0.25) + offset, CFrame.Angles(math.rad(randomX), math.rad(randomY), math.rad(randomZ)))
                    kill(TargetRP, CFrame.new(-2.25, -1.5, 2.25) + offset, CFrame.Angles(math.rad(randomX), math.rad(randomY), math.rad(randomZ)))
                    kill(TargetRP, CFrame.new(0, 1.5, 0) + offset, CFrame.Angles(math.rad(randomX), math.rad(randomY), math.rad(randomZ)))
                    kill(TargetRP, CFrame.new(0, -1.5, 0) + offset, CFrame.Angles(math.rad(randomX), math.rad(randomY), math.rad(randomZ)))
                end

                -- Finalização: manda pro void e volta
                task.wait(0.1)
                if PCar and PCar.PrimaryPart then
                    PCar:PivotTo(CFrame.new(0, -470, 0))
                end
                task.wait(0.2)
                Humanoid.Sit = false
                task.wait(0.1)
                RootPart.CFrame = OldPos
                
                
                local args = {
            [1] = "DeleteAllVehicles"
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
                
            end
        end
    end
})

TabPlayers:AddButton({
    Name = "Boat - fling",
    Description = "ainda que seja um fling e boa",
    Callback = function()
        local TargetName = selectedPlayer
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        local Vehicles = workspace:FindFirstChild("Vehicles")

        if not TargetName or not Humanoid or not RootPart then return end

        local function spawnBoat()
            RootPart.CFrame = CFrame.new(1754, -2, 58)
            task.wait(0.5)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")
            task.wait(1)
            return Vehicles and Vehicles:FindFirstChild(Player.Name.."Car")
        end

        local PCar = Vehicles and Vehicles:FindFirstChild(Player.Name.."Car") or spawnBoat()
        if not PCar then return end

        local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
        if not Seat then return end

        repeat 
            task.wait()
            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
        until Humanoid.Sit

        local SpinGyro = Instance.new("BodyGyro")
        SpinGyro.Parent = PCar.PrimaryPart
        SpinGyro.MaxTorque = Vector3.new(1e7, 1e7, 1e7)
        SpinGyro.P = 1e7
        SpinGyro.CFrame = PCar.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(90), 0)

        workspace.Gravity = 0.1

        local TargetPlayer = game.Players:FindFirstChild(TargetName)
        if not TargetPlayer or not TargetPlayer.Character then return end

        local TargetC = TargetPlayer.Character
        local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
        local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")

        if not TargetRP or not TargetH then return end

        local function flingTarget()
            local vel = TargetRP.Velocity.Magnitude
            local dir = TargetH.MoveDirection

            local function kill(alvo, pos)
                if PCar and PCar.PrimaryPart then
                    PCar:SetPrimaryPartCFrame(CFrame.new(alvo.Position) * pos)
                end
            end

            kill(TargetRP, CFrame.new(0, 3, 0) + dir * vel / 1.05)
            kill(TargetRP, CFrame.new(0, -2.25, 5) + dir * vel / 1.05)
            kill(TargetRP, CFrame.new(0, 2.25, 0.25) + dir * vel / 1.10)
            kill(TargetRP, CFrame.new(-2.25, -1.5, 2.25) + dir * vel / 1.10)
            kill(TargetRP, CFrame.new(0, 1.5, 0) + dir * vel / 1.05)
            kill(TargetRP, CFrame.new(0, -1.5, 0) + dir * vel / 1.05)
        end

        task.spawn(function()
            local teleportCount = 0
            local spawnPos = CFrame.new(1754, 5, 58)

            while teleportCount < 5 do
                task.wait(0.5)
                if not PCar or not PCar.Parent then
                    if SpinGyro then SpinGyro:Destroy() end
                    RootPart.CFrame = spawnPos
                    teleportCount += 1
                    Humanoid.PlatformStand = true
                    task.wait(0.5)
                    SpinGyro = Instance.new("BodyGyro")
                    SpinGyro.Parent = PCar.PrimaryPart
                    SpinGyro.MaxTorque = Vector3.new(1e7, 1e7, 1e7)
                    SpinGyro.P = 1e7
                    SpinGyro.CFrame = PCar.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(90), 0)
                else
                    break
                end
            end

            while true do
                task.wait(0.5)
                if PCar and PCar.Parent then
                    flingTarget()
                else
                    break
                end
            end
        end)

        game:GetService("RunService").Heartbeat:Connect(function()
            if not PCar or not PCar.Parent then
                workspace.Gravity = 196.2
            end
        end)
    end
})


TabPlayers:AddButton({
    Name = "Boat - fling V2",
    Description = "Segura o player e gira aleatório em volta",
    Callback = function()
        if not selectedPlayer or not game.Players:FindFirstChild(selectedPlayer) then
            warn("Nenhum jogador selecionado ou não existe")
            return
        end

        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        local Vehicles = game.Workspace:FindFirstChild("Vehicles")

        if not Humanoid or not RootPart then
            warn("Humanoid ou RootPart inválido")
            return
        end

        -- Função para spawnar barco
        local function spawnBoat()
            RootPart.CFrame = CFrame.new(1754, -2, 58)
            task.wait(0.5)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")
            task.wait(1)
            return Vehicles:FindFirstChild(Player.Name.."Car")
        end

        local PCar = Vehicles:FindFirstChild(Player.Name.."Car") or spawnBoat()
        if not PCar then
            warn("Falha ao spawnar o barco")
            return
        end

        local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
        if not Seat then
            warn("Assento não encontrado")
            return
        end

        -- sentar
        repeat 
            task.wait(0.1)
            RootPart.CFrame = Seat.CFrame * CFrame.new(0, 1, 0)
        until Humanoid.SeatPart == Seat

        print("Barco spawnado!")

        local TargetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if not TargetPlayer or not TargetPlayer.Character then
            warn("Jogador não encontrado")
            return
        end

        local TargetC = TargetPlayer.Character
        local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
        local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")

        if not TargetRP or not TargetH then
            warn("Humanoid ou RootPart do alvo não encontrado")
            return
        end

        -- spin infinito
        local Spin = Instance.new("BodyAngularVelocity")
        Spin.Name = "Spinning"
        Spin.Parent = PCar.PrimaryPart
        Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        Spin.AngularVelocity = Vector3.new(0, 369, 0) 

        print("Fling ativo!")

        local function moveCar(TargetRP, offset)
            if PCar and PCar.PrimaryPart then
                PCar:SetPrimaryPartCFrame(CFrame.new(TargetRP.Position + offset))
            end
        end

        -- loop de segurar + girar aleatório
        task.spawn(function()
            while PCar and PCar.Parent and TargetRP and TargetRP.Parent do
                task.wait(0.01) 
                
                -- seguir sempre 7 studs à frente
                local front = TargetRP.CFrame.LookVector * 7
                moveCar(TargetRP, front + Vector3.new(0, 1.5, 0))

                -- se alvo subir muito (flingado)
                if TargetRP.Position.Y > 7000 then
                    if Spin and Spin.Parent then
                        Spin:Destroy()
                    end
                    PCar:Destroy()
                    print("Fling encerrado - alvo já foi lançado!")
                    break
                end

                -- rotações aleatórias para bagunçar o alvo
                if PCar and PCar.PrimaryPart then
                    local Rotation = CFrame.Angles(
                        math.rad(math.random(-369, 369)),  
                        math.rad(math.random(-369, 369)), 
                        math.rad(math.random(-369, 369))
                    )
                    PCar:SetPrimaryPartCFrame(CFrame.new(TargetRP.Position + front + Vector3.new(0, 1.5, 0)) * Rotation)
                end
            end
        end)
    end
})

TabPlayers:AddButton({
    Name = "Fling Ball Car [TROLL]",
    Description = "flinga o carro do alvo",
    Callback = function()
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")

        local player = Players.LocalPlayer
        local targetPlayer = Players:FindFirstChild(selectedPlayer)
        if not targetPlayer then
            warn("Jogador alvo inválido.")
            return
        end

        local character = player.Character or player.CharacterAdded:Wait()
        local backpack = player:WaitForChild("Backpack")
        local serverBalls = Workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_SoccerBalls")

        -- Equipar bola
        if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
            ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        end

        repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")

        local ballTool = backpack:FindFirstChild("SoccerBall")
        if ballTool then
            ballTool.Parent = character
        end

        repeat task.wait() until serverBalls:FindFirstChild("Soccer"..player.Name)
        local Ball = serverBalls:FindFirstChild("Soccer"..player.Name)

        Ball.CanCollide = false
        Ball.Massless = true
        Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

        -- Procurar carro do alvo
        local vehicleFolder = Workspace:FindFirstChild("Vehicles")
        if not vehicleFolder then
            warn("Pasta Vehicles não encontrada!")
            return
        end

        local targetCar = vehicleFolder:FindFirstChild(targetPlayer.Name.."Car")
        if not targetCar then
            warn("Carro do alvo não encontrado!")
            return
        end

        -- Remover velocity antigo
        if Ball:FindFirstChildWhichIsA("BodyVelocity") then
            Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
        end

        -- Criar BodyVelocity para fling
        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlingPower"
        bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.P = 9e900
        bv.Parent = Ball

        -- Focar a bola no carro, 2 studs abaixo
        task.spawn(function()
            repeat
                if targetCar.PrimaryPart then
                    local pos = targetCar.PrimaryPart.Position - Vector3.new(0, 2, 0) -- -2 abaixo
                    Ball.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(45), math.rad(60), math.rad(30))
                else
                    local part = targetCar:FindFirstChildWhichIsA("BasePart")
                    if part then
                        local pos = part.Position - Vector3.new(0, 2, 0)
                        Ball.CFrame = CFrame.new(pos)
                    end
                end
                task.wait(1/6000)
            until not targetCar:IsDescendantOf(Workspace) or targetPlayer.Parent ~= Players
        end)
    end
})

TabPlayers:AddButton({
    Name = "Click Fling :",
    Description = "utiliza um bug da gun otimo",
    Callback = function()
        local args = {
    [1] = "PickingTools",
    [2] = "Assault"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

-- BotÃ£o mÃ³vel para ativar/desativar o fireAtPart (sem prints)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local fireConnection = nil

-- FunÃ§Ã£o de disparo (nÃ£o alterada)
local function fireAtPart(clickedPart)
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local targetPlayer = Players:GetPlayerFromCharacter(clickedPart:FindFirstAncestorOfClass("Model"))
	if not targetPlayer or targetPlayer == LocalPlayer then return end

	local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault")
		and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")

	if gunScript then
		local args = {
			clickedPart,
			clickedPart,
			Vector3.new(1e14, 1e14, 1e14),
			clickedPart.Position,
			gunScript:FindFirstChild("MuzzleEffect"),
			gunScript:FindFirstChild("HitEffect"),
			0,
			0,
			{ [1] = false },
			{
				[1] = 25,
				[2] = Vector3.new(100, 100, 100),
				[3] = BrickColor.new(29),
				[4] = 0.25,
				[5] = Enum.Material.SmoothPlastic,
				[6] = 0.25
			},
			true,
			false
		}

		local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
		if event then
			event:FireServer(unpack(args))
		end
	end
end

local function ativarFire()
	if fireConnection then return end
	fireConnection = Mouse.Button1Down:Connect(function()
		local clicked = Mouse.Target
		if clicked then
			local targetPlayer = Players:GetPlayerFromCharacter(clicked:FindFirstAncestorOfClass("Model"))
			if targetPlayer and targetPlayer ~= LocalPlayer then
				_G.selectedTarget = targetPlayer.Name
				fireAtPart(clicked)
			end
		end
	end)
end

local function desativarFire()
	if fireConnection then
		fireConnection:Disconnect()
		fireConnection = nil
	end
end

-- Criar botÃ£o mÃ³vel
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "AssaultToggleGui"
gui.ResetOnSpawn = false

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 120, 0, 40)
button.Position = UDim2.new(0.5, -60, 0.8, 0)
button.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
button.Text = "ASSAULT: OFF"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.Font = Enum.Font.GothamBold
button.BorderSizePixel = 0
button.AutoButtonColor = false
button.Parent = gui
button.Active = true
button.Draggable = true

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 10)
uicorner.Parent = button

local uistroke = Instance.new("UIStroke")
uistroke.Thickness = 2
uistroke.Color = Color3.fromRGB(255, 255, 255)
uistroke.Parent = button

-- Alternar entre ativar e desativar
local assaultAtivo = false
button.MouseButton1Click:Connect(function()
	assaultAtivo = not assaultAtivo
	if assaultAtivo then
		button.Text = "ASSAULT: ON"
		button.BackgroundColor3 = Color3.fromRGB(80, 255, 80)
		ativarFire()
	else
		button.Text = "ASSAULT: OFF"
		button.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
		desativarFire()
	end
end)
    end
})

TabPlayers:AddSection({ " auto target" })

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local autoFling = false -- toggle para ativar/desativar

-- Toggle Auto Fling Ball
TabPlayers:AddToggle({
    Name = "Auto Fling Ball",
    Default = false,
    Callback = function(state)
        autoFling = state
        if autoFling then
            task.spawn(function()
                while autoFling do
                    local targetPlayer = Players:FindFirstChild(selectedPlayer) -- já vem do seu hub
                    if targetPlayer and targetPlayer.Character then
                        local character = player.Character or player.CharacterAdded:Wait()
                        local backpack = player:WaitForChild("Backpack")
                        local ServerBalls = Workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_SoccerBalls")

                        -- Equipar bola
                        if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
                            ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
                        end

                        repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")
                        local ballTool = backpack:FindFirstChild("SoccerBall")
                        if ballTool then
                            ballTool.Parent = character
                        end

                        -- Espera bola no Server
                        repeat task.wait() until ServerBalls:FindFirstChild("Soccer" .. player.Name)
                        local Ball = ServerBalls:FindFirstChild("Soccer" .. player.Name)
                        Ball.CanCollide = false
                        Ball.Massless = true
                        Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

                        -- BodyVelocity
                        if Ball:FindFirstChildWhichIsA("BodyVelocity") then
                            Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
                        end

                        local bv = Instance.new("BodyVelocity")
                        bv.Name = "FlingPower"
                        bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
                        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bv.P = 9e900
                        bv.Parent = Ball

                        -- Loop colar no alvo
                        local tchar = targetPlayer.Character
                        local troot = tchar:FindFirstChild("HumanoidRootPart")
                        local thum = tchar:FindFirstChild("Humanoid")
                        if troot and thum then
                            repeat
                                local pos = troot.Position + (troot.Velocity / 1.5)
                                Ball.CFrame = CFrame.new(pos)
                                Ball.Orientation += Vector3.new(45, 60, 30)
                                task.wait(1/6000)
                            until not autoFling or thum.Health <= 0 or not tchar:IsDescendantOf(Workspace) or targetPlayer.Parent ~= Players
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    end
})

TabPlayers:AddSection({ " Orbit TROLL" })

-- Config global
OrbitSettings = {
    Speed = 2,
    Distance = 6,
    Height = 0,
    Fling = false
}


-- Sliders
TabPlayers:AddSlider({
    Name = "Speed Spin",
    Min = 1,
    Max = 20,
    Default = 2,
    Callback = function(Value)
        OrbitSettings.Speed = Value
    end
})

TabPlayers:AddSlider({
    Name = "Distance",
    Min = 1,
    Max = 20,
    Default = 6,
    Callback = function(Value)
        OrbitSettings.Distance = Value
    end
})

TabPlayers:AddSlider({
    Name = "Height",
    Min = -10,
    Max = 10,
    Default = 0,
    Callback = function(Value)
        OrbitSettings.Height = Value
    end
})

---------------------------------------------------
-- Função global que cria a orbita
function orbitBall(targetChar, modeName)
    if not targetChar or not targetChar:FindFirstChild("HumanoidRootPart") then return end

    player = game:GetService("Players").LocalPlayer
    character = player.Character or player.CharacterAdded:Wait()
    backpack = player:WaitForChild("Backpack")
    serverBalls = workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_SoccerBalls")

    -- garantir bola
    if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
    end
    repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")
    ballTool = backpack:FindFirstChild("SoccerBall")
    if ballTool then ballTool.Parent = character end

    repeat task.wait() until serverBalls:FindFirstChild("Soccer"..player.Name)
    orb = serverBalls:FindFirstChild("Soccer"..player.Name)
    if not orb then return end
    orb.Name = modeName

    orb.CanCollide = false
    orb.Massless = true
    orb.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

    if orb:FindFirstChild("FlingPower") then orb.FlingPower:Destroy() end

    -- só flinga se OrbitSettings.Fling == true
    if OrbitSettings.Fling then
        bv = Instance.new("BodyVelocity")
        bv.Name = "FlingPower"
        bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.P = 9e900
        bv.Parent = orb
    end

    loop = Instance.new("BindableEvent")
    loop.Name = modeName.."Loop"
    loop.Parent = character

    task.spawn(function()
        while loop.Parent and orb and orb.Parent and targetChar and targetChar.Parent do
            angle = tick() * OrbitSettings.Speed
            offset = CFrame.new(
                math.cos(angle) * OrbitSettings.Distance,
                OrbitSettings.Height,
                math.sin(angle) * OrbitSettings.Distance
            )
            orb.CFrame = targetChar.HumanoidRootPart.CFrame * offset
            task.wait(1/60)
        end
    end)
end

---------------------------------------------------
-- Toggles
TabPlayers:AddToggle({
    Name = "Orbit Ball",
    Description = "A bola gira em volta de você.",
    Default = false,
    Callback = function(state)
        char = game:GetService("Players").LocalPlayer.Character
        loop = char and char:FindFirstChild("OrbitBallLoop")
        if state then
            orbitBall(char, "OrbitBall")
        elseif loop then
            loop:Destroy()
            orb = workspace.WorkspaceCom["001_SoccerBalls"]:FindFirstChild("OrbitBall")
            if orb then orb:Destroy() end
        end
    end
})

TabPlayers:AddToggle({
    Name = "Orbit Ball [Alvo]",
    Description = "A bola gira em volta do alvo selecionado.",
    Default = false,
    Callback = function(state)
        target = selectedPlayer and game:GetService("Players"):FindFirstChild(selectedPlayer)
        if not target then return end
        char = game:GetService("Players").LocalPlayer.Character
        loop = char and char:FindFirstChild("OrbitTargetLoop")
        if state then
            orbitBall(target.Character, "OrbitTarget")
        elseif loop then
            loop:Destroy()
            orb = workspace.WorkspaceCom["001_SoccerBalls"]:FindFirstChild("OrbitTarget")
            if orb then orb:Destroy() end
        end
    end
})

TabPlayers:AddToggle({
    Name = "Orbit Fling",
    Description = "Se ativado, a orbit flinga ao encostar. Se desativado, só gira normal.",
    Default = false,
    Callback = function(state)
        OrbitSettings.Fling = state
    end
})

local TabSound = Window:MakeTab({"Sound", "box"})

local loopAtivo = false
local InputID = ""

TabSound:AddTextBox({
    Name = "Insira o ID Audio All",
    Description = "Digite o ID do som que deseja tocar",
    Default = "",
    PlaceholderText = "Exemplo",
    ClearTextOnFocus = true,
    Callback = function(text)
        InputID = tonumber(text)
    end
})

local function fireServer(eventName, args)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild(eventName)
    if event then
        pcall(function()
            event:FireServer(unpack(args))
        end)
    end
end

TabSound:AddButton({
    Name = "Tocar Som",
    Description = "Clique para tocar a mÃºsica inserida",
    Callback = function()
        if InputID then
            fireServer("1Gu1nSound1s", {Workspace, InputID, 1})
            local globalSound = Instance.new("Sound", Workspace)
            globalSound.SoundId = "rbxassetid://" .. InputID
            globalSound.Looped = false
            globalSound:Play()
            task.wait(3)
            globalSound:Destroy()
        end
    end
})

TabSound:AddToggle({
    Name = "Loop",
    Description = "Ative para colocar o som em loop",
    Default = false,
    Callback = function(state)
        loopAtivo = state
        if loopAtivo then
            spawn(function()
                while loopAtivo do
                    if InputID then
                        fireServer("1Gu1nSound1s", {Workspace, InputID, 1})
                        local globalSound = Instance.new("Sound", Workspace)
                        globalSound.SoundId = "rbxassetid://" .. InputID
                        globalSound.Looped = false
                        globalSound:Play()
                        task.spawn(function()
                            task.wait(3)
                            globalSound:Destroy()
                        end)
                    end
                    task.wait(1)
                end
            end)
        end
    end
})

local function createSoundDropdown(title, musicOptions, defaultOption)
    local musicNames = {}
    local categoryMap = {}
    for category, sounds in pairs(musicOptions) do
        for _, music in ipairs(sounds) do
            if music.name ~= "" and music.id ~= "4354908569" then
                table.insert(musicNames, music.name)
                categoryMap[music.name] = {id = music.id, category = category}
            end
        end
    end

    local selectedSoundID = nil
    local currentVolume = 1
    local currentPitch = 1 -- velocidade do som

    local function playSound(soundId, volume, pitch)
        -- envia pro servidor com a velocidade no [3]
        fireServer("1Gu1nSound1s", {Workspace, soundId, pitch})

        -- som local (preview)
        local globalSound = Instance.new("Sound")
        globalSound.Parent = Workspace
        globalSound.SoundId = "rbxassetid://" .. soundId
        globalSound.Volume = volume
        globalSound.PlaybackSpeed = pitch -- controla a velocidade
        globalSound.Looped = false
        globalSound:Play()
        task.spawn(function()
            task.wait(3)
            globalSound:Destroy()
        end)
    end

    -- Dropdown para escolher o som
    TabSound:AddDropdown({
        Name = title,
        Description = "Escolha um som para tocar no servidor",
        Default = defaultOption,
        Multi = false,
        Options = musicNames,
        Callback = function(selectedSound)
            if selectedSound and categoryMap[selectedSound] then
                selectedSoundID = categoryMap[selectedSound].id
            else
                selectedSoundID = nil
            end
        end
    })

    -- Botão de tocar
    TabSound:AddButton({
        Name = "Tocar Som Selecionado",
        Description = "Clique para tocar o som do dropdown",
        Callback = function()
            if selectedSoundID then
                playSound(selectedSoundID, currentVolume, currentPitch)
            end
        end
    })

    -- Toggle de loop
    local dropdownLoopActive = false
    TabSound:AddToggle({
        Name = "Loop",
        Description = "Ativa o loop do som selecionado",
        Default = false,
        Callback = function(state)
            dropdownLoopActive = state
            if state then
                task.spawn(function()
                    while dropdownLoopActive do
                        if selectedSoundID then
                            playSound(selectedSoundID, currentVolume, currentPitch)
                        end
                        task.wait(1)
                    end
                end)
            end
        end
    })

    -- TextBox para velocidade
    TabSound:AddTextBox({
        Name = "Velocidade do Som",
        Description = "Digite a velocidade (ex: 1 = normal, 2 = rápido, 0.5 = lento)",
        PlaceholderText = "1",
        Callback = function(value)
            local num = tonumber(value)
            if num then
                currentPitch = num
            end
        end
    })
end

-- Dropdown "Memes"
createSoundDropdown("Selecione um meme", {
    ["Memes"] = {
        {name = "pankapakan", id = "122547522269143"},
        {name = "gemido", id = "106835463235574"},
        {name = "gemidao v2", id = "112179417472137"},
        {name = "Gemido ultra rápido", id = "128863565301778"},
        {name = "sus sex", id = "128137573022197"},
        {name = "gemido estranho", id = "131219411501419"},
        {name = "gemido kawai", id = "100409245129170"},
        {name = "Hentai gemido", id = "125037339642322"},
        {name = "Hentai wiaaaaan", id = "88332347208779"},
        {name = "iamete cunasai", id = "108494476595033"},
        {name = "dodichan onnn...", id = "134640594695384"},
        {name = "Toma jack", id = "132603645477541"},
        {name = "Toma jackV2", id = "100446887985203"},
        {name = "Toma jack no sol quente", id = "97476487963273"},
        {name = "ifood", id = "133843750864059"},
        {name = "pelo geito ela ta querendo ram", id = "94395705857835"},
        {name = "lula vai todo mundo", id = "136804576009416"},
        {name = "coringa", id = "84663543883498"},
        {name = "shoope", id = "8747441609"},
        {name = "quenojo", id = "103440368630269"},
        {name = "sai dai lava prato", id = "101232400175829"},
        {name = "se e loko numconpeça", id = "78442476709262"},
        {name = "mita sequer que eu too uma", id = "94889439372168"},
        {name = "Hoje vou ser tua mulher e tu", id = "90844637105538"},
        {name = "Deita aqui eu mandei vc deitar sirens", id = "100291188941582"},
        {name = "miau", id = "131804436682424"},
        {name = "skibidi", id = "128771670035179"},
        {name = "BIRULEIBI", id = "121569761604968"},
        {name = "sai", id = "121169949217007"},
        {name = "risada boa dms", id = "127589011971759"},
        {name = "vacilo perna de pau", id = "106809680656199"},
        {name = "gomo gomo no!!!", id = "137067472449625"},
        {name = "arroto", id = "140203378050178"},
        {name = "iraaaa", id = "136752451575091"},
        {name = "não fica se achando muito não", id = "101588606280167"},
        {name = "WhatsApp notificação", id = "107004225739474"},
        {name = "Samsung", id = "123767635061073"},
        {name = "Shiiii", id = "120566727202986"},
        {name = "ai_tomaa miku", id = "139770074770361"},
        {name = "kuru_kuru", id = "122465710753374"},
        {name = "PM ROCAM", id = "96161547081609"},
        {name = "cavalo!!", id = "78871573440184"},
        {name = "deixa os garoto brinca", id = "80291355054807"},
        {name = "flamengo", id = "137774355552052"},
        {name = "sai do mei satnas", id = "127944706557246"},
        {name = "namoral agora e a hora", id = "120677947987369"},
        {name = "n pode me chutar pq seu celebro e burro", id = "82284055473737"},
        {name = "vc ta fudido vou te pegar", id = "120214772725166"},
        {name = "deley", id = "102906880476838"},
        {name = "Tu e um beta", id = "130233956349541"},
        {name = "Porfavor n tira eu nao", id = "85321374020324"},
        {name = "Olá beleza vc pode me dá muitos", id = "74235334504693"},
        {name = "Discord sus", id = "122662798976905"},
        {name = "rojao apito", id = "6549021381"},
        {name = "off", id = "1778829098"},
        {name = "Kazuma kazuma", id = "127954653962405"},
        {name = "sometourado", id = "123592956882621"},
        {name = "Estouradoespad", id = "136179020015211"},
        {name = "Alaku bommm", id = "110796593805268"},
        {name = "busss", id = "139841197791567"},
        {name = "Estourado wItb", id = "137478052262430"},
        {name = "sla", id = "116672405522828"},
        {name = "HA HA HA", id = "138236682866721"}
    }
}, "pankapakan")

TabSound:AddSection({ "Jumpscar -" })

-- Dropdown "Efeito/Terror"
createSoundDropdown("Selecione um terror ou efeito", {
    ["efeito/terror"] = {
        {name = "jumpscar", id = "91784486966761"},
        {name = "gritoestourado", id = "7520729342"},
        {name = "gritomedo", id = "113029085566978"},
        {name = "Nukesiren", id = "9067330158"},
        {name = "nuclear sirenv2", id = "675587093"},
        {name = "Alertescola", id = "6607047008"},
        {name = "Memealertsiren", id = "8379374771"},
        {name = "sirenv3", id = "6766811806"},
        {name = "alet malaysia", id = "7714172940"},
        {name = "Risada", id = "79191730206814"},
        {name = "Hahahah", id = "90096947219465"},
        {name = "scream", id = "314568939"},
        {name = "Terrified meme scream", id = "5853668794"},
        {name = "Sonic.exe Scream Effect", id = "146563959"},
        {name = "Demon Scream", id = "2738830850"},
        {name = "SCP-096 Scream (raging)", id = "343430735"},
        {name = "Nightmare Yelling Bursts", id = "9125713501"},
        {name = "HORROR SCREAM 07", id = "9043345732"},
        {name = "Female Scream Woman Screams", id = "9114397912"},
        {name = "Scream1", id = "1319496541"},
        {name = "Scream2", id = "199978176"},
        {name = "scary maze scream", id = "270145703"},
        {name = "SammyClassicSonicFan's Scream", id = "143942090"},
        {name = "FNAF 2 Death Scream", id = "1572549161"},
        {name = "cod zombie scream", id = "8566359672"},
        {name = "Slendytubbies- CaveTubby Scream", id = "1482639185"},
        {name = "FNAF 2 Death Scream", id = "5537531920"},
        {name = "HORROR SCREAM 15", id = "9043346574"},
        {name = "Jumpscare Scream", id = "6150329916"},
        {name = "FNaF: Security Breach", id = "2050522547"},
        {name = "llllllll", id = "5029269312"},
        {name = "loud jumpscare", id = "7236490488"},
        {name = "fnaf", id = "6982454389"},
        {name = "Pinkamena Jumpscare 1", id = "192334186"},
        {name = "Ennard Jumpscare 2", id = "629526707"},
        {name = "a sla medo dino", id = "125506416092123"}
    }
}, "jumpscar")

TabSound:AddSection({ "Save sound  -" })

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")

-- Configurações
local saveFileName = "SavedSounds.txt"
local currentVolume = 1
local currentPitch = 1
local loopSoundActive = false
local loopDelay = 3

-- Estado
local selectedSoundName = nil
local selectedSoundID = nil
local savedSounds = {}
local savedSoundNames = {}

-- Funções
local function fireRemotePlaySound(soundId, volume)
    local remote = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1nSound1s")
    if remote then
        remote:FireServer(Workspace, soundId, volume)
    end
end

local function playSound(soundId, volume, pitch)
    fireRemotePlaySound(soundId, volume)

    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://" .. soundId
    s.Volume = volume
    s.Pitch = pitch
    s.Looped = false
    s.Parent = Workspace
    s:Play()
    task.delay(5, function()
        s:Destroy()
    end)
end

local function playLoop(soundId, volume, pitch, delayBetween)
    loopSoundActive = true
    task.spawn(function()
        while loopSoundActive and selectedSoundID == soundId do
            playSound(soundId, volume, pitch)
            task.wait(delayBetween)
        end
    end)
end

local function stopLoop()
    loopSoundActive = false
end

local function loadSavedSounds()
    local data = {}
    local success, content = pcall(function() return readfile(saveFileName) end)
    if success and content then
        local ok, parsed = pcall(function() return HttpService:JSONDecode(content) end)
        if ok and type(parsed) == "table" then
            data = parsed
        end
    end
    return data
end

local function saveSound(name, id)
    if not name or name == "" or not id or id == "" then
        print("Erro: Nome e ID obrigatórios!")
        return
    end

    local data = loadSavedSounds()
    data[name] = id
    writefile(saveFileName, HttpService:JSONEncode(data))

    print("Som salvo:", name, id)
end

local function refreshSavedSoundsDropdown()
    savedSounds = loadSavedSounds()
    savedSoundNames = {}
    for name, _ in pairs(savedSounds) do
        table.insert(savedSoundNames, name)
    end
    table.sort(savedSoundNames)
    return savedSoundNames
end

-- Inicializa sons salvos
refreshSavedSoundsDropdown()

-- Inputs
local inputName, inputID = "", ""

TabSound:AddTextBox({
    Name = "Nome do Som",
    Description = "Nome amigável",
    PlaceholderText = "Exemplo: Minha Música",
    Callback = function(Value)
        inputName = Value
    end
})

TabSound:AddTextBox({
    Name = "ID do Som",
    Description = "Som em números",
    PlaceholderText = "Digite o ID",
    Callback = function(Value)
        if tonumber(Value) then
            inputID = Value
        else
            inputID = nil
        end
    end
})

local SaveButton = TabSound:AddButton({" Salvar Som", function()
    if inputName and inputName ~= "" and inputID and inputID ~= "" then
        saveSound(inputName, inputID)
        refreshSavedSoundsDropdown()
        Dropdown:Refresh(savedSoundNames) -- atualiza lista
    else
        print("Preencha nome e ID válidos.")
    end
end})

-- Dropdown Sons Salvos
local Dropdown = TabSound:AddDropdown({
    Name = " Sons Salvos",
    Description = "Escolha o som salvo",
    Options = savedSoundNames,
    Default = savedSoundNames[1] or "Nenhum",
    Flag = "dropdown_sons"
})
Dropdown:Callback(function(Value)
    selectedSoundName = Value
    selectedSoundID = savedSounds[Value]
    stopLoop()
end)


-- Botão Deletar Som Selecionado


-- Botão de tocar
local PlayButton = TabSound:AddButton({" Tocar Som", function()
    if selectedSoundID then
        stopLoop()
        playSound(selectedSoundID, currentVolume, currentPitch)
    else
        print("Nenhum som selecionado.")
    end
end})

-- Toggle de Loop
local LoopToggle = TabSound:AddToggle({
    Name = " Loop Som",
    Description = "Repetir som selecionado",
    Default = false
})
LoopToggle:Callback(function(v)
    if v then
        if selectedSoundID then
            playLoop(selectedSoundID, currentVolume, currentPitch, loopDelay)
        else
            print("Selecione um som salvo.")
        end
    else
        stopLoop()
    end
end)

-- Slider Delay
local DelaySlider = TabSound:AddSlider({
    Name = " Velocidade Loop (s)",
    Description = "Delay entre repetições",
    Min = 1,
    Max = 10,
    Default = 3
})
DelaySlider:Callback(function(Value)
    loopDelay = Value
    if loopSoundActive and selectedSoundID then
        stopLoop()
        playLoop(selectedSoundID, currentVolume, currentPitch, loopDelay)
    end
end)

local DeleteButton = TabSound:AddButton({" Deletar Som", function()
    if selectedSoundName and savedSounds[selectedSoundName] then
        -- Carrega os sons salvos
        local data = loadSavedSounds()

        -- Remove o som selecionado
        data[selectedSoundName] = nil

        -- Salva novamente o arquivo sem o som removido
        writefile(saveFileName, HttpService:JSONEncode(data))

        print("Som deletado:", selectedSoundName)

        -- Atualiza a lista e limpa a seleção
        refreshSavedSoundsDropdown()
        Dropdown:Refresh(savedSoundNames)
        selectedSoundName = nil
        selectedSoundID = nil
    else
        print("Nenhum som selecionado para deletar.")
    end
end})

local TabLag = Window:MakeTab({ "Lag", "Bomb" })

-- Lag Taser Toggle
TabLag:AddToggle({
    Name = "Lag Taser ",
    Default = false,
    Callback = function(v)
        loopEnabled = v
        if loopEnabled then
            local function duplicarTaser()
                local Player = game.Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local RootPart = Character:WaitForChild("HumanoidRootPart")
                local Taser = game.Workspace.WorkspaceCom["001_GiveTools"]:FindFirstChild("Taser")

                if Taser and Taser:FindFirstChild("ClickDetector") then
                    local OldPos = RootPart.CFrame
                    for i = 1, 12 do
                        RootPart.CFrame = Taser.CFrame
                        fireclickdetector(Taser.ClickDetector)
                        task.wait()
                    end
                    RootPart.CFrame = OldPos
                end
            end

            task.spawn(function()
                while loopEnabled do
                    duplicarTaser()
                    task.wait(0.001)
                end
            end)
        end
    end
})

-- Lag com Bomba
TabLag:AddToggle({
    Name = "Lag Bomba",
    Default = false,
    Callback = function(v)
        BombActive = v
        if BombActive then
            local Player = game.Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local RootPart = Character:WaitForChild("HumanoidRootPart")
            local WorkspaceService = game:GetService("Workspace")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Bomb = WorkspaceService.WorkspaceCom["001_CriminalWeapons"].GiveTools.Bomb

            task.spawn(function()
                while BombActive do
                    if Bomb and RootPart then
                        RootPart.CFrame = Bomb.CFrame
                        fireclickdetector(Bomb.ClickDetector)
                        task.wait(0.00001)
                    end
                end
            end)

            task.spawn(function()
                while BombActive do
                    local VirtualInputManager = game:GetService("VirtualInputManager")
                    VirtualInputManager:SendMouseButtonEvent(500, 500, 0, true, game, 0)
                    task.wait(1.5)
                    VirtualInputManager:SendMouseButtonEvent(500, 500, 0, false, game, 0)
                    ReplicatedStorage.RE["1Blo1wBomb1sServe1r"]:FireServer("Bomb" .. Player.Name)
                    task.wait(1.5)
                end
            end)
        end
    end
})

-- Lag com iPhone
TabLag:AddToggle({
    Name = "Lag iPhone",
    Default = false,
    Callback = function(v)
        IphoneLagActive = v
        if IphoneLagActive then
            local Player = game.Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local RootPart = Character:WaitForChild("HumanoidRootPart")
            local Workspace = game.Workspace
            local ReplicatedStorage = game.ReplicatedStorage
            local Iphone = Workspace.WorkspaceCom["001_CommercialStores"].CommercialStorage1.Store.Tools.Iphone

            task.spawn(function()
                while IphoneLagActive do
                    RootPart.CFrame = Iphone.CFrame
                    fireclickdetector(Iphone.ClickDetector)
                    task.wait(0.00001)
                end
            end)

            task.spawn(function()
                while IphoneLagActive do
                    local VirtualInputManager = game:GetService("VirtualInputManager")
                    VirtualInputManager:SendMouseButtonEvent(500, 500, 0, true, game, 0)
                    task.wait(1.5)
                    VirtualInputManager:SendMouseButtonEvent(500, 500, 0, false, game, 0)
                    ReplicatedStorage.RE["1Blo1wBomb1sServe1r"]:FireServer("Iphone" .. Player.Name)
                    task.wait(1.5)
                end
            end)
        end
    end
})

-- Lag Laptop Toggle
TabLag:AddToggle({
    Name = "Lag Laptop ",
    Default = false,
    Callback = function(v)
        LaptopLoop = v
        if LaptopLoop then
            local Player = game.Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local RootPart = Character:WaitForChild("HumanoidRootPart")
            local Laptop = workspace.WorkspaceCom["001_GiveTools"]:FindFirstChild("Laptop")
            if not Laptop then return end
            local OldPos = RootPart.CFrame

            task.spawn(function()
                while LaptopLoop do
                    RootPart.CFrame = Laptop.CFrame
                    fireclickdetector(Laptop.ClickDetector)
                    task.wait()
                end
                RootPart.CFrame = OldPos
            end)
        end
    end
})

-- Lag Book Toggle
TabLag:AddToggle({
    Name = "Lag Book ",
    Default = false,
    Callback = function(v)
        BookLoop = v
        if BookLoop then
            local Player = game.Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local RootPart = Character:WaitForChild("HumanoidRootPart")
            local Book = workspace.WorkspaceCom["001_DayCare"].Tools:FindFirstChild("Book")
            if not Book then return end
            local OldPos = RootPart.CFrame

            task.spawn(function()
                while BookLoop do
                    RootPart.CFrame = Book.CFrame
                    fireclickdetector(Book.ClickDetector)
                    task.wait()
                end
                RootPart.CFrame = OldPos
            end)
        end
    end
})

local loopGhostHunter = false

TabLag:AddToggle({
    Name = "Lag GhostHunter",
    Default = false,
    Callback = function(v)
        loopGhostHunter = v

        if loopGhostHunter then
            local function spamGhostMeter()
                local Player = game.Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local RootPart = Character:WaitForChild("HumanoidRootPart")
                local GhostMeter = workspace.WorkspaceCom["001_GiveTools"]:FindFirstChild("GhostMeter")

                if GhostMeter and GhostMeter:FindFirstChild("ClickDetector") then
                    local OldPos = RootPart.CFrame
                    for i = 1, 12 do
                        RootPart.CFrame = GhostMeter.CFrame
                        fireclickdetector(GhostMeter.ClickDetector)
                        task.wait()
                    end
                    RootPart.CFrame = OldPos
                end
            end

            task.spawn(function()
                while loopGhostHunter do
                    spamGhostMeter()
                    task.wait(0.001)
                end
            end)
        end
    end
})

TabLag:AddSection({ " Lag com Bola [E um pouco fraco" })

local BNumber = 2000 -- Valor padrÃ£o inicial

Toggle = TabLag:AddToggle({
Name = "Basketball Spam",
Default = false,
Callback = function(Value)
BasketToggleH = Value
if BasketToggleH then
local Player = game.Players.LocalPlayer
local Character = Player.Character
local RootPart = Character:FindFirstChild("HumanoidRootPart")
local OldPosition = RootPart.CFrame

-- Local onde a bola fica  
        local Clone = workspace.WorkspaceCom["001_GiveTools"].Basketball  

        -- Loop para coletar vÃ¡rias bolas  
        for i = 1, BNumber do  
            task.wait()  
            RootPart.CFrame = Clone.CFrame  
            fireclickdetector(Clone.ClickDetector)  
        end  

        -- Voltar Ã  posiÃ§Ã£o original  
        task.wait()  
        RootPart.CFrame = OldPosition  
    end  
end

})

local Slider = TabLag:AddSlider({
Name = "Amount of Basketballs",
MinValue = 1,
MaxValue = 2000,
Default = BNumber,
Increase = 1,
Callback = function(Value)
BNumber = Value
end
})

local ClickSpamEnabled = false

Toggle = TabLag:AddToggle({
    Name = "Spam balls basic",
    Default = false,
    Callback = function(Value)
        ClickSpamEnabled = Value
        local Player = game.Players.LocalPlayer
        local Mouse = Player:GetMouse()
        local Character = Player.Character

        task.spawn(function()
            while ClickSpamEnabled do
                task.wait(0.1) -- tempo mÃ­nimo possÃ­vel
                for _, v in ipairs(Character:GetChildren()) do
                    if v.Name == "Basketball" and v:FindFirstChild("ClickEvent") then
                        local args = {
                            [1] = Mouse.Hit.p
                        }
                        v.ClickEvent:FireServer(unpack(args))
                    end
                end
            end
        end)
    end
})

local ClickSpamEnabled = false

Toggle = TabLag:AddToggle({
    Name = "Spam balls turbo",
    Default = false,
    Callback = function(Value)
        ClickSpamEnabled = Value
        local Player = game.Players.LocalPlayer
        local Mouse = Player:GetMouse()
        local Character = Player.Character

        task.spawn(function()
            while ClickSpamEnabled do
                task.wait(0.01) -- tempo mÃ­nimo possÃ­vel
                for _, v in ipairs(Character:GetChildren()) do
                    if v.Name == "Basketball" and v:FindFirstChild("ClickEvent") then
                        local args = {
                            [1] = Mouse.Hit.p
                        }
                        v.ClickEvent:FireServer(unpack(args))
                    end
                end
            end
        end)
    end
})


local TabAnt = Window:MakeTab({ "Ant", "Shield" })

TabAnt:AddToggle({
    Name = "Ant lag all <",
    Description = "funciona pra vc minimizar o lag que vc ta usando ou de outro",
    Default = false,
    Callback = function(state)
        getgenv().AntLagAllEnabled = state

        local itemsToRemove = { "Laptop", "Bomb", "Phone", "FireEx", "FireHose", "Basketball" }
        local removeLookup = {}
        
        for _, name in ipairs(itemsToRemove) do
            removeLookup[name] = true
        end

        local ClearDelay = 0.5

        -- FunÃ§Ã£o para destruir os itens do personagem
        local function destroyItemsInCharacter(character)
            if not character then return end
            for _, item in ipairs(character:GetChildren()) do
                if removeLookup[item.Name] then
                    pcall(function()
                        item:Destroy()
                    end)
                end
            end
        end

        -- FunÃ§Ã£o para processar os jogadores
        local function processPlayers()
            for _, player in ipairs(game.Players:GetPlayers()) do
                pcall(function()
                    if player.Character then
                        destroyItemsInCharacter(player.Character)
                    end
                end)
            end
        end

        -- Loop contÃ­nuo quando ativado
        task.spawn(function()
            while getgenv().AntLagAllEnabled do
                processPlayers()
                task.wait(ClearDelay)
            end
        end)
    end
})

TabAnt:AddToggle({
    Name = "Ant lag all v2 <",
    Description = "somente mais rapida",
    Default = false,
    Callback = function(state)
        getgenv().AntLagAllEnabled = state

        local itemsToRemove = { "Laptop", "Bomb", "Phone", "FireEx", "FireHose", "Basketball", "FireX" }
        local removeLookup = {}
        for _, name in ipairs(itemsToRemove) do
            removeLookup[name] = true
        end

        local ClearDelay = 0.1

        -- Função para destruir os itens do personagem
        local function destroyItemsInCharacter(character)
            if not character then return end
            for _, item in ipairs(character:GetChildren()) do
                if removeLookup[item.Name] then
                    pcall(function()
                        item:Destroy()
                    end)
                end
            end
        end

        -- Monitora os itens adicionados em tempo real
        local function monitorCharacter(character)
            destroyItemsInCharacter(character) -- já limpa os que estão
            character.ChildAdded:Connect(function(item)
                if getgenv().AntLagAllEnabled and removeLookup[item.Name] then
                    task.defer(function()
                        pcall(function()
                            item:Destroy()
                        end)
                    end)
                end
            end)
        end

        -- Monitora todos os players
        local function setupPlayer(player)
            if player.Character then
                monitorCharacter(player.Character)
            end
            player.CharacterAdded:Connect(monitorCharacter)
        end

        -- Ativa monitoramento global
        if state then
            for _, player in ipairs(game.Players:GetPlayers()) do
                setupPlayer(player)
            end
            game.Players.PlayerAdded:Connect(setupPlayer)

            -- Loop contínuo de reforço
            task.spawn(function()
                while getgenv().AntLagAllEnabled do
                    for _, player in ipairs(game.Players:GetPlayers()) do
                        pcall(function()
                            if player.Character then
                                destroyItemsInCharacter(player.Character)
                            end
                        end)
                    end
                    task.wait(ClearDelay)
                end
            end)
        end
    end
})

local player = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")

local renderConnection, seatedConnection, charConn

TabAnt:AddToggle({
    Name = "Anti Sit",
    Description = "eficaz contra croch mais fling ball sola",
    Default = false,
    Callback = function(Value)
        if Value then
            enableAntiSit(player.Character or player.CharacterAdded:Wait())
            charConn = player.CharacterAdded:Connect(function(char)
                disableAntiSit()
                enableAntiSit(char)
            end)
        else
            disableAntiSit()
        end
    end
})

-- FunÃƒÂ§ÃƒÂ£o que impede o jogador de sentar
function enableAntiSit(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

    seatedConnection = humanoid.Seated:Connect(function(active)
        if active then
            humanoid.Sit = false
            humanoid.SeatPart = nil
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            character:PivotTo(character:GetPivot() + Vector3.new(0, 5, 0))
        end
    end)

    renderConnection = rs.RenderStepped:Connect(function()
        if humanoid.Sit then
            humanoid.Sit = false
            humanoid.SeatPart = nil
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            character:PivotTo(character:GetPivot() + Vector3.new(0, 5, 0))
        end
    end)
end

-- FunÃƒÂ§ÃƒÂ£o para remover o anti sit
function disableAntiSit()
    if renderConnection then renderConnection:Disconnect() renderConnection = nil end
    if seatedConnection then seatedConnection:Disconnect() seatedConnection = nil end
    if charConn then charConn:Disconnect() charConn = nil end

    local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    end
end

-- VocÃƒÂª tambÃƒÂ©m pode usar isso depois se quiser desativar por script:
-- Toggle:Set(false)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local lastSafePos = Vector3.new(-26.09, 2.79, 6.11)
local avoidConn

TabAnt:AddToggle({
    Name = "Anti Void",
    Description = "meio ruim mais e eficaz",
    Default = false,
    Callback = function(Value)
        if avoidConn then
            avoidConn:Disconnect()
            avoidConn = nil
        end

        if Value then
            avoidConn = RunService.Stepped:Connect(function()
                local char = player.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                local pos = hrp.Position

                -- Atualiza a ÃƒÂºltima posiÃƒÂ§ÃƒÂ£o segura
                if pos.Y > -20 and pos.Y < 1000 and math.abs(pos.X) < 2000 and math.abs(pos.Z) < 2000 then
                    lastSafePos = pos
                end

                -- Detecta void ou posiÃƒÂ§ÃƒÂµes extremas
                if pos.Y < -50 or pos.Y > 1500 or math.abs(pos.X) > 3000 or math.abs(pos.Z) > 3000 then
                    hrp.CFrame = CFrame.new(lastSafePos)

                    pcall(function()
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Anti Avoid",
                            Text = "Tentativa de kill bloqueada",
                            Duration = 2
                        })
                    end)
                end
            end)
        end
    end
})

-- Para desativar programaticamente depois:
-- Toggle:Set(false)

TabAnt:AddToggle({
    Name = "Anti Kick",
    Description = "n Tenha medo de abusa com isto ativado",
    Default = false,
    Callback = function(Value)
        getgenv().ED_AntiKick = getgenv().ED_AntiKick or {}
        getgenv().ED_AntiKick.Enabled = Value

        if Value then
            -- Anti Kick Ativado
            local getgenv, getnamecallmethod, hookmetamethod, hookfunction, newcclosure, checkcaller, lower, gsub = getgenv, getnamecallmethod, hookmetamethod, hookfunction, newcclosure, checkcaller, string.lower, string.gsub

            if getgenv().ED_AntiKick.__loaded then return end
            getgenv().ED_AntiKick.__loaded = true

            local cloneref = cloneref or function(...) return ... end
            local clonefunction = clonefunction or function(...) return ... end

            local Players = cloneref(game:GetService("Players"))
            local LocalPlayer = cloneref(Players.LocalPlayer)
            local StarterGui = cloneref(game:GetService("StarterGui"))
            local SetCore = clonefunction(StarterGui.SetCore)
            local FindFirstChild = clonefunction(game.FindFirstChild)

            local CompareInstances = function(a, b)
                return typeof(a) == "Instance" and typeof(b) == "Instance"
            end

            local CanCastToSTDString = function(...)
                return pcall(FindFirstChild, game, ...)
            end

            getgenv().ED_AntiKick.SendNotifications = true
            getgenv().ED_AntiKick.CheckCaller = true

            local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
                local self, msg = ...
                local method = getnamecallmethod()

                if ((getgenv().ED_AntiKick.CheckCaller and not checkcaller()) or true)
                    and CompareInstances(self, LocalPlayer)
                    and gsub(method, "^%l", string.upper) == "Kick"
                    and getgenv().ED_AntiKick.Enabled then
                    
                    if CanCastToSTDString(msg) and getgenv().ED_AntiKick.SendNotifications then
                        SetCore(StarterGui, "SendNotification", {
                            Title = "Anti Kick",
                            Text = "Tentativa de kick bloqueada.",
                            Icon = "rbxassetid://6238540373",
                            Duration = 2
                        })
                    end
                    return
                end

                return OldNamecall(...)
            end))

            local OldKick; OldKick = hookfunction(LocalPlayer.Kick, newcclosure(function(...)
                local self, msg = ...
                if ((getgenv().ED_AntiKick.CheckCaller and not checkcaller()) or true)
                    and CompareInstances(self, LocalPlayer)
                    and getgenv().ED_AntiKick.Enabled then

                    if CanCastToSTDString(msg) and getgenv().ED_AntiKick.SendNotifications then
                        SetCore(StarterGui, "SendNotification", {
                            Title = "Anti Kick",
                            Text = "Tentativa de kick bloqueada.",
                            Icon = "rbxassetid://6238540373",
                            Duration = 2
                        })
                    end
                    return
                end
            end))

            -- NotificaÃƒÂ§ÃƒÂ£o de carregamento
            pcall(function()
                StarterGui:SetCore("SendNotification", {
                    Title = "Anexed Notificator Anti-Kick",
                    Text = "Script Anti-Kick ativado.",
                    Icon = "rbxassetid://6238537240",
                    Duration = 3
                })
            end)
        else
            pcall(function()
                StarterGui:SetCore("SendNotification", {
                    Title = "Anxed Notificator Anti-Kick",
                    Text = "Script Anti-Kick desativado.",
                    Icon = "rbxassetid://6238537240",
                    Duration = 3
                })
            end)
        end
    end
})

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local notifyEnabled = false -- Estado inicial

TabAnt:AddToggle({
    Name = "Notificar Entrada/SaÃ­da",
    Description = "mais o menos mais e util ",
    Default = false,
    Callback = function(state)
        notifyEnabled = state
    end
})

-- NotificaÃ§Ã£o quando um player entra
Players.PlayerAdded:Connect(function(player)
    if notifyEnabled then
        StarterGui:SetCore("SendNotification", {
            Title = "Jogador Entrou",
            Text = player.Name .. " entrou no jogo",
            Duration = 5
        })
    end
end)

-- NotificaÃ§Ã£o quando um player sai
Players.PlayerRemoving:Connect(function(player)
    if notifyEnabled then
        StarterGui:SetCore("SendNotification", {
            Title = "Jogador Saiu",
            Text = player.Name .. " saiu do jogo",
            Duration = 5
        })
    end
end)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local FPSLabel = Instance.new("TextLabel")
local MSLabel = Instance.new("TextLabel")

ScreenGui.Name = "StatsUI"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.2
Frame.Size = UDim2.new(0, 150, 0, 50)
Frame.Position = UDim2.new(1, -160, 1, -60)
Frame.BorderSizePixel = 0
Frame.AnchorPoint = Vector2.new(0, 0)
Frame.ClipsDescendants = true
Frame.ZIndex = 5
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

FPSLabel.Parent = Frame
FPSLabel.BackgroundTransparency = 1
FPSLabel.Position = UDim2.new(0, 10, 0, 5)
FPSLabel.Size = UDim2.new(1, -20, 0, 20)
FPSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.TextStrokeTransparency = 0.5
FPSLabel.Font = Enum.Font.GothamBold
FPSLabel.TextSize = 14
FPSLabel.Text = "FPS: 0"

MSLabel.Parent = Frame
MSLabel.BackgroundTransparency = 1
MSLabel.Position = UDim2.new(0, 10, 0, 25)
MSLabel.Size = UDim2.new(1, -20, 0, 20)
MSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MSLabel.TextStrokeTransparency = 0.5
MSLabel.Font = Enum.Font.GothamBold
MSLabel.TextSize = 14
MSLabel.Text = "MS: N/A"

local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")

local fps = 0
local frames = 0
local lastUpdate = tick()
local updating = false

local function UpdateStats()
    while updating do
        frames += 1
        local now = tick()

        if now - lastUpdate >= 1 then
            fps = frames
            frames = 0
            lastUpdate = now
            FPSLabel.Text = "FPS: " .. fps

            local pingStat = Stats:FindFirstChild("PerformanceStats")
            if pingStat and pingStat:FindFirstChild("Ping") then
                local ping = math.floor(pingStat.Ping:GetValue())
                MSLabel.Text = "MS: " .. ping
            else
                MSLabel.Text = "MS: N/A"
            end
        end
        RunService.RenderStepped:Wait()
    end
end

local function SetStatsVisible(visible)
    if visible then
        ScreenGui.Parent = game:GetService("CoreGui")
        if not updating then
            updating = true
            task.spawn(UpdateStats)
        end
    else
        updating = false
        ScreenGui.Parent = nil
    end
end

-- Toggle
TabAnt:AddToggle({
    Name = "Mostrar FPS/MS",
    Description = "otimo pra ver si ta com lag",
    Default = false,
    Callback = function(v)
        SetStatsVisible(v)
    end
})

local conexaoAutoRemocao
local alvo = "1Gu1nSound1s"
local objetosRestaurados = {} -- Armazena cópias e pais originais

local function removerAlvo()
    for _, obj in ipairs(game:GetDescendants()) do
        if obj.Name == alvo then
            pcall(function()
                local clone = obj:Clone()
                local parentOriginal = obj.Parent
                table.insert(objetosRestaurados, {Clone = clone, Parent = parentOriginal})
                obj:Destroy()
            end)
        end
    end
end

local function restaurarAlvo()
    for _, dados in ipairs(objetosRestaurados) do
        pcall(function()
            dados.Clone.Parent = dados.Parent
        end)
    end
    objetosRestaurados = {}
end

TabAnt:AddToggle({
    Name = "Ant sound All",
    Description = "ativado isso vc n consegue utilizar ele o sond all",
    Default = false,
    Callback = function(v)
        if v then
            removerAlvo()
            conexaoAutoRemocao = game.DescendantAdded:Connect(function(obj)
                if obj.Name == alvo then
                    task.wait(0.1)
                    pcall(function()
                        local clone = obj:Clone()
                        local parentOriginal = obj.Parent
                        table.insert(objetosRestaurados, {Clone = clone, Parent = parentOriginal})
                        obj:Destroy()
                    end)
                end
            end)
        else
            if conexaoAutoRemocao then
                conexaoAutoRemocao:Disconnect()
                conexaoAutoRemocao = nil
            end
            restaurarAlvo()
        end
    end
})

TabAnt:AddToggle({
    Name = "Noclip Balls",
    Description = "outros users Vao Chora com isso ",
    Default = false,
    Callback = function(v)
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Workspace = game:GetService("Workspace")
        local player = Players.LocalPlayer

        local NoclipConnection

        local function DisableCollision(model)
            if model then
                for _, part in ipairs(model:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end

        if v then
            if NoclipConnection then return end
            NoclipConnection = RunService.Stepped:Connect(function()
                local char = player.Character or player.CharacterAdded:Wait()
                DisableCollision(char)
                local container = workspace:FindFirstChild("WorkspaceCom")
                if container then
                    local folder = container:FindFirstChild("001_SoccerBalls")
                    DisableCollision(folder)
                end
            end)
        else
            if NoclipConnection then
                NoclipConnection:Disconnect()
                NoclipConnection = nil
            end
        end
    end
})

local remoteClone
local remoteParent
local alvoNome = "1Gu1n"
local alvoCaminho = game:GetService("ReplicatedStorage"):WaitForChild("RE")

local function removerRemote()
    local remote = alvoCaminho:FindFirstChild(alvoNome)
    if remote then
        pcall(function()
            remoteClone = remote:Clone()
            remoteParent = remote.Parent
            remote:Destroy()
        end)
    end
end

local function restaurarRemote()
    if remoteClone and remoteParent then
        pcall(function()
            remoteClone.Parent = remoteParent
        end)
        remoteClone = nil
        remoteParent = nil
    end
end

TabAnt:AddToggle({
    Name = "Ant bug/freeze/glitch",
    Description = "ativado vc n consegue usar",
    Default = false,
    Callback = function(v)
        if v then
            removerRemote()
            conexaoAutoRemocao = alvoCaminho.ChildAdded:Connect(function(obj)
                if obj.Name == alvoNome then
                    task.wait(0.1)
                    pcall(function()
                        remoteClone = obj:Clone()
                        remoteParent = obj.Parent
                        obj:Destroy()
                    end)
                end
            end)
        else
            if conexaoAutoRemocao then
                conexaoAutoRemocao:Disconnect()
                conexaoAutoRemocao = nil
            end
            restaurarRemote()
        end
    end
})

local TabAvatar = Window:MakeTab({ "Avatar", "Tag" })

TabAvatar:AddButton({
    Name = " R6",
    Description = "Animations",
    Callback = function()    
    loadstring(game:HttpGet('https://gist.githubusercontent.com/Imperador950/f9e54330eb4a92331204aae37ec11aef/raw/db18d1c348beb8a79931346597137518966f2188/Byshelby'))()
    end
})

TabAvatar:AddButton({
    Name = " R6 avatar",
    Description = "corpo r6 clássico",
    Callback = function()    
    
    local args = {
    [1] = {
        [1] = 106411216404626,
        [2] = 87202958751790,
        [3] = 81500432784353,
        [4] = 103452055306587,
        [5] = 129699548221468,
        [6] = 0
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

    
    
    end
})

TabAvatar:AddButton({
    Name = "Ficar InvisÃ­vel",
    Description = "Ficar invisÃ­vel FE",
Callback = function()
        
        local args = {
    [1] = {
        [1] = 102344834840946,
        [2] = 70400527171038,
        [3] = 0,
        [4] = 0,
        [5] = 0,
        [6] = 0
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(111858803548721)
local allaccessories = {}

for zxcwefwfecas, xcaefwefas in ipairs({
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.BackAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FaceAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FrontAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.NeckAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HatAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HairAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.ShouldersAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.WaistAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.GraphicTShirt
}) do
    for scacvdfbdb in string.gmatch(xcaefwefas, "%d+") do
        table.insert(allaccessories, tonumber(scacvdfbdb))
    end
end

wait()

for asdwr,asderg in ipairs(allaccessories) do
    task.spawn(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(asderg)
        print(asderg)
    end)
end
    end
})

TabAvatar:AddButton({
    Name = " smail avatar",
    Description = "otimo pra si esconder ",
    Callback = function()    
    
    local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

local args = {
    [1] = {
        [1] = 104157277410075,
        [2] = 86280536086607,
        [3] = 81974054542977,
        [4] = 74524984742501,
        [5] = 122626731952977,
        [6] = 134082579
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

    
    end
})

TabAvatar:AddButton({
    Name = "Giant Avatar ",
    Description = "horrivel pra scripters",
    Callback = function()    
    
    local args = {
    [1] = {
        [1] = 17713016036,
        [2] = 17713016151,
        [3] = 17713015861,
        [4] = 17713021340,
        [5] = 17713016191,
        [6] = 6340213
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

    
    
    end
})

TabAvatar:AddButton({
    Name = "CUSTOM ANIMATION FE",
    Description = "Animations Relista Ative O Outro Botao Pra Funciona",
    Callback = function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "SysAdmin UIâ€¢",
            Text = "reset to stop animations",
            Icon = "rbxthumb://type=Asset&id=119245873411783&w=150&h=150",
            Duration = 5
        })

        -- ConfiguraÃ§Ã£o do RemoteEvent
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local AnimationEvent = ReplicatedStorage:FindFirstChild("PlayAnimationEvent") or Instance.new("RemoteEvent")
        AnimationEvent.Name = "PlayAnimationEvent"
        AnimationEvent.Parent = ReplicatedStorage

        -- FunÃ§Ã£o para executar animaÃ§Ãµes no servidor
        AnimationEvent.OnServerEvent:Connect(function(player, animationType)
            local character = player.Character
            if character and character:FindFirstChild("Humanoid") then
                local humanoid = character:FindFirstChild("Humanoid")
                local animation = Instance.new("Animation")
                if animationType == "Backward" then
                    animation.AnimationId = "rbxassetid://10358526981"
                elseif animationType == "Leftward" then
                    animation.AnimationId = "rbxassetid://10404604071"
                elseif animationType == "Rightward" then
                    animation.AnimationId = "rbxassetid://10404627994"
                end

                local animationTrack = humanoid:LoadAnimation(animation)

                if animationType == "Stop" then
                    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
                        track:Stop()
                    end
                else
                    animationTrack:Play()
                end
            end
        end)

        -- ConfiguraÃ§Ãµes
        local AnimationId = "10358526981"
        local LeftwardAnimationId = "10404604071"
        local RightwardAnimationId = "10404627994"
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid")
        local RootPart = Character:WaitForChild("HumanoidRootPart")

        -- Carregar animaÃ§Ãµes
        local BackwardAnimation = Instance.new("Animation")
        BackwardAnimation.AnimationId = "rbxassetid://" .. AnimationId
        local BackwardAnimationTrack = Humanoid:LoadAnimation(BackwardAnimation)

        local LeftwardAnimation = Instance.new("Animation")
        LeftwardAnimation.AnimationId = "rbxassetid://" .. LeftwardAnimationId
        local LeftwardAnimationTrack = Humanoid:LoadAnimation(LeftwardAnimation)

        local RightwardAnimation = Instance.new("Animation")
        RightwardAnimation.AnimationId = "rbxassetid://" .. RightwardAnimationId
        local RightwardAnimationTrack = Humanoid:LoadAnimation(RightwardAnimation)

        -- VariÃ¡veis
        local IsPlayingBackward = false
        local IsPlayingLeftward = false
        local IsPlayingRightward = false

        -- FunÃ§Ã£o para detectar movimento e enviar eventos para o servidor
        game:GetService("RunService").RenderStepped:Connect(function()
            if Character and RootPart and Humanoid then
                local moveDirection = Humanoid.MoveDirection
                local characterLook = RootPart.CFrame.LookVector
                local characterRight = RootPart.CFrame.RightVector

                local dotBackward = moveDirection:Dot(characterLook)
                local dotLeftward = moveDirection:Dot(-characterRight)
                local dotRightward = moveDirection:Dot(characterRight)

                -- Andar de costas
                if moveDirection.Magnitude > 0 and dotBackward < -0.5 then
                    if not IsPlayingBackward then
                        IsPlayingBackward = true
                        AnimationEvent:FireServer("Backward")
                        BackwardAnimationTrack:Play()
                    end
                else
                    if IsPlayingBackward then
                        IsPlayingBackward = false
                        AnimationEvent:FireServer("Stop")
                        BackwardAnimationTrack:Stop()
                    end
                end

                -- Andar para a esquerda
                if moveDirection.Magnitude > 0 and dotLeftward > 0.5 then
                    if not IsPlayingLeftward then
                        IsPlayingLeftward = true
                        AnimationEvent:FireServer("Leftward")
                        LeftwardAnimationTrack:Play()
                    end
                else
                    if IsPlayingLeftward then
                        IsPlayingLeftward = false
                        AnimationEvent:FireServer("Stop")
                        LeftwardAnimationTrack:Stop()
                    end
                end

                -- Andar para a direita
                if moveDirection.Magnitude > 0 and dotRightward > 0.5 then
                    if not IsPlayingRightward then
                        IsPlayingRightward = true
                        AnimationEvent:FireServer("Rightward")
                        RightwardAnimationTrack:Play()
                    end
                else
                    if IsPlayingRightward then
                        IsPlayingRightward = false
                        AnimationEvent:FireServer("Stop")
                        RightwardAnimationTrack:Stop()
                    end
                end
            end
        end)
    end
})

TabAvatar:AddButton({
    Name = "START ANIMATION FE",
    Description = "ative o botao de cima e este",
    Callback = function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "SysAdmin UIâ€¢",
            Text = "FE animation started!",
            Icon = "rbxthumb://type=Asset&id=119245873411783&w=150&h=150",
            Duration = 5
        })

        -- ConfiguraÃ§Ãµes
        local AnimationId = "10358526981" -- ID da animaÃ§Ã£o para andar de costas
        local LeftwardAnimationId = "10404604071" -- ID da animaÃ§Ã£o para andar para o lado esquerdo
        local RightwardAnimationId = "10404627994" -- ID da animaÃ§Ã£o para andar para o lado direito
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid")
        local RootPart = Character:WaitForChild("HumanoidRootPart")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

        -- RemoteEvent para comunicaÃ§Ã£o com o servidor
        local AnimationEvent = ReplicatedStorage:WaitForChild("PlayAnimationEvent")

        -- Carregar animaÃ§Ãµes
        local BackwardAnimation = Instance.new("Animation")
        BackwardAnimation.AnimationId = "rbxassetid://" .. AnimationId
        local BackwardAnimationTrack = Humanoid:LoadAnimation(BackwardAnimation)

        local LeftwardAnimation = Instance.new("Animation")
        LeftwardAnimation.AnimationId = "rbxassetid://" .. LeftwardAnimationId
        local LeftwardAnimationTrack = Humanoid:LoadAnimation(LeftwardAnimation)

        local RightwardAnimation = Instance.new("Animation")
        RightwardAnimation.AnimationId = "rbxassetid://" .. RightwardAnimationId
        local RightwardAnimationTrack = Humanoid:LoadAnimation(RightwardAnimation)

        -- VariÃ¡veis
        local IsPlayingBackward = false
        local IsPlayingLeftward = false
        local IsPlayingRightward = false

        -- FunÃ§Ã£o para detectar movimento e enviar eventos para o servidor
        game:GetService("RunService").RenderStepped:Connect(function()
            if Character and RootPart and Humanoid then
                local moveDirection = Humanoid.MoveDirection
                local characterLook = RootPart.CFrame.LookVector
                local characterRight = RootPart.CFrame.RightVector

                local dotBackward = moveDirection:Dot(characterLook)
                local dotLeftward = moveDirection:Dot(-characterRight)
                local dotRightward = moveDirection:Dot(characterRight)

                -- Detecta andar de costas
                if moveDirection.Magnitude > 0 and dotBackward < -0.5 then
                    if not IsPlayingBackward then
                        IsPlayingBackward = true
                        AnimationEvent:FireServer("Backward")
                        BackwardAnimationTrack:Play()
                    end
                else
                    if IsPlayingBackward then
                        IsPlayingBackward = false
                        AnimationEvent:FireServer("Stop")
                        BackwardAnimationTrack:Stop()
                    end
                end

                -- Detecta andar para o lado esquerdo
                if moveDirection.Magnitude > 0 and dotLeftward > 0.5 then
                    if not IsPlayingLeftward then
                        IsPlayingLeftward = true
                        AnimationEvent:FireServer("Leftward")
                        LeftwardAnimationTrack:Play()
                    end
                else
                    if IsPlayingLeftward then
                        IsPlayingLeftward = false
                        AnimationEvent:FireServer("Stop")
                        LeftwardAnimationTrack:Stop()
                    end
                end

                -- Detecta andar para o lado direito
                if moveDirection.Magnitude > 0 and dotRightward > 0.5 then
                    if not IsPlayingRightward then
                        IsPlayingRightward = true
                        AnimationEvent:FireServer("Rightward")
                        RightwardAnimationTrack:Play()
                    end
                else
                    if IsPlayingRightward then
                        IsPlayingRightward = false
                        AnimationEvent:FireServer("Stop")
                        RightwardAnimationTrack:Stop()
                    end
                end
            end
        end)
    end
})


local Section = TabAvatar:AddSection({"Character Appearance"})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

local Target = nil

-- FunÃƒÂ§ÃƒÂ£o para obter os nomes dos jogadores
local function GetPlayerNames()
    local PlayerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(PlayerNames, player.Name)
    end
    return PlayerNames
end

-- Dropdown de seleÃƒÂ§ÃƒÂ£o de jogador
TabAvatar:AddDropdown({
    Name = "Selecionar Jogador Para a CÃƒÂ³pia",
    Options = GetPlayerNames(),
    Default = Target,
    Callback = function(Value)
        Target = Value
    end
})

-- Atualiza opÃƒÂ§ÃƒÂµes do dropdown quando alguÃƒÂ©m entra ou sai
local function UpdateDropdown()
    Dropdown:Refresh(GetPlayerNames(), true)
end

Players.PlayerAdded:Connect(UpdateDropdown)
Players.PlayerRemoving:Connect(UpdateDropdown)

-- BotÃƒÂ£o de copiar avatar
TabAvatar:AddButton({
    Name = "Copy Avatar",
    Description = "copia os items menos altura",
    Callback = function()
        if not Target then return end

        local LP = Players.LocalPlayer
        local LChar = LP.Character
        local TPlayer = Players:FindFirstChild(Target)

        if TPlayer and TPlayer.Character then
            local LHumanoid = LChar and LChar:FindFirstChildOfClass("Humanoid")
            local THumanoid = TPlayer.Character:FindFirstChildOfClass("Humanoid")

            if LHumanoid and THumanoid then
                -- RESETAR LOCALPLAYER
                local LDesc = LHumanoid:GetAppliedDescription()

                -- Remover acessÃƒÂ³rios, roupas e face atuais
                for _, acc in ipairs(LDesc:GetAccessories(true)) do
                    if acc.AssetId and tonumber(acc.AssetId) then
                        Remotes.Wear:InvokeServer(tonumber(acc.AssetId))
                        task.wait(2)
                    end
                end

                if tonumber(LDesc.Shirt) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Shirt))
                    task.wait(2)
                end

                if tonumber(LDesc.Pants) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Pants))
                    task.wait(2)
                end

                if tonumber(LDesc.Face) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Face))
                    task.wait(2)
                end

                -- COPIAR DO JOGADOR ALVO
                local PDesc = THumanoid:GetAppliedDescription()

                -- Enviar partes do corpo
                local argsBody = {
                    [1] = {
                        [1] = PDesc.Torso,
                        [2] = PDesc.RightArm,
                        [3] = PDesc.LeftArm,
                        [4] = PDesc.RightLeg,
                        [5] = PDesc.LeftLeg,
                        [6] = PDesc.Head
                    }
                }
                Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
                task.wait(3)

                if tonumber(PDesc.Shirt) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt))
                    task.wait(1)
                end

                if tonumber(PDesc.Pants) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Pants))
                    task.wait(0.3)
                end

                if tonumber(PDesc.Face) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Face))
                    task.wait(0.3)
                end

                for _, v in ipairs(PDesc:GetAccessories(true)) do
                    if v.AssetId and tonumber(v.AssetId) then
                        Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                        task.wait(0.3)
                    end
                end

                local SkinColor = TPlayer.Character:FindFirstChild("Body Colors")
                if SkinColor then
                    Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor))
                    task.wait(0.3)
                end

                if tonumber(PDesc.IdleAnimation) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.IdleAnimation))
                    task.wait(0.3)
                end

                -- Nome, bio e cor
                local Bag = TPlayer:FindFirstChild("PlayersBag")
                if Bag then
                    if Bag:FindFirstChild("RPName") and Bag.RPName.Value ~= "" then
                        Remotes.RPNameText:FireServer("RolePlayName", Bag.RPName.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPBio") and Bag.RPBio.Value ~= "" then
                        Remotes.RPNameText:FireServer("RolePlayBio", Bag.RPBio.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPNameColor") then
                        Remotes.RPNameColor:FireServer("PickingRPNameColor", Bag.RPNameColor.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPBioColor") then
                        Remotes.RPNameColor:FireServer("PickingRPBioColor", Bag.RPBioColor.Value)
                        task.wait(0.3)
                    end
                end
            end
        end
    end
})

TabAvatar:AddButton({
    Name = "Copy Nearest Avatar",
    Description = "jogador próximo e copiado",
    Callback = function()
        local LP = Players.LocalPlayer
        local LChar = LP.Character
        if not LChar or not LChar:FindFirstChild("HumanoidRootPart") then return end

        -- Localizar o jogador mais prÃƒÂ³ximo
        local closestPlayer, closestDistance = nil, math.huge
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= LP and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                local dist = (LChar.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if dist < closestDistance then
                    closestDistance = dist
                    closestPlayer = plr
                end
            end
        end

        -- Usar o jogador mais prÃƒÂ³ximo como Target
        if not closestPlayer then return end
        local TPlayer = closestPlayer

        -- (cÃƒÂ³digo de cÃƒÂ³pia do avatar igual ao seu original, substituindo "Target" por TPlayer.Name)
        -- [REUTILIZA A MESMA LÃƒâ€œGICA, SÃƒâ€œ TROCA A PARTE DO TARGET]
        local LHumanoid = LChar and LChar:FindFirstChildOfClass("Humanoid")
        local THumanoid = TPlayer.Character:FindFirstChildOfClass("Humanoid")

        if LHumanoid and THumanoid then
            local LDesc = LHumanoid:GetAppliedDescription()

            for _, acc in ipairs(LDesc:GetAccessories(true)) do
                if acc.AssetId and tonumber(acc.AssetId) then
                    Remotes.Wear:InvokeServer(tonumber(acc.AssetId))
                    task.wait(2)
                end
            end

            if tonumber(LDesc.Shirt) then
                Remotes.Wear:InvokeServer(tonumber(LDesc.Shirt))
                task.wait(2)
            end

            if tonumber(LDesc.Pants) then
                Remotes.Wear:InvokeServer(tonumber(LDesc.Pants))
                task.wait(2)
            end

            if tonumber(LDesc.Face) then
                Remotes.Wear:InvokeServer(tonumber(LDesc.Face))
                task.wait(2)
            end

            local PDesc = THumanoid:GetAppliedDescription()

            local argsBody = {
                [1] = {
                    [1] = PDesc.Torso,
                    [2] = PDesc.RightArm,
                    [3] = PDesc.LeftArm,
                    [4] = PDesc.RightLeg,
                    [5] = PDesc.LeftLeg,
                    [6] = PDesc.Head
                }
            }
            Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
            task.wait(3)

            if tonumber(PDesc.Shirt) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt))
                task.wait(0.3)
            end

            if tonumber(PDesc.Pants) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.Pants))
                task.wait(0.3)
            end

            if tonumber(PDesc.Face) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.Face))
                task.wait(0.3)
            end

            for _, v in ipairs(PDesc:GetAccessories(true)) do
                if v.AssetId and tonumber(v.AssetId) then
                    Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                    task.wait(0.3)
                end
            end

            local SkinColor = TPlayer.Character:FindFirstChild("Body Colors")
            if SkinColor then
                Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor))
                task.wait(0.3)
            end

            if tonumber(PDesc.IdleAnimation) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.IdleAnimation))
                task.wait(0.3)
            end

            local Bag = TPlayer:FindFirstChild("PlayersBag")
            if Bag then
                if Bag:FindFirstChild("RPName") and Bag.RPName.Value ~= "" then
                    Remotes.RPNameText:FireServer("RolePlayName", Bag.RPName.Value)
                    task.wait(0.3)
                end
                if Bag:FindFirstChild("RPBio") and Bag.RPBio.Value ~= "" then
                    Remotes.RPNameText:FireServer("RolePlayBio", Bag.RPBio.Value)
                    task.wait(0.3)
                end
                if Bag:FindFirstChild("RPNameColor") then
                    Remotes.RPNameColor:FireServer("PickingRPNameColor", Bag.RPNameColor.Value)
                    task.wait(0.3)
                end
                if Bag:FindFirstChild("RPBioColor") then
                    Remotes.RPNameColor:FireServer("PickingRPBioColor", Bag.RPBioColor.Value)
                    task.wait(0.3)
                end
            end
        end
    end
})

TabAvatar:AddButton({
    Name = "Copy Random Avatar",
    Description = "aleatorio e copiado",
    Callback = function()
        local LP = Players.LocalPlayer
        local LChar = LP.Character
        if not LChar then return end

        -- Escolher um player aleatÃƒÂ³rio (exceto o prÃƒÂ³prio)
        local otherPlayers = {}
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= LP and plr.Character then
                table.insert(otherPlayers, plr)
            end
        end
        if #otherPlayers == 0 then return end

        local TPlayer = otherPlayers[math.random(1, #otherPlayers)]

        -- Mesmo cÃƒÂ³digo de cÃƒÂ³pia
        local LHumanoid = LChar:FindFirstChildOfClass("Humanoid")
        local THumanoid = TPlayer.Character:FindFirstChildOfClass("Humanoid")
        if LHumanoid and THumanoid then
            local LDesc = LHumanoid:GetAppliedDescription()
            for _, acc in ipairs(LDesc:GetAccessories(true)) do
                if acc.AssetId and tonumber(acc.AssetId) then
                    Remotes.Wear:InvokeServer(tonumber(acc.AssetId))
                    task.wait(2)
                end
            end
            if tonumber(LDesc.Shirt) then
                Remotes.Wear:InvokeServer(tonumber(LDesc.Shirt))
                task.wait(2)
            end
            if tonumber(LDesc.Pants) then
                Remotes.Wear:InvokeServer(tonumber(LDesc.Pants))
                task.wait(2)
            end
            if tonumber(LDesc.Face) then
                Remotes.Wear:InvokeServer(tonumber(LDesc.Face))
                task.wait(2)
            end

            local PDesc = THumanoid:GetAppliedDescription()
            local argsBody = {
                [1] = {
                    [1] = PDesc.Torso,
                    [2] = PDesc.RightArm,
                    [3] = PDesc.LeftArm,
                    [4] = PDesc.RightLeg,
                    [5] = PDesc.LeftLeg,
                    [6] = PDesc.Head
                }
            }
            Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
            task.wait(3)

            if tonumber(PDesc.Shirt) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt))
                task.wait(0.3)
            end
            if tonumber(PDesc.Pants) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.Pants))
                task.wait(0.3)
            end
            if tonumber(PDesc.Face) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.Face))
                task.wait(0.3)
            end
            for _, v in ipairs(PDesc:GetAccessories(true)) do
                if v.AssetId and tonumber(v.AssetId) then
                    Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                    task.wait(0.3)
                end
            end

            local SkinColor = TPlayer.Character:FindFirstChild("Body Colors")
            if SkinColor then
                Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor))
                task.wait(0.3)
            end
            if tonumber(PDesc.IdleAnimation) then
                Remotes.Wear:InvokeServer(tonumber(PDesc.IdleAnimation))
                task.wait(0.3)
            end

            local Bag = TPlayer:FindFirstChild("PlayersBag")
            if Bag then
                if Bag:FindFirstChild("RPName") and Bag.RPName.Value ~= "" then
                    Remotes.RPNameText:FireServer("RolePlayName", Bag.RPName.Value)
                    task.wait(0.3)
                end
                if Bag:FindFirstChild("RPBio") and Bag.RPBio.Value ~= "" then
                    Remotes.RPNameText:FireServer("RolePlayBio", Bag.RPBio.Value)
                    task.wait(0.3)
                end
                if Bag:FindFirstChild("RPNameColor") then
                    Remotes.RPNameColor:FireServer("PickingRPNameColor", Bag.RPNameColor.Value)
                    task.wait(0.3)
                end
                if Bag:FindFirstChild("RPBioColor") then
                    Remotes.RPNameColor:FireServer("PickingRPBioColor", Bag.RPBioColor.Value)
                    task.wait(0.3)
                end
            end
        end
    end
})


TabAvatar:AddToggle({
    Name = "Loop Smoke Avatar",
    Description = "realmente funciona sem ser visual",
    Default = false,
    Callback = function(Value)
        isActive = Value

        while isActive do
            local mall = workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_Mall"):WaitForChild("001_Pizza"):FindFirstChild("CatchFire")
            
            if mall then
                local touchInterest = mall:FindFirstChild("TouchInterest")
                if touchInterest then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, mall, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, mall, 1)
                end
            end
            wait(1)
        end
    end
})

TabAvatar:AddButton({
    Name = "Get Trail",
    Description = "aura nas maos",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character:FindFirstChild("HumanoidRootPart")
        local OldPos = RootPart.CFrame
        
        local function freezeHumanoid(humanoid)
            humanoid.WalkSpeed = 0
            humanoid.JumpPower = 0
        end
        
        local function restoreHumanoid(humanoid)
            humanoid.WalkSpeed = 16
            humanoid.JumpPower = 50
        end
        
        local firstPosition = CFrame.new(-349, 5, 98)
        
        local PoolClick = workspace.WorkspaceCom["001_Hospital"]:FindFirstChild("PoolClick")
        
        if PoolClick and PoolClick:FindFirstChild("ClickDetector") then
            freezeHumanoid(Humanoid)
            RootPart.CFrame = firstPosition
            task.wait(1)
            RootPart.CFrame = PoolClick.CFrame
            fireclickdetector(PoolClick.ClickDetector)
            task.wait(2)
            RootPart.CFrame = OldPos
            restoreHumanoid(Humanoid)
        else
            warn("PoolClick ou ClickDetector nÃ£o encontrado!")
        end
    end
})

TabAvatar:AddSection({ " Tag Bio <settings" })

local function getRainbowColor(t)
    return Color3.fromHSV((t % 1), 1, 1)
end

local function fireServer(eventName, args)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild(eventName)
    if event then
        pcall(function()
            event:FireServer(unpack(args))
        end)
    end
end

-- Estados dos toggles
local arcuisBothActive = false
local arcuisBioActive = false
local arcuisNameActive = false

-- Toggle 1: Nome + Bio
TabAvatar:AddToggle({
    Name = "Arcuis  (Nome + Bio)",
    Description = "Nome e Bio com efeito Arco-Íris automático",
    Default = false,
    Callback = function(state)
        arcuisBothActive = state
        if state then
            task.spawn(function()
                local time = 0
                while arcuisBothActive and LocalPlayer.Character do
                    local color = getRainbowColor(time)
                    fireServer("1RPNam1eColo1r", { [1] = "PickingRPNameColor", [2] = color })
                    fireServer("1RPNam1eColo1r", { [1] = "PickingRPBioColor", [2] = color })
                    task.wait(0.1)
                    time = time + 0.02
                end
            end)
        end
    end
})

-- Toggle 2: Só Bio
TabAvatar:AddToggle({
    Name = "Bio Rainbow  [free vip]",
    Description = "Apenas a Bio com efeito Arco-Íris",
    Default = false,
    Callback = function(state)
        arcuisBioActive = state
        if state then
            task.spawn(function()
                local time = 0
                while arcuisBioActive and LocalPlayer.Character do
                    local color = getRainbowColor(time)
                    fireServer("1RPNam1eColo1r", { [1] = "PickingRPBioColor", [2] = color })
                    task.wait(0.1)
                    time = time + 0.02
                end
            end)
        end
    end
})

-- Toggle 3: Só Nome
TabAvatar:AddToggle({
    Name = "Name Rainbow  [free vip]",
    Description = "Apenas o Nome com efeito Arco-Íris",
    Default = false,
    Callback = function(state)
        arcuisNameActive = state
        if state then
            task.spawn(function()
                local time = 0
                while arcuisNameActive and LocalPlayer.Character do
                    local color = getRainbowColor(time)
                    fireServer("1RPNam1eColo1r", { [1] = "PickingRPNameColor", [2] = color })
                    task.wait(0.1)
                    time = time + 0.02
                end
            end)
        end
    end
})

local vibrantColors = {
    Color3.new(1, 0, 0),
    Color3.new(0, 1, 0),
    Color3.new(0, 0, 1),
    Color3.new(1, 1, 0),
    Color3.new(1, 0, 1),
    Color3.new(0, 1, 1),
    Color3.new(1, 0.5, 0),
    Color3.new(0.5, 0, 1)
}

local function fireServer(eventName, args)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild(eventName)
    if event then
        pcall(function()
            event:FireServer(unpack(args))
        end)
    end
end

local nameAndBioRGBActive = false
TabAvatar:AddToggle({
    Name = "Nome e Bio RGB Sincronizado",
    Description = "Ativa cores RGB sincronizadas para Nome e Bio",
    Default = false,
    Callback = function(state)
        nameAndBioRGBActive = state
        if state then
            task.spawn(function()
                while nameAndBioRGBActive and LocalPlayer.Character do
                    local color = vibrantColors[math.random(1, #vibrantColors)]
                    local nameArgs = { [1] = "PickingRPNameColor", [2] = color }
                    local bioArgs = { [1] = "PickingRPBioColor", [2] = color }
                    fireServer("1RPNam1eColo1r", nameArgs)
                    fireServer("1RPNam1eColo1r", bioArgs)
                    task.wait(1)
                end
            end)
        end
    end
})

local nameRGBActive = false
TabAvatar:AddToggle({
    Name = "Nome RGB",
    Description = "Ativa cores RGB para o Nome",
    Default = false,
    Callback = function(state)
        nameRGBActive = state
        if state then
            task.spawn(function()
                while nameRGBActive and LocalPlayer.Character do
                    local color = vibrantColors[math.random(1, #vibrantColors)]
                    local args = { [1] = "PickingRPNameColor", [2] = color }
                    fireServer("1RPNam1eColo1r", args)
                    task.wait(1)
                end
            end)
        end
    end
})

local bioRGBActive = false
TabAvatar:AddToggle({
    Name = "Bio RGB",
    Description = "Ativa cores RGB aleatÃ³rias na sua bio",
    Default = false,
    Callback = function(state)
        bioRGBActive = state
        if state then
            task.spawn(function()
                while bioRGBActive and LocalPlayer.Character do
                    local color = vibrantColors[math.random(1, #vibrantColors)]
                    local args = { [1] = "PickingRPBioColor", [2] = color }
                    fireServer("1RPNam1eColo1r", args)
                    task.wait(1)
                end
            end)
        end
    end
})

TabAvatar:AddSection({Name = "animation bio and name- "})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:WaitForChild("RE"):WaitForChild("1RPNam1eTex1t")

local selectedBio = ""
local selectedName = ""

-- TEXTBOX BIO
TabAvatar:AddTextBox({
    Name = "Bio Text",
    Description = "Digite a Bio",
    PlaceholderText = "Escreva sua bio...",
    Callback = function(Value)
        selectedBio = Value
    end
})

-- TEXTBOX NAME
TabAvatar:AddTextBox({
    Name = "Name Text",
    Description = "Digite o Nome",
    PlaceholderText = "Escreva o nome...",
    Callback = function(Value)
        selectedName = Value
    end
})

-- Controle dos loops
local bioTypingLoop = false
local bioBackLoop = false
local nameTypingLoop = false
local nameBackLoop = false

-- FUNÇÃO ANIMAÇÃO (controlada por toggle)
local function AnimateLoop(remoteName, getText, reverseFlag, stateRef)
    task.spawn(function()
        while stateRef() do
            local text = getText()
            if text ~= "" then
                local buffer = ""
                for i = 1, #text do
                    if not stateRef() then return end
                    buffer = string.sub(text, 1, i)
                    Remote:FireServer(remoteName, buffer)
                    task.wait(0.1)
                end

                if reverseFlag then
                    for i = #text, 1, -1 do
                        if not stateRef() then return end
                        buffer = string.sub(text, 1, i)
                        Remote:FireServer(remoteName, buffer)
                        task.wait(0.1)
                    end
                end
            else
                task.wait(0.2)
            end
        end
    end)
end

-- TOGGLES BIO
TabAvatar:AddToggle({
    Name = "Bio [Escrevendo Loop]",
    Default = false,
    Callback = function(state)
        bioTypingLoop = state
        if state then
            AnimateLoop("RolePlayBio", function() return selectedBio end, false, function() return bioTypingLoop end)
        end
    end
})

TabAvatar:AddToggle({
    Name = "Bio [Vai e Volta Loop]",
    Default = false,
    Callback = function(state)
        bioBackLoop = state
        if state then
            AnimateLoop("RolePlayBio", function() return selectedBio end, true, function() return bioBackLoop end)
        end
    end
})

-- TOGGLES NAME
TabAvatar:AddToggle({
    Name = "Name [Escrevendo Loop]",
    Default = false,
    Callback = function(state)
        nameTypingLoop = state
        if state then
            AnimateLoop("RolePlayName", function() return selectedName end, false, function() return nameTypingLoop end)
        end
    end
})

TabAvatar:AddToggle({
    Name = "Name [Vai e Volta Loop]",
    Default = false,
    Callback = function(state)
        nameBackLoop = state
        if state then
            AnimateLoop("RolePlayName", function() return selectedName end, true, function() return nameBackLoop end)
        end
    end
})


local TabTroll = Window:MakeTab({ "Troll", "smile" })

TabTroll:AddSection({ " Bang troll" })

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Jogador selecionado pelo TextBox
local selectedPlayerName = nil
local jogadorSelecionado = nil

-- Função para encontrar jogador pelo nome parcial
local function findPlayerByName(partialName)
    partialName = partialName:lower()
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Name:lower():find(partialName) then
            return p
        end
    end
    return nil
end

-- TextBox para digitar o nome do jogador
TabTroll:AddTextBox({
    Name = "Nome do Jogador",
    Default = "",
    TextDisappear = false,
    Callback = function(text)
        if text == "" then
            selectedPlayerName = nil
            jogadorSelecionado = nil
        else
            selectedPlayerName = text
            jogadorSelecionado = findPlayerByName(text)
        end
    end
})

-- Variáveis para os loops
local bangLoop, faceLoop = nil, nil

-- Função genérica para desconectar loops
local function desconectarLoops()
    if bangLoop then bangLoop:Disconnect() bangLoop = nil end
    if faceLoop then faceLoop:Disconnect() faceLoop = nil end
end

-- Bang v1
TabTroll:AddToggle({
    Name = "Bang v1",
    Description = "vai sarrar o mano Nao cumpensaa!",
    Default = false,
    Callback = function(Value)
        if bangLoop then bangLoop:Disconnect() bangLoop = nil end
        if Value and jogadorSelecionado then
            bangLoop = RunService.RenderStepped:Connect(function()
                local targetHRP = jogadorSelecionado.Character and jogadorSelecionado.Character:FindFirstChild("HumanoidRootPart")
                local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetHRP and myHRP then
                    local backPos = targetHRP.CFrame * CFrame.new(0,0,2.5)
                    local forwardPos = targetHRP.CFrame * CFrame.new(0,0,1.5)
                    local t = tick() * 3 % 1
                    local lerped = backPos:Lerp(forwardPos, math.abs(math.sin(t * math.pi)))
                    myHRP.CFrame = CFrame.new(lerped.Position, targetHRP.Position)
                end
            end)
        end
    end
})

-- Bang v2 (de costas)
TabTroll:AddToggle({
    Name = "Bang v2 (de costas)",
    Description = "la ele ein de costa nn",
    Default = false,
    Callback = function(Value)
        if bangLoop then bangLoop:Disconnect() bangLoop = nil end
        if Value and jogadorSelecionado then
            bangLoop = RunService.RenderStepped:Connect(function()
                local targetHRP = jogadorSelecionado.Character and jogadorSelecionado.Character:FindFirstChild("HumanoidRootPart")
                local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetHRP and myHRP then
                    local backPos = targetHRP.CFrame * CFrame.new(0,0,-2.5)
                    local forwardPos = targetHRP.CFrame * CFrame.new(0,0,-1.5)
                    local t = tick() * 3 % 1
                    local lerped = backPos:Lerp(forwardPos, math.abs(math.sin(t * math.pi)))
                    myHRP.CFrame = CFrame.new(lerped.Position) * CFrame.Angles(0, targetHRP.Orientation.Y * math.pi/180, 0)
                end
            end)
        end
    end
})

-- Bang v4 (frente e abaixo, vai e volta)
TabTroll:AddToggle({
    Name = "Bang v4 (frente e abaixo, vai e volta)",
    Description = "vixxxx..",
    Default = false,
    Callback = function(Value)
        if bangLoop then bangLoop:Disconnect() bangLoop = nil end
        if Value and jogadorSelecionado then
            bangLoop = RunService.RenderStepped:Connect(function()
                local targetHRP = jogadorSelecionado.Character and jogadorSelecionado.Character:FindFirstChild("HumanoidRootPart")
                local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetHRP and myHRP then
                    local frontPos = targetHRP.CFrame * CFrame.new(0,-1,2.5)
                    local closePos = targetHRP.CFrame * CFrame.new(0,-1,1.5)
                    local t = tick() * 3 % 1
                    local lerped = frontPos:Lerp(closePos, math.abs(math.sin(t * math.pi)))
                    myHRP.CFrame = CFrame.new(lerped.Position, targetHRP.Position)
                end
            end)
        end
    end
})

-- Bang Face v1
TabTroll:AddToggle({
    Name = "Bang Face v1",
    Default = false,
    Callback = function(Value)
        if faceLoop then faceLoop:Disconnect() faceLoop = nil end
        if Value and jogadorSelecionado then
            faceLoop = RunService.RenderStepped:Connect(function()
                local targetHRP = jogadorSelecionado.Character and jogadorSelecionado.Character:FindFirstChild("HumanoidRootPart")
                local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetHRP and myHRP then
                    local baseOffset = CFrame.new(0,1.2,-1.5)
                    local fwdOffset = CFrame.new(0,1.2,-2.5)
                    local frontPos = targetHRP.CFrame * baseOffset
                    local forwardPos = targetHRP.CFrame * fwdOffset
                    local t = tick() * 3 % 1
                    local lerped = frontPos:Lerp(forwardPos, math.abs(math.sin(t * math.pi)))
                    myHRP.CFrame = CFrame.new(lerped.Position, targetHRP.Position + Vector3.new(0,1.2,0))
                end
            end)
        end
    end
})

local Section = TabTroll:AddSection({"Wall Tools"})

local BNumber = 600 -- Valor fixo
local distanciaEntreItens = 3 -- Espaçamento entre FireX

-- Função para organizar itens em formato de triângulo
local function organizarItensEmTriangulo()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack

    -- Coleta todos os Tools no personagem e na mochila
    local itens = {}
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    -- Organiza os itens em triângulo
    local usados = 0
    local yOffset = 0
    local linha = 1

    while usados < #itens do
        for i = 1, linha do
            usados = usados + 1
            local item = itens[usados]
            if not item then break end

            item.Parent = character
            local xOffset = (i - (linha + 1)/2) * distanciaEntreItens -- centraliza horizontalmente
            item.GripPos = Vector3.new(xOffset, -yOffset, 0)
            task.wait()
            item.Parent = backpack
        end
        linha = linha + 1
        yOffset = yOffset + distanciaEntreItens -- desce para a próxima linha
    end

    -- Equipa todos os itens da mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end

-- Botão no TabTroll
TabTroll:AddButton({
    Name = "FireX Triângulo",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")

        -- Atualiza hierarquia para FireX
        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame

            -- Loop para pegar os itens
            local processed = 0
            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame
                fireclickdetector(Clone.ClickDetector)
                processed = processed + 1
                task.wait()
            end

            RootPart.CFrame = OldPos

            -- Organiza em triângulo
            organizarItensEmTriangulo()
        else
            warn("FireX ou ClickDetector não encontrado!")
        end
    end
})

local BNumber = 600 -- Valor fixo
local raioBola = 10 -- Raio da bola
local passos = 12 -- Quantidade de camadas da esfera

-- Função para organizar itens em formato de bola
local function organizarItensEmBola()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack

    -- Coleta todos os Tools no personagem e na mochila
    local itens = {}
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    local usados = 0
    local totalItens = #itens

    -- Distribuição por camadas da esfera
    for i = 0, passos do
        local theta = (i / passos) * math.pi -- de 0 a 180 graus
        local itensLinha = math.ceil(math.sin(theta) * passos * 2)
        if itensLinha == 0 then itensLinha = 1 end

        for j = 0, itensLinha - 1 do
            usados = usados + 1
            local item = itens[usados]
            if not item then break end

            item.Parent = character

            local phi = (j / itensLinha) * (2 * math.pi)
            local x = math.sin(theta) * math.cos(phi) * raioBola
            local y = math.cos(theta) * raioBola
            local z = math.sin(theta) * math.sin(phi) * raioBola

            item.GripPos = Vector3.new(x, y, z)
            task.wait()
            item.Parent = backpack
        end
    end

    -- Equipa todos os itens da mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end

-- Botão no TabTroll
TabTroll:AddButton({
    Name = "FireX Bola",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")

        -- Atualiza hierarquia para FireX
        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame

            -- Loop para pegar os itens
            local processed = 0
            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame
                fireclickdetector(Clone.ClickDetector)
                processed = processed + 1
                task.wait()
            end

            RootPart.CFrame = OldPos

            -- Organiza em bola
            organizarItensEmBola()
        else
            warn("FireX ou ClickDetector não encontrado!")
        end
    end
})

local BNumber = 600 -- Valor fixo
local distanciaEntreItens = 3 -- DistÃƒÂ¢ncia entre os itens ao longo do bastÃƒÂ£o

-- FunÃƒÂ§ÃƒÂ£o para organizar itens em forma de bastÃƒÂ£o gigante para baixo
local function organizarItensEmBastaoParaBaixo()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack
    local rootPart = character:WaitForChild("HumanoidRootPart")

    -- Coleta todos os Tools no personagem e na mochila
    local itens = {}

    -- Procura Tools no personagem
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    -- Procura Tools na mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    -- Verifica duplicatas e organiza por nome
    local duplicatas = {}
    for _, item in pairs(itens) do
        if not duplicatas[item.Name] then
            duplicatas[item.Name] = {}
        end
        table.insert(duplicatas[item.Name], item)
    end

    -- Para cada grupo de duplicatas, organize-os em formato de bastÃƒÂ£o
    local yOffset = 0 -- Offset inicial no eixo Y
    for _, grupo in pairs(duplicatas) do
        local total = #grupo
        if total > 1 then
            for i, item in pairs(grupo) do
                -- Equipa o item para ajustar o GripPos
                item.Parent = character

                -- Define a posiÃƒÂ§ÃƒÂ£o vertical para o item no bastÃƒÂ£o (para baixo no eixo Y)
                item.GripPos = Vector3.new(0, -yOffset, 0)

                -- Incrementa o offset no eixo Y para "descer"
                yOffset = yOffset + distanciaEntreItens

                -- Aguarda um pouco para o efeito ser visÃƒÂ­vel
                task.wait()

                -- Solta o item colocando de volta na mochila
                item.Parent = backpack
            end
        end
    end

    -- Equipa todos os itens "FireX" da mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end


TabTroll:AddButton({
  Name = "Firex Bastao Gigante para Baixo",
  Callback = function()
    local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")

        -- AtualizaÃƒÂ§ÃƒÂ£o da hierarquia para FireX
        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame -- Armazena a posiÃƒÂ§ÃƒÂ£o original

            -- Loop para pegar os itens repetidamente
            local processed = 0
            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame -- Teletransporta para o clone
                fireclickdetector(Clone.ClickDetector) -- Clica no detector
                processed = processed + 1
                task.wait() -- Pausa para evitar travamento
            end

            -- Retorna ÃƒÂ  posiÃƒÂ§ÃƒÂ£o original
            RootPart.CFrame = OldPos

            -- Executa a funÃƒÂ§ÃƒÂ£o de organizaÃƒÂ§ÃƒÂ£o ao final do loop
            organizarItensEmBastaoParaBaixo()
        else
            warn("FireX ou ClickDetector nÃƒÂ£o encontrado!")
        end
  end
})

local BNumber = 600 -- Quantos FireX pegar
local distancia = 3 -- espaçamento entre os FireX
local tamanhoLogo = 15 -- tamanho do quadrado (número de itens por lado)
local buraco = 5 -- tamanho do buraco central

-- Função para organizar em forma da logo do Roblox
local function organizarLogoRoblox()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack

    -- junta todos os FireX
    local itens = {}
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    -- pega só a quantidade que precisa
    local needed = tamanhoLogo * tamanhoLogo
    local usados = 0
    local half = math.floor(tamanhoLogo / 2)

    for i = -half, half do
        for j = -half, half do
            -- pula o centro (buraco)
            if math.abs(i) > buraco or math.abs(j) > buraco then
                usados += 1
                local item = itens[usados]
                if not item then return end

                item.Parent = character
                -- cria a grade (x,z) e gira 45°
                local pos = Vector3.new(i * distancia, 0, j * distancia)
                local rotated = Vector3.new(
                    pos.X * math.cos(math.rad(45)) - pos.Z * math.sin(math.rad(45)),
                    0,
                    pos.X * math.sin(math.rad(45)) + pos.Z * math.cos(math.rad(45))
                )

                item.GripPos = rotated
                task.wait()
                item.Parent = backpack
            end
        end
    end

    -- EQUIPA TODOS no final (garantia absoluta)
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end

-- botão no TabTroll
TabTroll:AddButton({
    Name = "aura Estintor lol",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")

        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame
            local processed = 0

            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame
                fireclickdetector(Clone.ClickDetector)
                processed += 1
                task.wait()
            end

            RootPart.CFrame = OldPos
            organizarLogoRoblox()
        else
            warn("FireX ou ClickDetector não encontrado!")
        end
    end
})

local BNumber = 600 -- Valor fixo
local raioCirculo = 5 -- DistÃƒÂ¢ncia do cÃƒÂ­rculo em relaÃƒÂ§ÃƒÂ£o ao personagem

-- FunÃƒÂ§ÃƒÂ£o para organizar itens em formato de cÃƒÂ­rculo
local function organizarItensEmCirculo()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local backpack = player.Backpack
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Coleta todos os Tools no personagem e na mochila  
local itens = {}  
  
-- Procura Tools no personagem  
for _, item in pairs(character:GetChildren()) do  
    if item:IsA("Tool") and item.Name == "FireX" then  
        table.insert(itens, item)  
    end  
end  
  
-- Procura Tools na mochila  
for _, item in pairs(backpack:GetChildren()) do  
    if item:IsA("Tool") and item.Name == "FireX" then  
        table.insert(itens, item)  
    end  
end  
  
-- Verifica duplicatas e organiza por nome  
local duplicatas = {}  
for _, item in pairs(itens) do  
    if not duplicatas[item.Name] then  
        duplicatas[item.Name] = {}  
    end  
    table.insert(duplicatas[item.Name], item)  
end  
  
-- Para cada grupo de duplicatas, organize-os em formato de cÃƒÂ­rculo  
for _, grupo in pairs(duplicatas) do  
    local total = #grupo  
    if total > 1 then  
        for i, item in pairs(grupo) do  
            -- Equipa o item para ajustar o GripPos  
            item.Parent = character  
              
            -- Calcula o ÃƒÂ¢ngulo de cada item no cÃƒÂ­rculo  
            local angulo = (i / total) * (2 * math.pi)  
              
            -- Calcula a posiÃƒÂ§ÃƒÂ£o circular atrÃƒÂ¡s do jogador  
            local offsetX = math.cos(angulo) * raioCirculo  
            local offsetZ = math.sin(angulo) * raioCirculo  
              
            -- Define a posiÃƒÂ§ÃƒÂ£o atrÃƒÂ¡s do HumanoidRootPart  
            item.GripPos = Vector3.new(-offsetX, 0, -offsetZ - raioCirculo)  
              
            -- Aguarda um pouco para o efeito ser visÃƒÂ­vel  
            task.wait()  
              
            -- Solta o item colocando de volta na mochila  
            item.Parent = backpack  
        end  
    end  
end  
  
-- Equipa todos os itens "FireX" da mochila  
for _, item in pairs(backpack:GetChildren()) do  
    if item:IsA("Tool") and item.Name == "FireX" then  
        item.Parent = character  
    end  
end

end


TabTroll:AddButton({
  Name = "Firex Ex Simbolo Circular",
  Callback = function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- AtualizaÃƒÂ§ÃƒÂ£o da hierarquia para FireX  
    local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")   
        and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")  
        and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")  

    if Clone and Clone:FindFirstChild("ClickDetector") then  
        local OldPos = RootPart.CFrame -- Armazena a posiÃƒÂ§ÃƒÂ£o original  

        -- Loop para pegar os itens repetidamente  
        local processed = 0  
        while processed < BNumber do  
            RootPart.CFrame = Clone.CFrame -- Teletransporta para o clone  
            fireclickdetector(Clone.ClickDetector) -- Clica no detector  
            processed = processed + 1  
            task.wait() -- Pausa para evitar travamento  
        end  

        -- Retorna ÃƒÂ  posiÃƒÂ§ÃƒÂ£o original  
        RootPart.CFrame = OldPos   

        -- Executa a funÃƒÂ§ÃƒÂ£o de organizaÃƒÂ§ÃƒÂ£o ao final do loop  
        organizarItensEmCirculo()  
    else  
        warn("FireX ou ClickDetector nÃƒÂ£o encontrado!")  
    end  
  end
})


local BNumber = 600 -- Valor fixo
local distanciaAtras = 5 -- DistÃƒÂ¢ncia da parede em relaÃƒÂ§ÃƒÂ£o ao personagem
local espacamentoX = 3 -- EspaÃƒÂ§amento horizontal entre itens
local espacamentoY = 3 -- EspaÃƒÂ§amento vertical entre itens

-- FunÃƒÂ§ÃƒÂ£o para organizar itens em formato de parede
local function organizarItensEmParede()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack
    local rootPart = character:WaitForChild("HumanoidRootPart")

    -- Coleta todos os Tools no personagem e na mochila
    local itens = {}
    
    -- Procura Tools no personagem
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    
    -- Procura Tools na mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    
    -- Verifica duplicatas e organiza por nome
    local duplicatas = {}
    for _, item in pairs(itens) do
        if not duplicatas[item.Name] then
            duplicatas[item.Name] = {}
        end
        table.insert(duplicatas[item.Name], item)
    end
    
    -- Organiza os itens em formato de parede
    for _, grupo in pairs(duplicatas) do
        local total = #grupo
        
        -- Calcula o nÃƒÂºmero de colunas e linhas necessÃƒÂ¡rias
        local colunas = math.ceil(math.sqrt(total))
        local linhas = math.ceil(total / colunas)
        
        for i, item in pairs(grupo) do
            -- Calcula a posiÃƒÂ§ÃƒÂ£o na grade
            local linha = math.floor((i-1) / colunas)
            local coluna = (i-1) % colunas
            
            -- Equipa o item para ajustar o GripPos
            item.Parent = character
            
            -- Ajusta a posiÃƒÂ§ÃƒÂ£o na parede atrÃƒÂ¡s do jogador
            item.GripPos = Vector3.new(coluna * espacamentoX, -linha * espacamentoY, -distanciaAtras)
            
            -- Aguarda um pouco para o efeito ser visÃƒÂ­vel
            task.wait()
            
            -- Solta o item colocando de volta na mochila
            item.Parent = backpack
        end
    end
    
    -- Equipa todos os itens "FireX" da mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end

 

local Button = TabTroll:AddButton({
  Name = "Firex Wall",
  Callback = function()
    local Player = game.Players.LocalPlayer 
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")
        
        -- AtualizaÃƒÂ§ÃƒÂ£o da hierarquia para FireX
        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") 
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame -- Armazena a posiÃƒÂ§ÃƒÂ£o original

            -- Loop para pegar os itens repetidamente
            local processed = 0
            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame -- Teletransporta para o clone
                fireclickdetector(Clone.ClickDetector) -- Clica no detector
                processed = processed + 1
                task.wait() -- Pausa para evitar travamento
            end

            -- Retorna ÃƒÂ  posiÃƒÂ§ÃƒÂ£o original
            RootPart.CFrame = OldPos 

            -- Executa a funÃƒÂ§ÃƒÂ£o de organizaÃƒÂ§ÃƒÂ£o ao final do loop
            organizarItensEmParede()
        else
            warn("FireX ou ClickDetector nÃƒÂ£o encontrado!")
        end
  end
})

local Toggle = TabTroll:AddToggle({
  Name = "Black Role",
  Default = false,
  Callback = function(Value)
    if Value then
            -- Quando a toggle estiver ativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Tornado/raw/refs/heads/main/TornadoObfuscate.txt"))()
        else
            -- Quando a toggle estiver desativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Blackhole2/raw/refs/heads/main/Blackhole2Obfuscate.txt"))()
        end
  end
})

local Section = TabTroll:AddSection({"spam Troll "})

TabTroll:AddToggle({
    Name = "Helicopter Spam [Premium]",
    Default = false,
    Callback = function(state)
        getgenv().Toggle = state

        if state then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local RootPart = Character:WaitForChild("HumanoidRootPart")
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local molestado1 = workspace.WorkspaceCom["001_HeliCloneButton"].Button

            task.spawn(function()
                while getgenv().Toggle do
                    task.wait()
                    RootPart.CFrame = molestado1.CFrame
                    task.wait(0.1)
                    fireclickdetector(molestado1.ClickDetector)
                    task.wait(0.5)

                    local molestado2 = workspace.WorkspaceCom["001_HeliStorage"]:FindFirstChild("PoliceStationHeli")
                    if molestado2 then
                        repeat
                            RootPart.CFrame = molestado2.PrimaryPart.CFrame + Vector3.new(0, math.random(-1, 1), 0)
                            task.wait()
                        until Humanoid.Sit

                        task.wait(0.1)
                        Humanoid.Sit = false
                        task.wait()

                        repeat
                            RootPart.CFrame = molestado2.Passenger1.CFrame + Vector3.new(0, math.random(-1, 1), 0)
                            task.wait()
                        until Humanoid.Sit

                        task.wait(0.2)
                        RootPart.CFrame = CFrame.new(math.random(-40, 40), 4.549, math.random(-40, 40))
                        task.wait(0.2)
                        Humanoid.Sit = false
                        molestado2.Name = "PoliceStationHeliMolestaHubHavens"
                    end
                end
            end)
        end
    end
})

TabTroll:AddButton({
    Name = "Bring All Cars",
    Callback = function()
        for _, v in next, workspace.Vehicles:GetChildren() do
            v:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame())
        end
    end
})



TabTroll:AddToggle({
    Name = "Canoe Spam",
    Default = false,
    Callback = function(state)
        getgenv().Toggle = state

        if state then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local RootPart = Character:WaitForChild("HumanoidRootPart")
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local molestado1 = workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_CanoeCloneButton").Button

            task.spawn(function()
                while getgenv().Toggle do
                    task.wait()
                    RootPart.CFrame = molestado1.CFrame
                    task.wait(0.1)
                    fireclickdetector(molestado1:FindFirstChild("ClickDetector"))
                    task.wait(0.5)

                    local molestado2 = workspace.WorkspaceCom["001_CanoeStorage"]:FindFirstChild("Canoe")
                    if molestado2 and molestado2:FindFirstChild("VehicleSeat") then
                        repeat
                            RootPart.CFrame = molestado2.VehicleSeat.CFrame + Vector3.new(0, math.random(-1, 1), 0)
                            task.wait()
                        until Humanoid.Sit

                        task.wait(0.2)
                        RootPart.CFrame = CFrame.new(math.random(-40, 40), 4.549, math.random(-40, 40))
                        task.wait(0.2)
                        Humanoid.Sit = false
                        molestado2.Name = "CanoeMolestaHavens"
                    end
                end
            end)
        end
    end
})

local HeliDropdown = TabTroll:AddDropdown({
    Name = "Helicopter List",
    Description = "Selecione o <font color='rgb(88, 101, 242)'>Helicóptero</font>",
    Options = {"Police", "Rescue", "Rich", "Military", "Agency", "Sheriff", "State Trooper"},
    Default = "Police",
    Flag = "HelicopterSelect",
    Callback = function(Value)
        getgenv().SelectedHeli = Value
        print("Helicóptero selecionado:", Value)
    end
})

local ChangeHeliButton = TabTroll:AddButton({
    Name = "Change Helicopter Design",
    Description = "Troca o design do helicóptero selecionado",
    Callback = function()
        if not getgenv().SelectedHeli then return end

        local meshIdMap = {
            ["Police"] = "PoliceMeshID",
            ["Rescue"] = "RescueMeshID",
            ["Rich"] = "TubeTVMeshID",
            ["Military"] = "MilitaryMeshID",
            ["Agency"] = "AgencyMeshID",
            ["Sheriff"] = "SheriffMeshID",
            ["State Trooper"] = "StateTrooperMeshID"
        }

        local meshId = meshIdMap[getgenv().SelectedHeli]
        if meshId then
            local args = {
                [1] = game.Players.LocalPlayer.Name,
                [2] = meshId
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Max1y"):FireServer(unpack(args))
            print("Mudou para:", getgenv().SelectedHeli, "com MeshID:", meshId)
        end
    end
})

local Section = TabTroll:AddSection({"Poster Edit"})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

-- Armazena seleção e texto
local SelectedPoster = 1
local PosterText = ""

-- Coordenadas dos pôsteres
local PosterData = {
    [1] = CFrame.new(359.589081, 57.149670, 581.226135),
    [2] = CFrame.new(-634.203247, 25.374739, 361.505646),
    [3] = CFrame.new(-238.497910, 88.514732, -549.373962)
}

-- Dropdown de pôsteres
local Dropdown = TabTroll:AddDropdown({
    Name = "Selecionar Pôster",
    Description = "Escolha qual pôster alterar",
    Options = {"Pôster 1", "Pôster 2", "Pôster 3"},
    Default = "Pôster 1",
    Flag = "poster_dropdown",
    Callback = function(Value)
        if Value == "Pôster 1" then
            SelectedPoster = 1
        elseif Value == "Pôster 2" then
            SelectedPoster = 2
        elseif Value == "Pôster 3" then
            SelectedPoster = 3
        end
    end
})

-- TextBox para digitar texto
TabTroll:AddTextBox({
    Name = "Texto do Pôster",
    Description = "Digite o texto a ser colocado",
    PlaceholderText = "Escreva aqui...",
    Callback = function(Value)
        PosterText = Value
    end
})

-- Botão para aplicar
TabTroll:AddButton({
    Name = "Aplicar Texto",
    Callback = function()
        if not PosterText or PosterText == "" then
            warn("Digite um texto antes!")
            return
        end

        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return end

        local humanoidRootPart = char.HumanoidRootPart
        local originalPos = humanoidRootPart.CFrame

        -- Teleporta até o pôster
        humanoidRootPart.CFrame = PosterData[SelectedPoster]
        task.wait(0.8)

        -- Dispara o evento com o texto
        local args = {
            [1] = "ReturningCommercialWords",
            [2] = SelectedPoster,
            [4] = PosterText
        }

        ReplicatedStorage.RE:FindFirstChild("1Cemeter1y"):FireServer(unpack(args))

        -- Volta para posição original
        task.wait(0.5)
        humanoidRootPart.CFrame = originalPos
    end
})

TabTroll:AddSection({ " spawn Car Premum [FREE]" })

-- Lista de carros disponíveis
local CarList = {
    "Nenhum",
    "HummerLimo",
    "Hummer",
    "Lamboego",
    "GoKartPremium",
    "GoKartVPass",
    "HelloweenBatMobile",
    "EasterMedium",
    "Formula1",
    "EasterBig",
    "Ferrari",
    "Easter2025EasterMonsterTruck",
    "EasterBunny",
    "CopLamborgine",
    "Continental",
    "Bugatti",
    "CyberTruck",
    "BatMobile",
    "Benz",
    "Baja",
    "4DoorJeep",
    "Buggy",
    "TankPremium",
    "SuperCar",
    "Skyline",
    "SWAT",
    "Roblox",
    "Roadster",
    "Limo"
}

-- Variável para ignorar a primeira execução do callback
local firstCall = true

local Dropdown = TabTroll:AddDropdown({
    Name = "Carros",
    Description = "Selecione o carro para spawnar",
    Options = CarList,
    Default = "Nenhum",
    Flag = "CarDropdown",
    Callback = function(Value)
        -- Ignora a primeira vez que o callback é chamado
        if firstCall then
            firstCall = false
            return
        end

        if Value ~= "Nenhum" then
            local args = {
                [1] = "PickingCar",
                [2] = Value
            }
            local remote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r")
            if remote then
                remote:FireServer(unpack(args))
                print("Spawnando carro: " .. Value)
            else
                warn("RemoteEvent '1Ca1r' não encontrado!")
            end
        end
    end
})

local Tab2 = Window:MakeTab({ "House", "Home" })

local SelectHouse
local SelectedPlayerName

-- TextBox para selecionar casa
Tab2:AddTextBox({
    Name = " Nome do player",
    Placeholder = "",
    Callback = function(txt)
        local function GetExistentHouses()
            local houseTable = {}
            for _, v in pairs(workspace["001_Lots"]:GetChildren()) do
                if string.find(v.Name, "House") and v:FindFirstChild("HousePickedByPlayer") then
                    table.insert(houseTable, {
                        FullName = v.Owner.Value,
                        HouseNumber = v.Number.Number.Value,
                        Model = v
                    })
                end
            end
            return houseTable
        end

        local function FindHouseByPartialName(partialName)
            partialName = partialName:lower()
            for _, data in pairs(GetExistentHouses()) do
                if string.find(data.FullName:lower(), partialName) then
                    return data
                end
            end
        end

        local result = FindHouseByPartialName(txt)
        if result then
            SelectHouse = result.HouseNumber
            SelectedPlayerName = result.FullName
            warn("[+]", "Found: " .. SelectedPlayerName .. " - House #" .. SelectHouse)
        else
            SelectHouse = nil
            SelectedPlayerName = nil
            warn("[-]", "No matching house found")
        end
    end
})

-- BotÃ£o: Teleportar para casa
Tab2:AddButton({
    Name = "Teleport to the house",
    Callback = function()
        if not SelectHouse then return end
        for _, v in pairs(workspace["001_Lots"]:GetChildren()) do
            if v.Name ~= "DontDelete" and v.Number.Number.Value == SelectHouse then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.WorldPivot.Position)
                break
            end
        end
    end
})

-- BotÃ£o: Teleportar para o cofre
Tab2:AddButton({
    Name = "Teleport to the vault",
    Callback = function()
        if not SelectHouse then return end
        for _, v in pairs(workspace["001_Lots"]:GetChildren()) do
            if v.Name ~= "DontDelete" and v.Number.Number.Value == SelectHouse then
                local safe = v.HousePickedByPlayer.HouseModel["001_Safe"]
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(safe.WorldPivot.Position)
                break
            end
        end
    end
})

-- Toggle: Noclip porta
Tab2:AddToggle({
    Name = "Noclip through the house door",
    Default = false,
    Callback = function(Value)
        if not SelectHouse then return end
        for _, v in pairs(workspace["001_Lots"]:GetChildren()) do
            if v.Name ~= "DontDelete" and v.Number.Number.Value == SelectHouse then
                pcall(function()
                    local doors = v.HousePickedByPlayer.HouseModel["001_HouseDoors"].HouseDoorFront:GetChildren()
                    for _, part in pairs(doors) do
                        if part:IsA("BasePart") then
                            part.CanCollide = not Value
                        end
                    end
                end)
                break
            end
        end
    end
})

-- Toggle: Spam Bell
Tab2:AddToggle({
    Name = "Spam Bell",
    Default = false,
    Callback = function(Value)
        getgenv().ChaosHubAutoSpawnDoorbellValue = Value
        task.spawn(function()
            while getgenv().ChaosHubAutoSpawnDoorbellValue do
                if not SelectHouse then break end
                for _, v in pairs(workspace["001_Lots"]:GetChildren()) do
                    if v.Name ~= "DontDelete" and v.Number.Number.Value == SelectHouse then
                        fireclickdetector(v.HousePickedByPlayer.HouseModel["001_DoorBell"].TouchBell.ClickDetector)
                        break
                    end
                end
                task.wait(0.5)
            end
        end)
    end
})

-- Toggle: Spam Knock
Tab2:AddToggle({
    Name = "Spam Knock",
    Default = false,
    Callback = function(Value)
        getgenv().ShnmaxAutoSpawnDoorValue = Value
        task.spawn(function()
            while getgenv().ShnmaxAutoSpawnDoorValue do
                if not SelectHouse then break end
                for _, v in pairs(workspace["001_Lots"]:GetChildren()) do
                    if v.Name ~= "DontDelete" and v.Number.Number.Value == SelectHouse then
                        fireclickdetector(v.HousePickedByPlayer.HouseModel["001_HouseDoors"].HouseDoorFront.Knock.TouchBell.ClickDetector)
                        break
                    end
                end
                task.wait(0.5)
            end
        end)
    end
})

Tab2:AddButton({
    Name = "Remover Ban",
    Description = "Remover altomaticamente ban de todas as casas",
    Callback = function()
        local successCount = 0
        local failCount = 0
        for i = 1, 37 do
            local bannedBlockName = "BannedBlock" .. i
            local bannedBlock = Workspace:FindFirstChild(bannedBlockName, true)
            if bannedBlock then
                local success, _ = pcall(function()
                    bannedBlock:Destroy()
                end)
                if success then
                    successCount = successCount + 1
                else
                    failCount = failCount + 1
                end
            end
        end
        for _, house in pairs(Workspace:GetDescendants()) do
            if house.Name:match("BannedBlock") then
                local success, _ = pcall(function()
                    house:Destroy()
                end)
                if success then
                    successCount = successCount + 1
                else
                    failCount = failCount + 1
                end
            end
        end
        if successCount > 0 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Sucesso",
                Text = "Bans removidos de " .. successCount .. " casas!",
                Duration = 5
            })
        end
        if failCount > 0 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Aviso",
                Text = "Falha ao remover bans de " .. failCount .. " casas.",
                Duration = 5
            })
        end
        if successCount == 0 and failCount == 0 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Aviso",
                Text = "Nenhum ban encontrado para remover.",
                Duration = 5
            })
        end
    end
})

Tab2:AddToggle({
    Name = "Auto Remove Ban <NO LAG",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRemoveBan = Value

        while getgenv().AutoRemoveBan and task.wait(1) do
            local rs = game:GetService("ReplicatedStorage")
            
            -- Procurar por qualquer pasta com nome "BannedLot" ou similar (ex: BannedLots, BannedLot1, etc)
            for _, obj in pairs(rs:GetChildren()) do
                if obj:IsA("Folder") and string.lower(obj.Name):match("bannedlot") then
                    obj:Destroy()
                    print("[AutoRemoveBan] Removido: " .. obj.Name)
                end
            end
        end
    end    
})

local function getRainbowColor(t)
    return Color3.fromHSV((t % 1), 1, 1)
end

local rainbowHouseActive = false

Tab2:AddToggle({
    Name = "Rainbow your House [arco-íris]",
    Description = "Casa com efeito de cor Arco-Íris automático",
    Default = false,
    Callback = function(state)
        rainbowHouseActive = state
        if state then
            task.spawn(function()
                local time = 0
                while rainbowHouseActive do
                    local color = getRainbowColor(time)
                    local args = {
                        [1] = "ColorPickHouse",
                        [2] = color
                    }
                    local ReplicatedStorage = game:GetService("ReplicatedStorage")
                    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Player1sHous1e")
                    if event then
                        pcall(function()
                            event:FireServer(unpack(args))
                        end)
                    end
                    task.wait(0.1)
                    time = time + 0.02
                end
            end)
        end
    end
})

local Tab3 = Window:MakeTab({ "ferramentas", "Sword" })

Tab3:AddButton({
    Name = "ban hammer fe TODAS AS COISA E FE",
    Callback = function()

local tool = Instance.new("Tool")
tool.Name = "Ban Hammer"
tool.RequiresHandle = true
tool.CanBeDropped = true

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(0.1, 0.1, 0.1)
handle.Massless = true
handle.Anchored = false
handle.CanCollide = false
handle.Transparency = 0.5
handle.Color = Color3.fromRGB(255, 0, 0)

local mesh = Instance.new("SpecialMesh", handle)
mesh.MeshType = Enum.MeshType.Sphere
mesh.Scale = Vector3.new(0.05, 0.05, 0.05)
mesh.Parent = handle

handle.Parent = tool

local hammerId = 15250088977 -- ID do Ban Hammer

tool.Equipped:Connect(function(mouse)
	local character = tool.Parent
	if character and character:FindFirstChild("Humanoid") and character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
		-- Aplica o Ban Hammer
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(hammerId)

		mouse.Button1Down:Connect(function()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
			if animator then
				local anim = Instance.new("Animation")
				anim.AnimationId = "rbxassetid://2410679501"
				local track = animator:LoadAnimation(anim)
				track:Play()
			end
		end)
	end
end)

tool.Unequipped:Connect(function()
	-- Reaplica só o Ban Hammer em vez de resetar tudo
	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(hammerId)
end)

tool.Parent = game.Players.LocalPlayer.Backpack


    end
})

Tab3:AddButton({
    Name = "ban hammer com ataques e som fe 99%",
    Callback = function()


-- BAN HAMMER COMPLETO COM EQUIPAMENTO DE ITEM

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local hammerId = 15250088977 -- ID catálogo do Ban Hammer
local banHammerSoundId = 147722910 -- Som do martelo

-- Função para disparar eventos remotos
local function fireServer(eventName, args)
    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild(eventName)
    if event then
        pcall(function()
            event:FireServer(unpack(args))
        end)
    end
end

-- Criar Tool
local tool = Instance.new("Tool")
tool.Name = "Ban Hammer"
tool.RequiresHandle = true
tool.CanBeDropped = true

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1,1,1)
handle.Massless = true
handle.Anchored = false
handle.CanCollide = false
handle.Transparency = 0.5
handle.Color = Color3.fromRGB(255,0,0)
handle.Parent = tool

local mesh = Instance.new("SpecialMesh", handle)
mesh.MeshType = Enum.MeshType.Sphere
mesh.Scale = Vector3.new(0.5,0.5,0.5)

-- Coloca no Backpack
tool.Parent = player.Backpack

-- Função para equipar o item do catálogo
local function wearHammer()
    if ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("Wear") then
        pcall(function()
            ReplicatedStorage.Remotes.Wear:InvokeServer(hammerId)
        end)
    end
end

-- Função de fling
local function flingTarget(targetPlayer)
    if not targetPlayer or not targetPlayer.Character then return end
    local tchar = targetPlayer.Character
    local troot = tchar:FindFirstChild("HumanoidRootPart")
    local thum = tchar:FindFirstChild("Humanoid")
    if not troot or not thum then return end

    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player:WaitForChild("Backpack")
    local ServerBalls = Workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_SoccerBalls")

    -- Solicita bola se não tiver
    if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")
    end

    local ballTool = backpack:FindFirstChild("SoccerBall")
    if ballTool then
        ballTool.Parent = character
    end

    repeat task.wait() until ServerBalls:FindFirstChild("Soccer"..player.Name)
    local Ball = ServerBalls:FindFirstChild("Soccer"..player.Name)
    Ball.CanCollide = false
    Ball.Massless = true
    Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001,0,0)

    if Ball:FindFirstChildWhichIsA("BodyVelocity") then
        Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
    end

    local bv = Instance.new("BodyVelocity")
    bv.Name = "FlingPower"
    bv.Velocity = Vector3.new(9e8,9e8,9e8)
    bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    bv.P = 9e900
    bv.Parent = Ball

    -- Cola a bola no player alvo
    task.spawn(function()
        repeat
            if troot.Velocity.Magnitude > 0 then
                local pos = troot.Position + (troot.Velocity/1.5)
                Ball.CFrame = CFrame.new(pos)
                Ball.Orientation += Vector3.new(45,60,30)
            else
                for _, v in pairs(tchar:GetChildren()) do
                    if v:IsA("BasePart") and v.CanCollide and not v.Anchored then
                        Ball.CFrame = v.CFrame
                        task.wait(1/6000)
                    end
                end
            end
            task.wait(1/6000)
        until troot.Velocity.Magnitude > 1000 or thum.Health <= 0 or not tchar:IsDescendantOf(Workspace) or targetPlayer.Parent ~= Players
    end)
end

-- Quando equipa
tool.Equipped:Connect(function(mouse)
    wearHammer()

    local character = tool.Parent
    if character and character:FindFirstChild("Humanoid") then
        mouse.Button1Down:Connect(function()
            --  Animação
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
            if animator then
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://2410679501"
                local track = animator:LoadAnimation(anim)
                track:Play()
            end

            --  Som global e local
            fireServer("1Gu1nSound1s", {Workspace, banHammerSoundId, 1})
            local hitSound = Instance.new("Sound")
            hitSound.SoundId = "rbxassetid://" .. banHammerSoundId
            hitSound.Volume = 1
            hitSound.Parent = Workspace
            hitSound:Play()
            task.delay(3, function() hitSound:Destroy() end)
        end)
    end
end)

-- Reaplica quando desequipa
tool.Unequipped:Connect(function()
    wearHammer()
end)

-- Detecta acerto do martelo
handle.Touched:Connect(function(hit)
    local character = hit:FindFirstAncestorOfClass("Model")
    local targetPlayer = Players:GetPlayerFromCharacter(character)
    if targetPlayer and targetPlayer ~= player then
        print("Ban Hammer atingiu:", targetPlayer.Name)
        flingTarget(targetPlayer)
    end
end)


    end
})

Tab3:AddButton({
    Name = "Click fling croch",
    Callback = function()

	local jogadores = game:GetService("Players")
local rep = game:GetService("ReplicatedStorage")
local loop = game:GetService("RunService")
local mundo = game:GetService("Workspace")
local entrada = game:GetService("UserInputService")

local eu = jogadores.LocalPlayer
local cam = mundo.CurrentCamera

local NOME_FERRAMENTA = "Click Kill Couch"
local ferramentaEquipada = false
local nomeAlvo = nil
local loopTP = nil
local sofaEquipado = false
local base = nil
local posInicial = nil
local raiz = nil

local mochila = eu:WaitForChild("Backpack")
if not mochila:FindFirstChild(NOME_FERRAMENTA) then
	local ferramenta = Instance.new("Tool")
	ferramenta.Name = NOME_FERRAMENTA
	ferramenta.RequiresHandle = false
	ferramenta.CanBeDropped = false

	ferramenta.Equipped:Connect(function()
		ferramentaEquipada = true
	end)

	ferramenta.Unequipped:Connect(function()
		ferramentaEquipada = false
		nomeAlvo = nil
		limparSofa()
	end)

	ferramenta.Parent = mochila
end

function limparSofa()
	if loopTP then
		loopTP:Disconnect()
		loopTP = nil
	end

	if sofaEquipado then
		local boneco = eu.Character
		if boneco then
			local sofa = boneco:FindFirstChild("Couch")
			if sofa then
				sofa.Parent = eu.Backpack
				sofaEquipado = false
			end
		end
	end

	if base then
		base:Destroy()
		base = nil
	end

	if getgenv().AntiSit then
		getgenv().AntiSit:Set(false)
	end

	local humano = eu.Character and eu.Character:FindFirstChildOfClass("Humanoid")
	if humano then
		humano:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
		humano:ChangeState(Enum.HumanoidStateType.GettingUp)
	end

	if posInicial and raiz then
		raiz.CFrame = posInicial
		posInicial = nil
	end
end

function pegarSofa()
	local boneco = eu.Character
	if not boneco then return end
	local mochila = eu.Backpack

	if not mochila:FindFirstChild("Couch") and not boneco:FindFirstChild("Couch") then
		local args = { "PickingTools", "Couch" }
		rep.RE["1Too1l"]:InvokeServer(unpack(args))
		task.wait(0.1)
	end

	local sofa = mochila:FindFirstChild("Couch") or boneco:FindFirstChild("Couch")
	if sofa then
		sofa.Parent = boneco
		sofaEquipado = true
	end
end

function posAleatoriaAbaixo(boneco)
	local rp = boneco:FindFirstChild("HumanoidRootPart")
	if not rp then return Vector3.new() end
	local offset = Vector3.new(math.random(-2, 2), -5.1, math.random(-2, 2))
	return rp.Position + offset
end

function tpAbaixo(alvo)
	if not alvo or not alvo.Character or not alvo.Character:FindFirstChild("HumanoidRootPart") then return end

	local meuBoneco = eu.Character
	local minhaRaiz = meuBoneco and meuBoneco:FindFirstChild("HumanoidRootPart")
	local humano = meuBoneco and meuBoneco:FindFirstChildOfClass("Humanoid")

	if not minhaRaiz or not humano then return end

	humano:SetStateEnabled(Enum.HumanoidStateType.Physics, false)

	if not base then
		base = Instance.new("Part")
		base.Size = Vector3.new(10, 1, 10)
		base.Anchored = true
		base.CanCollide = true
		base.Transparency = 0.5
		base.Parent = mundo
	end

	local destino = posAleatoriaAbaixo(alvo.Character)
	base.Position = destino
	minhaRaiz.CFrame = CFrame.new(destino)

	humano:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
end

function arremessarComSofa(alvo)
	if not alvo then return end
	nomeAlvo = alvo.Name
	local boneco = eu.Character
	if not boneco then return end

	posInicial = boneco:FindFirstChild("HumanoidRootPart") and boneco.HumanoidRootPart.CFrame
	raiz = boneco:FindFirstChild("HumanoidRootPart")
	pegarSofa()

	loopTP = loop.Heartbeat:Connect(function()
		local alvoAtual = jogadores:FindFirstChild(nomeAlvo)
		if not alvoAtual or not alvoAtual.Character or not alvoAtual.Character:FindFirstChild("Humanoid") then
			limparSofa()
			return
		end
		if getgenv().AntiSit then
			getgenv().AntiSit:Set(true)
		end
		tpAbaixo(alvoAtual)
	end)

	task.spawn(function()
		local alvoAtual = jogadores:FindFirstChild(nomeAlvo)
		while alvoAtual and alvoAtual.Character and alvoAtual.Character:FindFirstChild("Humanoid") do
			task.wait(0.05)
			if alvoAtual.Character.Humanoid.SeatPart then
				local buraco = CFrame.new(265.46, -450.83, -59.93)
				alvoAtual.Character.HumanoidRootPart.CFrame = buraco
				eu.Character.HumanoidRootPart.CFrame = buraco
				task.wait(0.4)
				limparSofa()
				task.wait(0.2)
				if posInicial then
					eu.Character.HumanoidRootPart.CFrame = posInicial
				end
				break
			end
		end
	end)
end

entrada.TouchTap:Connect(function(toques, processado)
	if not ferramentaEquipada or processado then return end
	local pos = toques[1]
	local raio = cam:ScreenPointToRay(pos.X, pos.Y)
	local hit = mundo:Raycast(raio.Origin, raio.Direction * 1000)
	if hit and hit.Instance then
		local modelo = hit.Instance:FindFirstAncestorOfClass("Model")
		local jogador = jogadores:GetPlayerFromCharacter(modelo)
		if jogador and jogador ~= eu then
			arremessarComSofa(jogador)
		end
	end
end)

    end
})

Tab3:AddButton({
    Name = "tool boombox fe 100%",
    Callback = function()


local player = game.Players.LocalPlayer
        local playerGui = player:FindFirstChild("PlayerGui")
        if not playerGui then return end

        local boombox
        local sg
        local lastID = 142376088

        local function createBoombox()
            boombox = Instance.new("Tool")
            boombox.Name = "Boombox"
            boombox.RequiresHandle = true
            boombox.Parent = player.Backpack

            local handle = Instance.new("Part")
            handle.Name = "Handle"
            handle.Size = Vector3.new(1, 1, 1)
            handle.CanCollide = false
            handle.Anchored = false
            handle.Transparency = 1
            handle.Parent = boombox

            boombox.Equipped:Connect(function()
                if sg then return end

                sg = Instance.new("ScreenGui")
                sg.Name = "ChooseSongGui"
                sg.Parent = playerGui  

                local frame = Instance.new("Frame")
                frame.Style = "RobloxRound"
                frame.Size = UDim2.new(0.25, 0, 0.25, 0)
                frame.Position = UDim2.new(0.375, 0, 0.375, 0)
                frame.Draggable = true
                frame.Active = true
                frame.Parent = sg

                local text = Instance.new("TextLabel")
                text.BackgroundTransparency = 1
                text.TextStrokeTransparency = 0
                text.TextColor3 = Color3.new(1, 1, 1)
                text.Size = UDim2.new(1, 0, 0.6, 0)
                text.TextScaled = true
                text.Text = "Lay down the beat! Put in the ID number for a song you love that's been uploaded to ROBLOX. Leave it blank to stop playing music."
                text.Parent = frame

                local input = Instance.new("TextBox")
                input.BackgroundColor3 = Color3.new(0, 0, 0)
                input.BackgroundTransparency = 0.5
                input.BorderColor3 = Color3.new(1, 1, 1)
                input.TextColor3 = Color3.new(1, 1, 1)
                input.TextStrokeTransparency = 1
                input.TextScaled = true
                input.Text = tostring(lastID)
                input.Size = UDim2.new(1, 0, 0.2, 0)
                input.Position = UDim2.new(0, 0, 0.6, 0)
                input.Parent = frame

                local button = Instance.new("TextButton")
                button.Style = "RobloxButton"
                button.Size = UDim2.new(0.75, 0, 0.2, 0)
                button.Position = UDim2.new(0.125, 0, 0.8, 0)
                button.TextColor3 = Color3.new(1, 1, 1)
                button.TextStrokeTransparency = 0
                button.Text = "Play!"
                button.TextScaled = true
                button.Parent = frame

                -- Veste boombox
                local args = { [1] = 18756289999 }
                game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

                local function playAudioAll(ID)
                    if type(ID) ~= "number" then
                        print("Please insert a valid number!")
                        return
                    end
                    local rs = game:GetService("ReplicatedStorage")
                    local evt = rs:FindFirstChild("1Gu1nSound1s", true)
                    if evt then
                        evt:FireServer(workspace, ID, 1)
                    end
                end

                local function playAudioLocal(ID)
                    local sound = Instance.new("Sound")
                    sound.SoundId = "rbxassetid://" .. ID
                    sound.Volume = 1
                    sound.Looped = false
                    sound.Parent = player.Character or workspace
                    sound:Play()
                    task.wait(3)
                    sound:Destroy()
                end

                button.MouseButton1Click:Connect(function()
                    local soundID = tonumber(input.Text)
                    if soundID then
                        lastID = soundID
                        playAudioAll(soundID)
                        playAudioLocal(soundID)
                        if sg then
                            sg:Destroy()
                            sg = nil
                        end
                    else
                        print("Invalid ID!")
                    end
                end)
            end)

            boombox.Unequipped:Connect(function()
                if sg then
                    sg:Destroy()
                    sg = nil
                end
                local args = { [1] = 18756289999 }
                game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))
            end)

            boombox.AncestryChanged:Connect(function(_, parent)
                if not parent and sg then
                    sg:Destroy()
                    sg = nil
                end
            end)
        end

        createBoombox()

    end
})


Tab3:AddButton({
    Name = "click fling ball ",
    Callback = function()
        
        local jogadores = game:GetService("Players")
local rep = game:GetService("ReplicatedStorage")
local mundo = game:GetService("Workspace")
local entrada = game:GetService("UserInputService")
local cam = mundo.CurrentCamera
local eu = jogadores.LocalPlayer

local NOME_FERRAMENTA = "Click Fling Ball"
local ferramentaEquipada = false

local mochila = eu:WaitForChild("Backpack")
if not mochila:FindFirstChild(NOME_FERRAMENTA) then
	local ferramenta = Instance.new("Tool")
	ferramenta.Name = NOME_FERRAMENTA
	ferramenta.RequiresHandle = false
	ferramenta.CanBeDropped = false

	ferramenta.Equipped:Connect(function()
		ferramentaEquipada = true
	end)

	ferramenta.Unequipped:Connect(function()
		ferramentaEquipada = false
	end)

	ferramenta.Parent = mochila
end

-- FunÃƒÂ§ÃƒÂ£o FlingBall (bola)
local function FlingBall(target)
    

    local players = game:GetService("Players")
    local player = players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local hrp = character:WaitForChild("HumanoidRootPart")
    local backpack = player:WaitForChild("Backpack")
    local ServerBalls = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")

    local function GetBall()
        if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        end

        repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")

        local ballTool = backpack:FindFirstChild("SoccerBall")
        if ballTool then
            ballTool.Parent = character
        end

        repeat task.wait() until ServerBalls:FindFirstChild("Soccer" .. player.Name)

        return ServerBalls:FindFirstChild("Soccer" .. player.Name)
    end

    local Ball = ServerBalls:FindFirstChild("Soccer" .. player.Name) or GetBall()
    Ball.CanCollide = false
    Ball.Massless = true
    Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

    if target ~= player then
        local tchar = target.Character
        if tchar and tchar:FindFirstChild("HumanoidRootPart") and tchar:FindFirstChild("Humanoid") then
            local troot = tchar.HumanoidRootPart
            local thum = tchar.Humanoid

            if Ball:FindFirstChildWhichIsA("BodyVelocity") then
                Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
            end

            local bv = Instance.new("BodyVelocity")
            bv.Name = "FlingPower"
            bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.P = 9e900
            bv.Parent = Ball

            workspace.CurrentCamera.CameraSubject = thum

            repeat
                if troot.Velocity.Magnitude > 0 then
                    local pos = troot.Position + (troot.Velocity / 1.5)
                    Ball.CFrame = CFrame.new(pos)
                    Ball.Orientation += Vector3.new(45, 60, 30)
                else
                    for i, v in pairs(tchar:GetChildren()) do
                        if v:IsA("BasePart") and v.CanCollide and not v.Anchored then
                            Ball.CFrame = v.CFrame
                            task.wait(1/6000)
                        end
                    end
                end
                task.wait(1/6000)
            until troot.Velocity.Magnitude > 1000 or thum.Health <= 0 or not tchar:IsDescendantOf(workspace) or target.Parent ~= players

            workspace.CurrentCamera.CameraSubject = humanoid
        end
    end
end

-- Toque na tela para aplicar a bola
entrada.TouchTap:Connect(function(toques, processado)
	if not ferramentaEquipada or processado then return end
	local pos = toques[1]
	local raio = cam:ScreenPointToRay(pos.X, pos.Y)
	local hit = mundo:Raycast(raio.Origin, raio.Direction * 1000)
	if hit and hit.Instance then
		local modelo = hit.Instance:FindFirstAncestorOfClass("Model")
		local jogador = jogadores:GetPlayerFromCharacter(modelo)
		if jogador and jogador ~= eu then
			FlingBall(jogador)
		end
	end
end)
        
    end
})

Tab3:AddButton({
    Name = "click fling [NEEDS GUN]",
    Callback = function()
   
   local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local fireConnection = nil

-- FunÃ§Ã£o de disparo (nÃ£o alterada)
local function fireAtPart(clickedPart)
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local targetPlayer = Players:GetPlayerFromCharacter(clickedPart:FindFirstAncestorOfClass("Model"))
	if not targetPlayer or targetPlayer == LocalPlayer then return end

	local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault")
		and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")

	if gunScript then
		local args = {
			clickedPart,
			clickedPart,
			Vector3.new(1e14, 1e14, 1e14),
			clickedPart.Position,
			gunScript:FindFirstChild("MuzzleEffect"),
			gunScript:FindFirstChild("HitEffect"),
			0,
			0,
			{ [1] = false },
			{
				[1] = 25,
				[2] = Vector3.new(100, 100, 100),
				[3] = BrickColor.new(29),
				[4] = 0.25,
				[5] = Enum.Material.SmoothPlastic,
				[6] = 0.25
			},
			true,
			false
		}

		local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1n")
		if event then
			event:FireServer(unpack(args))
		end
	end
end

local function ativarFire()
	if fireConnection then return end
	fireConnection = Mouse.Button1Down:Connect(function()
		local clicked = Mouse.Target
		if clicked then
			local targetPlayer = Players:GetPlayerFromCharacter(clicked:FindFirstAncestorOfClass("Model"))
			if targetPlayer and targetPlayer ~= LocalPlayer then
				_G.selectedTarget = targetPlayer.Name
				fireAtPart(clicked)
			end
		end
	end)
end

local function desativarFire()
	if fireConnection then
		fireConnection:Disconnect()
		fireConnection = nil
	end
end

-- Criar botÃ£o mÃ³vel
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "AssaultToggleGui"
gui.ResetOnSpawn = false

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 120, 0, 40)
button.Position = UDim2.new(0.5, -60, 0.8, 0)
button.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
button.Text = "ASSAULT: OFF"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.Font = Enum.Font.GothamBold
button.BorderSizePixel = 0
button.AutoButtonColor = false
button.Parent = gui
button.Active = true
button.Draggable = true

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 10)
uicorner.Parent = button

local uistroke = Instance.new("UIStroke")
uistroke.Thickness = 2
uistroke.Color = Color3.fromRGB(255, 255, 255)
uistroke.Parent = button

-- Alternar entre ativar e desativar
local assaultAtivo = false
button.MouseButton1Click:Connect(function()
	assaultAtivo = not assaultAtivo
	if assaultAtivo then
		button.Text = "ASSAULT: ON"
		button.BackgroundColor3 = Color3.fromRGB(80, 255, 80)
		ativarFire()
	else
		button.Text = "ASSAULT: OFF"
		button.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
		desativarFire()
	end
end)
   
    end
})

Tab3:AddButton({
    Name = "Tp tool",
    Callback = function()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Equip to Click TP"
        tool.Activated:Connect(function()
            local pos = mouse.Hit + Vector3.new(0,2.5,0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

local Paragraph = Tab3:AddParagraph({"NEW/BETA", "tools"})

Tab3:AddButton({
  Name = "Click Fling Portas [Beta]",
Description = "Para Usar, Recomendo chegar perto de outras portas, apos ela ir atÃƒÂ© vocÃƒÂª, clique no jogador que deseja flingar",
  Callback = function()
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HRP = Character:WaitForChild("HumanoidRootPart")

-- Alvo invisÃƒÂ­vel (BlackHole)
local BlackHole = Instance.new("Part")
BlackHole.Size = Vector3.new(100000, 100000, 100000)
BlackHole.Transparency = 1
BlackHole.Anchored = true
BlackHole.CanCollide = false
BlackHole.Name = "BlackHoleTarget"
BlackHole.Parent = Workspace

-- Attachment base no BlackHole
local baseAttachment = Instance.new("Attachment")
baseAttachment.Name = "havens2025_BlackHoleAttachment"
baseAttachment.Parent = BlackHole

-- Atualiza posiÃƒÂ§ÃƒÂ£o do BlackHole
RunService.Heartbeat:Connect(function()
	BlackHole.CFrame = HRP.CFrame
end)

-- Lista de portas controladas
local ControlledDoors = {}

-- Prepara uma porta para ser controlada
local function SetupPart(part)
	if not part:IsA("BasePart") or part.Anchored or not string.find(part.Name, "Door") then return end
	if part:FindFirstChild("havens2025_Attached") then return end

	part.CanCollide = false

	for _, obj in ipairs(part:GetChildren()) do
		if obj:IsA("AlignPosition") or obj:IsA("Torque") or obj:IsA("Attachment") then
			obj:Destroy()
		end
	end

	local marker = Instance.new("BoolValue", part)
	marker.Name = "havens2025_Attached"

	local a1 = Instance.new("Attachment", part)

	local align = Instance.new("AlignPosition", part)
	align.Attachment0 = a1
	align.Attachment1 = baseAttachment
	align.MaxForce = 1e20
	align.MaxVelocity = math.huge
	align.Responsiveness = 99999

	local torque = Instance.new("Torque", part)
	torque.Attachment0 = a1
	torque.RelativeTo = Enum.ActuatorRelativeTo.World
	torque.Torque = Vector3.new(
		math.random(-10e5, 10e5) * 10000,
		math.random(-10e5, 10e5) * 10000,
		math.random(-10e5, 10e5) * 10000
	)

	table.insert(ControlledDoors, {Part = part, Align = align})
end

-- Detecta e prepara portas existentes
for _, obj in ipairs(Workspace:GetDescendants()) do
	if obj:IsA("BasePart") and string.find(obj.Name, "Door") then
		SetupPart(obj)
	end
end

-- Novas portas no futuro
Workspace.DescendantAdded:Connect(function(obj)
	if obj:IsA("BasePart") and string.find(obj.Name, "Door") then
		SetupPart(obj)
	end
end)

-- Flinga jogador com timeout e retorno
local function FlingPlayer(player)
	local char = player.Character
	if not char then return end
	local targetHRP = char:FindFirstChild("HumanoidRootPart")
	if not targetHRP then return end

	local targetAttachment = targetHRP:FindFirstChild("havens2025_TargetAttachment")
	if not targetAttachment then
		targetAttachment = Instance.new("Attachment", targetHRP)
		targetAttachment.Name = "havens2025_TargetAttachment"
	end

	for _, data in ipairs(ControlledDoors) do
		if data.Align then
			data.Align.Attachment1 = targetAttachment
		end
	end

	local start = tick()
	local flingDetected = false

	while tick() - start < 5 do
		if targetHRP.Velocity.Magnitude >= 20 then
			flingDetected = true
			break
		end
		RunService.Heartbeat:Wait()
	end

	-- Sempre retorna as portas
	for _, data in ipairs(ControlledDoors) do
		if data.Align then
			data.Align.Attachment1 = baseAttachment
		end
	end
end

-- Clique (funciona no mobile)
UserInputService.TouchTap:Connect(function(touchPositions, processed)
	if processed then return end
	local pos = touchPositions[1]
	local camera = Workspace.CurrentCamera
	local unitRay = camera:ScreenPointToRay(pos.X, pos.Y)
	local raycast = Workspace:Raycast(unitRay.Origin, unitRay.Direction * 1000)

	if raycast and raycast.Instance then
		local hit = raycast.Instance
		local player = Players:GetPlayerFromCharacter(hit:FindFirstAncestorOfClass("Model"))
		if player and player ~= LocalPlayer then
			FlingPlayer(player)
		end
	end
end)
  end
})

local ChildTab = Window:MakeTab({"Criança", "baby"})

-- Inicializa lista de players
local function updatePlayerList()
    local list = {}
    for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
        if plr ~= game:GetService("Players").LocalPlayer then
            table.insert(list, plr.Name)
        end
    end
    return list
end

local players = updatePlayerList()

-- Cria o dropdown
local playerChild = ChildTab:AddDropdown({
    Name = "Selecione um player para perseguir",
    Options = players,
    Default = "",
    Callback = function(selected)
        if game.Players:FindFirstChild(selected) then
            chasingplayer = selected
        else
            chasingplayer = nil
        end
    end
})

-- Botão atualizar
ChildTab:AddButton({
    Name = "Atualizar Player List",
    Callback = function()
        local updatedPlayers = updatePlayerList()
        if playerChild and updatedPlayers then
            pcall(function()
                -- Refresh precisa receber tabela de strings
                playerChild:Refresh(updatedPlayers)
            end)
            -- Se o jogador selecionado não existir mais
            if chasingplayer and not game.Players:FindFirstChild(chasingplayer) then
                chasingplayer = nil
                pcall(function()
                    playerChild:Set("") -- limpa seleção
                end)
            end
        end
    end
})

-- Atualiza automaticamente quando players entram ou saem
game.Players.PlayerAdded:Connect(function()
    task.wait(0.1)
    pcall(function()
        playerChild:Refresh(updatePlayerList())
    end)
end)

game.Players.PlayerRemoving:Connect(function(player)
    task.wait(0.1)
    pcall(function()
        playerChild:Refresh(updatePlayerList())
    end)
    if chasingplayer == player.Name then
        chasingplayer = nil
        pcall(function()
            playerChild:Set("")
        end)
    end
end)

-- Botão para enviar a criança
ChildTab:AddButton({
    Name = "Enviar criança",
    Callback = function()
        if not chasingplayer then
            warn("Nenhum jogador selecionado!")
            return
        end

        local target = chasingplayer
        local babyRemote = ReplicatedStorage:FindFirstChild("RE"):FindFirstChild("1Bab1yFollo1w")
        if not babyRemote then
            warn("Remote da criança não encontrado!")
            return
        end

        -- Spawn da criança
        local args = {"CharacterFollowSpawnPlayer", "BabyBoy"}
        local success, err = pcall(function()
            babyRemote:FireServer(unpack(args))
        end)
        if not success then warn("Erro ao enviar criança: " .. err) end

        task.wait(0.2)

        -- Torna os parts colidíveis
        local babyName = LocalPlayer.Name
        if workspace:FindFirstChild(babyName) then
            for _, v in pairs(workspace[babyName]:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end

        -- Seguir o jogador
        if workspace:FindFirstChild(target) and workspace:FindFirstChild(babyName) and workspace[babyName]:FindFirstChild("FollowCharacter") then
            workspace[babyName].FollowCharacter.Parent = workspace[target]

            if rawget(getgenv(), "RunServiceConnection") then return end

            getgenv().RunServiceConnection = RunService.Heartbeat:Connect(function()
                local followCharacter = workspace[target]:FindFirstChild("FollowCharacter")
                local humanoidRootPart = workspace[target]:FindFirstChild("HumanoidRootPart")
                if followCharacter and followCharacter:FindFirstChild("Torso") and followCharacter.Torso:FindFirstChild("BodyPosition") and humanoidRootPart then
                    followCharacter.Torso.BodyPosition.Position = humanoidRootPart.Position - (humanoidRootPart.CFrame.LookVector * 3)
                    followCharacter.Torso.BodyGyro.CFrame = humanoidRootPart.CFrame
                end
            end)
        end
    end
})

-- Botão para retornar a criança
ChildTab:AddButton({
    Name = "Retornar criança",
    Callback = function()
        if rawget(getgenv(), "RunServiceConnection") then
            getgenv().RunServiceConnection:Disconnect()
            getgenv().RunServiceConnection = nil
        end

        local babyRemote = ReplicatedStorage:FindFirstChild("RE"):FindFirstChild("1Bab1yFollo1w")
        if not babyRemote then
            warn("Remote da criança não encontrado!")
            return
        end

        local argsDelete = {"DeleteFollowCharacter"}
        local success, err = pcall(function()
            babyRemote:FireServer(unpack(argsDelete))
        end)
        if not success then warn("Erro ao deletar criança: " .. err) end

        local argsSpawn = {"CharacterFollowSpawnPlayer", "BabyBoy"}
        success, err = pcall(function()
            babyRemote:FireServer(unpack(argsSpawn))
        end)
        if not success then warn("Erro ao spawnar criança: " .. err) end
    end
})

-- Toggle para spectar o jogador
ChildTab:AddToggle({
    Name = "Spectar Player",
    Default = false,
    Callback = function(Value)
        local Camera = workspace.CurrentCamera

        if Value then
            if not chasingplayer then
                warn("Nenhum jogador selecionado para spectar!")
                return false
            end

            if not rawget(getgenv(), "CameraConnection") then
                getgenv().CameraConnection = RunService.Heartbeat:Connect(function()
                    local targetPlayer = Players:FindFirstChild(chasingplayer)
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") then
                        Camera.CameraSubject = targetPlayer.Character.Humanoid
                    else
                        if rawget(getgenv(), "CameraConnection") then
                            getgenv().CameraConnection:Disconnect()
                            getgenv().CameraConnection = nil
                        end
                        Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") or nil
                    end
                end)
            end
        else
            if rawget(getgenv(), "CameraConnection") then
                getgenv().CameraConnection:Disconnect()
                getgenv().CameraConnection = nil
            end
            Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") or nil
        end
    end
})

-- Variável para armazenar o nome da child
local childName = "sla" -- valor inicial

ChildTab:AddTextBox({
    Name = "Nome da Child",
    Description = "Digite o nome da criança",
    PlaceholderText = "Digite o nome aqui...",
    Callback = function(Value)
        childName = Value -- salva o valor digitado

        -- Envia para o RemoteEvent
        local success, err = pcall(function()
            local remote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t")
            if remote then
                remote:FireServer("RolePlayFollow", childName)
            else
                warn("RemoteEvent '1RPNam1eTex1t' não encontrado!")
            end
        end)

        if not success then
            warn("Erro ao trocar nome da child: " .. err)
        end
    end
})

local TabAnts = Window:MakeTab({ "configs", "cherry" })

local Section = TabAnts:AddSection({"novas opções de som de morte"})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Estado
local selectedSoundID = nil
local playOnTargetDeath = false
local playOnMyDeath = false

-- selectedPlayer = nome (string), puxado por outro sistema seu
local selectedPlayer = nil 

-- Função para enviar remote (Brookhaven boombox)
local function fireRemotePlaySound(soundId, volume)
    local remote = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Gu1nSound1s")
    if remote then
        remote:FireServer(Workspace, soundId, volume or 1)
    end
end

-- Função para tocar som local
local function playSound(soundId)
    if not soundId then return end
    fireRemotePlaySound(soundId, 1)
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://" .. soundId
    s.Volume = 1
    s.Parent = Workspace
    s:Play()
    task.delay(5, function()
        s:Destroy()
    end)
end

-- Caixa de texto: Sound ID
TabAnts:AddTextBox({
    Name = "Sound ID ALL",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        if tonumber(Value) then
            selectedSoundID = Value
            print("Sound ID set:", selectedSoundID)
        else
            print("ID inválido.")
        end
    end
})

-- Toggle: tocar quando EU morrer
TabAnts:AddToggle({
    Name = "Som quando EU morrer all",
    Default = false,
    Callback = function(v)
        playOnMyDeath = v
    end
})

-- Função para conectar mortes
local function connectDeath(plr)
    plr.CharacterAdded:Connect(function(char)
        local humanoid = char:WaitForChild("Humanoid")
        humanoid.Died:Connect(function()
            -- pegar alvo pelo nome
            local target = selectedPlayer and Players:FindFirstChild(selectedPlayer)

            -- alvo morreu
            if playOnTargetDeath and target and plr == target and selectedSoundID then
                playSound(selectedSoundID)
                print("Tocou som (alvo morreu)")
            end

            -- eu morri
            if playOnMyDeath and plr == LocalPlayer and selectedSoundID then
                playSound(selectedSoundID)
                print("Tocou som (você morreu)")
            end
        end)
    end)
end

-- Conectar jogadores existentes
for _, plr in ipairs(Players:GetPlayers()) do
    connectDeath(plr)
end

-- Conectar jogadores novos
Players.PlayerAdded:Connect(connectDeath)

local Section = TabAnts:AddSection({"scripts | universal"})

TabAnts:AddButton({"Shift Lock [Arrastável]", function(Value)

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Shiftlock-For-Mobile-Script-36530"))()

end})

TabAnts:AddButton({"emotes [Sempre tem novos]", function(Value)

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-TIKTOK-Emote-Gui-Script-48411"))()

end})

TabAnts:AddButton({"fly Universal ", function(Value)

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-cool-fly-gui-thing-22600"))()


end})
