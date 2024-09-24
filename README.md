# Macbook Macros

[![en](https://img.shields.io/badge/lang-English%20%F0%9F%87%AC%F0%9F%87%A7-white)](README.md)
[![ru](https://img.shields.io/badge/%D1%8F%D0%B7%D1%8B%D0%BA-%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9%20%F0%9F%87%B7%F0%9F%87%BA-white)](README.RU.md)

This is a set of useful hotkey macros for daily work. We will use scripts with bash + AppleScripts for that. Let's start with an [example using Google](./.skhdrc):

- Easy way to return to your meeting in Meet? <kbd>Alt</kbd>+<kbd>m</kbd> (mnemonic for Meet)
- Check email? <kbd>Alt</kbd>+<kbd>e</kbd>
- Schedule a new meeting in Calendar? <kbd>Alt</kbd>+<kbd>c</kbd>
- Toggle mute of mic in Meet? <kbd>Alt</kbd>+<kbd>Space</kbd>

To configure custom hotkeys, we will use [skhd](https://github.com/koekeishiya/skhd).

So, how do you install it?

1. First, install skhd - `brew install koekeishiya/formulae/skhd`
2. Copy [.skhdrc](./.skhdrc) to your $HOME directory
3. Also, copy the [scripts](/scripts/) folder to your $HOME directory
4. Provide execute rights to the script - `chmod +x ~/scripts/activate-chrome.sh`
5. Activate the skhd service - `skhd --start-service`

By the way, if you need to reload skhd, use `skhd --restart-service`. If the configuration doesn't trigger automatically, use `skhd -r`.
