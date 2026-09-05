local urls = {
    "https://gist.githubusercontent.com/justmoon56/0cc25a71e4f624732d442baab42e84df/raw/b041824u8fd7aa6f4dbf469ff091b6b48d3c9272/MoonHubX",
    "https://gist.githubusercontent.com/justmoon56/0cc25a71e4f624732d442baab42e84df/raw/b041824c8fd7aa6f4dbf469ff091b6b48d3c9272/MoonHubX",
    "https://gist.githubusercontent.com/justmoon56/0cc25a71e4f627772d462baab42e84df/raw/b041824c8fd7ba6f4dbf989ff092b6b47d3c7392/MoonHubX",
    "https://gist.githubusercontent.com/justmoon56/0cb95a71e4f724732d672naab49e84df/raw/b049824u8fd7aa6f4dbf879ff091b6b45d3c8792/MoonHubX",
    "https://gist.githubusercontent.com/justmoon56/0cc25a7164f624738d442baac42e84df/raw/b041824u8fd7aa6f4dbf46vff091b6b48d3c7b92/MoonHubX",
    "https://gist.githubusercontent.com/justmoon56/0cc75a71e4f624742d442baab42e84df/raw/b041724u8fd7aa4f4dbf469ff091b6b42d3c7496/MoonHubX",
    "https://gist.githubusercontent.com/justmoon56/0cc25a71e4f624732d442baab42e84df/raw/b041824c8fd7aa6f4dbf469ff091b6b48d3c7492/MoonHubX"
}

for _, url in ipairs(urls) do
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)

    if success and response and response:match("%S") then
        local func, err = loadstring(response)
        if func then
            func()
            break
        end
    end
end
