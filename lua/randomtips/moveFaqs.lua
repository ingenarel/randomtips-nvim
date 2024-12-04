return {
    {
        "Experienced users prefer the hjkl keys because they are always right under their fingers.",
        "Beginners often prefer the arrow keys, because they do not know what the hjkl keys do. The mnemonic value of",
        "hjkl is clear from looking at the keyboard. Think of j as an arrow pointing downwards.",
    },
    {
        "The motion commands can be used after an operator command, to have the command operate on the text that was moved over.",
        "That is the text between the cursor position before and after the motion. Operators are generally used to",
        "delete or change text.",
    },
    {
        "After applying the operator the cursor is mostly left at the start of the text that was operated upon.",
        "For example, 'yfe' doesn't move the cursor, but 'yFe' moves the cursor leftwards to the 'e' where the yank",
        "started. The 'startofline' option applies only to the 'd', '<<', '==' and '>>' linewise, operations.",
    },
    {
        "The operator either affects whole lines, or the characters between the start and end position.",
        "Generally, motions that move between lines affect lines (are linewise), and motions that move within a line",
        "affect characters (are charwise). However, there are some exceptions.",
    },
    {
        "Character motion is either inclusive or exclusive.",
        "When inclusive, the start and end position of the motion are included in the operation. When exclusive, the",
        "last character towards the end of the buffer is not included. Linewise motions always include the start and",
        "end position. Plugins can check the v:event.inclusive flag of the |TextYankPost| event.",
    },
    {
        "If a motion is exclusive and end of motion is in column 1, end of motion is moved to the end of the previous line and motion becomes inclusive.",
        "Example: '}' moves to the first line after a paragraph, but 'd}' will not include that line.",
    },
    {
        "If motion is exclusive, and end of the motion is in column 1 and start of the motion was at or before the first non-blank in the line, motion becomes linewise.",
        "Example: If a paragraph begins with some blanks and you do 'd}' while standing on the first non-blank, all the",
        "lines of the paragraph are deleted, including the blanks. If you do a put now, the deleted lines will be",
        "inserted below the cursor position.",
    },
    {
        "Instead of first giving the operator and then a motion you can use Visual mode.",
        "Mark the start of the text with 'v', move the cursor to the end of the text that is to be affected and then",
        "hit the operator. The text between the start and the cursor position is highlighted, so you can see what text",
        "will be operated upon. This allows much more freedom, but requires more key strokes and has limited redo",
        "functionality. See the chapter on Visual mode",
    },
    {
        "A word consists of a sequence of letters, digits, underscores, or a sequence of other non-blank characters, separated with spaces/tabs/<EOL>.",
        "This can be changed with the 'iskeyword' option. An empty line is also considered to be a word.",
    },
    {"A WORD consists of a sequence of non-blank characters, separated with white space, or an empty line."},
    {
        "A sequence of folded lines is counted for one word of a single character.",
        "'w' and 'W', 'e' and 'E' move to the start/end of the first word or WORD after a range of folded lines.",
        "'b' and 'B' move to the start of the first word or WORD before the fold.",
    },
    {
        "'cw' and 'cW' are treated like 'ce' and 'cE' if the cursor is on a non-blank.",
        "This is Vi-compatible, see |cpo-_| to change the behavior.",
    },
    {"Using 'w' motion in combination with an operator and the last word moved over is at the end of a line, the end of that word becomes the end of the operated text, not the first word in the next line."},
    {
        "The original Vi implementation of 'e' is buggy.",
        "For example, the 'e' command will stop on the first character of a line if the previous line was empty.",
        "But when you use '2e' this does not happen. In Vim 'ee' and '2e' are the same, which is more logical.",
        "However, this causes a small incompatibility between Vi and Vim.",
    },
    {
        "A sentence is defined as ending at a '.', '!' or '?' followed by either the end of a line, or by a space or tab.",
        "Any number of closing ')', ']', '\"' and ''' characters may appear after the '.', '!' or '?' before the spaces,",
        "tabs or end of line. A paragraph and section boundary is also a sentence boundary.",
        "If the 'J' flag is present in 'cpoptions', at least two spaces have to follow the punctuation mark; <Tab>s are",
        "not recognized as white space. The definition of a sentence cannot be changed.",
    },
    {
        "A paragraph begins after each empty line, and also at each of a set of paragraph macros, specified by the pairs of characters in the 'paragraphs' option.",
        "The default is 'IPLPPPQPP TPHPLIPpLpItpplpipbp', which corresponds to the macros '.IP', '.LP', etc.",
        "(These are nroff macros, so the dot must be in the first column). A section boundary is also a paragraph boundary.",
        "Note that a blank line (only containing white space) is NOT a paragraph",
        "boundary.",
        "Note: this does not include a '{' or '}' in the first column.",
    },
    {
        "A section begins after a form-feed (<C-L>) in the first column and at each of a set of section macros, specified by the pairs of characters in the 'sections' option.",
        "The default is 'SHNHH HUnhsh', which defines a section to start at the nroff macros:",
        "'.SH', '.NH', '.H', '.HU', '.nh' and '.sh'."
    },
    {
        "The ']]' and '[[' commands stop at the '{' in the first column.",
        "This is useful to find the start of a function in a C program. To search for a '}' in the first column, the",
        "end of a C function, use '][' (forward) or '[]' (backward). Note that the first character of the command",
        "determines the search direction.",
    },
    {
        "Note the difference between using a movement command and an object.",
        "The movement command operates from cursor position to where the movement takes us.",
        "When using an object the whole object is operated upon, no matter where on the object the cursor is.",
        "For example, compare 'dw' and 'daw':",
        "'dw' deletes from the cursor position to the start of the next word,",
        "'daw' deletes the word under the cursor and the space after or before it.",
    }
}
