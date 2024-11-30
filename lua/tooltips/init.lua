math.randomseed(os.time());
local m = {};
m.tips = {};

function m.ReturnRandomTip()
    local moveTips = require("tooltips.movetips")
    return moveTips[math.random(#moveTips)];
end

---### unloads the whole plugin.
---most of the time, this plugin will just get used once. probably you're using this to show a tip at startup. this
function m.Unload()
    m.tips = nil;
end

return m;
