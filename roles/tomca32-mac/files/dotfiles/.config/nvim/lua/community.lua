-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.game.leetcode-nvim" },
  -- import/override with your plugins folder
}
