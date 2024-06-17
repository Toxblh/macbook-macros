#!/usr/bin/env bash

# The host you want to search for in the tabs
HOST_TO_FIND=$1

echo $HOST_TO_FIND

# AppleScript that tells Google Chrome to activate a tab with a specific host
# If no such tab is found, it opens a new tab with the provided URL
osascript <<EOF
tell application "Google Chrome"
    set found to false
    set targetURL to "https://$HOST_TO_FIND"
    if (count of windows) is 0 then
        make new window
        set found to true
        set URL of active tab of first window to targetURL
    else
        repeat with w from 1 to count of windows
            set tabsList to tabs of window w
            repeat with t from 1 to count of tabsList
                if URL of tab t of window w contains "$HOST_TO_FIND" then
                    set found to true
                    set active tab index of window w to t
                    set index of window w to 1
                    tell window w to set visible to true
                    exit repeat
                end if
            end repeat
            if found then
                exit repeat
            end if
        end repeat
    end if
    if not found then
        tell window 1 to make new tab with properties {URL:targetURL}
    end if
    activate
end tell
EOF