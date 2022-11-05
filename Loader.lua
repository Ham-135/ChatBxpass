repeat task.wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ham-135/ChatBxpass/main/AntiBan.lua"))()
local words = {
    ["hitler"] = "Нiт1ея",
    ["nigga"] = "И1ggа",
    ["nigger"] = "И1 gg ег",
    ["niggers"] = "И1 gg ег s",
    ["bitch"] = "В1тсh",
    ["cum"] = "Сuм",
    ["rape"] = "Rаре",
    ["blowjob"] = "Вl○шjob",
    ["vape"] = "@vape",
    ["cunt"] = "сцлt",
    ["fuck"] = "Fчск",
    ["pussy"] = "рчs2у",
    ["suicide"] = "sцiс1dе",
    ["mf"] = "мf",
    ["loli"] = "l○li",
    ["ph"] = "рh",
    ["kill"] = "k!ll",
    ["date"] = "dате",
    ["raped"] = "Rаре d",
    ["slut"] = "sl ц т",
    ["cumming"] = "Сuм мi иg",
    ["asshole"] = "а__н○le",
    ["dick"] = "d¡ с к",
    ["piss"] = "р1_ss",
    ["penis"] = "рeи_!s",
    ["whore"] = "w н ○ я e",
    ["discord"] = "|)is(|ord",
    ["hentai"] = "не n тai",
    ["xvideo"] = "хvi dе○",
    ["fucking"] = "Fчск y пg",
    ["nazi"] = "Ñaz¡",
    ["gay"] = "g ау"
}
local remote = game:GetService("ReplicatedStorage"):FindFirstChild("SayMessageRequest",true)
local remotebypass
remotebypass = hookmetamethod(remote,"__namecall",function(self,...)
    local method = getnamecallmethod()
    local args = {...}
    if self == remote and method == "FireServer" then
        local msg = args[1]
        local split = string.split(msg," ")
        local final = ""
        for _,x in pairs(split) do
            for _, bypass in pairs(words) do
                if x:lower() == _ then
                    if x:upper() ~= x then
                        msg = msg:gsub(x,bypass)
                        final = msg
                    else
                        msg = msg:gsub(x,bypass):upper()
                        final = msg:gsub(x,bypass):upper()
                    end
                end
            end
        end
        if final ~= "" then
            args[1] = final
        end
        return remotebypass(self,unpack(args))
    end
    return remotebypass(self,...)
end)
