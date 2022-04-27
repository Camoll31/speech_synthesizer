

goospeech = goospeech or {}



goospeech.steamids = {



	["superadmin"] = true, 



	["topadmin"] = true,



	["admin"] = true,



    ["eventmaker"] = true,



    ["moderator"] = true,



	["sponsor"] = true,



    ["dadmin"] = true,



    ["vip"] = true,

    

    ['user'] = true,





	 ["STEAM_0:0:78198171"] = true,





}







goospeech.ChatCommand = {



	"/google",



	"!google",



}







function goospeech:HasValue(ply)



	local steamid = ply:SteamID()



	local groups = ply:GetUserGroup()



	return goospeech.steamids[steamid] or goospeech.steamids[groups]



end







function goospeech:SetVoice(ply, voice)



	if !tostring(voice) then return end



	ply:SetNWString("google_voice", voice)



end







function goospeech:GetVoice(ply)



	return ply:GetNWString("google_voice", "zahar")



end

