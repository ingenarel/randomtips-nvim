local m = {};

m.moveTips = {
    "Use hjkl to move left, down, up, and right respectively",
    "Close this window:  Use ':q<Enter>'",
    "Get out of Vim:  Use ':qa!<Enter>' (careful, all changes are lost!).",
    "c operator is used to change text",
    "d operator is used to delete text",
    "y operator is used to yank text into register (does not change the text)",
    "~ is used swap case of text (only if 'tildeop' is set)",
    "Use g~ swap case of the text",
    "Use gu make text lowercase",
    "Use gU make text uppercase",
    "Use ! filter through an external program",
    "Use = filter through 'equalprg' or C-indenting if empty",
    "Use gq for text formatting",
    "Use gw for text formatting with no cursor movement",
    "Use g? for ROT13 encoding",
    "Use > to indent text to the right",
    "Use < to indent text to the left",
    "Use zf to define a fold",
    "Use g@ to call a function set with the 'operatorfunc' option",
}

function m.ReturnRandomTip()
    math.randomseed(os.time());
    print(m.moveTips[math.random(#m.moveTips)]);
end

function m.Unload()
    m = nil;
end

return m;
