# Espanso replacement/expansions pack

This is a collection of files to use with [Espanso](https://espanso.org/)
Feel free to take these as inspiration or use them directly.

I created this repository because my expansions go beyond a more straightforward package and there are a few additional (free) tools that you'll need to use everything.

This repository is a subset of my full espanso list that has default placeholders for variables like names, domains, etc. *So be sure to edit those for yourself.*

If you use things like Zendesk, and the terminal, there are a good variety of replacements here. Please review the codebase before downloading to determine if this is a good fit for your workflows.

## Additional recommended tools
- Figlet
- Obsidian

### Figlet
Figlet is a command line tool that creates ASCII banners out of text strings. It is widely available in open source package managers, notably [Homebrew](https://brew.sh/). It is by no means a 'core' component of these replacements, but it is a fun tool to have in the bag.

### Obsidian
I don't think Obsidian needs much of an introduction here, but I have created a few replacements that work well when working in Obsidian. However, since they are shell-based, you may find use for them in other applications. [Obsidian is available here.](https://obsidian.md/)

# Installation

### (but first) A note on compatibility
This repository works *best on Linux and MacOS* computers with Espanso. If you are using Windows, you'll probably have to make extensive edits to the replacements that run shell commands.

Simply clone this repository and copy the contents of the directory to your Espanso configuration location.

By default these are located:
   **Linux**: `$XDG_CONFIG_HOME/espanso` (e.g. /home/user/.config/espanso)
    **macOS**: `$HOME/Library/Application\ Support/espanso` (e.g. /Users/user/Library/Application Support/espanso)
    **Windows**: `{FOLDERID_RoamingAppData}\espanso` (e.g. C:\Users\user\AppData\Roaming\espanso)


# Layout
## replacement trigger convention
#### Semi-colon leader for most triggers
This is definitely a personal preference, but I like to have my replacements accessed without the need to hold the shift key if possible. I have a few that use the Espanso-conventional colon (":") but they are generally reserved for more 'system-literal' types of actions.

## default config changes
- The shortcut key to disable/enable Espanso is mapped to the right alt key
- *Search shortcut* has been mapped to `ctrl alt space`
