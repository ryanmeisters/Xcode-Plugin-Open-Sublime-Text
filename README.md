Xcode Open In Sublime Text
==============================

![Open In Sublime Text](https://raw.githubusercontent.com/ryanmeisters/Xcode-Plugin-Open-Sublime-Text/master/Misc/OpenInSublimeText.gif)

Open In Sublime Text is a simple xcode plugin to quickly open a source file in Sublime Text from Xcode. Of course, you can just drag the file from the Xcode navigator onto the Sublime Text icon in your dock, but that's a lot of work. This plugin adds a `Open In Sublime Text` menu item to Xcode's Editor menu, which can be easily mapped to a convenient keyboard shortcut. 

![Open In Sublime Text Editor Menu](https://raw.githubusercontent.com/ryanmeisters/Xcode-Plugin-Open-Sublime-Text/master/Misc/OpenInSublimeTextMenu.png)


#Installation
1. Install the plugin. This can be done in 2 ways:

    1. Install [Alcatraz](http://alcatraz.io) and search for `OpenInSublimeText`, or
    2. Clone this repository, open `OpenInSublimeText.xcodeproj`, build, and restart xcode (This automatically installs the plugin at `~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/OpenInSublimeText.xcplugin`)
2. Assign a keyboard shortcut to `Open In Sublime Text` for Xcode in the OSX Keyboard System Preferences. 

-----
Supports Xcode 5 up to Xcode 7.2, Sublime Text 2, Sublime Text 3

###Known Limitations
- This plugin assumes that Sublime Text is installed in the Applications folder, i.e. `/Applications/Sublime Text.app` or `/Applications/Sublime Text 2.app`. 
- If both Sublime Text 2 and Sublime Text 3 are installed, Sublime Text 3 is used. 
