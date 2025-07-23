-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Remove all styling from React props/attributes to disable italics
vim.cmd("highlight @tag.attribute cterm=NONE gui=NONE")
