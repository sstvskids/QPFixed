if not clonefunction then return error('Insufficent functions: no clonefunction', 2) end
if not hookfunction then return error('Insufficent functions: no hookfunction', 2) end
if not debug.getupvalue then return error('Insufficent functions: no debug.getupvalue', 2) end

local Players = cloneref(game:GetService('Players'))
local lplr = Players.LocalPlayer

local old = clonefunction(debug.getupvalue)
hookfunction(debug.getupvalue, function(func, index)
	if func == require(lplr.PlayerScripts.TS.knit).setup and index == 6 then
		return old(func, 9)
	end

	return old(func, index)
end)

print('QP-Vape fixer ran! There is no going back after gng :pray:')
return loadstring(game:HttpGet("https://qpvape.org"))()

-- ._stav was here, report any issues to me on discord
