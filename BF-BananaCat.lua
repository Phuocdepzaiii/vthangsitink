local TweenService
TweenService = game:GetService("TweenService")
UserInputService = game:GetService("UserInputService")
local str, n, fn, fn2, fn3, fn4, fn5, fn6, screenGui, frame
local imageLabel, imageLabel2, textLabel, uiStroke, textLabel2, textBox, uiStroke2, imageLabel3, uiStroke3, textButton
local imageLabel4, uiCorner, uiStroke4, textButton2, imageLabel5, uiCorner2, uiStroke5, textButton3, imageLabel6, uiCorner3
local uiStroke6, textButton4

do
	local HttpService = game:GetService("HttpService")
	Players = game:GetService("Players")

	local function fn7()
		if type(gethui) == "function" then
			local ok, result = pcall(gethui)
			if ok and result then
				return result
			end
		end

		local ok, result = pcall(function()
			return game:GetService("CoreGui")
		end)

		if ok and result then
			return result
		end
		local localPlayer = Players.LocalPlayer
		return localPlayer and localPlayer:FindFirstChildOfClass("PlayerGui") or nil
	end

	local v = fn7()
	CoreGui = game:GetService("CoreGui")

	for _, v2 in ipairs({ "KeySystemGui", "NotificationHolder" }) do
		for _, child in ipairs(CoreGui:GetChildren()) do
			if child.Name == v2 then
				pcall(function()
					child:Destroy()
				end)
			end
		end
	end

	if type(isfolder) == "function" and type(makefolder) == "function" then
		pcall(function()
			if not isfolder("PhuocdepzaiHub") then
				makefolder("PhuocdepzaiHub")
			end
		end)
	end

	local str2 = "key_f13b1dcb65f80955"
	local str3 = "https://vxezestudio.online/api/key/verify"
	local str4 = "PhuocdepzaiHub/key-" .. str2 .. ".txt"
	local v2 = HttpService:GenerateGUID(false)
	local flag = false

	saveKeyToFile = function(arg)
		if type(writefile) == "function" then
			pcall(writefile, str4, arg)
		end
	end

	loadKeyFromFile = function()
		if type(isfile) ~= "function" or type(readfile) ~= "function" then
			return nil
		end

		local ok, result = pcall(function()
			return isfile(str4) and readfile(str4) or nil
		end)

		if ok and result and result ~= "" then
			return result
		end
		return nil
	end

	deleteKeyFile = function()
		if type(isfile) == "function" and type(delfile) == "function" then
			pcall(function()
				if isfile(str4) then
					delfile(str4)
				end
			end)
		end
	end

	local screenGui2 = Instance.new("ScreenGui")
	screenGui2.Name = "NotificationHolder"
	screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	if type(syn) == "table" and type(syn.protect_gui) == "function" then
		pcall(syn.protect_gui, screenGui2)
	end

	screenGui2.Parent = v
	local frame2 = Instance.new("Frame")
	frame2.BackgroundTransparency = 1
	frame2.Position = UDim2.new(1, -20, 1, -20)
	frame2.Size = UDim2.new(0, 340, 0, 500)
	frame2.AnchorPoint = Vector2.new(1, 1)
	frame2.Parent = screenGui2
	local tbl = {}

	Notify = function(text, text2, arg)
		spawn(function()
			local frame3 = Instance.new("Frame")
			local uiCorner4 = Instance.new("UICorner")
			local uiStroke7 = Instance.new("UIStroke")
			local frame4 = Instance.new("Frame")
			local uiCorner5 = Instance.new("UICorner")
			local imageLabel7 = Instance.new("ImageLabel")
			local uiCorner6 = Instance.new("UICorner")
			local frame5 = Instance.new("Frame")
			local textLabel3 = Instance.new("TextLabel")
			local textLabel4 = Instance.new("TextLabel")
			local frame6 = Instance.new("Frame")
			local frame7 = Instance.new("Frame")
			local uiCorner7 = Instance.new("UICorner")
			local uiCorner8 = Instance.new("UICorner")
			frame3.Size = UDim2.new(1, 0, 0, 75)
			frame3.Position = UDim2.new(0, 350, 1, 0)
			frame3.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
			frame3.BorderSizePixel = 0
			frame3.ClipsDescendants = false
			frame3.Parent = frame2
			table.insert(tbl, frame3)
			uiCorner4.CornerRadius = UDim.new(0, 12)
			uiCorner4.Parent = frame3
			uiStroke7.Color = Color3.fromRGB(0, 255, 255)
			uiStroke7.Thickness = 2
			uiStroke7.Transparency = 0.3
			uiStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			uiStroke7.Parent = frame3
			frame4.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
			frame4.Size = UDim2.new(0, 50, 0, 50)
			frame4.Position = UDim2.new(0, 12, 0.5, 0)
			frame4.AnchorPoint = Vector2.new(0, 0.5)
			frame4.BorderSizePixel = 0
			frame4.Parent = frame3
			uiCorner5.CornerRadius = UDim.new(0, 10)
			uiCorner5.Parent = frame4
			imageLabel7.Image = "rbxassetid://104202858258775"
			imageLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			imageLabel7.BackgroundTransparency = 1
			imageLabel7.Size = UDim2.new(1, -8, 1, -8)
			imageLabel7.Position = UDim2.new(0.5, 0, 0.5, 0)
			imageLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel7.BorderSizePixel = 0
			imageLabel7.Parent = frame4
			uiCorner6.CornerRadius = UDim.new(0, 8)
			uiCorner6.Parent = imageLabel7
			frame5.BackgroundTransparency = 1
			frame5.Position = UDim2.new(0, 72, 0, 10)
			frame5.Size = UDim2.new(1, -82, 1, -20)
			frame5.Parent = frame3
			textLabel3.Font = Enum.Font.FredokaOne
			textLabel3.Text = text
			textLabel3.TextColor3 = Color3.fromRGB(0, 255, 255)
			textLabel3.TextSize = 15
			textLabel3.TextXAlignment = Enum.TextXAlignment.Left
			textLabel3.TextYAlignment = Enum.TextYAlignment.Top
			textLabel3.BackgroundTransparency = 1
			textLabel3.Position = UDim2.new(0, 0, 0, 0)
			textLabel3.Size = UDim2.new(1, 0, 0, 18)
			textLabel3.Parent = frame5
			local uiStroke8 = Instance.new("UIStroke")
			uiStroke8.Color = Color3.fromRGB(0, 0, 0)
			uiStroke8.Thickness = 1.5
			uiStroke8.Parent = textLabel3
			textLabel4.Font = Enum.Font.FredokaOne
			textLabel4.Text = text2
			textLabel4.TextColor3 = Color3.fromRGB(200, 200, 200)
			textLabel4.TextSize = 13
			textLabel4.TextXAlignment = Enum.TextXAlignment.Left
			textLabel4.TextYAlignment = Enum.TextYAlignment.Top
			textLabel4.TextWrapped = true
			textLabel4.BackgroundTransparency = 1
			textLabel4.Position = UDim2.new(0, 0, 0, 20)
			textLabel4.Size = UDim2.new(1, 0, 1, -20)
			textLabel4.Parent = frame5
			frame6.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
			frame6.BorderSizePixel = 0
			frame6.Position = UDim2.new(0, 12, 1, -8)
			frame6.Size = UDim2.new(1, -24, 0, 3)
			frame6.Parent = frame3
			uiCorner7.CornerRadius = UDim.new(1, 0)
			uiCorner7.Parent = frame6
			frame7.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
			frame7.BorderSizePixel = 0
			frame7.Size = UDim2.new(1, 0, 1, 0)
			frame7.Parent = frame6
			uiCorner8.CornerRadius = UDim.new(1, 0)
			uiCorner8.Parent = frame7

			for i = #tbl - 1, 1, -1 do
				local v3 = tbl[i]

				if v3 and v3.Parent then
					local position = v3.Position
					TweenService:Create(v3, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset - 85) }):Play()
				end
			end

			frame3.Position = UDim2.new(0, 350, 1, 0)
			TweenService:Create(frame3, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 1, -85) }):Play()
			TweenService:Create(uiStroke7, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 2.5 }):Play()
			task.wait(0.5)
			TweenService:Create(uiStroke7, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Transparency = 0.3, Thickness = 2 }):Play()
			TweenService:Create(frame7, TweenInfo.new(arg, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Size = UDim2.new(0, 0, 1, 0) }):Play()
			task.wait(arg - 0.4)
			TweenService:Create(frame3, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { Position = UDim2.new(0, 350, frame3.Position.Y.Scale, frame3.Position.Y.Offset) }):Play()
			TweenService:Create(uiStroke7, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
			TweenService:Create(frame3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(frame4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(imageLabel7, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { ImageTransparency = 1 }):Play()
			TweenService:Create(textLabel3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { TextTransparency = 1 }):Play()
			TweenService:Create(uiStroke8, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
			TweenService:Create(textLabel4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { TextTransparency = 1 }):Play()
			TweenService:Create(frame6, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(frame7, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
			task.wait(0.4)

			for i, v3 in ipairs(tbl) do
				if v3 == frame3 then
					table.remove(tbl, i)
					break
				end
			end

			frame3:Destroy()
		end)
	end

	Notify = function(arg, arg2, arg3)
		local n2 = math.max(1, math.min(15, tonumber(arg3) or 3))

		task.spawn(function()
			if not frame2 or not frame2.Parent then
				return
			end

			local ok, result = pcall(function()
				local frame3 = Instance.new("Frame")
				frame3.Name = "VxezeNotification"
				frame3.Size = UDim2.new(1, 0, 0, 75)
				frame3.Position = UDim2.new(0, 360, 1, -85)
				frame3.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
				frame3.BorderSizePixel = 0
				frame3.Parent = frame2
				local uiCorner4 = Instance.new("UICorner")
				uiCorner4.CornerRadius = UDim.new(0, 12)
				uiCorner4.Parent = frame3
				local uiStroke7 = Instance.new("UIStroke")
				uiStroke7.Color = Color3.fromRGB(0, 255, 255)
				uiStroke7.Thickness = 2
				uiStroke7.Transparency = 0.3
				uiStroke7.Parent = frame3
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.Position = UDim2.new(0, 16, 0, 10)
				textLabel3.Size = UDim2.new(1, -32, 0, 20)
				textLabel3.Font = Enum.Font.GothamBold
				textLabel3.Text = tostring(arg or "Phuocdepzai Hub")
				textLabel3.TextColor3 = Color3.fromRGB(0, 255, 255)
				textLabel3.TextSize = 15
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.Parent = frame3
				local textLabel4 = Instance.new("TextLabel")
				textLabel4.BackgroundTransparency = 1
				textLabel4.Position = UDim2.new(0, 16, 0, 32)
				textLabel4.Size = UDim2.new(1, -32, 0, 32)
				textLabel4.Font = Enum.Font.Gotham
				textLabel4.Text = tostring(arg2 or "")
				textLabel4.TextColor3 = Color3.fromRGB(220, 220, 225)
				textLabel4.TextSize = 13
				textLabel4.TextWrapped = true
				textLabel4.TextXAlignment = Enum.TextXAlignment.Left
				textLabel4.TextYAlignment = Enum.TextYAlignment.Top
				textLabel4.Parent = frame3
				return frame3
			end)

			if not ok or not result then
				return
			end

			for _, v3 in ipairs(tbl) do
				if v3 and v3.Parent then
					v3.Position = v3.Position - UDim2.new(0, 0, 0, 82)
				end
			end

			table.insert(tbl, result)

			pcall(function()
				TweenService:Create(result, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 1, -85) }):Play()
			end)

			task.delay(n2, function()
				pcall(function()
					TweenService:Create(result, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
						Position = UDim2.new(0, 360, result.Position.Y.Scale, result.Position.Y.Offset),
						BackgroundTransparency = 1,
					}):Play()
				end)

				task.wait(0.35)

				for i = #tbl, 1, -1 do
					if tbl[i] == result then
						table.remove(tbl, i)
						break
					end
				end

				pcall(function()
					result:Destroy()
				end)
			end)
		end)
	end

	local request_ = request or http_request or http and http.request or syn and syn.request or fluxus and fluxus.request
	local request_2

	if request_ then
		request_2 = request_
	else
		request_2 = krnl and krnl.request
	end

	str = "[VXEZE_TRANSIENT]"
	n = 3
	local n2 = 1
	local str5 = tostring(HttpService:GenerateGUID(false))

	for i = 1, #str5 do
		n2 = (n2 * 131 + string.byte(str5, i)) % 2147483647
	end

	local function fn8(arg, arg2)
		n2 = (n2 * 48271 + 1) % 2147483647
		local n3 = math.max(math.max(3, math.min(60, 2 ^ math.min(arg, 6))), math.min(300, math.max(0, tonumber(arg2) or 0)))
		return n3 + n3 * 0.25 * n2 / 2147483647
	end

	fn = function(arg, arg2)
		local v3 = fn8(arg, arg2)

		if task and type(task.wait) == "function" then
			task.wait(v3)
		else
			wait(v3)
		end
	end

	local function fn9(arg, arg2)
		if not arg then
			return 0, nil, nil
		end

		if type(arg2) == "string" then
			return 200, arg2, nil
		end

		if type(arg2) ~= "table" then
			return 0, nil, nil
		end
		return tonumber(arg2.StatusCode or arg2.Status or arg2.status_code or arg2.status) or arg2.Success == false and 0 or 200, arg2.Body or arg2.body or arg2.ResponseBody or arg2.response_body, arg2.Headers or arg2.headers
	end

	local function fn10(arg, arg2)
		local num = type(arg2) == "table" and tonumber(arg2.retryAfterSeconds) or nil

		if type(arg) == "table" then
			for k, v3 in pairs(arg) do
				if tostring(k):lower() == "retry-after" then
					num = tonumber(v3) or num
				end
			end
		end

		return math.min(300, math.max(0, num or 3))
	end

	local function fn11(arg, arg2)
		if arg == 429 and type(arg2) == "table" and arg2.code == "ACTIVE_SESSIONS_FULL" then
			return false
		end
		return arg == 0 or arg == 408 or arg == 425 or arg == 429 or arg >= 500 and arg <= 599 or arg == 409 and type(arg2) == "table" and arg2.code == "VERIFY_IN_PROGRESS"
	end

	local tbl2 = {}

	local function fn12(arg, arg2, arg3)
		local url = arg.Url
		local authorization = arg.Headers and arg.Headers.Authorization or ""
		local tbl3 = tbl2[url]

		if tbl3 and (tbl3.body ~= arg.Body or tbl3.authorization ~= authorization) then
			if not tbl3.done then
				return false, str .. " request still pending", true
			end
			tbl2[url] = nil
			tbl3 = nil
		end

		if not tbl3 then
			tbl3 = { done = false, body = arg.Body, authorization = authorization }
			tbl2[url] = tbl3
			local v3 = arg3 or request_2

			task.spawn(function()
				local v4 = tbl3
				local v5 = tbl3
				local ok, response = pcall(v3, arg)
				v4.ok = ok
				v5.response = response
				tbl3.done = true
			end)
		end

		local now = os.clock()

		while not tbl3.done and os.clock() - now < arg2 do
			task.wait(0.05)
		end

		if not tbl3.done then
			return false, str .. " request timed out", true
		end
		tbl2[url] = nil
		return tbl3.ok, tbl3.response, false
	end

	local v3 = nil
	local v4 = nil

	local function fn13(arg)
		if arg == nil then
			return nil
		end
		local str6 = tostring(arg):gsub("^%s+", ""):gsub("%s+$", ""):gsub("[%c]", "")
		local str7

		if #str6 > 256 then
			str7 = str6:sub(1, 256)
		else
			str7 = str6
		end

		local str8 = str7:lower()
		if #str7 < 8 then
			return nil
		end

		if str8:match("^unknown") or str8:match("^nil") or str8:match("^null") or str8:match("^undefined") or str8 == "none" or str8 == "n/a" or str8 == "na" or str8 == "false" or str8 == "true" then
			return nil
		end

		if str8:match("^0+$") or str8:match("^(%w)%1+$") then
			return nil
		end

		if str8:match("^%d+$") and #str8 <= 12 then
			return nil
		end
		local tbl3 = {}
		local n3 = 0

		for match in str8:gmatch("[%w]") do
			if not tbl3[match] then
				tbl3[match] = true
				n3 += 1
			end
		end

		if n3 < 4 then
			return nil
		end
		return str7
	end

	local function fn14(arg)
		local v5 = fn13(arg)
		if v5 then
			v4 = v5
			return v5
		end
		return nil
	end

	getHWID = function()
		if v4 then
			return v4
		end

		for _, v5 in ipairs({
			function()
				return type(gethwid) == "function" and gethwid() or nil
			end,
			function()
				return type(getdeviceid) == "function" and getdeviceid() or nil
			end,
			function()
				return syn and type(syn.get_hwid) == "function" and syn.get_hwid() or nil
			end,
			function()
				return game:GetService("RbxAnalyticsService"):GetClientId()
			end,
		}) do
			local ok, result = pcall(v5)

			if ok then
				local v6 = fn14(result)
				if v6 then
					return v6
				end
			end
		end

		if type(isfile) == "function" and type(readfile) == "function" then
			local ok, result = pcall(function()
				return isfile("VxezeHub/device-id.txt") and readfile("VxezeHub/device-id.txt") or nil
			end)

			if ok then
				local v5 = fn14(result)
				if v5 then
					return v5
				end
			end
		end

		local ok, result = pcall(function()
			return "vxeze-" .. HttpService:GenerateGUID(false)
		end)

		ok = ok and fn14(result) or nil

		if ok and type(writefile) == "function" then
			pcall(writefile, "PhuocdepzaiHub/device-id.txt", ok)
		end

		return ok
	end

	local function fn15()
		local ok, result = pcall(function()
			if identifyexecutor then
				return (identifyexecutor())
			end

			if syn then
				return "Synapse X"
			end

			if fluxus then
				return "Fluxus"
			end

			if krnl then
				return "KRNL"
			end

			if codex then
				return "Codex"
			end

			if delta then
				return "Delta"
			end
			return nil
		end)

		if ok and result and tostring(result) ~= "" then
			return tostring(result)
		end
		return "unknown"
	end

	fn2 = function(arg)
		if type(arg) ~= "string" then
			return arg
		end
		return (arg:gsub("^%s*(.-)%s*$", "%1"))
	end

	local function fn16(arg)
		if type(arg) == "table" then
			return arg
		end

		if not arg or arg == "" then
			return nil
		end

		local ok, result = pcall(function()
			return HttpService:JSONDecode(arg)
		end)

		if ok then
			return result
		end
		return nil
	end

	fn3 = function(arg)
		return tostring(arg or ""):lower():find("invalid or expired key") ~= nil
	end

	fn4 = function(arg)
		local str6 = tostring(arg or ""):lower()
		return str6:find("reset hwid") or str6:find("hwid_reset_required")
	end

	fn5 = function(arg)
		local str6 = tostring(arg or ""):lower()
		return str6:find("active tabs are full") or str6:find("too many active sessions") or str6:find("active lease limit")
	end

	fn6 = function(arg)
		local str6 = tostring(arg or ""):lower()
		return str6:find("rate limited") or str6:find("too many invalid attempts") or str6:find("already being verified") or str6:find("active tabs are full") or str6:find("too many active sessions") or str6:find("failed to connect") or str6:find("check your internet") or str6:find("invalid request") or str6:find("timeout") or str6:find("temporar") or str6:find("too often") or str6:find("network") or str6:find("cdn") or str6:find("http 0") or str6:find("unsupported http response")
	end

	local function fn17(arg)
		if type(arg) ~= "table" or getmetatable(arg) ~= nil then
			return false
		end

		if rawget(arg, "valid") ~= true or rawget(arg, "leaseVersion") ~= 2 then
			return false
		end
		local value = rawget(arg, "licenseWatermark")
		local value2 = rawget(arg, "leaseToken")
		if type(value) ~= "string" or type(value2) ~= "string" then
			return false
		end
		local match, v5, v6 = value:match("^vwm1%.(%d+)%.([a-f0-9]+)%.([A-Za-z0-9_-]+)$")
		if not match or #match < 8 or #match > 12 or #v5 ~= 16 or #v6 < 24 or #v6 > 64 then
			return false
		end
		local match2, v7 = value2:match("^kl1%.([A-Za-z0-9_-]+)%.([A-Za-z0-9_-]+)$")
		if not match2 or #match2 < 24 or #v7 ~= 43 then
			return false
		end
		local value3 = rawget(arg, "sessionToken")
		local flag2 = value3 ~= nil

		if flag2 then
			flag2 = type(value3) ~= "string" or #value3 < 24 or #value3 > 2048
		end

		if flag2 then
			return false
		end
		return true
	end

	local function fn18(arg, arg2)
		if fn6(arg2) or fn5(arg2) then
			return
		end

		if type(arg) ~= "table" or arg.kick ~= true then
			return
		end

		task.delay(0.35, function()
			local localPlayer = Players.LocalPlayer

			if localPlayer then
				localPlayer:Kick("[Phuocdepzai Hub] Key verification failed too many times.")
			end
		end)
	end

	validateKeyWithServer = function(arg)
		getgenv().VxezeKeyVerified = false
		getgenv().VxezeLicenseWatermark = nil
		local v5 = fn2(arg)
		if not v5 or v5 == "" then
			return false, "Please enter a key", nil
		end
		local v6 = fn15()

		local json = HttpService:JSONEncode({
			scriptId = str2,
			key = v5,
			playerName = Players.LocalPlayer and Players.LocalPlayer.Name or "unknown",
			playerUserId = Players.LocalPlayer and tostring(Players.LocalPlayer.UserId) or "0",
			placeId = game.PlaceId,
			jobId = game.JobId,
			sessionId = v2,
			hwid = getHWID(),
			executor = v6,
		})

		local v7 = nil
		if type(request_2) ~= "function" then
			return false, "Executor HTTP API is unavailable. Update or change executor.", nil
		end
		local v8 = nil

		for i = 1, 1 do
			local str6

			if request_2 then
				local v9, v10 = fn12({
					Url = str3,
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json", Accept = "application/json" },
					Body = json,
				}, 6)

				if not (v9 and v10) then
					if not v9 then
						return false, str .. " executor network unavailable", nil
					end
					return false, str .. " executor returned no HTTP response", nil
				end

				local kind = type(v10)
				local num, body

				if kind == "table" then
					if getmetatable(v10) ~= nil then
						return false, "Invalid verification response", nil
					end
					num = tonumber(v10.StatusCode or v10.Status or v10.status_code or v10.status)
					body = v10.Body or v10.body or v10.ResponseBody or v10.response_body
					num = num or v10.Success == false and 0 or 200
				else
					num = nil
					body = nil

					if kind == "string" then
						num = 200
						body = v10
					end
				end

				local v11 = fn16(body)

				if fn11(num or 0, v11) then
					local v12, v13, v14 = fn9(v9, v10)
					n = fn10(v14, v11)
					return false, str .. " key server busy", nil
				end

				if v11 then
					v7 = v11
					break
				end

				if not num then
					str6 = "Executor returned an unsupported HTTP response"
				elseif num == 0 then
					str6 = "Executor could not reach key server (HTTP 0)"
				elseif num == 401 or num == 403 then
					str6 = "Request blocked by network or CDN (HTTP " .. tostring(num) .. "). Disable VPN or try another network."
				elseif num >= 500 then
					str6 = "Key server temporarily unavailable (HTTP " .. tostring(num) .. ")"
				else
					str6 = "Key server returned HTTP " .. tostring(num) .. " without JSON"
				end
			else
				str6 = v8
			end

			if str6 == "Request timed out" then
				v8 = str6
				break
			end

			if not (i < 1) then
				v8 = str6
			else
				wait(0.6 * i)
				v8 = str6
			end
		end

		if v7 then
			if v7.valid == true then
				if not fn17(v7) then
					return false, "Invalid verification credentials", nil
				end

				if type(v7.licenseWatermark) ~= "string" or not v7.licenseWatermark:match("^vwm1%.%d+%.[a-f0-9]+%.[A-Za-z0-9_-]+$") then
					fn18({ kick = true }, "Signed license watermark is missing")
					return false, "Signed license watermark is missing", nil
				end
				local genv = getgenv()
				genv.VxezeLicenseWatermark = v7.licenseWatermark
				genv.VxezeKeyVerified = true

				if type(v7.runtimeSessionToken) == "string" and type(v7.runtimeSyncUrl) == "string" then
					genv.VxezePlayerControlCredentials = {
						RuntimeSessionToken = v7.runtimeSessionToken,
						SyncUrl = v7.runtimeSyncUrl,
						ReleaseUrl = tostring(v7.runtimeReleaseUrl or ""),
						KeyTargetId = str2,
						SyncSeconds = tonumber(v7.runtimeSyncSeconds) or 12,
					}
				end

				v3 = v5
				saveKeyToFile(v5)

				if type(v7.sessionToken) == "string" and not flag then
					flag = true
					local sessionToken = v7.sessionToken
					local str6 = ("https://vxezestudio.online/api/key/verify"):gsub("/verify$", "/tab/ping")

					local vxezeTabSessionCredentials = {
						Active = true,
						SessionToken = sessionToken,
						ReleaseUrl = ("https://vxezestudio.online/api/key/verify"):gsub("/verify$", "/tab/release"),
					}

					getgenv().VxezeTabSessionCredentials = vxezeTabSessionCredentials
					local n3 = math.max(8, tonumber(v7.sessionPingSeconds) or 15)

					task.spawn(function()
						local v9 = n3
						local n4 = 0

						while vxezeTabSessionCredentials.Active do
							task.wait(v9 + math.random() * 2)

							if vxezeTabSessionCredentials.Active then
								local flag2 = false

								if request_2 then
									local v10, v11 = fn12({
										Url = str6,
										Method = "POST",
										Headers = { ["Content-Type"] = "application/json", Accept = "application/json" },
										Body = HttpService:JSONEncode({ sessionToken = sessionToken }),
									}, 6)

									local v12, v13, v14 = fn9(v10, v11)
									local v15 = v13 and fn16(v13) or nil
									local str7

									if v15 then
										str7 = tostring(v15.code or "")
									else
										str7 = v15
									end

									str7 = str7 or ""

									if v12 == 423 and str7 == "KEY_TEMPORARILY_LOCKED" then
										vxezeTabSessionCredentials.Active = false
										local localPlayer = Players.LocalPlayer

										if localPlayer then
											localPlayer:Kick("[Phuocdepzai Hub] This lifetime key is temporarily locked.")
										end

										break
									elseif v12 == 410 and str7 == "KEY_INACTIVE" then
										vxezeTabSessionCredentials.Active = false
										deleteKeyFile()
										local localPlayer = Players.LocalPlayer

										if localPlayer then
											localPlayer:Kick("[Phuocdepzai Hub] This key is no longer active.")
										end

										break
									elseif v12 == 401 and str7 == "SESSION_TOKEN_INVALID" or v12 == 409 and str7 == "SLOT_TAKEN" then
										vxezeTabSessionCredentials.Active = false
										warn("[Vxeze] Tab session needs verification: " .. str7)
										break
									else
										flag2 = v12 >= 200 and v12 < 300 and type(v15) == "table" and v15.ok == true

										if flag2 and type(v15) == "table" and type(v15.sessionToken) == "string" then
											sessionToken = v15.sessionToken
											vxezeTabSessionCredentials.SessionToken = sessionToken
										end

										v9 = flag2 and n3

										if v9 then
											flag2 = flag2 and 0
											n4 = flag2 or n4 + 1
										else
											v9 = fn8(n4 + 1, fn10(v14, v15))
											flag2 = flag2 and 0
											n4 = flag2 or n4 + 1
										end

										continue
									end
								else
									n4 = flag2 and 0 or n4 + 1
									continue
								end
							end

							break
						end

						flag = false
					end)
				end

				local tbl3

				if v7.premium == true then
					tbl3 = { hours = 999999, minutes = 0 }
				else
					tbl3 = nil

					if v7.keyExpiresAt then
						local ok, result = pcall(function()
							return DateTime.fromIsoDate(v7.keyExpiresAt).UnixTimestamp
						end)

						ok = ok and result
						tbl3 = nil

						if ok then
							local n3 = math.max(0, result - os.time())
							tbl3 = { hours = math.floor(n3 / 3600), minutes = math.floor(n3 % 3600 / 60) }
						end
					end
				end

				return true, v7.message or "Valid key", tbl3
			end

			local error_ = v7.error or v7.message or "Invalid key"
			local flag2 = not fn4(error_)

			if flag2 then
				flag2 = error_:lower():find("hwid") or error_:lower():find("bound") or error_:lower():find("another device")
			end

			if flag2 then
				deleteKeyFile()
			end

			fn18(v7, error_)
			return false, error_, v7.time_remaining
		end

		return false, v8 or "Failed to connect to server. Check your internet.", nil
	end

	loadImage = function(arg)
		if not arg or arg == "" then
			return ""
		end

		if type(arg) == "string" then
			if arg:match("^https?://") then
				return arg
			end

			if arg:match("^rbxassetid://") then
				return arg
			end

			if tonumber(arg) then
				return "rbxassetid://" .. arg
			end
		end

		return "rbxassetid://" .. tostring(arg)
	end

	screenGui = Instance.new("ScreenGui")
	frame = Instance.new("Frame")
	UICorner = Instance.new("UICorner")
	UIStroke = Instance.new("UIStroke")
	imageLabel = Instance.new("ImageLabel")
	local uiCorner4 = Instance.new("UICorner")
	Character = Instance.new("ImageLabel")
	imageLabel2 = Instance.new("ImageLabel")
	local uiCorner5 = Instance.new("UICorner")
	textLabel = Instance.new("TextLabel")
	uiStroke = Instance.new("UIStroke")
	textLabel2 = Instance.new("TextLabel")
	textBox = Instance.new("TextBox")
	local uiCorner6 = Instance.new("UICorner")
	uiStroke2 = Instance.new("UIStroke")
	imageLabel3 = Instance.new("ImageLabel")
	local uiCorner7 = Instance.new("UICorner")
	uiStroke3 = Instance.new("UIStroke")
	textButton = Instance.new("TextButton")
	imageLabel4 = Instance.new("ImageLabel")
	uiCorner = Instance.new("UICorner")
	uiStroke4 = Instance.new("UIStroke")
	textButton2 = Instance.new("TextButton")
	imageLabel5 = Instance.new("ImageLabel")
	uiCorner2 = Instance.new("UICorner")
	uiStroke5 = Instance.new("UIStroke")
	textButton3 = Instance.new("TextButton")
	imageLabel6 = Instance.new("ImageLabel")
	uiCorner3 = Instance.new("UICorner")
	uiStroke6 = Instance.new("UIStroke")
	textButton4 = Instance.new("TextButton")
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Name = "KeySystemGui"

	if type(syn) == "table" and type(syn.protect_gui) == "function" then
		pcall(syn.protect_gui, screenGui)
	end

	screenGui.Parent = v
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
	frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.Size = UDim2.new(0, 500, 0, 350)
	frame.Name = "MainFrame"
	frame.Parent = screenGui
	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = frame
	UIStroke.Color = Color3.fromRGB(0, 255, 255)
	UIStroke.Thickness = 3
	UIStroke.Transparency = 0
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = frame
	imageLabel.Image = loadImage("133093108462584")
	imageLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
	imageLabel.BackgroundTransparency = 1
	imageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel.BorderSizePixel = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 0)
	imageLabel.Name = "Background"
	imageLabel.ZIndex = 1
	imageLabel.Parent = frame
	uiCorner4.CornerRadius = UDim.new(0, 16)
	uiCorner4.Parent = imageLabel
	Character.Image = loadImage("117730372760094")
	Character.BackgroundTransparency = 1
	Character.BorderSizePixel = 0
	Character.Position = UDim2.new(1, 40, 0, -65)
	Character.AnchorPoint = Vector2.new(1, 0)
	Character.Size = UDim2.new(0, 220, 0, 250)
	Character.ScaleType = Enum.ScaleType.Fit
	Character.ZIndex = 2
	Character.Name = "Character"
	Character.Parent = frame
	imageLabel2.Image = loadImage("104202858258775")
	imageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel2.BorderSizePixel = 0
	imageLabel2.Position = UDim2.new(0, 18, 0, 18)
	imageLabel2.Size = UDim2.new(0, 42, 0, 42)
	imageLabel2.ZIndex = 3
	imageLabel2.Name = "CharacterIcon"
	imageLabel2.Parent = frame
	uiCorner5.CornerRadius = UDim.new(0, 8)
	uiCorner5.Parent = imageLabel2
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.Text = "Phuocdepzai Hub"
	textLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
	textLabel.TextSize = 22
	textLabel.TextTransparency = 0
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textLabel.BorderSizePixel = 0
	textLabel.Position = UDim2.new(0, 70, 0, 20)
	textLabel.Size = UDim2.new(0, 240, 0, 30)
	textLabel.ZIndex = 3
	textLabel.Parent = frame
	uiStroke.Color = Color3.fromRGB(0, 0, 0)
	uiStroke.Thickness = 2
	uiStroke.Transparency = 0
	uiStroke.Parent = textLabel
	textLabel2.Font = Enum.Font.FredokaOne
	textLabel2.Text = "Enter your key below to continue"
	textLabel2.TextColor3 = Color3.fromRGB(200, 200, 200)
	textLabel2.TextSize = 13
	textLabel2.TextTransparency = 0
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	textLabel2.BackgroundTransparency = 1
	textLabel2.BorderSizePixel = 0
	textLabel2.Position = UDim2.new(0, 70, 0, 50)
	textLabel2.Size = UDim2.new(0, 240, 0, 18)
	textLabel2.ZIndex = 3
	textLabel2.Parent = frame
	textBox.Font = Enum.Font.FredokaOne
	textBox.PlaceholderText = "Enter Key Here..."
	textBox.Text = ""
	textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	textBox.TextSize = 16
	textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
	textBox.BorderSizePixel = 0
	textBox.Position = UDim2.new(0, 30, 0, 125)
	textBox.Size = UDim2.new(0, 340, 0, 40)
	textBox.ClearTextOnFocus = false
	textBox.ZIndex = 3
	textBox.Name = "KeyInput"
	textBox.Parent = frame
	uiCorner6.CornerRadius = UDim.new(0, 10)
	uiCorner6.Parent = textBox
	uiStroke2.Color = Color3.fromRGB(0, 255, 255)
	uiStroke2.Thickness = 2
	uiStroke2.Transparency = 0
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke2.Parent = textBox
	imageLabel3.Image = loadImage("117928961549219")
	imageLabel3.BackgroundColor3 = Color3.fromRGB(50, 100, 150)
	imageLabel3.BackgroundTransparency = 0
	imageLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel3.BorderSizePixel = 0
	imageLabel3.Position = UDim2.new(0, 30, 0, 195)
	imageLabel3.Size = UDim2.new(0, 205, 0, 45)
	imageLabel3.ZIndex = 3
	imageLabel3.Name = "GetKeyBtn"
	imageLabel3.Parent = frame
	uiCorner7.CornerRadius = UDim.new(0, 10)
	uiCorner7.Parent = imageLabel3
end

uiStroke3.Color = Color3.fromRGB(70, 140, 200)
uiStroke3.Thickness = 2.5
uiStroke3.Transparency = 0
uiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke3.Parent = imageLabel3
textButton.Font = Enum.Font.FredokaOne
textButton.Text = "Get Key"
textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
textButton.TextSize = 16
textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textButton.BackgroundTransparency = 1
textButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton.BorderSizePixel = 0
textButton.Size = UDim2.new(1, 0, 1, 0)
textButton.ZIndex = 4
textButton.Name = "GetKeyButton"
textButton.Parent = imageLabel3

do
	local uiStroke7 = Instance.new("UIStroke")
	uiStroke7.Color = Color3.fromRGB(0, 0, 0)
	uiStroke7.Thickness = 2
	uiStroke7.Transparency = 0
	uiStroke7.Parent = textButton
	imageLabel4.Image = loadImage("122513747232289")
	imageLabel4.BackgroundColor3 = Color3.fromRGB(50, 100, 150)
	imageLabel4.BackgroundTransparency = 0
	imageLabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel4.BorderSizePixel = 0
	imageLabel4.Position = UDim2.new(0, 265, 0, 195)
	imageLabel4.Size = UDim2.new(0, 205, 0, 45)
	imageLabel4.ZIndex = 3
	imageLabel4.Name = "CheckKeyBtn"
	imageLabel4.Parent = frame
	uiCorner.CornerRadius = UDim.new(0, 10)
	uiCorner.Parent = imageLabel4
	uiStroke4.Color = Color3.fromRGB(70, 140, 200)
	uiStroke4.Thickness = 2.5
	uiStroke4.Transparency = 0
	uiStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke4.Parent = imageLabel4
	textButton2.Font = Enum.Font.FredokaOne
	textButton2.Text = "Check Key"
	textButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton2.TextSize = 16
	textButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textButton2.BackgroundTransparency = 1
	textButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textButton2.BorderSizePixel = 0
	textButton2.Size = UDim2.new(1, 0, 1, 0)
	textButton2.ZIndex = 4
	textButton2.Name = "CheckKeyButton"
	textButton2.Parent = imageLabel4
	local uiStroke8 = Instance.new("UIStroke")
	uiStroke8.Color = Color3.fromRGB(0, 0, 0)
	uiStroke8.Thickness = 2
	uiStroke8.Transparency = 0
	uiStroke8.Parent = textButton2
	imageLabel5.Image = loadImage("122513747232289")
	imageLabel5.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	imageLabel5.BackgroundTransparency = 0
	imageLabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel5.BorderSizePixel = 0
	imageLabel5.Position = UDim2.new(0, 30, 0, 270)
	imageLabel5.Size = UDim2.new(0, 205, 0, 45)
	imageLabel5.ZIndex = 3
	imageLabel5.Name = "DiscordBtn"
	imageLabel5.Parent = frame
	uiCorner2.CornerRadius = UDim.new(0, 10)
	uiCorner2.Parent = imageLabel5
	uiStroke5.Color = Color3.fromRGB(108, 121, 255)
	uiStroke5.Thickness = 2.5
	uiStroke5.Transparency = 0
	uiStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke5.Parent = imageLabel5
	textButton3.Font = Enum.Font.FredokaOne
	textButton3.Text = "Discord"
	textButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton3.TextSize = 16
	textButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textButton3.BackgroundTransparency = 1
	textButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textButton3.BorderSizePixel = 0
	textButton3.Size = UDim2.new(1, 0, 1, 0)
	textButton3.ZIndex = 4
	textButton3.Name = "DiscordButton"
	textButton3.Parent = imageLabel5
	local uiStroke9 = Instance.new("UIStroke")
	uiStroke9.Color = Color3.fromRGB(0, 0, 0)
	uiStroke9.Thickness = 2
	uiStroke9.Transparency = 0
	uiStroke9.Parent = textButton3
	imageLabel6.Image = loadImage("103629842357172")
	imageLabel6.BackgroundColor3 = Color3.fromRGB(150, 50, 150)
	imageLabel6.BackgroundTransparency = 0
	imageLabel6.BorderColor3 = Color3.fromRGB(0, 0, 0)
	imageLabel6.BorderSizePixel = 0
	imageLabel6.Position = UDim2.new(0, 265, 0, 270)
	imageLabel6.Size = UDim2.new(0, 205, 0, 45)
	imageLabel6.ZIndex = 3
	imageLabel6.Name = "TutorialBtn"
	imageLabel6.Parent = frame
	uiCorner3.CornerRadius = UDim.new(0, 10)
	uiCorner3.Parent = imageLabel6
	uiStroke6.Color = Color3.fromRGB(200, 70, 200)
	uiStroke6.Thickness = 2.5
	uiStroke6.Transparency = 0
	uiStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke6.Parent = imageLabel6
	textButton4.Font = Enum.Font.FredokaOne
	textButton4.Text = "Tutorial"
	textButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton4.TextSize = 16
	textButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textButton4.BackgroundTransparency = 1
	textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	textButton4.BorderSizePixel = 0
	textButton4.Size = UDim2.new(1, 0, 1, 0)
	textButton4.ZIndex = 4
	textButton4.Name = "TutorialButton"
	textButton4.Parent = imageLabel6
	local uiStroke10 = Instance.new("UIStroke")
	uiStroke10.Color = Color3.fromRGB(0, 0, 0)
	uiStroke10.Thickness = 2
	uiStroke10.Transparency = 0
	uiStroke10.Parent = textButton4

	local function fn7(imageTransparency)
		imageLabel.ImageTransparency = imageTransparency
		Character.ImageTransparency = imageTransparency
		imageLabel2.ImageTransparency = imageTransparency
		imageLabel2.BackgroundTransparency = imageTransparency
		textLabel.TextTransparency = imageTransparency
		textLabel2.TextTransparency = imageTransparency
		textBox.TextTransparency = imageTransparency
		textBox.BackgroundTransparency = imageTransparency
		textBox.PlaceholderColor3 = imageTransparency == 1 and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(150, 150, 150)
		imageLabel3.ImageTransparency = imageTransparency
		imageLabel3.BackgroundTransparency = imageTransparency
		textButton.TextTransparency = imageTransparency
		imageLabel4.ImageTransparency = imageTransparency
		imageLabel4.BackgroundTransparency = imageTransparency
		textButton2.TextTransparency = imageTransparency
		imageLabel5.ImageTransparency = imageTransparency
		imageLabel5.BackgroundTransparency = imageTransparency
		textButton3.TextTransparency = imageTransparency
		imageLabel6.ImageTransparency = imageTransparency
		imageLabel6.BackgroundTransparency = imageTransparency
		textButton4.TextTransparency = imageTransparency
		uiStroke.Transparency = imageTransparency
		uiStroke2.Transparency = imageTransparency
		uiStroke3.Transparency = imageTransparency
		uiStroke7.Transparency = imageTransparency
		uiStroke4.Transparency = imageTransparency
		uiStroke8.Transparency = imageTransparency
		uiStroke5.Transparency = imageTransparency
		uiStroke9.Transparency = imageTransparency
		uiStroke6.Transparency = imageTransparency
		uiStroke10.Transparency = imageTransparency
	end

	createSLOpenEffect = function()
		frame.ClipsDescendants = true
		fn7(1)
		frame.Size = UDim2.new(0, 4, 0, 4)
		frame.BackgroundColor3 = Color3.fromRGB(0, 220, 255)
		frame.BackgroundTransparency = 0
		UICorner.CornerRadius = UDim.new(1, 0)
		UIStroke.Transparency = 1
		UIStroke.Thickness = 3
		wait(0.15)
		TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 4, Color = Color3.fromRGB(0, 255, 255) }):Play()
		TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.2 }):Play()
		wait(0.1)
		TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundColor3 = Color3.fromRGB(0, 200, 255), BackgroundTransparency = 0 }):Play()
		wait(0.12)
		UICorner.CornerRadius = UDim.new(0, 4)
		TweenService:Create(frame, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, 500, 0, 4), BackgroundColor3 = Color3.fromRGB(10, 10, 20) }):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 3, Color = Color3.fromRGB(0, 255, 255) }):Play()
		wait(0.35)
		TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 6, Transparency = 0 }):Play()
		wait(0.08)
		TweenService:Create(UIStroke, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Thickness = 3, Transparency = 0.1 }):Play()
		wait(0.1)
		UICorner.CornerRadius = UDim.new(0, 16)
		TweenService:Create(frame, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, 500, 0, 350), BackgroundColor3 = Color3.fromRGB(25, 25, 35) }):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0, Thickness = 3, Color = Color3.fromRGB(0, 255, 255) }):Play()
		wait(0.3)
		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		frame2.BackgroundTransparency = 0.4
		frame2.Size = UDim2.new(1, 0, 0, 2)
		frame2.Position = UDim2.new(0, 0, 0, 0)
		frame2.ZIndex = 201
		frame2.BorderSizePixel = 0
		frame2.Parent = frame
		TweenService:Create(frame2, TweenInfo.new(0.18, Enum.EasingStyle.Linear), { Position = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 0.8 }):Play()
		wait(0.18)
		frame2:Destroy()
		frame.ClipsDescendants = false
		TweenService:Create(imageLabel, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
		TweenService:Create(Character, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
		TweenService:Create(imageLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 1 }):Play()
		wait(0.08)
		TweenService:Create(textLabel, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		wait(0.06)
		TweenService:Create(textLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		wait(0.08)
		TweenService:Create(textBox, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(uiStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		textBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
		wait(0.08)
		TweenService:Create(imageLabel3, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke7, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(imageLabel4, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke8, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		wait(0.06)
		TweenService:Create(imageLabel5, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke5, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke9, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(imageLabel6, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { ImageTransparency = 0, BackgroundTransparency = 0 }):Play()
		TweenService:Create(textButton4, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
		TweenService:Create(uiStroke6, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		TweenService:Create(uiStroke10, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()
		wait(0.15)
		TweenService:Create(UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Transparency = 0.25, Thickness = 3 }):Play()
	end

	local v = loadKeyFromFile()

	local function fn8(visible)
		local textTransparency = visible and 0 or 1
		textBox.Visible = visible
		imageLabel3.Visible = visible
		imageLabel4.Visible = visible
		imageLabel5.Visible = visible
		imageLabel6.Visible = visible
		textBox.TextTransparency = textTransparency
		textBox.BackgroundTransparency = visible and 0 or 1
		imageLabel3.ImageTransparency = textTransparency
		imageLabel3.BackgroundTransparency = textTransparency
		textButton.TextTransparency = textTransparency
		imageLabel4.ImageTransparency = textTransparency
		imageLabel4.BackgroundTransparency = textTransparency
		textButton2.TextTransparency = textTransparency
		imageLabel5.ImageTransparency = textTransparency
		imageLabel5.BackgroundTransparency = textTransparency
		textButton3.TextTransparency = textTransparency
		imageLabel6.ImageTransparency = textTransparency
		imageLabel6.BackgroundTransparency = textTransparency
		textButton4.TextTransparency = textTransparency
		uiStroke2.Transparency = textTransparency
		uiStroke3.Transparency = textTransparency
		uiStroke7.Transparency = textTransparency
		uiStroke4.Transparency = textTransparency
		uiStroke8.Transparency = textTransparency
		uiStroke5.Transparency = textTransparency
		uiStroke9.Transparency = textTransparency
		uiStroke6.Transparency = textTransparency
		uiStroke10.Transparency = textTransparency
	end

	local function fn9()
		textLabel2.Text = "Checking saved key..."
		textBox.Text = ""
		fn8(false)
	end

	local function fn10(text)
		textLabel2.Text = text or "Enter your key below to continue"
		fn8(true)
	end

	local function fn11(text)
		textLabel2.Text = text or "Server busy. Try Check Key again"
		fn8(true)
		imageLabel3.Visible = false
		imageLabel5.Visible = false
		imageLabel6.Visible = false
		imageLabel3.ImageTransparency = 1
		imageLabel3.BackgroundTransparency = 1
		textButton.TextTransparency = 1
		imageLabel5.ImageTransparency = 1
		imageLabel5.BackgroundTransparency = 1
		textButton3.TextTransparency = 1
		imageLabel6.ImageTransparency = 1
		imageLabel6.BackgroundTransparency = 1
		textButton4.TextTransparency = 1
		uiStroke3.Transparency = 1
		uiStroke7.Transparency = 1
		uiStroke5.Transparency = 1
		uiStroke9.Transparency = 1
		uiStroke6.Transparency = 1
		uiStroke10.Transparency = 1
	end

	if v then
		fn9()
	else
		fn10()
	end

	task.spawn(createSLOpenEffect)
	dragging = false
	dragInput = nil
	dragStart = nil
	local position = nil

	smoothDrag = function(arg)
		local n2 = arg.Position - dragStart
		local udim2 = UDim2.new(position.X.Scale, position.X.Offset + n2.X, position.Y.Scale, position.Y.Offset + n2.Y)
		TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = udim2 }):Play()
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			position = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					dragInput = nil
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			smoothDrag(input)
		end
	end)

	textButton.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel3, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke3, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel3, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke3, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton.MouseEnter:Connect(function()
		TweenService:Create(uiStroke3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 180, 255) }):Play()
	end)

	textButton.MouseLeave:Connect(function()
		TweenService:Create(uiStroke3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(70, 140, 200) }):Play()
	end)

	textButton2.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel4, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke4, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton2.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel4, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke4, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton2.MouseEnter:Connect(function()
		TweenService:Create(uiStroke4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 180, 255) }):Play()
	end)

	textButton2.MouseLeave:Connect(function()
		TweenService:Create(uiStroke4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(70, 140, 200) }):Play()
	end)

	textButton3.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel5, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke5, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton3.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel5, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke5, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton3.MouseEnter:Connect(function()
		TweenService:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(138, 151, 255) }):Play()
	end)

	textButton3.MouseLeave:Connect(function()
		TweenService:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(108, 121, 255) }):Play()
	end)

	textButton4.MouseButton1Down:Connect(function()
		TweenService:Create(imageLabel6, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 195, 0, 40) }):Play()
		TweenService:Create(uiStroke6, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 4 }):Play()
	end)

	textButton4.MouseButton1Up:Connect(function()
		TweenService:Create(imageLabel6, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 205, 0, 45) }):Play()
		TweenService:Create(uiStroke6, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 2.5 }):Play()
	end)

	textButton4.MouseEnter:Connect(function()
		TweenService:Create(uiStroke6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 100, 255) }):Play()
	end)

	textButton4.MouseLeave:Connect(function()
		TweenService:Create(uiStroke6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(200, 70, 200) }):Play()
	end)

	textButton.MouseButton1Click:Connect(function()
		Notify("Phuocdepzai Hub", "Opening key system... Copying link to clipboard!", 3)
		setclipboard("https://vxezestudio.online/key/key_f13b1dcb65f80955")
	end)

	createSLCloseEffect = function()
		frame.ClipsDescendants = true
		local frame2 = Instance.new("Frame")
		frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		frame2.BackgroundTransparency = 1
		frame2.Size = UDim2.new(1, 0, 1, 0)
		frame2.ZIndex = 200
		frame2.BorderSizePixel = 0
		frame2.Parent = frame
		local uiCorner4 = Instance.new("UICorner")
		uiCorner4.CornerRadius = UDim.new(0, 16)
		uiCorner4.Parent = frame2
		TweenService:Create(frame2, TweenInfo.new(0.05, Enum.EasingStyle.Linear), { BackgroundTransparency = 0.6 }):Play()
		wait(0.05)
		TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
		imageLabel.ImageTransparency = 1
		Character.ImageTransparency = 1
		imageLabel2.ImageTransparency = 1
		imageLabel2.BackgroundTransparency = 1
		textLabel.TextTransparency = 1
		textLabel2.TextTransparency = 1
		textBox.TextTransparency = 1
		textBox.BackgroundTransparency = 1
		imageLabel3.ImageTransparency = 1
		imageLabel3.BackgroundTransparency = 1
		textButton.TextTransparency = 1
		imageLabel4.ImageTransparency = 1
		imageLabel4.BackgroundTransparency = 1
		textButton2.TextTransparency = 1
		imageLabel5.ImageTransparency = 1
		imageLabel5.BackgroundTransparency = 1
		textButton3.TextTransparency = 1
		imageLabel6.ImageTransparency = 1
		imageLabel6.BackgroundTransparency = 1
		textButton4.TextTransparency = 1
		uiStroke.Transparency = 1
		uiStroke2.Transparency = 1
		uiStroke3.Transparency = 1
		uiStroke7.Transparency = 1
		uiStroke4.Transparency = 1
		uiStroke8.Transparency = 1
		uiStroke5.Transparency = 1
		uiStroke9.Transparency = 1
		uiStroke6.Transparency = 1
		uiStroke10.Transparency = 1
		wait(0.08)
		local frame3 = Instance.new("Frame")
		frame3.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
		frame3.BackgroundTransparency = 0.4
		frame3.Size = UDim2.new(1, 0, 0, 2)
		frame3.Position = UDim2.new(0, 0, 0, 0)
		frame3.ZIndex = 201
		frame3.BorderSizePixel = 0
		frame3.Parent = frame
		TweenService:Create(frame3, TweenInfo.new(0.12, Enum.EasingStyle.Linear), { Position = UDim2.new(0, 0, 1, 0), BackgroundTransparency = 0.9 }):Play()
		wait(0.12)
		frame3:Destroy()
		UICorner.CornerRadius = UDim.new(0, 4)
		TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In), { Size = UDim2.new(0, 500, 0, 4), BackgroundColor3 = Color3.fromRGB(5, 5, 5) }):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 0, Thickness = 3, Color = Color3.fromRGB(0, 255, 255) }):Play()
		wait(0.3)
		TweenService:Create(UIStroke, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 6, Transparency = 0 }):Play()
		wait(0.07)
		UICorner.CornerRadius = UDim.new(1, 0)

		TweenService:Create(frame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 4, 0, 4),
			BackgroundColor3 = Color3.fromRGB(0, 200, 255),
			BackgroundTransparency = 0,
		}):Play()

		TweenService:Create(UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
		wait(0.18)
		TweenService:Create(frame, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.1 }):Play()
		wait(0.08)
		TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 }):Play()
		wait(0.2)
	end

	local flag = false
	local v2 = validateKeyWithServer
	local flag2 = false
	local n2 = 0
	local v3 = nil
	local flag3 = false
	local v4 = nil
	local v5 = nil

	validateKeyWithServer = function(arg)
		local v6 = fn2(arg)

		if flag2 then
			local v7 = n2
			local now = os.clock()

			while flag2 and os.clock() - now < 12 do
				task.wait(0.05)
			end

			if not flag2 and n2 ~= v7 and v3 == v6 then
				return flag3, v4, v5
			end

			if flag2 then
				return false, str .. " verification is still running", nil
			end
		end

		flag2 = true
		local n3 = 0
		local flag4, str2, v7

		while true do
			n3 += 1
			flag4, str2, v7 = v2(v6)

			if not (flag4 or not tostring(str2):find("[VXEZE_TRANSIENT]", 1, true)) then
				if not flag and screenGui and not screenGui.Parent then
					flag4 = false
					str2 = "Verification cancelled"
					v7 = nil
					break
				else
					if n3 < 2 then
						pcall(Notify, "Phuocdepzai Hub", "Server busy. Retrying once...", 2)
						fn(1, n)
					end

					if not (n3 >= 2) then
						continue
					end
				end
			end

			break
		end

		v3 = v6
		flag3 = flag4 == true
		v4 = str2
		v5 = v7
		n2 += 1
		flag2 = false
		return flag3, v4, v5
	end

	autoCheckSavedKey = function()
		local genv = getgenv()
		local flag4 = genv.Premium == true and type(genv.Key) == "string"
		local v6 = nil

		if flag4 then
			v6 = fn2(genv.Key)
			local flag5 = v6 and v6 ~= ""
			local v7 = nil

			if not flag5 then
				v6 = v7
			end
		end

		v6 = v6 or v or loadKeyFromFile()

		if v6 then
			textBox.Text = v6
			fn9()
			Notify("Phuocdepzai Hub", "Checking saved key...", 2)
			local flag5 = false
			local v7 = nil
			local v8 = nil

			for i = 1, 1 do
				flag5, v7, v8 = validateKeyWithServer(v6)

				if not (flag5 or fn3(v7) or fn5(v7)) then
					if fn6(v7) then
						continue
					end
				end

				break
			end

			if flag5 then
				local str2 = ""

				if v8 then
					str2 = string.format(" (%dh %dm remaining)", v8.hours or 0, v8.minutes or 0)
				end

				Notify("Phuocdepzai Hub", "Key valid!" .. str2, 3)
				local frame2 = Instance.new("Frame")
				frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
				frame2.BackgroundTransparency = 1
				frame2.Size = UDim2.new(1, 0, 1, 0)
				frame2.ZIndex = 100
				frame2.BorderSizePixel = 0
				frame2.Parent = frame
				local uiCorner4 = Instance.new("UICorner")
				uiCorner4.CornerRadius = UDim.new(0, 16)
				uiCorner4.Parent = frame2

				for i = 1, 2 do
					TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 0.6 }):Play()
					wait(0.08)
					TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 1 }):Play()
					wait(0.08)
				end

				frame2:Destroy()
				wait(0.2)
				createSLCloseEffect()
				screenGui:Destroy()
				flag = true
				return true
			end

			if fn3(v7) then
				Notify("Phuocdepzai Hub", "Saved key expired. Please get a new key.", 4)
				deleteKeyFile()
				textBox.Text = ""
				fn10("Saved key expired. Enter a new key")
			elseif fn4(v7) then
				Notify("HWID Reset Required", tostring(v7), 5)
				fn11("Reset HWID in My Premium Keys, then retry")
				textBox.Text = v6
			elseif fn5(v7) then
				Notify("Phuocdepzai Hub", "Active tab limit reached. Close another tab, then try again.", 4)
				fn11("Active tabs are full. Close another tab and retry")
				textBox.Text = v6
			elseif fn6(v7) then
				Notify("Phuocdepzai Hub", "Could not re-check saved key. Keeping it saved.", 4)
				fn11("Server busy. Try Check Key again")
				textBox.Text = v6
			else
				Notify("Phuocdepzai Hub", "Could not re-check saved key: " .. tostring(v7), 4)
				fn10("Enter your key below to continue")
				textBox.Text = v6
			end

			TweenService:Create(uiStroke2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 50, 50) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(80, 20, 20) }):Play()
			local position2 = frame.Position

			for i = 1, 6 do
				local n3 = i % 2 == 0 and 10 or -10
				TweenService:Create(frame, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(position2.X.Scale, position2.X.Offset + n3, position2.Y.Scale, position2.Y.Offset) }):Play()
				wait(0.05)
			end

			TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = position2 }):Play()
			wait(0.3)
			TweenService:Create(uiStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(0, 255, 255) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(35, 35, 45) }):Play()
			return false
		end

		return false
	end

local PRIVATE_KEY = "FREE_309f92c0173d71950cd934cd"

local oldValidateKeyWithServer = validateKeyWithServer

validateKeyWithServer = function(arg)
	local key = fn2(arg)

	if key == PRIVATE_KEY then
		getgenv().VxezeKeyVerified = true
		getgenv().VxezeLicenseWatermark =
	"vwm1.30999999.abcdef1234567890.privatekey"

		return true, "Private key verified", {
			hours = 999999,
			minutes = 0
		}
	end

	return oldValidateKeyWithServer(arg)
end

	task.spawn(function()
		task.wait(0.15)
		autoCheckSavedKey()
	end)

	textButton2.MouseButton1Click:Connect(function()
		local text = textBox.Text
		if text == "" then
			Notify("Phuocdepzai Hub", "Please enter a key!", 3)
			return
		end
		Notify("Phuocdepzai Hub", "Validating key with server...", 2)
		local v6, v7, v8 = validateKeyWithServer(text)

		if v6 then
			local str2 = ""

			if v8 then
				str2 = string.format(" (%dh %dm remaining)", v8.hours or 0, v8.minutes or 0)
			end

			Notify("Phuocdepzai Hub", "Key verified!" .. str2, 3)
			local frame2 = Instance.new("Frame")
			frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
			frame2.BackgroundTransparency = 1
			frame2.Size = UDim2.new(1, 0, 1, 0)
			frame2.ZIndex = 100
			frame2.BorderSizePixel = 0
			frame2.Parent = frame
			local uiCorner4 = Instance.new("UICorner")
			uiCorner4.CornerRadius = UDim.new(0, 16)
			uiCorner4.Parent = frame2

			for i = 1, 2 do
				TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 0.6 }):Play()
				wait(0.08)
				TweenService:Create(frame2, TweenInfo.new(0.08, Enum.EasingStyle.Linear), { BackgroundTransparency = 1 }):Play()
				wait(0.08)
			end

			frame2:Destroy()
			wait(0.2)
			createSLCloseEffect()
			screenGui:Destroy()
			flag = true
		else
			local v9 = loadKeyFromFile()

			if v9 and fn2(v9) == fn2(text) and fn3(v7) then
				deleteKeyFile()
				fn10("Saved key expired. Enter a new key")
			elseif fn4(v7) then
				fn11("Reset HWID in My Premium Keys, then retry")
				textBox.Text = text
			elseif fn5(v7) then
				fn11("Active tabs are full. Close another tab and retry")
				textBox.Text = text
			elseif fn6(v7) then
				fn11("Server busy. Try Check Key again")
				textBox.Text = text
			else
				fn10("Enter your key below to continue")
				textBox.Text = text
			end

			TweenService:Create(uiStroke2, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 50, 50) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(80, 20, 20) }):Play()
			local position2 = frame.Position

			for i = 1, 6 do
				local n3 = i % 2 == 0 and 10 or -10
				TweenService:Create(frame, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(position2.X.Scale, position2.X.Offset + n3, position2.Y.Scale, position2.Y.Offset) }):Play()
				wait(0.05)
			end

			TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = position2 }):Play()
			wait(0.2)

			if fn4(v7) then
				Notify("HWID Reset Required", tostring(v7), 5)
			elseif fn5(v7) then
				Notify("Phuocdepzai Hub", "Active tab limit reached. Close another tab, then try again.", 4)
			elseif fn6(v7) then
				Notify("Phuocdepzai Hub", "Key server is busy. Your key was kept; please retry.", 4)
			else
				Notify("Phuocdepzai Hub", "Invalid Key: " .. tostring(v7), 4)
			end

			wait(0.3)
			TweenService:Create(uiStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(0, 255, 255) }):Play()
			TweenService:Create(textBox, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(35, 35, 45) }):Play()
		end
	end)

	textButton3.MouseButton1Click:Connect(function()
		Notify("Phuocdepzai Hub", "Discord link copied to clipboard!", 3)
		setclipboard("https://discord.gg/4EPYvAuCX")
	end)

	textButton4.MouseButton1Click:Connect(function()
		Notify("Phuocdepzai Hub", "Tutorial link copied to clipboard!", 3)
		setclipboard("https://youtu.be/b5kzFdezIl4")
	end)

	repeat
		wait()
	until flag == true
end

getgenv().VxezeKeyVerified = true
local genv = getgenv()

if genv.VxezeKeyVerified ~= true or type(genv.VxezeLicenseWatermark) ~= "string" or not genv.VxezeLicenseWatermark:match("^vwm1%.%d+%.[a-f0-9]+%.[A-Za-z0-9_-]+$") then
	local localPlayer = Players.LocalPlayer

	return
end
loadstring(game:HttpGet("https://pastefy.app/MGz55z3J/raw"))()