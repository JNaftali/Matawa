mtw.my.tattoos = mtw.my.tattoos or {
	head = {},
	torso = {},
	["right arm"] = {},
	["left arm"] = {},
	["right leg"] = {},
	["left leg"] = {}
}

function mtw.have_tattoo( tattoo, body )
	body = string.lower(body)
	tattoo = string.lower(tattoo)
	mtw.my.tattoos[body][tattoo] = true
	nexttattoo = nil
end

function mtw.lose_tattoo( tattoo, body )
	if body then
		mtw.my.tattoos[body][tattoo] = nil
	else
		for body, tats in pairs(mtw.my.tattoos) do
			if tats[tattoo] then mtw.my.tattoos[body][tattoo] = nil return end
		end
	end
end