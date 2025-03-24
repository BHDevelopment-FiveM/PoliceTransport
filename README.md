# BHDevelopment Police Transport

A FiveM resource that adds dynamic police transport missions to your server. Officers can transport criminal NPCs to jail and earn rewards for completing transports.

## Features

- Dynamic criminal NPC spawns at configurable locations
- Automated police NPC escorts
- Configurable vehicle models and spawn positions
- Support for both QB-Core and ox_lib notification systems
- Customizable blips and markers
- Customizable notifactions for diffrent languages
- Customizable rewards with bank or cash payments
- Reward system for completed transports
- Realistic jail drop-off mechanics with prison guard interaction
- Fully client and server synced for optimal player experience

## Dependencies

- QB-Core Framework
- ox_lib (optional - for alternative notification system)

## Installation

1. Ensure you have the required dependencies installed
2. Copy the `BHDevelopment_PoliceTransport` folder to your server's resources directory
3. Add `ensure BHDevelopment_PoliceTransport` to your server.cfg
4. Configure the script settings in `config.lua`
5. Restart your server

## Configuration

The script is highly configurable through the `config.lua` file. Key configuration options include:

- Notification System Selection (QB-Core or ox_lib)
- Criminal NPC Models and Spawn Locations
- Police Vehicle Models and Spawn Positions
- Jail Location and Drop-off Points
- Marker and Blip Settings
- Reward System Parameters

### Notable Configuration Options

```lua
Config.NotifySystem = 'qb'  -- 'qb' for QBCore, 'ox' for ox_lib
Config.CriminalSpawn = 5    -- Minutes between criminal spawns
Config.ShowMarkers = true   -- Toggle visual markers
```

## Usage

1. Players with police job can receive transport missions
2. Follow the GPS waypoint to locate the suspect
3. Approach the suspect to initiate transport
4. Drive the suspect to the designated jail location
5. Complete the drop-off process at the jail entrance
6. Receive reward upon successful completion

## Version

Current Version: 1.0.1

## Author

BH Development

## Support

For support or bug reports, please contact BH Development through their official channels.

## License

All rights reserved. This resource is provided as-is and may not be redistributed without permission from BH Development.
