-- local ok, galaxyline = pcall(require, 'plugins/galaxyline')
-- if (not ok) then return end
--
-- galaxyline.self_color_gruvbox_dark()
local cmd = vim.cmd

local self_color_gruvbox_dark = function()
  vim.g.gruvbox_invert_selection = 0
  vim.g.gruvbox_italic = 1
  vim.g.gruvbox_sign_column = 'bg0'

  cmd [[
  colorscheme gruvbox

  au VimEnter * highlight StatusLine                                                                                                guifg=#3c3836

  au VimEnter * highlight GalaxyLeftGitDiffAddActive                                                                  guibg=#3c3836 guifg=#27b31a
  au VimEnter * highlight GalaxyLeftGitDiffInactive                                                                   guibg=#3c3836 guifg=#ebdbb2
  au VimEnter * highlight GalaxyLeftGitDiffModifiedActive                                                             guibg=#3c3836 guifg=#fe811b
  au VimEnter * highlight GalaxyLeftGitDiffRemoveActive                                                               guibg=#3c3836 guifg=#fb4632
  au VimEnter * highlight GalaxyLeftLspInactive                                                                       guibg=#3c3836 guifg=#d5c4a1
  au VimEnter * highlight GalaxyMapperCommon1                                                                         guibg=#3c3836 guifg=#504945
  au VimEnter * highlight GalaxyMapperCommon2                                                                         guibg=#bdae93 guifg=#504945
  au VimEnter * highlight GalaxyMapperCommon3                                                                         guibg=#3c3836 guifg=#ebdbb2
  au VimEnter * highlight GalaxyMapperCommon4                                                                         guibg=#504945 guifg=#ebdbb2
  au VimEnter * highlight GalaxyMapperCommon5                                                                         guibg=#3c3836 guifg=#d5c4a1
  au VimEnter * highlight GalaxyMapperCommon6                                                                         guibg=#504945 guifg=#d5c4a1
  au VimEnter * highlight GalaxyMapperCommon7                                                                         guibg=#504945 guifg=#bdae93
  au VimEnter * highlight GalaxyMapperCommon8                                                                         guibg=#504945 guifg=#91a6ba
  au VimEnter * highlight GalaxyMidFileStatusModified                                                                 guibg=#3c3836 guifg=#8ec07c
  au VimEnter * highlight GalaxyMidFileStatusReadonly                                                                 guibg=#3c3836 guifg=#fe811b
  au VimEnter * highlight GalaxyMidFileStatusRestricted                                                               guibg=#3c3836 guifg=#fb4632
  au VimEnter * highlight GalaxyMidFileStatusUnmodified                                                               guibg=#3c3836 guifg=#d5c4a1
  au VimEnter * highlight GalaxyRightLspErrorActive                                                                   guibg=#3c3836 guifg=#fb4632
  au VimEnter * highlight GalaxyRightLspHintActive                                                                    guibg=#3c3836 guifg=#27b31a
  au VimEnter * highlight GalaxyRightLspInformationActive                                                             guibg=#3c3836 guifg=#127fff
  au VimEnter * highlight GalaxyRightLspWarningActive                                                                 guibg=#3c3836 guifg=#fe811b
  au VimEnter * highlight GalaxyViModeCommandInverted                                                                 guibg=#504945 guifg=#fabd2f
  au VimEnter * highlight GalaxyViModeCommandUnturned                                                                 guibg=#fabd2f guifg=#3c3836
  au VimEnter * highlight GalaxyViModeCommonVisualInverted                                                            guibg=#504945 guifg=#fe811b
  au VimEnter * highlight GalaxyViModeCommonVisualUnturned                                                            guibg=#fe811b guifg=#3c3836
  au VimEnter * highlight GalaxyViModeEmptyInverted                                                                   guibg=#504945 guifg=#bdae93
  au VimEnter * highlight GalaxyViModeEmptyUnturned                                                                   guibg=#bdae93 guifg=#3c3836
  au VimEnter * highlight GalaxyViModeInsertInverted                                                                  guibg=#504945 guifg=#83a598
  au VimEnter * highlight GalaxyViModeInsertUnturned                                                                  guibg=#83a598 guifg=#3c3836
  au VimEnter * highlight GalaxyViModeNormalInverted                                                                  guibg=#504945 guifg=#bdae93
  au VimEnter * highlight GalaxyViModeNormalUnturned                                                                  guibg=#bdae93 guifg=#3c3836
  au VimEnter * highlight GalaxyViModeReplaceInverted                                                                 guibg=#504945 guifg=#8ec07c
  au VimEnter * highlight GalaxyViModeReplaceUnturned                                                                 guibg=#8ec07c guifg=#3c3836
  au VimEnter * highlight GalaxyViModeShellInverted                                                                   guibg=#504945 guifg=#d3869b
  au VimEnter * highlight GalaxyViModeShellUnturned                                                                   guibg=#d3869b guifg=#3c3836
  au VimEnter * highlight GalaxyViModeTerminalInverted                                                                guibg=#504945 guifg=#d3869b
  au VimEnter * highlight GalaxyViModeTerminalUnturned                                                                guibg=#d3869b guifg=#3c3836
  ]]
end

local self_color_solarized_dark = function()
	vim.g.neosolarized_italic = 1

	cmd [[
  au VimEnter * colorscheme NeoSolarized

  au VimEnter * highlight StatusLine                                                                                guifg=#073642

  au VimEnter * highlight GalaxyLeftGitDiffAddActive                                                                guibg=#073642 guifg=#00aa00
  au VimEnter * highlight GalaxyLeftGitDiffInactive                                                                 guibg=#073642 guifg=#93a1a1
  au VimEnter * highlight GalaxyLeftGitDiffModifiedActive                                                           guibg=#073642 guifg=#ffa003
  au VimEnter * highlight GalaxyLeftGitDiffRemoveActive                                                             guibg=#073642 guifg=#dc322f
  au VimEnter * highlight GalaxyLeftLspInactive                                                                     guibg=#073642 guifg=#93a1a1
  au VimEnter * highlight GalaxyMapperCommon1                                                                       guibg=#073642 guifg=#657b83
  au VimEnter * highlight GalaxyMapperCommon2                                                                       guibg=#93a1a1 guifg=#002b36
  au VimEnter * highlight GalaxyMapperCommon3                                                                       guibg=#073642 guifg=#93a1a1
  au VimEnter * highlight GalaxyMapperCommon4                                                                       guibg=#657b83 guifg=#002b36
  au VimEnter * highlight GalaxyMapperCommon5                                                                       guibg=#073642 guifg=#93a1a1
  au VimEnter * highlight GalaxyMapperCommon6                                                                       guibg=#657b83 guifg=#002b36
  au VimEnter * highlight GalaxyMapperCommon7                                                                       guibg=#657b83 guifg=#93a1a1
  au VimEnter * highlight GalaxyMapperCommon8                                                                       guibg=#657b83 guifg=#91a6ba
  au VimEnter * highlight GalaxyMidFileStatusModified                                                               guibg=#073642 guifg=#00aa00
  au VimEnter * highlight GalaxyMidFileStatusReadonly                                                               guibg=#073642 guifg=#ffa003
  au VimEnter * highlight GalaxyMidFileStatusRestricted                                                             guibg=#073642 guifg=#dc322f
  au VimEnter * highlight GalaxyMidFileStatusUnmodified                                                             guibg=#073642 guifg=#93a1a1
  au VimEnter * highlight GalaxyRightLspErrorActive                                                                 guibg=#073642 guifg=#dc322f
  au VimEnter * highlight GalaxyRightLspHintActive                                                                  guibg=#073642 guifg=#00aa00
  au VimEnter * highlight GalaxyRightLspInformationActive                                                           guibg=#073642 guifg=#258bd2
  au VimEnter * highlight GalaxyRightLspWarningActive                                                               guibg=#073642 guifg=#ffa003
  au VimEnter * highlight GalaxyViModeCommandInverted                                                               guibg=#657b83 guifg=#258bd2
  au VimEnter * highlight GalaxyViModeCommandUnturned                                                               guibg=#258bd2 guifg=#002b36
  au VimEnter * highlight GalaxyViModeCommonVisualInverted                                                          guibg=#657b83 guifg=#d43681
  au VimEnter * highlight GalaxyViModeCommonVisualUnturned                                                          guibg=#d43681 guifg=#002b36
  au VimEnter * highlight GalaxyViModeEmptyInverted                                                                 guibg=#657b83 guifg=#93a1a1
  au VimEnter * highlight GalaxyViModeEmptyUnturned                                                                 guibg=#93a1a1 guifg=#002b36
  au VimEnter * highlight GalaxyViModeInsertInverted                                                                guibg=#657b83 guifg=#859a00
  au VimEnter * highlight GalaxyViModeInsertUnturned                                                                guibg=#859a00 guifg=#002b36
  au VimEnter * highlight GalaxyViModeNormalInverted                                                                guibg=#657b83 guifg=#93a1a1
  au VimEnter * highlight GalaxyViModeNormalUnturned                                                                guibg=#93a1a1 guifg=#002b36
  au VimEnter * highlight GalaxyViModeReplaceInverted                                                               guibg=#657b83 guifg=#dc322f
  au VimEnter * highlight GalaxyViModeReplaceUnturned                                                               guibg=#dc322f guifg=#002b36
  au VimEnter * highlight GalaxyViModeShellInverted                                                                 guibg=#657b83 guifg=#2aa198
  au VimEnter * highlight GalaxyViModeShellUnturned                                                                 guibg=#2aa198 guifg=#002b36
  au VimEnter * highlight GalaxyViModeTerminalInverted                                                              guibg=#657b83 guifg=#2aa198
  au VimEnter * highlight GalaxyViModeTerminalUnturned                                                              guibg=#2aa198 guifg=#002b36
	]]
end

self_color_solarized_dark()
