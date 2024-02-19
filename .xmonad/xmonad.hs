import XMonad
import XMonad.Util.EZConfig(additionalKeysP)
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.Ungrab

mylauncher :: String
mylauncher = "dmenu_run -fn 'FiraCode -14' -nb '#1e1e2e' -nf '#cdd6f4' -sf '#1e1e2e' -sb '#89decb'"

myFileExplorer :: String
myFileExplorer  = "kitty -e ranger"

mybrowser :: String
mybrowser = "thorium-browser"

myTerminal :: String
myTerminal = "kitty"


myLayout = tiled ||| Mirror tiled ||| Full ||| threeCol
  where
    threeCol = ThreeColMid nmaster delta ratio
    tiled    = Tall nmaster delta ratio
    nmaster  = 1      -- Default number of windows in the master pane
    ratio    = 1/2    -- Default proportion of screen occupied by master pane
    delta    = 3/100  -- Percent of screen to increment by when resizing panes



main :: IO ()
main = xmonad $ ewmhFullscreen $ ewmh $ myconfig

myconfig = def
    { modMask = mod4Mask
    , layoutHook = myLayout
    }
    `additionalKeysP`
    [ ("M-<Return>",    spawn myTerminal)
    , ("M-d",           spawn mylauncher)
    , ("M-e",           spawn myFileExplorer)
    , ("M-S-e",         spawn "pcmanfm")
    , ("M-b",           spawn mybrowser)
    , ("M-s-a",         unGrab >> spawn "flameshot full --path ~/Pictures")
    ]
