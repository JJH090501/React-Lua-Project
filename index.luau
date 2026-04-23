local React = require(game.ReplicatedStorage.ReactLua:FindFirstChild("React"))
local ReactRoblox = require(game.ReplicatedStorage.ReactLua:FindFirstChild("ReactRoblox"))



local function App()
	return React.createElement("TextLabel", {
		Text = "Hello world!",
		Size = UDim2.fromScale(0.5, 0.1),
	})
end

local root = ReactRoblox.createRoot(script.Parent)
root:render(React.createElement(App))