# Steps for creating the game

## Players



## Village level

- Download and unpack village tileset `Sunnyside_World_ASSET_PACK_V2.1` from https://danieldiggle.itch.io/sunnyside?download
- Create a new tileset sprite `tss_village`, import from `Sunnyside_World_ASSET_PACK_V2.1\Sunnyside_World_Gamemaker\tilesets\tileset_sunnysideworld\output_tileset.png`
- Create a new tileset `ts_village`, use the imported sprite
    * Set tile size 16x16, offset 2x2, separation 4x4
    * Open _Editors_ -> _Brush Builder_ and create:
        - A brush for grass
        - A brush for a tree
        - A brush for a house
        - An auto-tile (16) for path
- Rename `Room1` to `Village`
    * Set _Persistent_ flag
    * Set room size to 640x640 (40 tiles 16 px each)
    * Enable viewports
    * Make _Viewport 0_ visible
        - Camera properties: 320x240 @ 160x200
        - Viewport properties: 1920x1080 @ 0x0
        - Object following: o_player1
- Add a new _Tiles_ layer
- In the _Room Editor_ tab select the tileset`ts_village`.
- Draw the level

## Dungeon levels

- Download and unpack dungeon tilset `Dungeon Tileset II Extended` from https://nijikokun.itch.io/dungeontileset-ii-extended?download
