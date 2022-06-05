-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686

CreateThread(function()
    while true do
        -- This is the Application ID (Replace this with you own)
	SetDiscordAppId(982855213448847360)

        -- Here you will have to put the image name for the "large" icon.
	SetDiscordRichPresenceAsset('novarp')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Nova Roleplay - Quality roleplay ')
       
        -- Here you will have to put the image name for the "small" icon.

        -- Here you can add hover text for the "small" icon.

        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('Huidige spelers: '..result)
        end)

        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Join server (WIP)!", "fivem://connect/localhost:30120")
        SetDiscordRichPresenceAction(1, "Join Discord (WIP)!", "fivem://connect/localhost:30120")

        -- It updates every minute just in case.
	Wait(60000)
    end
end)
