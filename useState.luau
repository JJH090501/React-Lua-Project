local React = require(game.ReplicatedStorage.ReactLua.React)
local ReactRoblox = require(game.ReplicatedStorage.ReactLua.ReactRoblox)

local function Counter()
	local count, setCount = React.useState(0)
	
    -- createElement like React's
	return React.createElement("TextButton", {
        -- properties of the TextButton
		Text = "클릭" .. count, 
		Size = UDim2.fromOffset(200, 50),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(100, 200, 255),
        -- Event, React.Event.Activated is the event for button clicks
		[React.Event.Activated] = function()
			setCount(count + 1)
		end,
	})
	
end

-- Render the Counter component to the screen (script.Parent) would be the ScreenGui
local root = ReactRoblox.createRoot(script.Parent)
root:render(React.createElement(Counter))