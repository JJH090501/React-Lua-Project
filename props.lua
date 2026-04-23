local React = require(game.ReplicatedStorage.ReactLua.React)
local ReactRoblox = require(game.ReplicatedStorage.ReactLua.ReactRoblox)

local function Greetings(props)
	return React.createElement("TextLabel", {
		Text = "Hello, " .. props.name .. "!",
		Size = UDim2.fromOffset(200, 50),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(100, 200, 255),
	})
end

local function App()
	return React.createElement(Greetings, { name = "React" })
end

local root = ReactRoblox.createRoot(script.Parent)
root:render(React.createElement(App))