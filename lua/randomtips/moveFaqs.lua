table.insert(M.tips, {
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
    }
})
