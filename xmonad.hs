 import XMonad
 import XMonad.Hooks.DynamicLog
 import XMonad.Hooks.ManageDocks
 import XMonad.Hooks.SetWMName
 import XMonad.Util.Run
 import qualified Data.Map as M

 main = do
   h <- spawnPipe "xmobar"
   xmonad $  defaultConfig
     { terminal    = myTerminal
     , modMask     = myModMask
     , borderWidth = myBorderWidth
     , layoutHook  = avoidStruts $ layoutHook defaultConfig
     , manageHook  = manageHook defaultConfig <+> myManageHooks
     , startupHook = setWMName "LG3D"
     , workspaces  = myWorkspaces
     , normalBorderColor = myBorderColor
     , focusedBorderColor = myBorderColor
     , logHook = dynamicLogWithPP $ defaultPP { ppOutput = hPutStrLn h } 
     , keys = myKeys <+> keys defaultConfig
     }


 myManageHooks = composeAll
  [ resource =? "pavucontrol" --> doFloat 
    ,resource =? "spotify" --> doShift "3.E!" 
    ,resource =? "weechat" --> doShift "4.Comm"
    ,manageDocks   ] 

 myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
  [
  --take a screenshot of entire display 
   ((modm , xK_Print ), spawn "scrot screen_%Y-%m-%d-%H-%M-%S.png -d 1")
  --take a screenshot of focused window 
   ,((modm .|. controlMask, xK_Print ), spawn "scrot window_%Y-%m-%d-%H-%M-%S.png -d 1-u")
  ] 
 myBorderColor = "gray"
 myWorkspaces = ["1.Main"
                ,"2.Dev"
                ,"3.E!"
                ,"4.Comm"
                ,"5.Misc" 
                ]
 myTerminal    = "urxvt"
 myBar = "xmobar"
 myModMask     = mod4Mask -- Win key or Super_L
 myBorderWidth = 2 
