--[[
	Lora UI — theme presets (separate file so it can be hosted on GitHub
	and fetched at runtime).

	Usage next to the library:

		local Themes = loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/USER/REPO/main/themes.lua"))()

		Library:SetTheme(Themes.OLED)

	Rules for adding your own theme:
	- Define EVERY key listed below (missing keys keep their previous color).
	- Keep each color value unique within one theme — the library
	  reverse-maps colors to their role when tagging newly created
	  elements, so two roles sharing one value can get mixed up.

	Key reference:
		WindowBg     window + sidebar background
		CardBg       content card background
		Border       1px strokes (window, card, nav buttons, lists)
		Element      buttons / inputs / dropdowns at rest
		ElementHover same, hovered
		Badge        active icon-badge circle
		BadgeIdle    inactive icon-badge circle
		NavActive    selected sidebar button
		NavHover     hovered sidebar button / pill
		PillActive   selected sub-tab pill
		White        primary: titles, active text, toggle-ON pill, slider fill
		TextGray     secondary text (nav labels, control text)
		TextDim      descriptions, values, drawn icons
		KnobOff      toggle knob when OFF
		KnobOn       toggle knob when ON (sits on the "White" pill)
		TrackBg      slider track (unfilled)
		Placeholder  TextBox placeholder text
]]

return {

	-- The library's built-in default.
	Dark = {
		WindowBg     = Color3.fromRGB(20, 20, 20),    -- #141414
		CardBg       = Color3.fromRGB(24, 24, 24),    -- #181818
		Border       = Color3.fromRGB(35, 35, 35),    -- #232323
		Element      = Color3.fromRGB(31, 31, 31),    -- #1F1F1F
		ElementHover = Color3.fromRGB(38, 38, 38),    -- #262626
		Badge        = Color3.fromRGB(42, 42, 42),    -- #2A2A2A
		BadgeIdle    = Color3.fromRGB(34, 34, 34),    -- #222222
		NavActive    = Color3.fromRGB(30, 30, 30),    -- #1E1E1E
		NavHover     = Color3.fromRGB(26, 26, 26),    -- #1A1A1A
		PillActive   = Color3.fromRGB(36, 36, 36),    -- #242424
		White        = Color3.fromRGB(255, 255, 255),
		TextGray     = Color3.fromRGB(154, 154, 154), -- #9A9A9A
		TextDim      = Color3.fromRGB(139, 139, 139), -- #8B8B8B
		KnobOff      = Color3.fromRGB(85, 85, 85),    -- #555555
		KnobOn       = Color3.fromRGB(17, 17, 17),    -- #111111
		TrackBg      = Color3.fromRGB(43, 43, 43),    -- #2B2B2B
		Placeholder  = Color3.fromRGB(86, 86, 86),    -- #565656
	},

	-- Inverted monochrome: "White" becomes near-black ink on light surfaces.
	Light = {
		WindowBg     = Color3.fromRGB(242, 242, 242),
		CardBg       = Color3.fromRGB(250, 250, 250),
		Border       = Color3.fromRGB(220, 220, 220),
		Element      = Color3.fromRGB(232, 232, 232),
		ElementHover = Color3.fromRGB(223, 223, 223),
		Badge        = Color3.fromRGB(226, 226, 226),
		BadgeIdle    = Color3.fromRGB(229, 229, 229),
		NavActive    = Color3.fromRGB(235, 235, 235),
		NavHover     = Color3.fromRGB(238, 238, 238),
		PillActive   = Color3.fromRGB(221, 221, 221),
		White        = Color3.fromRGB(22, 22, 22),
		TextGray     = Color3.fromRGB(90, 90, 90),
		TextDim      = Color3.fromRGB(110, 110, 110),
		KnobOff      = Color3.fromRGB(150, 150, 150),
		KnobOn       = Color3.fromRGB(245, 245, 245),
		TrackBg      = Color3.fromRGB(219, 219, 219),
		Placeholder  = Color3.fromRGB(152, 152, 152),
	},

	-- True black for OLED screens, slightly higher contrast on hovers.
	OLED = {
		WindowBg     = Color3.fromRGB(0, 0, 0),
		CardBg       = Color3.fromRGB(8, 8, 8),
		Border       = Color3.fromRGB(26, 26, 26),
		Element      = Color3.fromRGB(16, 16, 16),
		ElementHover = Color3.fromRGB(28, 28, 28),
		Badge        = Color3.fromRGB(30, 30, 30),
		BadgeIdle    = Color3.fromRGB(24, 24, 24),
		NavActive    = Color3.fromRGB(18, 18, 18),
		NavHover     = Color3.fromRGB(12, 12, 12),
		PillActive   = Color3.fromRGB(27, 27, 27),
		White        = Color3.fromRGB(255, 255, 255),
		TextGray     = Color3.fromRGB(154, 154, 154),
		TextDim      = Color3.fromRGB(139, 139, 139),
		KnobOff      = Color3.fromRGB(70, 70, 70),
		KnobOn       = Color3.fromRGB(5, 5, 5),
		TrackBg      = Color3.fromRGB(32, 32, 32),
		Placeholder  = Color3.fromRGB(80, 80, 80),
	},

}
