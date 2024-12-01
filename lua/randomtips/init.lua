math.randomseed(os.time());
M = {};

function M.ReturnRandomTip()
    M.tips = {};
    require("randomtips.moveTips");
    local x = 0;
    for i = 1, #M.tips do
        x = x + #M.tips[i];
    end
    x = math.random(x);
    local y = 1;
    for i = 1, #M.tips do
        if (#M.tips[i] >= x) then
            break;
        end
        x = x - #M.tips[i];
        y = y + 1;
    end
    return M.tips[y][x];
end

---### unloads the tips.
---most of the time, this plugin will just get used once. probably you're using this to show a tip at startup. Clearing
---tips after you're sure that you won't call it will probably save a bit of memory. but i haven't tested it.
function M.Unload()
    M.tips = nil;
end

return M;
