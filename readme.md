# trident!!!!
i have a mc server, and i had it for quite some time now. i had some custom tweaks, but they were all over the place. this repo is in goal of unifying all the tweaks i've ever done for trident smp and do some more!<br>
the main thing here is that we play with mods, but i want them to FEEL LIKE UPDATES instead of mods, so parity between all the feautres, all the necessary translations, and sometimes i have to fix obviously strange non-vanilla behavior to make it more "minecraftey" so to speak. so i'm trying to "fix" mods by modding them with a datapack. very genius of me lol

## dependencies
### actual dependencies (without which this mod won't work)
- styled playerlist
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
- philips ruins
- no chat reports
- sit
- universal ores
- connectible chains
- customizable elytra
- easy anvils
- easy magic
- packet fixer
- force tablist heads
- friends & foes

## credits
for some things that i did, i didn't do them myself, but, uhh, i'll be frank, stole them from someone and just added it to the datapack.<br>
this space is supposed to be a credit space for all of those.
- [True Ending: Ender Dragon Overhauled](https://modrinth.com/datapack/true-ending/versions) (seriously this thing is a fucking masterpiece)
- [Better Ender Dragon Boss Fight](https://www.planetminecraft.com/data-pack/better-ender-dragon-boss-fight/) (i changed it a little, and made it compatible with 1.21+, but still it's completely theirs) (yes i did combine multiple ender dragon modifications so what)
- [Jet's Better Exploration](https://modrinth.com/mod/jbe) (i stole his biome-based ore distribution logic hehe)
- [Lost Libraries](https://modrinth.com/datapack/lost-libraries/versions) (the lost libraries structure that is bundled in)

## special thanks (or not??)
- thanks [nullscape](https://modrinth.com/datapack/nullscape). been using it for quite some time now and when was playing with betterend still combined them for a masterful generation. while i did modify it just a little bit regarding advancements, your guys' license explicitly states i'm not allowed to add any version, modified or not, to a "datapack pack" which is basically what this mod is.
- thanks [end reborn](https://modrinth.com/mod/end-reborn). hands down the best *VANILLA-LIKE* mod for the end.
- [true ending](https://modrinth.com/datapack/true-ending/versions). it's a masterpiece. do i need to say anything else?
- [cavernous](https://modrinth.com/datapack/cavernous). vanilla-like MY ASS. fuck the expansions. if you have shit going on that's on the level of "The Myst" etc, it's cool and all, i really love it, it's not bad, it's actually great... but it's NOT a fucking VANILLA-LIKE DATAPACK. it WAS, before any expansions (and even then i had some questions regarding generation - i would've gotten rid of glowing mushrooms, for example), but now... it's anything but vanilla-like. say what you want, i'll DIE on that hill. just give me the fucking cave update bro. i HEAVILY modified it to remove EVERYTHING except underground villages (i would've copied some biomes too but i was too lazy to deal with adding them properly/removing other biomes properly), however as stated in its license i'm not allowed to add this modified version here, so a separate datapack it remains...

## current changelog
- gamerules
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
- biome-based ore distribution from jet's better exploration, table to which you may find [here](https://docs.google.com/spreadsheets/d/1BdCvVJP3CvlerC-nFlTZc4cjzYAnAbqMJudeDgCxwGw/edit)
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
- you can use a command to let your coordinates and world time to show in your actionbar (idea by vanilla tweaks, but my own implementation)
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
- end reborn's remnant material texture is now more distinct from netherite with some blue stuff on it
- trident's channeling enchant now has 5 levels
  - I: only on entities, only on open sky, only in thunder (vanilla channeling)
  - II: only on entities, only on open sky, in thunder and rain
  - III: only on entities, only on open sky, weather does not matter
  - IV: only on entities, anywhere (including other dimensions)
  - V: any landing anywhere causes it to spawn lightning, including after hitting an entity (mostly causing double-lightning, meaning more damage), and also hitting something directly with it will also cause the lightning to spawn (basically OP)
- custom music discs
- before beating the ender dragon, difficulty normal; after - difficutly hard
- before beating the ender dragon villages do spawn but all villagers are cursed - if you try to go near them, they get struck by lightning
- before beating the ender dragon, no sleeping through the night allowed; after - 50% online players required
- ender dragon is... well... based.

## todo
- maybe, *MAYBE* install terralith, but water it down a lot, and make it compatible with all the stuff with birch forests i have
- (i feel really really lazy about this) make wandering traders better (do something like thediamondplayables' "merchant" but not using a scripter so it's actually readable and maintainable and do it yourself not copying the actual datapack)
- (?) add an equivalent of sculk vial from jet's better exploration (prob not needed since friends & foes adds a mob that can store xp...)