net.Receive(
	"stamina",
	function(len)
		LocalPlayer().Stamina = net.ReadFloat()
		LocalPlayer().Bleedout = net.ReadFloat()
	end
)

net.Receive(
	"hmcd_flashlight_light",
	function(len)
		local ply = net.ReadEntity()
		ply.HMCD_Flashlight = tobool(net.ReadBit())
	end
)