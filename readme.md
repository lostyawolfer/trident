# mods folder that is server-side
server is on Fabric 1.21.4<br>
mods that have to be installed client-side are marked with `##` in front of them. this sorts them down in server mod list, but will sort them up in client mod list so that people see what mods are from the server and what mods are their own. server-side mods are marked with `[server]` for clarification.<br>
- `[lib]` is short for library
- `[performance]` duh
- `[experimental]` not sure if will be in release, but i would want to include it
- `[gameplay]` is used by server-side mods that alter gameplay mechanics, generation, recipes or anything else gameplay-related in any way. this is needed to distingush those from "administrative" server-side mods, that are there for optimisations or decorations (ex. MiniMOTD, StyledPlyaerList, Lithium, ...)
- `[non-gameplay]` is used by mods that are both server- and client-side to distingush those from "gameplay" mods. as most both-side mods are "gameplay" anyway, this is inverted here. (ex. NoChatReports, PlayerLocatorPlus, Sit, ...). while those that are marked with `[non-gameplay]` can change things that are for gameplay (Sit and Universal Ores, for example), they are still marked as non-gameplay - as they don't change anything dramatic, like add mew items, blocks, mobs, etc; or they do - but it's nothing of significance.
- `[___] [lib]` a library that is needed for something that is of `[___]` mod class

## mods that seem not necessary client-side but actually are
- Carpet (needed only for 1 command in Trident Tweaks to work, which is necessary if someone makes a single-player world for example)
- NoChatReports (needed so that players don't GET THAT STUPID BANNER!!!!!!)
