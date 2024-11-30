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
        "When a motion is not of the type you would like to use, you can force another type by using 'v'/'V'/'CTRL-V' just after the operator.",
        "dj deletes two lines, dvj deletes from the cursor position until the character below the cursor",
        "d<C-V>j deletes the character under the cursor and the character below the cursor."
    },
    {
        "When v is used after an operator, before the motion command it Forces the operator to work charwise, also when the motion is linewise.",
        "If the motion was linewise, it will become |exclusive|.", "If the motion already was charwise, toggle",
        "inclusive/exclusive. This can be used to make an exclusive", "motion inclusive and an inclusive motion exclusive."
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
        "<Home> is used to move the first character of the line. it's an |exclusive| motion.",
        "When moving up or down next, stay in same TEXT column (if possible).",
    },
    {"^ is used to move to the first non-blank character of the line. It's |exclusive| motion. Any count is ignored."},
    {
        "$ or <End> is used to move to the end of the line.",
        "When a count is given also go [count - 1] lines downward, or as, far is possible.",
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
    {
        "g^ When lines wrap ('wrap' on): To the first non-blank character of the screen line. |exclusive| motion.",
        "Differs from '^' when a line is wider than the screen.",
        "When lines don't wrap ('wrap' off): To the leftmost non-blank character of the current line that is on the screen.",
        "Differs from '^' when the first non-blank character of the line is not on the screen.",
    },
    {"gm is like 'g0', but half a screenwidth to the right (or as much as possible)."},
    {
        "gM is like 'g0', but to halfway the text of the line. With a count: to this percentage of text in the line.",
        "Thus '10gM' is near the start of the text and '90gM' is near the end of the text.",
    },
    {
        "g$ Usage: When lines wrap ('wrap' on): To the last character of the screen line and [count - 1] screen lines downward |inclusive|.",
        "Differs from '$' when a line is wider than the screen.",
        "When lines don't wrap ('wrap' off): To the rightmost character of the current line that is visible on the screen.",
        "Differs from '$' when the last character of the line is not on the screen or when a count is used.",
        "Additionally, vertical movements keep the column, instead of going to the end of the line.",
        "When 'virtualedit' is enabled moves to the end of the screen line.",
    },
    {"g<End> is like 'g$' but to the last non-blank character instead of the last character."},
    {"| is used to move to the screen column [count] in the current line. |exclusive| motion."},
    {
        "f{char} is used to move to the [count]'th occurrence of {char} to the right.",
        "The cursor is placed on {char} |inclusive|. {char} can be entered as a digraph |digraph-arg|.",
        "When 'encoding' is set to Unicode, composing characters may be used, see |utf-8-char-arg|.",
    },
    {
        "F{char} is used to move to the [count]'th occurrence of {char} to the left.",
        "The cursor is placed on {char} |exclusive|. {char} can be entered like with the |f| command.",
    },
    {
        "t{char} is used to move to the [count]'th before occurrence of {char} to the right.", "The cursor is placed",
        "on, the character left of {char} |inclusive|. {char} can be entered like with the |f| command.",
    },
    {
        "T{char} is used to move to the [count]'th after occurrence of {char} to the left.",
        "The cursor is placed on the character right of {char} |exclusive|.",
        "{char} can be entered like with the |f| command.",
    },
    {
        "; is used to repeat latest f, t, F or T [count] times",
        ", is used to repeat latest f, t, F or T in opposite direction [count] times.",
    },
    {"k or <Up> or CTRL-P is used to move to the [count] lines upward |linewise|."},
    {"j or <Down> or CTRL-J or <NL> or CTRL-N is used to move to the [count] lines downward |linewise|."},
    {
        "gk or g<Up> is used to move to the [count] display lines upward. |exclusive| motion.",
        "Differs from 'k' when lines wrap, and when used with an operator, because it's not linewise.",
    },
    {
        "gj g<Down> is used to move to the [count] display lines downward. |exclusive| motion.",
        "Differs from 'j' when lines wrap, and when used with an operator, because it's not linewise.",
    },
    {"- is used to move to the [count] lines upward, on the first non-blank character |linewise|."},
    {"+ or CTRL-M or <CR> is used to move to the [count] lines downward, on the first non-blank character |linewise|."},
    {"_ is used to move t [count] - 1 lines downward, on the first non-blank character |linewise|."},
    {
        "G is used to goto line [count], default last line, on the first non-blank character |linewise|.",
        "If 'startofline' not set, keep the same column. G is one of the |jump-motions|.",
    },
    {"<C-End> is used to goto line [count], default last line, on the last character |inclusive|."},
    {
        "<C-Home> or gg is used to goto line [count], default first line, on the first non-blank character |linewise|.",
        "If 'startofline' not set, keep the same column."
    },
    {
        ":[range] is used to set the cursor on the last line number in [range]. In Ex mode, print the lines in [range].",
        "[range] can also be just one line number, e.g., ':1' or \":'m\". In contrast with |G| this command does not",
        "modify the |jumplist|.",
    },
    {
        "{count}% is used Go to {count} percentage in the file, on the first non-blank in the line |linewise|.",
        "To compute the new line number this formula is used: ({count} * number-of-lines + 99) / 100"
    },
    {
        ":[range]go[to] [count] or [count]go is used to go to [count] byte in the buffer. |exclusive| motion.",
        "Default [count] is one, start of the file.  When", "giving [range], the last number in it used as the byte count.",
        "End-of-line characters are counted depending on the current 'fileformat' setting.",
    },
    {"<S-Right> or w is used to move to the [count] words forward. |exclusive| motion."},
    {"<C-Right> or W is used to move to the [count] WORDS forward. |exclusive| motion."},
    {"e is used to move forward to the end of word [count] |inclusive|. Does not stop in an empty line."},
    {"E is used to move forward to the end of WORD [count] |inclusive|. Does not stop in an empty line."},
    {"<S-Left> or b is used to move to [count] words backward. |exclusive| motion."},
    {"<C-Left> or B is used to move to [count] WORDS backward. |exclusive| motion."},
    {"ge is used to move backward to the end of word [count] |inclusive|."},
    {"gE is used to move backward to the end of WORD [count] |inclusive|."},
    {"( is used to move to [count] |sentence|s backward. |exclusive| motion."},
    {") is used to move to [count] |sentence|s forward. |exclusive| motion."},
    {"{ is used to move to [count] |paragraph|s backward. |exclusive| motion."},
    {"} is used to move to [count] |paragraph|s forward. |exclusive| motion."},
    {
        "]] is used to move to [count] |section|s forward or to the next '{' in the first column.",
        "When used after an operator, then also stops below a '}' in the first column. |exclusive| Note that",
        "|exclusive-linewise| often applies."
    },
    {
        "][ is used to move to [count] |section|s forward or to the next '}' in the first column.",
        "|exclusive| Note that |exclusive-linewise| often applies.",
    },
    {
        "[[ is used to move to [count] |section|s backward or to the previous '{' in the first column.",
        "|exclusive| Note that |exclusive-linewise| often applies.",
    },
    {
        "[] is used to move to [count] |section|s backward or to the previous '}' in the first column.",
        "|exclusive| Note that |exclusive-linewise| often applies.",
    },
}
