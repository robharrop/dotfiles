import Control.Monad
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig
import XMonad.Util.Run

-- All my workspace names
myWorkspaces = ["1:code", "2:web", "3:comms", "4:scratch"]

-- Workspace -> application mappings
myManageHook = composeAll
  [
    className =? "Chromium-browser" --> doShift "2:web",
    manageDocks
  ]

main = do
  xmonad =<< xmobar defaultConfig {
    modMask = mod4Mask,
    layoutHook = avoidStruts  $  layoutHook defaultConfig,
    manageHook = myManageHook <+> manageHook defaultConfig,
    workspaces = myWorkspaces,
    focusFollowsMouse = False
  }
