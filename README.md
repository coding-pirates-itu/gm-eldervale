# Echoes of Eldervale

RPG made in GameMaker.

## Idea

ChatGPT supplied the following details.

A mysterious corruption spreads from the depths of ancient dungeons into the peaceful village of Eldervale. Two heroes must uncover the source, cleanse the dungeons, and restore balance.

### Playable characters

You can either switch between them or control both simultaneously with separate keys (e.g., WASD for one, arrow keys for the other).

| Character | Role / Abilities | Strengths | Weaknesses |
|-----------|------------------|-----------|------------|
| Lyra | Forest Guardian – ranged attacks, healing | Long-range, heals ally | Low defense, slow movement
Bran | Village Blacksmith – melee tank | High HP, strong melee damage | No ranged attack, slow recovery

Synergy Tip: Lyra can heal Bran after combat, while Bran protects Lyra from close-range enemies.

###  Game levels

#### 1. Village of Eldervale (hub level)

Peaceful starting area with NPCs, shops, and quest givers.

Quests:
- Upgrade gear
- Learn new abilities
- Gather lore.

Mini-quests:
- Help villagers
- Find lost items
- Unlock dungeon entrances.

#### 2. Dungeon level 1: Forgotten catacombs

Enemies: Skeletons, rats, cursed spirits.

Puzzle: Find keys to open sealed doors.

Goal: Defeat the mini-boss guarding the first Corruption shard.

#### 3. Dungeon level 2: Crystal caverns

Enemies: Ice elementals, cave trolls.

Puzzle: Light crystal paths in correct order.

Environmental hazard: Slippery terrain affects movement.

Goal: Defeat the mini-boss guarding the second Corruption shard.

#### 4. Dungeon level 3: Ember depths

Enemies: Fire demons, lava slimes.

Puzzle: Time-based platforming over lava.

Goal: Destroy the corrupted forge powering the dungeon.

## Winning condition

To win the game, players must:
- Cleanse all dungeon levels by defeating their bosses.
- Collect three Corruption Shards and bring them to the village shrine.
- Complete the final ritual, which triggers a cinematic ending and restores peace to Eldervale.

## Bonus Ideas

Add a final boss battle in a hidden dungeon unlocked only if both characters reach max level or complete all side quests.

Switching mechanic: If you go with character switching, you can design puzzles that require one character’s ability (e.g., Lyra heals a dying tree to open a path).

Dialogue system: NPCs react differently depending on which character is active.

Simple inventory: Potions, keys, and gear upgrades—easy to implement in GameMaker.


## Minimal skill set

### Lyra (Ranged Healer)

- Basic Attack – Shoots a magic projectile.
- Heal Ally – Restores a small amount of HP to Bran.
- Nature Pulse – Area-of-effect (AoE) burst that damages nearby enemies.

### Bran (Melee Tank)

- Basic Attack – Sword slash.
- Shield Block – Reduces incoming damage for a short time.
- Power Slam – Heavy melee attack that stuns enemies briefly.


## Minimal item set

| Item Type | Example | Purpose |
|-----------|---------|---------|
| Health Item | Healing Potion | Restores HP |
| Mana Item | Energy Elixir | Restores skill usage (if limited) |
| Key Item | Dungeon Key | Unlocks doors or boss rooms |
| Upgrade Item | Iron Shard / Herb | Used to improve gear or skills |

Optional:
- Quest Item – e.g., “Ancient Rune” for story progression.
- Buff Item – e.g., “Speed Tonic” for temporary movement boost.


## Level sizes

- Village: 40x40 to 60x60
  * Buildings: 6x6
- Dungeons: 30x30 to 50x50
  * Rooms: 6x6 to 10x10, must fit the screen
  * Corridors: 3 tiles wide
- Puzzle and boss rooms: 10x10 to 15x15


## Assets

http://www.openpixelproject.com/
