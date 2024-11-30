return {
    {"Use hjkl to move left, down, up, and right respectively"},
    {"Close this window: Use ':q<Enter>'"},
    {"Get out of Vim: Use ':qa!<Enter>' (careful, all changes are lost!)."},
    {"c operator is used to change text"},
    {"d operator is used to delete text"},
    {"y operator is used to yank text into register (does not change the text)"},
    {"~ is used swap case of text (only if 'tildeop' is set)"},
    {"Use g~ swap case of the text"},
    {"Use gu make text lowercase"},
    {"Use gU make text uppercase"},
    {"Use ! filter through an external program"},
    {"Use = filter through 'equalprg' or C-indenting if empty"},
    {"Use gq for text formatting"},
    {"Use gw for text formatting with no cursor movement"},
    {"Use g? for ROT13 encoding"},
    {"Use > to indent text to the right"},
    {"Use < to indent text to the left"},
    {"Use zf to define a fold"},
    {"Use g@ to call a function set with the 'operatorfunc' option"},
    {"When doubling the operator it operates on a line. that means dd/cc/yy etc works on the current line."},
    {
        "When using a count with an operator, before or after the first character, that many lines are operated upon.",
        "Thus `3dd` deletes three lines."
    },
    {"A count before and after the first character is multiplied, thus `2y3y` yanks six lines."},
    {
        "When a motion is not of the type you would like to use, you can force another type by using 'v', 'V' or",
        "CTRL-V just after the operator.",
        "dj deletes two lines, dvj deletes from the cursor position until the character below the cursor",
        "d<C-V>j deletes the character under the cursor and the character below the cursor."
    },
    {
        "When v is used after an operator, before the motion command it Forces the operator to work charwise, also when",
        "the motion is linewise. If the motion was linewise, it will become |exclusive|.",
        "If the motion already was charwise, toggle inclusive/exclusive.", "This can be used to make an exclusive",
        "motion inclusive and an inclusive motion exclusive."
    },
    {
        "When CTRL-V is used after an operator, before the motion command it Forces the operator to work blockwise.",
        "This works like Visual block mode selection, with the corners defined by the cursor",
        "position before and after the motion.",
    },
    {"Use h or <Left> or CTRL-H or <BS> [count] characters is used to move to the left. it's an |exclusive| motion."},
    {"Use l or <Right> or <Space> [count] characters is used to move to the right. it's an |exclusive| motion."},
    {"0 is used to move to the the first character of the line. It's an |exclusive| motion."},
    {
        "<Home> is used to move the first character of the line. it's an |exclusive| motion. When moving up or down",
        "next, stay in same TEXT column (if possible).",
    },
    {"^ is used to move to the first non-blank character of the line. It's |exclusive| motion. Any count is ignored."},
    {
        "$ or <End> is used to move to the end of the line. When a count is given also go [count - 1] lines downward, or",
        "as, far is possible.",
        "It's an |inclusive| motion. If a count of 2 or larger is given and the cursor is on the last line, that is an",
        "error and the cursor doesn't move. In Visual mode the cursor goes to just after the last character in the line.",
        "When 'virtualedit' is active, '$' may move the cursor back from past the end of the line to the last character in",
        "the line."
    },
    {"g_ is used to move to the the last non-blank character of the line and [count - 1] lines downward |inclusive|."},
    {
        "g0 or g<Home> is used When lines wrap ('wrap' on): To the first character of the screen line. |exclusive|",
        "motion.  Differs from '0' when a line is wider than the screen.",
        "When lines don't wrap ('wrap' off): To the leftmost character of the current line that is on the screen.",
        "Differs from '0' when the first character of the line is not on the screen.",
    },
}
