math.randomseed(os.time())
local m = {}

function m.ReturnRandomTip(tipsLists)
    local tips = {}

    if tipsLists == nil then
        table.insert(tips, require("randomtips.moveTips"))
        table.insert(tips, require("randomtips.moveFaqs"))
        table.insert(tips, require("randomtips.skyrim"))
        table.insert(tips, require("randomtips.witcher"))
        table.insert(tips, require("randomtips.vtip"))
        table.insert(tips, require("randomtips.gathered"))
        table.insert(tips, require("randomtips.bash_irc_quotes"))
    else
        for _, tip in ipairs(tipsLists) do
            table.insert(tips, tip)
        end
    end

    local x = 0
    for _, tip in ipairs(tips) do
        x = x + #tip
    end

    x = math.random(x)

    local y = 1
    for i = 1, #tips do
        if #tips[i] >= x then
            break
        end
        x = x - #tips[i]
        y = y + 1
    end

    return tips[y][x]
end

return m
