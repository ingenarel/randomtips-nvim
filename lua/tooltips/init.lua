math.randomseed(os.time());
local m = {};

function m.ReturnRandomTip()
    local moveTips = require("tooltips.movetips")
    return moveTips[math.random(#moveTips)];
end

function m.Unload()
    m = nil;
end

return m;
