# trident!!!!
i have a mc server, and i had id for quite some time now. i had some custom tweaks, but they were all over the place. this repo is in goal of unifying all the tweaks i've ever done for trident smp and do some more!<br>
the main thing here is that we play with mods, but i want them to FEEL LIKE UPDATES instead of mods, so parity between all the feautres, all the necessary translations, and sometimes i have to fix obviously strange non-vanilla behavior to make it more "minecraftey" so to speak. so i'm trying to "fix" mods by modding them with a datapack. very genius of me lol

## dependencies
- carpet
- better birch forest
- copper hopper
- azalea wood set

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
- wardens have their own bossbars (multiple, actually) (they also change color when warden is angry or not)
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
    - when you throw a respawn anchor at an end gateway you become "linked" to it and teleport there every time you enter the end
    - to unlink yourself you throw a chorus fruit on any end gateway
- totem of keeping (which doesn't yet have a way to be obtained) that when is in your inventory (unnecessary to hold it) if you die it pops but you keep your inventory after death
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

## todo
- better birch forest
    - remove pink petals from birch forests
    - make purple petals significantly rarer
    - add more flower types to the birch biomes
    - let small birch trees be the default with big ones being rare (kinda like oak)
    - let all of birch trees still use the vanilla minecraft:birch_leaves block
    - make the birchupdate:birch_leaves block into a "flowering birch leaves" which will be a rare decor for some birch trees
- better ender dragon
- get all of YUNG's cool structures to work using just datapack logic
- add a way to obtain the totem of keeping
- fix minecraft:sniffer_digging loot table and minecraft:sniffer_diggable_block block tag
- add an equivalent of skulk vial from jet's better exploration
- add a mechanic to let me as admin curate if people can or cannot enter end
- a way to track if the ender dragon is beaten or not
    - if it is not: difficulty normal, no villages allowed to spawn, all villagers get converted to zombie villagers
    - if it is: difficulty hard
- make wandering traders better (do something like thediamondplayables' "merchant" but not using a scripter so it's actually readable and maintainable and do it yourself not copying the actual datapack)
- fix wardens' loot table (which lets 'em drop echo shards and enchanted golden apples)
    - *possibly a chance for totem of keeping??*