# Steps for creating the game

## Players

- Create an asset group `Player`.
- Create sprite `s_player_1` in group `Player`.
    * Set size to 16x16.
    * Fill the rectanbgle, make a mark for "forward".
    * Set origin to middle centre.
- Create object `o_player_1` in group `Player`.
    * Assign `s_player_1` as its sprite.
    * Add event _Create_ to assign `move_speed`.
- Rename `Instances` layer to `Players` and place `o_player_1` onto it.


## Village level

Create a new asset group `VIllage` and keep all related resources there.

### Graphics

- Download and unpack village tileset `Sunnyside_World_ASSET_PACK_V2.1` from https://danieldiggle.itch.io/sunnyside?download.
- Create a new tileset sprite `tss_village`, import from `Sunnyside_World_ASSET_PACK_V2.1\Sunnyside_World_Gamemaker\tilesets\tileset_sunnysideworld\output_tileset.png`.
- Create a new tileset `ts_village`, use the imported sprite.
    * Set tile size 16x16, offset 2x2, separation 4x4.
    * Open _Editors_ -> _Brush Builder_ and create:
        - A brush for grass.
        - A brush for a tree.
        - A brush for a house.
        - An auto-tile (16) for path.
- Create a `GetMoveInput` script to convert key presses to `hspeed`/`vspeed`.
- Add a script to `o_player_1`s _Step_ event, call `GetMoveInput`. There set `hspeed` and `vspeed` according to the input keys.

### Village layout

- Rename `Room1` to `Village`
    * Set _Persistent_ flag
    * Set room size to 640x640 (40 tiles 16 px each)
    * Enable viewports
    * Make _Viewport 0_ visible
        - Camera properties: 320x240 @ 160x200
        - Viewport properties: 1920x980 @ 0x0
        - Object following: `o_player1`
        - Borders: 160x120
- Add new _Tiles_ layers: `Grass`, `Paths`, `Houses`.
- Select `Houses` layer, draw 4 houses at the ends of the paths (using a brush).
- Select `Grass` layer, in the _Room Editor_ tab select the tileset`ts_village`, draw grass using a brush.
- Select `Paths` layer, in the _Room Editor_ tab select the tileset`ts_village`, draw paths using a path.

### Add houses

- Create a sprite `s_house` 16x16. FIll it with any colour. Move the origin to 8x6 (if your house brush matches mine).
- Create an object `o_house` with this sprite. Make it not _Visible_.
- Add new _Instances_ layer `Obstacles` to the `Village` room.
- Put the `o_house` objects on top of the houses, resize as needed.
- Add a script to `o_player_1`'s _Collision_ -> `o_house` event. Move back and then use `move_and_collide` to limit the movement.


### Add goodies

- Download and unpack dungeon tilset `Dungeon Tileset II Extended` from https://nijikokun.itch.io/dungeontileset-ii-extended?download
- Create a new tileset sprite `ts_dungeon`, import from `dungeontiles-extended v1.1\dungeontiles-extended v1.1\dungeontileset-extended.png`.
- Create sprite `s_key` 16x16 and copy its image from `tss_dungeon`.
- Create sprite `s_chest_gold` 16x16 and copy its image from `tss_dungeon`.
- Create object `o_key` with sprite `s_key`.
- Create object `o_chest_gold` with sprite `s_chest_gold`.
- Place a key and a few chests around the _Village_ map on `Obstacles` layer.
- Create a sprite `s_entrance` 16x16, for the dungeon entrance.
- Create an object `o_entrance` with that sprite.
    * Add variable `is_open`, type `Boolean`, value `false`.
- Place an entrance object somewhere on the _village_ map.

## Dungeon levels

