#!/usr/bin/env bash

# exists files "/Applications/Install macOS Catalina Beta.app/Contents/Resources/createinstallmedia"

cd /tmp

# create a DMG to create the install media within
bash -c "hdiutil create -o /tmp/Catalina -size 7900m -volname Catalina -layout SPUD -fs HFS+J"

# mount it
bash -c "hdiutil attach /tmp/Catalina.dmg -noverify -nobrowse -mountpoint /Volumes/Catalina"

# createinstallmedia inside created volume
# does this have a -nobrowse option? This appears on the desktop when run in terminal interactively (does not seem like it)
# Consider `--downloadassets` ?  https://scriptingosx.com/2018/10/include-assets-in-external-macos-installer-drives/
bash -c "sudo /Applications/Install\ macOS\ Catalina\ Beta.app/Contents/Resources/createinstallmedia --volume /Volumes/Catalina --nointeraction"

# unmount/eject
# get this path dynamically with relevance instead?
bash -c "hdiutil detach /volumes/Install\ macOS\ Catalina\ Beta"

# convert from DMG to ISO (cd format)
bash -c "hdiutil convert /tmp/Catalina.dmg -format UDTO -o /tmp/Catalina.cdr"

# rename
bash -c "mv /tmp/Catalina.cdr /tmp/Catalina.iso"

# ???
# unmount/eject:  /Volumes/Catalina   (seems like this is already handled by createinstallmedia step)
#        delete:  /tmp/Catalina.dmg

# Related:  https://github.com/munki/macadmin-scripts/blob/master/installinstallmacos.py
# Related:  https://robservatory.com/install-macos-10-15-catalina-in-a-fusion-virtual-machine/
