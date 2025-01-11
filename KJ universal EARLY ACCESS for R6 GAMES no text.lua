-- credits


game.StarterGui:SetCore("SendNotification", {
Title = "Credits and stufff";
Text = "THANKS FOR USING MY SCRIPTS!!! MADE BY ALICE AND NOLI OR NEO";
Duration = 5;
Icon = "rbxassetid://0"; -- leave it like that if you don't want the icon
Button1 = "Okay"; -- name of it
Button2 = "Close"; -- remove this line if you only want 1 button
})
-- remove this script at bottom if you don't wan tsb notification sound
s= Instance.new("Sound")
s.SoundId = "rbxassetid://10066921516"
s:Play()
s.Volume = 3


--ultimate 2 no text

loadstring(game:HttpGet("https://pastebin.com/raw/TLQ0Xzcd"))()




-- ultimate 



local tool = Instance.new("Tool")
tool.Name = "Ultimate"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack

local cooldownTime = 35
local lastUsedTime = 0

local TweenService = game:GetService("TweenService")

tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastUsedTime < cooldownTime then
        return -- Ignore if cooldown has not passed
    end
    lastUsedTime = currentTime
local soundId = "rbxassetid://9043933627"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Create and play the sound
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = game.Workspace  -- Parent the sound to the Workspace
sound.Volume = 4  -- Adjust the volume if needed
sound:Play()

-- Set the properties for the sound
sound.PlaybackSpeed = 0.9  -- Set speed to 1
sound.TimePosition = 0 -- Set start time to 1 second
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Create the first animation
    local animation1 = Instance.new("Animation")
    animation1.AnimationId = "rbxassetid://80980248"
    local animationTrack1 = humanoid:LoadAnimation(animation1)

    -- Play the first animation and adjust speed
    animationTrack1:Play()
    animationTrack1.TimePosition = 1 -- Start at 1 second
    animationTrack1:AdjustSpeed(1.5) -- Set the speed to 1.5

    -- Stop the first animation after 0.8 seconds
    task.delay(0.8, function()
        animationTrack1:Stop()
    end)

    -- Create the second animation
    local animation2 = Instance.new("Animation")
    animation2.AnimationId = "rbxassetid://183412214"
    local animationTrack2 = humanoid:LoadAnimation(animation2)

    -- Play the second animation and adjust speed
    animationTrack2:Play()
    animationTrack2.TimePosition = 0.3 -- Start at 0.3 seconds
    animationTrack2:AdjustSpeed(-1) -- Set the speed to -1 for reverse

    -- Stop the second animation after 0.4 seconds
    task.delay(0.4, function()
        animationTrack2:Stop()

        -- Create and play the third animation after the second animation finishes
        local animation3 = Instance.new("Animation")
        animation3.AnimationId = "rbxassetid://183412214"
        local animationTrack3 = humanoid:LoadAnimation(animation3)

        -- Play the third animation and adjust speed
        animationTrack3:Play()
        animationTrack3.TimePosition = 0.3 -- Start at 0.3 seconds
        animationTrack3:AdjustSpeed(1) -- Set the speed to 1 for normal speed

        -- Stop the third animation after 1 second
        task.delay(1, function()
            animationTrack3:Stop()
        end)
    end)

    -- Move the player backward by 1 stud every 0.001 seconds for 0.9 seconds
    local startTime = tick()
    local duration = 0.9
    local moveDistance = -1 -- Move backward by 1 stud
    local moveInterval = 0.001

    -- Loop to teleport the player backward in increments
    while tick() - startTime < duration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, moveDistance)
        wait(moveInterval)
    end

    -- Block-spawning logic starts here
    local function spawnAndDestroyCirclesOfBlocks()
        local position = humanoidRootPart.Position

        -- Raycasting to detect the surface below the player
        local ray = Ray.new(position + Vector3.new(0, 5, 0), Vector3.new(0, -10, 0))
        local hit, hitPosition = game.Workspace:FindPartOnRay(ray, character)

        if hit then
            local radii = {10, 30, 60, 90, 120}
            local sizes = {5, 6, 7, 8, 9}
            local blocks = {}

            for j = 1, 5 do
                local radius = radii[j]
                local size = sizes[j]
                local angleStep = 360 / (radius * 2)
                local blockCount = math.ceil(360 / angleStep)
                local blocksForCurrentCircle = {}

                for i = 0, blockCount - 1 do
                    local angle = math.rad(i * angleStep)
                    local xOffset = radius * math.cos(angle)
                    local zOffset = radius * math.sin(angle)
                    local spreadOffset = Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))
                    local blockPosition = hitPosition + Vector3.new(xOffset, 0.5, zOffset) + spreadOffset

                    local block = Instance.new("Part")
                    block.Size = Vector3.new(size, 3, size)
                    block.Position = blockPosition
                    block.Anchored = true
                    block.Parent = workspace
                    block.Color = hit.Color

                    local direction = humanoidRootPart.Position - block.Position
                    block.CFrame = CFrame.new(blockPosition, blockPosition + direction)

                    table.insert(blocksForCurrentCircle, block)
                end

                table.insert(blocks, blocksForCurrentCircle)
            end

            -- Wait for 3 seconds before tweening the blocks
            wait(5)

            for _, circleBlocks in ipairs(blocks) do
                for _, block in ipairs(circleBlocks) do
                    local targetPosition = block.Position - Vector3.new(0, 5, 0)
                    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                    local tween = TweenService:Create(block, tweenInfo, {Position = targetPosition})

                    tween:Play()
                    tween.Completed:Connect(function()
                        game.Debris:AddItem(block, 0)
                    end)
                end
            end
        end
    end

local soundId = "rbxassetid://1741599172"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Create and play the sound
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = game.Workspace  -- Parent the sound to the Workspace
sound.Volume = 400  -- Adjust the volume if needed
sound:Play()

-- Set the properties for the sound
sound.PlaybackSpeed = 0.9  -- Set speed to 1
sound.TimePosition = 0 -- Set start time to 1 second

    -- Call the block-spawning function
    spawnAndDestroyCirclesOfBlocks()
end)


-- final hunt




local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local toolCooldown = 5 -- Cooldown in seconds
local toolEquipped = false -- Flag to check if tool is equipped

-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Final Hunt/doomed prey"
tool.RequiresHandle = false -- No handle needed
tool.Parent = player.Backpack

-- Function to spawn and destroy a circle of blocks
local function spawnAndDestroyCircleOfBlocks()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local position = humanoidRootPart.Position

    local ray = Ray.new(position + Vector3.new(0, 5, 0), Vector3.new(0, -10, 0))
    local hit, hitPosition = game.Workspace:FindPartOnRay(ray, character)

    if hit then
        local blockCount = 8
        local radius = 15
        local angleStep = 360 / blockCount
        local blocks = {}

        for i = 0, blockCount - 1 do
            local angle = math.rad(i * angleStep)
            local xOffset = radius * math.cos(angle)
            local zOffset = radius * math.sin(angle)
            local spreadOffset = Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))

            local blockPosition = hitPosition + Vector3.new(xOffset, 0.5, zOffset) + spreadOffset

            local block = Instance.new("Part")
            block.Size = Vector3.new(12, 3, 12)
            block.Position = blockPosition
            block.Anchored = true
            block.Parent = workspace
            block.Color = hit.Color
local soundId = "rbxassetid://1741599172"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Create and play the sound
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = game.Workspace  -- Parent the sound to the Workspace
sound.Volume = 4  -- Adjust the volume if needed
sound:Play()

-- Set the properties for the sound
sound.PlaybackSpeed = 1  -- Set speed to 1
sound.TimePosition = 0 -- Set start time to 1 second
            local direction = humanoidRootPart.Position - block.Position
            block.CFrame = CFrame.new(blockPosition, blockPosition + direction)

            table.insert(blocks, block)
        end

        -- Create tweens for all blocks to move 5 studs down
        for _, block in ipairs(blocks) do
            local targetPosition = block.Position - Vector3.new(0, 5, 0)
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(block, tweenInfo, {Position = targetPosition})

            tween:Play()

            tween.Completed:Connect(function()
                game.Debris:AddItem(block, 0)
            end)
        end
    end
end

-- Function to make the player jump and play the first animation (jump)
local function jumpAndPlayAnimation()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local rootPart = character:WaitForChild("HumanoidRootPart")

    local animation1 = Instance.new("Animation")
    animation1.AnimationId = "rbxassetid://97171309" -- Jump animation ID

    -- Make the player jump
    rootPart.Velocity = Vector3.new(0, 125, 0) -- Adjusted for 70 studs jump

    -- Play the jump animation
    local animationTrack1 = humanoid:LoadAnimation(animation1)
    animationTrack1.TimePosition = 0 -- Start from the beginning
    animationTrack1:Play()
    animationTrack1:AdjustSpeed(0.5) -- Play at normal speed

    -- Set end time for the first animation (1 second)
    task.delay(1, function()
        animationTrack1:Stop()
    end)

    return animationTrack1
end

-- Function to play the second animation immediately after the jump animation starts
local function playSecondAnimation()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local animation2 = Instance.new("Animation")
    animation2.AnimationId = "rbxassetid://111880514" -- Second animation ID

    -- Play the second animation immediately
    local animationTrack2 = humanoid:LoadAnimation(animation2)
    animationTrack2.TimePosition = 1 -- Start from the beginning
    animationTrack2:Play()
    animationTrack2:AdjustSpeed(-1) -- Play at reversed speed
end

-- Function to play the launch forward animation and launch the player
local function launchForwardAndDown()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local rootPart = character:WaitForChild("HumanoidRootPart")

    -- Launch forward animation
    local animation3 = Instance.new("Animation")
    animation3.AnimationId = "rbxassetid://203876950" -- Launch forward animation ID
    local animationTrack3 = humanoid:LoadAnimation(animation3)
    animationTrack3:Play()

    -- Launch the player forward in the direction they are looking
    local lookDirection = rootPart.CFrame.LookVector
    rootPart.Velocity = lookDirection * 200 + Vector3.new(0, -50, 0)  -- Launch forward and downward

    -- Stop applying the downward velocity after 1 second
    task.delay(1, function()
        rootPart.Velocity = Vector3.new(0, 0, 0)
    end)
end

-- Function to execute the entire sequence
local function executeSequence()
    if toolEquipped then return end
    toolEquipped = true

    spawnAndDestroyCircleOfBlocks()  -- Spawn blocks and tween them immediately
    local jumpAnimationTrack = jumpAndPlayAnimation()  -- Play the jump animation
    playSecondAnimation()  -- Play the second animation immediately

    -- Wait for the jump animation to finish before launching the player
    jumpAnimationTrack.Stopped:Connect(function()
        launchForwardAndDown()  -- Play launch forward animation and launch the player
    end)

    -- Reset cooldown after 5 seconds
    task.delay(toolCooldown, function()
        toolEquipped = false
    end)
end

-- When the tool is activated
tool.Activated:Connect(function()
    executeSequence()
end)


-- jump debris

-- Get the player
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Cooldown time in seconds
local cooldownTime = 5
local lastUsedTime = 0  -- Tracks the last time the function was used


-- Function to spawn and destroy blocks
local function spawnAndDestroyCircleOfBlocks()
    -- Check if enough time has passed since the last use
    if tick() - lastUsedTime < cooldownTime then
        return  -- Exit if the cooldown has not passed
    end

    -- Update the last used time
    lastUsedTime = tick()

    -- Get the player's character and position
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local position = humanoidRootPart.Position
    
    -- Get the surface the player is standing on
    local ray = Ray.new(position + Vector3.new(0, 5, 0), Vector3.new(0, -10, 0)) -- Ray pointing downward
    local hit, hitPosition = game.Workspace:FindPartOnRay(ray, character)

    if hit then
        local blockCount = 8  -- Number of blocks to form the circle
        local radius = 5  -- Distance from the player
        local angleStep = 360 / blockCount  -- Angle between each block
        local blocks = {}  -- Store all blocks to tween them at once

        -- Create blocks in a circle
        for i = 0, blockCount - 1 do
            local angle = math.rad(i * angleStep)
            local xOffset = radius * math.cos(angle)
            local zOffset = radius * math.sin(angle)
            local spreadOffset = Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))  -- Spread by 1 stud

            local blockPosition = hitPosition + Vector3.new(xOffset, 0.5, zOffset) + spreadOffset  -- 0.5 studs above the surface with spread

            local block = Instance.new("Part")
            block.Size = Vector3.new(4, 1, 4)
            block.Position = blockPosition
            block.Anchored = true
            block.Parent = workspace

            -- Match the block's color to the surface the player is standing on
            block.Color = hit.Color

            -- Store the block in the blocks table
            table.insert(blocks, block)
        end

        -- Wait for 3 seconds before tweening all blocks
        wait(3)

        -- Create tweens for all blocks to move 5 studs down
        for _, block in ipairs(blocks) do
            local targetPosition = block.Position - Vector3.new(0, 5, 0)  -- Move 5 studs down
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)  -- 1 second tween
            local tween = TweenService:Create(block, tweenInfo, {Position = targetPosition})

            -- Play the tween
            tween:Play()

            -- Destroy the block after the tween finishes (1 second)
            tween.Completed:Connect(function()
                game.Debris:AddItem(block, 0)  -- Destroy immediately after the tween
            end)
        end
    end
end

-- Detect when the player jumps and trigger the function
local function onJump()
    spawnAndDestroyCircleOfBlocks()
end

-- Connect to the player's humanoid jump event
local function setupCharacter()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Jumping:Connect(onJump)  -- Connect to the Jump event
end

-- Ensure setup is done when the character is added
player.CharacterAdded:Connect(setupCharacter)

-- If the player is already in the game, setup immediately
if player.Character then
    setupCharacter()
end







-- fall animation 

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local fallAnimationId = "0"  -- Replace with the fall animation ID
local stopAnimationId = "180435571"  -- Not used but kept for reference

local fallAnimation = Instance.new("Animation")
fallAnimation.AnimationId = "rbxassetid://" .. fallAnimationId

local fallAnimTrack = humanoid:LoadAnimation(fallAnimation)

fallAnimTrack.Looped = true

local function updateAnimation()
    -- Check if the humanoid is falling
    if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        -- Play fall animation if it's not already playing
        if not fallAnimTrack.IsPlaying then
            fallAnimTrack:Play()
        end
    else
        -- Stop the fall animation when not in freefall
        if fallAnimTrack.IsPlaying then
            fallAnimTrack:Stop()
        end
    end
end

humanoid.StateChanged:Connect(function(_, newState)
    -- Trigger fall animation when in Freefall state
    if newState == Enum.HumanoidStateType.Freefall then
        updateAnimation()
    else
        -- Stop fall animation if state is not Freefall
        if fallAnimTrack.IsPlaying then
            fallAnimTrack:Stop()
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    updateAnimation()
end)

-- Start the fall animation if already falling
updateAnimation()




-- stoic bomb


-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Stoic bomb"
tool.RequiresHandle = false  -- No handle needed
tool.Parent = game.Players.LocalPlayer.Backpack

-- Function to be called when the tool is activated
tool.Activated:Connect(function()
    -- Remove the tool from the player's backpack
    tool.Parent = nil

    -- Run the code from the pastebin
    loadstring(game:HttpGet("https://pastebin.com/raw/zPWqwFWg"))()



    -- Wait for 2 seconds before returning the tool
    wait(2)

    -- Return the tool to the player's backpack
    tool.Parent = game.Players.LocalPlayer.Backpack
end)




-- unlimited flexworks

-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Unlimited Flexworks"
tool.RequiresHandle = false  -- No handle needed
tool.Parent = game.Players.LocalPlayer.Backpack

-- Function to be called when the tool is activated
tool.Activated:Connect(function()
    -- Remove the tool from the player's backpack
    tool.Parent = nil

    -- Run the code from the pastebin
    loadstring(game:HttpGet("https://pastebin.com/raw/j2jfdghy"))()



    -- Wait for 2 seconds before returning the tool
    wait(2)

    -- Return the tool to the player's backpack
    tool.Parent = game.Players.LocalPlayer.Backpack
end)


-- wall run left animation 

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = 1 -- How many studs to teleport
local isTeleporting = false

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://100348530"
local animationTrack = humanoid:LoadAnimation(animation)

-- Helper function to exclude other player characters
local function getRaycastBlacklist()
    local blacklist = {character} -- Exclude the player's own character
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            table.insert(blacklist, otherPlayer.Character)
        end
    end
    return blacklist
end

-- Check if the player is touching a collidable wall on the left
local function isTouchingCollidableWall()
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = getRaycastBlacklist() -- Exclude players
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    -- Raycast to the left of the player (using -RightVector)
    local leftRay = workspace:Raycast(rootPart.Position, rootPart.CFrame.RightVector * -2, raycastParams)

    -- Check if the ray hits a valid (collidable) wall
    if leftRay and leftRay.Instance then
        local hitPart = leftRay.Instance
        return hitPart.CanCollide -- Only return true if the hit part is collidable
    end
    return false
end

-- Main loop to detect wall touch and start/stop animation
RunService.RenderStepped:Connect(function()
    if isTouchingCollidableWall() then
        if not animationTrack.IsPlaying then
            animationTrack:Play()
            animationTrack.TimePosition = 0.2 -- Start at 1.7 seconds
            animationTrack:AdjustSpeed(0.0001)  -- Set the speed to a very low value
        end
    else
        if animationTrack.IsPlaying then
            animationTrack:Stop()  -- Stop the animation if not touching the wall
        end
    end
end)

--run wall right animation 


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = 1 -- How many studs to teleport
local isTeleporting = false

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://100348530"
local animationTrack = humanoid:LoadAnimation(animation)

-- Helper function to exclude other player characters
local function getRaycastBlacklist()
    local blacklist = {character} -- Exclude the player's own character
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            table.insert(blacklist, otherPlayer.Character)
        end
    end
    return blacklist
end

-- Check if the player is touching a wall on the right, but only collidable walls
local function isTouchingCollidableWall()
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = getRaycastBlacklist() -- Exclude players
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    -- Raycast to the right of the player
    local rightRay = workspace:Raycast(rootPart.Position, rootPart.CFrame.RightVector * 2, raycastParams)

    -- Check if the ray hits a valid (collidable) wall
    if rightRay and rightRay.Instance then
        local hitPart = rightRay.Instance
        return hitPart.CanCollide -- Only return true if the hit part is collidable
    end
    return false
end

-- Main loop to detect wall touch and start/stop animation
RunService.RenderStepped:Connect(function()
    if isTouchingCollidableWall() then
        if not animationTrack.IsPlaying then
            animationTrack:Play()
            animationTrack.TimePosition = 1.7 -- Start at 1.7 seconds
            animationTrack:AdjustSpeed(0.0001)  -- Set the speed to a very low value
        end
    else
        if animationTrack.IsPlaying then
            animationTrack:Stop()  -- Stop the animation if not touching the wall
        end
    end
end)






















-- function wall run




local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local teleportDistance = 1 -- How many studs to teleport
local isTeleporting = false

-- Helper function to exclude other player characters
local function getRaycastBlacklist()
    local blacklist = {character} -- Exclude the player's own character
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            table.insert(blacklist, otherPlayer.Character)
        end
    end
    return blacklist
end

-- Check if the player is touching a wall on the left or right
local function isTouchingWall()
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = getRaycastBlacklist() -- Exclude players
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    -- Raycast to the left and right of the player
    local leftRay = workspace:Raycast(rootPart.Position, rootPart.CFrame.RightVector * -2, raycastParams)
    local rightRay = workspace:Raycast(rootPart.Position, rootPart.CFrame.RightVector * 2, raycastParams)

    return leftRay or rightRay
end

-- Teleport the player 1 stud in the direction they're looking
local function teleportPlayer()
    while isTouchingWall() do
        -- Teleport the player 1 stud in the direction they're looking
        rootPart.CFrame = rootPart.CFrame + rootPart.CFrame.LookVector * teleportDistance
        
        -- Wait for 0.001 seconds before checking again
        wait(0.001)

        -- Stop teleporting if no longer touching a wall
        if not isTouchingWall() then
            isTeleporting = false
            break
        end
    end
end

-- Main loop to detect wall touch and start teleportation
RunService.RenderStepped:Connect(function()
    if isTouchingWall() then
        if not isTeleporting then
            isTeleporting = true
            teleportPlayer()
        end
    else
        if isTeleporting then
            isTeleporting = false
        end
    end
end)




-- wall run left animation 

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = 1 -- How many studs to teleport
local isTeleporting = false

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://136801964"
local animationTrack = humanoid:LoadAnimation(animation)

-- Helper function to exclude other player characters
local function getRaycastBlacklist()
    local blacklist = {character} -- Exclude the player's own character
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            table.insert(blacklist, otherPlayer.Character)
        end
    end
    return blacklist
end

-- Check if the player is touching a collidable wall on the left
local function isTouchingCollidableWall()
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = getRaycastBlacklist() -- Exclude players
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    -- Raycast to the left of the player (using -RightVector)
    local leftRay = workspace:Raycast(rootPart.Position, rootPart.CFrame.RightVector * -2, raycastParams)

    -- Check if the ray hits a valid (collidable) wall
    if leftRay and leftRay.Instance then
        local hitPart = leftRay.Instance
        return hitPart.CanCollide -- Only return true if the hit part is collidable
    end
    return false
end

-- Main loop to detect wall touch and start/stop animation
RunService.RenderStepped:Connect(function()
    if isTouchingCollidableWall() then
        if not animationTrack.IsPlaying then
            animationTrack:Play()
            animationTrack.TimePosition = 0.2 -- Start at 1.7 seconds
            animationTrack:AdjustSpeed(0.0001)  -- Set the speed to a very low value
        end
    else
        if animationTrack.IsPlaying then
            animationTrack:Stop()  -- Stop the animation if not touching the wall
        end
    end
end)

--run wall right animation 


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = 1 -- How many studs to teleport
local isTeleporting = false

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://136801964"
local animationTrack = humanoid:LoadAnimation(animation)

-- Helper function to exclude other player characters
local function getRaycastBlacklist()
    local blacklist = {character} -- Exclude the player's own character
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            table.insert(blacklist, otherPlayer.Character)
        end
    end
    return blacklist
end

-- Check if the player is touching a wall on the right, but only collidable walls
local function isTouchingCollidableWall()
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = getRaycastBlacklist() -- Exclude players
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    -- Raycast to the right of the player
    local rightRay = workspace:Raycast(rootPart.Position, rootPart.CFrame.RightVector * 2, raycastParams)

    -- Check if the ray hits a valid (collidable) wall
    if rightRay and rightRay.Instance then
        local hitPart = rightRay.Instance
        return hitPart.CanCollide -- Only return true if the hit part is collidable
    end
    return false
end

-- Main loop to detect wall touch and start/stop animation
RunService.RenderStepped:Connect(function()
    if isTouchingCollidableWall() then
        if not animationTrack.IsPlaying then
            animationTrack:Play()
            animationTrack.TimePosition = 1.7 -- Start at 1.7 seconds
            animationTrack:AdjustSpeed(0.0001)  -- Set the speed to a very low value
        end
    else
        if animationTrack.IsPlaying then
            animationTrack:Stop()  -- Stop the animation if not touching the wall
        end
    end
end)




-- boost speed


local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Default settings
local defaultWalkSpeed = 21
local defaultJumpPower = 50

-- Boost values
local speedMultiplier = 1.1
local jumpBoost = 30

-- Wait for the Humanoid
local humanoid = character:WaitForChild("Humanoid")

-- Apply boosts
humanoid.WalkSpeed = defaultWalkSpeed * speedMultiplier
humanoid.JumpPower = defaultJumpPower + jumpBoost

-- Update boosts when the character respawns
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoid = character:WaitForChild("Humanoid")

    humanoid.WalkSpeed = defaultWalkSpeed * speedMultiplier
    humanoid.JumpPower = defaultJumpPower + jumpBoost
end)



-- camera thingy 2




local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

-- Animation instances
local animations = {
    left = Instance.new("Animation"),
    right = Instance.new("Animation"),
}
animations.left.AnimationId = "rbxassetid://21633130"  -- Left animation ID
animations.right.AnimationId = "rbxassetid://88016955"  -- Right animation ID

-- Animation tracks
local tracks = {
    left = humanoid:LoadAnimation(animations.left),
    right = humanoid:LoadAnimation(animations.right),
}

local lastPlayed = nil
local fadeTime = 0.3 -- Fade time for stopping animations

-- Function to calculate the camera's direction in degrees relative to the character's orientation
local function getCameraDirection()
    local relativeLookVector = character.PrimaryPart.CFrame:ToObjectSpace(camera.CFrame).LookVector
    return relativeLookVector
end

-- Function to handle animation updates based on the camera's direction
local function updateAnimations()
    local isWalking = humanoid.MoveDirection.Magnitude > 0

    -- Stop animations if the character is walking
    if isWalking then
        tracks.left:Stop(fadeTime)
        tracks.right:Stop(fadeTime)
        lastPlayed = nil
        return
    end

    -- Get the camera direction vector
    local relativeLookVector = getCameraDirection()

    -- Define threshold values for left, right, and forward
    local angleThreshold = 0.5  -- Threshold for camera tilt to left or right
    local forwardThreshold = 0.1 -- Threshold for facing "mostly" forward (near 0)

    -- Check if the camera is facing left or right based on X and Z axes
    if relativeLookVector.X < -angleThreshold and relativeLookVector.Z > -forwardThreshold then
        -- Camera is facing mostly left (and slightly forward/backward is fine)
        if lastPlayed ~= "left" then
            tracks.left:Play()
            tracks.left:AdjustSpeed(1)
            tracks.right:Stop(fadeTime)
            lastPlayed = "left"
        end
    elseif relativeLookVector.X > angleThreshold and relativeLookVector.Z > -forwardThreshold then
        -- Camera is facing mostly right (and slightly forward/backward is fine)
        if lastPlayed ~= "right" then
            tracks.left:Stop(fadeTime)
            tracks.right:Play()
            tracks.right:AdjustSpeed(1)
            lastPlayed = "right"
        end
    elseif math.abs(relativeLookVector.X) < forwardThreshold then
        -- Camera is facing mostly forward (within small range of X value)
        if lastPlayed ~= "none" then
            tracks.left:Stop(fadeTime)
            tracks.right:Stop(fadeTime)
            lastPlayed = "none"
        end
    end
end

-- Update animations smoothly each frame
RunService.RenderStepped:Connect(updateAnimations)


-- anti logger animation 1


-- Define animation IDs
local animationIDs = {
    "rbxassetid://28440069",
    "rbxassetid://182435998",
    "rbxassetid://128777973",
    "rbxassetid://129423131"
}

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

-- Function to load and play animations from a specific time position
local function playAnimation(animationID, timePosition)
    local animation = Instance.new("Animation")
    animation.AnimationId = animationID
    local track = animator:LoadAnimation(animation)
    track.Looped = true -- Enable looping
    track:Play()
    track.TimePosition = timePosition -- Start at the desired time position
    wait(0.0000000000000000001)  -- Wait for 0.01 seconds
    track:Stop() -- Stop the animation after 0.01 seconds
end

-- Play all animations simultaneously starting at 30 seconds and stop after 0.01 seconds
local startTimePosition = 30
for _, animationID in ipairs(animationIDs) do
    playAnimation(animationID, startTimePosition)
end

Wait(0.01)



-- anti logger animation 1


-- Define animation IDs
local animationIDs = {
    "rbxassetid://28440069",
    "rbxassetid://182435998",
    "rbxassetid://128777973",
    "rbxassetid://129423131"
}

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

-- Function to load and play animations from a specific time position
local function playAnimation(animationID, timePosition)
    local animation = Instance.new("Animation")
    animation.AnimationId = animationID
    local track = animator:LoadAnimation(animation)
    track.Looped = true -- Enable looping
    track:Play()
    track.TimePosition = timePosition -- Start at the desired time position
    wait(0.0000000000000000001)  -- Wait for 0.01 seconds
    track:Stop() -- Stop the animation after 0.01 seconds
end

-- Play all animations simultaneously starting at 30 seconds and stop after 0.01 seconds
local startTimePosition = 30
for _, animationID in ipairs(animationIDs) do
    playAnimation(animationID, startTimePosition)
end

Wait(0.01)


-- fling gui


-- fling gui





-- Touch fling GUI
-- Gui to Lua (VIP VERSION)
-- Version: 6.9

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
print("sub to Alicehub")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.388539821, 0, 0.427821517, 0)
Frame.Size = UDim2.new(0, 158, 0, 110)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 158, 0, 25)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.112792775, 0, -0.0151660154, 0)
TextLabel.Size = UDim2.new(0, 121, 0, 26)
TextLabel.Font = Enum.Font.Sarpanch
TextLabel.Text = "Touch Fling"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 25.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.113924049, 0, 0.418181807, 0)
TextButton.Size = UDim2.new(0, 121, 0, 37)
TextButton.Font = Enum.Font.SourceSansItalic
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 20.000

-- Scripts:

local function IIMAWH_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	
	local toggleButton = script.Parent
	local hiddenfling = false
	local flingThread 
	if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
		local detection = Instance.new("Decal")
		detection.Name = "juisdfj0i32i0eidsuf0iok"
		detection.Parent = ReplicatedStorage
	end
	
	local function fling()
		local lp = Players.LocalPlayer
		local c, hrp, vel, movel = nil, nil, nil, 0.1
	
		while hiddenfling do
			RunService.Heartbeat:Wait()
			c = lp.Character
			hrp = c and c:FindFirstChild("HumanoidRootPart")
	
			if hrp then
				vel = hrp.Velocity
				hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
				RunService.RenderStepped:Wait()
				hrp.Velocity = vel
				RunService.Stepped:Wait()
				hrp.Velocity = vel + Vector3.new(0, movel, 0)
				movel = -movel
			end
		end
	end
	
	toggleButton.MouseButton1Click:Connect(function()
		hiddenfling = not hiddenfling
		toggleButton.Text = hiddenfling and "ON" or "OFF"
	
		if hiddenfling then
			flingThread = coroutine.create(fling)
			coroutine.resume(flingThread)
		else
			hiddenfling = false
		end
	end)
	
end
coroutine.wrap(IIMAWH_fake_script)()

local function QCJQJL_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(QCJQJL_fake_script)()

-- Destroy GUI on death:

local function destroyOnDeath()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")

	humanoid.Died:Connect(function()
		ScreenGui:Destroy()
	end)
end
destroyOnDeath()

















-- boxing tool


-- Create the Tool
local tool = Instance.new("Tool")
tool.Name = "Fight"
tool.RequiresHandle = false  -- No physical handle is required

-- Set the tool's parent to the Backpack
tool.Parent = game.Players.LocalPlayer.Backpack

-- Animation setup
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- List of animation IDs (first is for equipping, the rest for use)
local animationIds = {
    "rbxassetid://203929811",  -- Equip animation
    "rbxassetid://184573748",  -- Use animation 1
    "rbxassetid://243827693",  -- Use animation 2
    "rbxassetid://233329237",  -- Use animation 3
    "rbxassetid://203876950"   -- Use animation 4
}

local currentAnimationIndex = 2  -- Start with the first use animation
local cooldownTime = 0.9
local lastAnimationTime = 0
local canPlay = true
local equipAnimationTrack = nil -- Variable to hold the equip animation track

-- Punch sound
local punchSound = Instance.new("Sound", player.Character or player.CharacterAdded:Wait())
punchSound.SoundId = "rbxassetid://0" -- Punch sound ID

-- Function to play the current animation
local function playAnimation(animationIndex, speed, startTime)
    local animation = Instance.new("Animation")
    animation.AnimationId = animationIds[animationIndex]

    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()
    animationTrack.TimePosition = startTime
    animationTrack:AdjustSpeed(speed)

    -- Play the punch sound every time an animation starts
    punchSound:Play()

    return animationTrack
end

-- Tool Equip event (Equip animation)
tool.Equipped:Connect(function()
    -- Stop any existing equip animation and play the equip animation again
    if equipAnimationTrack then
        equipAnimationTrack:Stop()
    end
    equipAnimationTrack = playAnimation(1, 1, 0.3)  -- Play the equip animation
end)

-- Tool Unequip event (Stop equip animation)
tool.Unequipped:Connect(function()
    -- Stop the equip animation when the tool is unequipped
    if equipAnimationTrack then
        equipAnimationTrack:Stop()
    end
end)

-- Tool Activated event (Use animation with cooldown)
tool.Activated:Connect(function()
    local currentTime = os.clock()

    -- If the tool is used and cooldown has passed, play the animation
    if canPlay and (currentTime - lastAnimationTime >= cooldownTime) then
        canPlay = false

        -- Stop the equip animation when the tool is used
        if equipAnimationTrack then
            equipAnimationTrack:Stop()
        end

        -- Play the use animation
        local speed = (currentAnimationIndex == 2) and 1.9 or 0.8
        local startTime = (currentAnimationIndex == 2) and 0.6 or 0
        local animationTrack = playAnimation(currentAnimationIndex, speed, startTime)

        -- Move to the next animation in the list for the next use
        currentAnimationIndex = currentAnimationIndex + 1
        if currentAnimationIndex > #animationIds then
            currentAnimationIndex = 2  -- Reset to the first use animation if we reach the end
        end

        -- Set cooldown period (0.9 seconds)
        task.delay(cooldownTime, function()
            canPlay = true
        end)

        -- After use animation finishes, play the equip animation again
        animationTrack.Stopped:Connect(function()
            equipAnimationTrack = playAnimation(1, 1, 0.3)  -- Play the equip animation again
        end)

        -- Update last animation time
        lastAnimationTime = os.clock()
    end
end)















-- dash tool







local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local tool = Instance.new("Tool")
tool.Name = "Dash"
tool.RequiresHandle = false
tool.Parent = player.Backpack

local fadeTime = 0.2 -- Fade time for animations
local isDashing = false -- Flag to check if dash is currently active
local isTeleporting = false -- Flag to control teleportation
local activeAnimationTracks = {} -- To keep track of active animation tracks

-- Function to load and play an animation with fade time
local function playAnimation(animationId, startTime, speed, stopDelay, loopCount)
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. animationId
    
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play(fadeTime) -- Apply fade-in time
    animationTrack.TimePosition = startTime -- Start at specified time
    animationTrack:AdjustSpeed(speed) -- Set animation speed

    -- If loopCount is more than 1, we make it loop
    if loopCount > 1 then
        animationTrack.Looped = true
    end
    
    -- Stop the animation after the specified delay with fade time
    task.delay(stopDelay, function()
        animationTrack:Stop(fadeTime) -- Apply fade-out time
    end)

    -- Add the animation track to the list of active animations
    table.insert(activeAnimationTracks, animationTrack)

    -- Return the duration of the animation to sync teleportation with its end time
    return stopDelay
end

-- Function to teleport player forward (with the ability to stop teleporting)
local function teleportForward(duration)
    local interval = 0.0001
    local distancePerMove = 3
    local startTime = tick() -- Get current time

    isTeleporting = true -- Start teleportation

    while tick() - startTime < duration and isTeleporting do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -distancePerMove)
        wait(interval)
    end

    isTeleporting = false -- End teleportation
end

-- Function to activate the dash (triggered when tool is equipped)
local function activateDash()
    if isDashing then
        return -- Exit if dash is already active
    end

    isDashing = true -- Start the dash

    -- Play animations with different behaviors and get the total duration from the last animation
    local totalDuration = 0
    totalDuration = playAnimation("56146409", 1, 0.0001, 9, 1) -- Play once
    totalDuration = playAnimation("136801964", 3.4, 0.0001, 9, 1) -- Play once
    totalDuration = playAnimation("100348530", 0, 4, 9, 5) -- Loop 5 times

    -- Start teleportation after the last animation ends
    teleportForward(totalDuration)
end

-- Function to stop the dash (triggered when tool is unequipped)
local function stopDash()
    if isDashing then
        -- Stop all active animations and teleportation
        for _, animationTrack in ipairs(activeAnimationTracks) do
            animationTrack:Stop(fadeTime) -- Stop animation with fade out
        end
        activeAnimationTracks = {} -- Clear the active animation tracks

        -- Stop teleportation by setting the flag to false
        isTeleporting = false
        isDashing = false -- Reset dash state
    end
end

-- Connect the tool's Equipped event to activateDash
tool.Equipped:Connect(function()
    activateDash()
end)

-- Connect the tool's Unequipped event to stopDash
tool.Unequipped:Connect(function()
    stopDash()
end)





--/camera\




-- Variables for animations
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

-- Animation instances
local leftAnimation = Instance.new("Animation")
leftAnimation.AnimationId = "rbxassetid://21633130"  -- Left animation ID

local rightAnimation = Instance.new("Animation")
rightAnimation.AnimationId = "rbxassetid://88016955"  -- Right animation ID

-- Tracks
local leftTrack = humanoid:LoadAnimation(leftAnimation)
local rightTrack = humanoid:LoadAnimation(rightAnimation)

local lastPlayed = nil
local fadeTime = 0.3 -- Fade time for stopping animations

-- Function to calculate the camera direction in degrees
local function getCameraDirection()
    -- Get the direction of the camera relative to the character's orientation
    local relativeLookVector = character.PrimaryPart.CFrame:ToObjectSpace(camera.CFrame).LookVector
    local angle = math.atan2(relativeLookVector.X, relativeLookVector.Z)
    return angle, relativeLookVector
end

-- Function to update animations based on camera direction
local function updateAnimations()
    local isWalking = humanoid.MoveDirection.Magnitude > 0

    -- If the player is walking, stop all animations
    if isWalking then
        leftTrack:Stop(fadeTime)
        rightTrack:Stop(fadeTime)
        lastPlayed = nil
        return
    end

    -- Get the camera direction angle and vector
    local angle, relativeLookVector = getCameraDirection()

    -- Dead zone for small camera movements (15 degrees for extra precision)
    local deadZone = math.rad(15)

    -- If the camera is facing directly forward (Z > 0.8) or directly back (Z < -0.8), stop all animations
    if relativeLookVector.Z > 0.8 or relativeLookVector.Z < -0.8 then
        if lastPlayed ~= "none" then
            leftTrack:Stop(fadeTime)
            rightTrack:Stop(fadeTime)
            lastPlayed = "none"
        end
        return
    end

    -- Handle camera directions more precisely
    if angle < -math.rad(80) then
        -- Camera is looking left
        if lastPlayed ~= "left" then
            leftTrack:Play()
            leftTrack:AdjustSpeed(1)
            rightTrack:Stop(fadeTime)
            lastPlayed = "left"
        end
    elseif angle > math.rad(80) then
        -- Camera is looking right
        if lastPlayed ~= "right" then
            leftTrack:Stop(fadeTime)
            rightTrack:Play()
            rightTrack:AdjustSpeed(1)
            lastPlayed = "right"
        end
    else
        -- Camera is facing forward or back (stop all animations)
        leftTrack:Stop(fadeTime)
        rightTrack:Stop(fadeTime)
        lastPlayed = nil
    end
end

-- Run the updateAnimations function on RenderStepped for smooth updates
RunService.RenderStepped:Connect(updateAnimations)


--idle



-- idle 2

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")


local idleAnimationId = "0"  -- Idle animation
local stopAnimationId = "180435571"   -- Not used but kept for reference


local idleAnimation = Instance.new("Animation")
idleAnimation.AnimationId = "rbxassetid://" .. idleAnimationId


local idleAnimTrack = humanoid:LoadAnimation(idleAnimation)


idleAnimTrack.Looped = true

local function updateAnimation()
    -- Check if the humanoid is moving
    if humanoid.MoveDirection.Magnitude > 0 then
        -- Stop the idle animation when walking
        if idleAnimTrack.IsPlaying then
            idleAnimTrack:Stop()
        end
    else
        -- Play idle animation if not playing
        if not idleAnimTrack.IsPlaying then
            idleAnimTrack:Play()
        end
    end
end


humanoid.StateChanged:Connect(function(_, newState)
    -- Only check for movement when not in certain states
    if newState ~= Enum.HumanoidStateType.Dead and newState ~= Enum.HumanoidStateType.FallingDown then
        updateAnimation()
    end
end)


game:GetService("RunService").Heartbeat:Connect(function()
    updateAnimation()
end)


idleAnimTrack:Play()





-- backflip jumps



--[[ Variables ]]--

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local isOnCooldown = false -- Cooldown flag
local cooldownTime = 5 -- Cooldown duration in seconds

--[[ Animation Setup ]]--

local frontflipAnimation = Instance.new("Animation")
frontflipAnimation.AnimationId = "rbxassetid://0" -- Replace with the ID of your frontflip animation

--[[ Frontflip Function ]]--

local function performFrontflip()
    if isOnCooldown then return end -- Exit if cooldown is active

    isOnCooldown = true -- Activate cooldown
    humanoid:ChangeState("Jumping") -- Trigger jump animation

    -- Play the frontflip animation
    local animTrack = humanoid:LoadAnimation(frontflipAnimation)
    animTrack:Play()

    wait()
    humanoid.Sit = true

    for i = 1, 360 do
        delay(i / 720, function()
            humanoid.Sit = true
            humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(-math.rad(1), 0, 0) -- Rotate forward
        end)
    end

    wait(0.55) -- Flip duration
    humanoid.Sit = false -- Reset sit state
    wait(cooldownTime) -- Wait for cooldown to finish
    isOnCooldown = false -- Reset cooldown flag
end

--[[ Event Listener for Jump ]]--

humanoid.StateChanged:Connect(function(_, newState)
    if newState == Enum.HumanoidStateType.Jumping then
        performFrontflip()
    end
end)


-- jump



local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

-- Fade settings
local fadeTime = 0.3 -- Time to smoothly adjust animation speed

-- Jump Animation setup
local jumpAnimation = Instance.new("Animation")
jumpAnimation.AnimationId = "rbxassetid://97171309"
local jumpAnimationTrack = animator:LoadAnimation(jumpAnimation)

-- Function to play jump animation
local function playJumpAnimation()
    if not jumpAnimationTrack.IsPlaying then
        jumpAnimationTrack:Play(fadeTime)
        jumpAnimationTrack.TimePosition = 0.0 -- Start from the beginning
        jumpAnimationTrack:AdjustSpeed(1) -- Normal speed for the jump
    end
end

-- Function to stop jump animation
local function stopJumpAnimation()
    if jumpAnimationTrack.IsPlaying then
        jumpAnimationTrack:Stop(fadeTime)
    end
end

-- Monitor jump events
humanoid.StateChanged:Connect(function(_, newState)
    if newState == Enum.HumanoidStateType.Jumping then
        -- Play jump animation when jumping
        playJumpAnimation()
    elseif newState == Enum.HumanoidStateType.Landed then
        -- Stop jump animation when landing
        stopJumpAnimation()
    end
end)





-- idle

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")


local idleAnimationId = "160737408"  -- Idle animation
local stopAnimationId = "180435571"   -- Not used but kept for reference


local idleAnimation = Instance.new("Animation")
idleAnimation.AnimationId = "rbxassetid://" .. idleAnimationId


local idleAnimTrack = humanoid:LoadAnimation(idleAnimation)


idleAnimTrack.Looped = true

local function updateAnimation()
    -- Check if the humanoid is moving
    if humanoid.MoveDirection.Magnitude > 0 then
        -- Stop the idle animation when walking
        if idleAnimTrack.IsPlaying then
            idleAnimTrack:Stop()
        end
    else
        -- Play idle animation if not playing
        if not idleAnimTrack.IsPlaying then
            idleAnimTrack:Play()
        end
    end
end


humanoid.StateChanged:Connect(function(_, newState)
    -- Only check for movement when not in certain states
    if newState ~= Enum.HumanoidStateType.Dead and newState ~= Enum.HumanoidStateType.FallingDown then
        updateAnimation()
    end
end)


game:GetService("RunService").Heartbeat:Connect(function()
    updateAnimation()
end)


idleAnimTrack:Play()



-- walk



local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Animation ID for walking
local walkAnimationId = "rbxassetid://100348530"

-- Variable to store the animation track
local walkAnimationTrack

-- Function to load and play the walk animation
local function playWalkAnimation()
    if not walkAnimationTrack then
        local animation = Instance.new("Animation")
        animation.AnimationId = walkAnimationId
        walkAnimationTrack = humanoid:LoadAnimation(animation)
    end
    
    if not walkAnimationTrack.IsPlaying then
        walkAnimationTrack.Looped = true  -- Make the animation loop
        walkAnimationTrack:Play()
        walkAnimationTrack:AdjustSpeed(2.9)  -- Set the speed to 2x
    end
end

-- Function to stop the walk animation
local function stopWalkAnimation()
    if walkAnimationTrack and walkAnimationTrack.IsPlaying then
        walkAnimationTrack:Stop()
    end
end

-- Event handler for running and movement
humanoid.Running:Connect(function(speed)
    local currentState = humanoid:GetState()
    
    -- Check if the player is moving but not jumping or falling
    if speed > 0 and currentState ~= Enum.HumanoidStateType.Jumping and currentState ~= Enum.HumanoidStateType.Freefall then
        playWalkAnimation()  -- Play walk animation when moving
    else
        stopWalkAnimation()  -- Stop walk animation when not moving, jumping, or falling
    end
end)


--/The tilts\





--tilt left and right and front

 local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- Animation setup for forward and backward
local forwardAnimation = Instance.new("Animation")
forwardAnimation.AnimationId = "rbxassetid://136801964"
local forwardAnimationTrack = Humanoid:LoadAnimation(forwardAnimation)

local backwardAnimation = Instance.new("Animation")
backwardAnimation.AnimationId = "rbxassetid://136801964"
local backwardAnimationTrack = Humanoid:LoadAnimation(backwardAnimation)

-- Animation setup for left and right
local leftAnimation = Instance.new("Animation")
leftAnimation.AnimationId = "rbxassetid://136801964"
local leftAnimationTrack = Humanoid:LoadAnimation(leftAnimation)

local rightAnimation = Instance.new("Animation")
rightAnimation.AnimationId = "rbxassetid://136801964"
local rightAnimationTrack = Humanoid:LoadAnimation(rightAnimation)

-- Walking state to track animations
local walkingState = {
    forward = false,
    backward = false,
    left = false,
    right = false
}

local fadeTime = 0.3
local timeInterval = 0.0001  -- Time between updates in seconds
local lastUpdate = tick()

-- Function to play a specific animation
local function playAnimation(animationTrack, timePosition, speed)
    if not animationTrack.IsPlaying then
        animationTrack:Play(fadeTime)
        animationTrack.TimePosition = timePosition
        animationTrack:AdjustSpeed(speed)
    end
end

-- Function to stop a specific animation
local function stopAnimation(animationTrack)
    if animationTrack.IsPlaying then
        animationTrack:Stop(fadeTime)
    end
end

-- Function to handle forward/backward movement animations
local function checkForwardBackward()
    local velocity = RootPart.AssemblyLinearVelocity
    local moveDirection = RootPart.CFrame:VectorToObjectSpace(Humanoid.MoveDirection)
    local isMoving = moveDirection.Magnitude > 0.1

    if isMoving then
        if moveDirection.Z > 0 and not walkingState.forward then
            walkingState.forward = true
            walkingState.backward = false
            stopAnimation(backwardAnimationTrack)
            playAnimation(forwardAnimationTrack, 4.7, 0.001)  -- Forward starts at 4.7
        elseif moveDirection.Z < 0 and not walkingState.backward then
            walkingState.backward = true
            walkingState.forward = false
            stopAnimation(forwardAnimationTrack)
            playAnimation(backwardAnimationTrack, 3.3, 0.001)  -- Backward starts at 3.3
        end
    else
        if walkingState.forward then
            stopAnimation(forwardAnimationTrack)
            walkingState.forward = false
        end
        if walkingState.backward then
            stopAnimation(backwardAnimationTrack)
            walkingState.backward = false
        end
    end
end

-- Function to handle left/right movement animations
local function checkLeftRight()
    local velocity = RootPart.AssemblyLinearVelocity
    local moveDirection = RootPart.CFrame:VectorToObjectSpace(Humanoid.MoveDirection)
    local isMoving = moveDirection.Magnitude > 0.1

    if isMoving then
        if math.abs(moveDirection.X) > 0.1 and math.abs(moveDirection.X) > math.abs(moveDirection.Z) then
            if moveDirection.X < 0 and not walkingState.left then
                walkingState.left = true
                walkingState.right = false
                stopAnimation(rightAnimationTrack)
                playAnimation(leftAnimationTrack, 0.2, 0.001)  -- Adjust starting position and speed for left
            elseif moveDirection.X > 0 and not walkingState.right then
                walkingState.right = true
                walkingState.left = false
                stopAnimation(leftAnimationTrack)
                playAnimation(rightAnimationTrack, 1.7, 0.001)  -- Adjust starting position and speed for right
            end
        end
    else
        if walkingState.left then
            stopAnimation(leftAnimationTrack)
            walkingState.left = false
        end
        if walkingState.right then
            stopAnimation(rightAnimationTrack)
            walkingState.right = false
        end
    end
end

-- Continuously check the player's movement with specific interval
RunService.RenderStepped:Connect(function()
    local currentTime = tick()
    if currentTime - lastUpdate >= timeInterval then
        lastUpdate = currentTime
        checkForwardBackward()  -- Handle forward/backward
        checkLeftRight()        -- Handle left/right
    end
end)



-- crush

loadstring(game:HttpGet("https://pastebin.com/raw/0z7wfeYv"))()



-- unlimited flexworks animation and function 

loadstring(game:HttpGet("https://pastebin.com/raw/3tCEqpDX"))()
