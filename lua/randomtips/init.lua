math.randomseed(os.time());
local m = {};

function m.ReturnRandomTip(tipsLists)
    local tips = {};

    if tipsLists == nil then
        table.insert(tips, require("randomtips.moveTips"))
        table.insert(tips, require("randomtips.moveFaqs"))
    else
        for i = 1, #tipsLists do
            table.insert(tips, tipsLists[i])
        end
    end

    local x = 0;
    for i = 1, #tips do
        x = x + #tips[i];
    end

    x = math.random(x);

    local y = 1;
    for i = 1, #tips do
        if (#tips[i] >= x) then
            break;
        end
        x = x - #tips[i];
        y = y + 1;
    end

    return tips[y][x];
end

return m;

