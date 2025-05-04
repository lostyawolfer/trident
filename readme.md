# trident!!!!
i have a mc server, and i had it for quite some time now. i had some custom tweaks, but they were all over the place. this repo is in goal of unifying all the tweaks i've ever done for trident smp and do some more!<br>
the main thing here is that we play with mods, but i want them to FEEL LIKE UPDATES instead of mods, so parity between all the feautres, all the necessary translations, and sometimes i have to fix obviously strange non-vanilla behavior to make it more "minecraftey" so to speak. so i'm trying to "fix" mods by modding them with a datapack. very genius of me lol

## dependencies
### actual dependencies
- carpet
- better birch forest
- copper hopper
- azalea wood set
- end reborn

### dependencies that are there because it's a part of the mod list
- ping wheel
- player locator plus
- potion cauldron
- simple voice chat
- what are they up to
- (experimental) philips ruins
- no chat reports
- sit
- universal ores
- connectible chains
- customizable elytra
- easy anvils
- easy magic
- packet fixer (just in case)

## credits
for some things that i did, i didn't do them myself, but, uhh, i'll be frank, stole them from someone and just added it to the datapack.<br>
this space is supposed to be a credit space for all of those.
- [True Ending: Ender Dragon Overhauled](https://modrinth.com/datapack/true-ending/versions) (seriously this thing is a fucking masterpiece)
- [Better Ender Dragon Boss Fight](https://www.planetminecraft.com/data-pack/better-ender-dragon-boss-fight/) (i changed it a little, but still it's completely theirs)
(yes i did combine multiple ender dragon modifications so what)

## current changelog
- gamerules
    - randomTickSpeed = 10
    - mobExplosionDropDecay = false
    - blockExplosionDropDecay = false
    - doInsomnia = false
    - playersNetherPortalDefaultDelay = 20
- hostile monsters mobcap is at 40 (using carpet mod)
- worldborder is at 50k / -50k in all directions in all dimensions
- everyone's first spawn is random within said border (instead of everyone spawning in the same place)
- everyone's health is displayed under nickname and also in tab
- wardens have their own bossbars (they also change color when warden is angry or not)
- end crystals in the end have their special bossbar too
- items can be picked up significantly faster after dropping them
- items dropped on death have their lifespan expanded and they also glow through walls
- arrows
    - mobs' arrows can now be picked up
    - infinity arrows now disappear upon getting onto the ground
- peoples' name color depends on the dimension they're in
    - in the end, if there is and ender dragon, shows current fight type (amount of crystals / sword if none)
- when you get damage there are blood particles (and when you're low on health you have the blood constantly)
- elytras that spawn in end cities are always broken, you have to fix them before usage
- when falling into void in the end you get teleported at the same position to world height limit (and vice versa)
- my own implementation of someone's (i really don't remember whose idea was that) end gateway warp
    - when you throw a crystalline shard (end reborn) at an end gateway you become "linked" to it and teleport there every time you enter the end
    - to unlink yourself you throw a chorus fruit on any end gateway
- totem of keeping that when is in your inventory (not required to hold it) if you die it pops but you keep your inventory after death
- xp that you drop on death is not less than you had, you retain all the xp there was (instead of 99 -> ~7 you stay at 99 -> 99 levels)
- when you die you get shown your death count as a title
- stonecutter deals damage when stepping on it
- you can use a command to let your coordinates and world time to show in your actionbar (from vanilla tweaks but customized)
- recipes
    - all wood types have a bunch of recipes for stonecutter (including better birch forest's hollow logs)
    - smelt rotten flesh to get leather
- chiseled bookshelves are now enchantement power providers
- transparent blocks are now enchantment power transmitters
- things like chains and glow lichens are now climbable
- copper hopper minecart recipe is now shapeless
- copper hopper recipe is now standalone instead of relying on vanilla minecraft:hopper
- negated better birch forest's strange sky, grass and water color changes
- better birch forest has a hollow option for bamboo blocks, but i changed that to azalea logs
    - this is mostly motivated by how it doesn't have hollow logs for nether woods, and i thought bamboo block wasn't worthy of it either, considering it wasn't even exactly an actual wood type; instead, because i have a special tree type mod, i thought to add a parity thingy for it to immerse more
- small birch trees be the default with big ones being rare (kinda like oak)
- all of birch trees still use the vanilla minecraft:birch_leaves block
- birchupdate:birch_leaves block is now a "flowering birch leaves" instead which will be a rare decor for some birch trees
- birch forests from birchupdate no longer spawn pink petals
- purple petals in birch forests are significantly rarer
- white alliums are now rarer in birch forests
- other flower types are allowed to spawn
- cattails are now reeds just because i feel like it
- i could not figure out what the birchupdate:corndog was for so i made it a reed topping
- end reborn's iron ore and crystalline blocks are now a little more common
- end reborn's "end remains" structure chest's loot table contains totem of keeping
- instead of elytra spawning in end cities it spawns a single elytra wing that is also deprived of durability
- achievements "first of many", "tenth of many" and challenge "hundredth of many" for death counts
- ender dragon is... well... based.

## todo
- make the better birch forest reed (and its topping) useful
- better ender dragon
- get all of YUNG's cool structures to work using just datapack logic
- add an equivalent of skulk vial from jet's better exploration?
- ore distribution from jet's better exploration?
- add a mechanic to let me as admin curate if people can or cannot enter end
- a way to track if the ender dragon is beaten or not
    - if it is not: difficulty normal, no villages allowed to spawn, all villagers get converted to zombie villagers
    - if it is: difficulty hard
- make wandering traders better (do something like thediamondplayables' "merchant" but not using a scripter so it's actually readable and maintainable and do it yourself not copying the actual datapack)
- fix wardens' loot table (which lets them drop echo shards and enchanted golden apples)
    - *possibly a chance for totem of keeping??*
- achievements 12h: "still standing"; 24h: "mindful mining"; challenge 48h: "touch some grass"; challenge 7d: "are you playing hardcore or something?" for not dying for some time
- achievement challenge "dumb ways to die" for dying in every way possible
- add a fancy onboarding room for starting the server for the first time
    - timers and stuff
- make sure all the gamerules that you want are followed
- channeling on tridents should have levels that let them have more flexibility, with, for example, channeling IV you can just throw a trident anywhere at any time and regardless of if there is a mob there or not it strikes
- wait until end reborn updates with russian and ukrainian translation; wait until it also updates texture of remnant materials (or do it myself)
