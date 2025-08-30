local webhookURL = "yourwebhookurl"

function sendDiscordLog(title, description)
    local embed = {
        {
            ["color"] = 16711680,
            ["title"] = title,
            ["description"] = description,
            ["footer"] = {["text"] = os.date("%Y-%m-%d %H:%M:%S")},
        }
    }
    PerformHttpRequest(webhookURL, function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })
end

-- Connecting Player
AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
    local steamID = GetPlayerIdentifiers(source)[1] or "Bilinmiyor"
    local message = string.format("**%s** Connecting server.\nSteamID: `%s`\nTime: %s", name, steamID, os.date("%H:%M:%S"))
    sendDiscordLog("Oyuncu Bağlandı", message)
end)

-- Disconnecting Player
AddEventHandler("playerDropped", function(reason)
    local name = GetPlayerName(source) or "Bilinmiyor"
    local message = string.format("**%s** Left the server.\nReason: %s\nTime: %s", name, reason, os.date("%H:%M:%S"))
    sendDiscordLog("Oyuncu Ayrıldı", message)
end)