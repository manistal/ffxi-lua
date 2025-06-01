# ffxi-lua

## Overview
Collection of Lua scripts for FFXI GearSwap addon.

### Core Files
- `common.lua` - Shared helper functions and utilities
- `TEMPLATE.lua` - Base template for creating new job files

### Functions

#### Common Utilities
- `set_macro(book, set)` - Set macro book and page
- `set_style(sheet)` - Set lockstyle sheet number
- `split_string(raw_str)` - Split string into table of words
- `test_equip(cmdArgs)` - Test equipment sets
- `bind_toggles(key, set_category)` - Bind keyboard toggles for gear sets

#### GearSwap Callbacks
- `precast(spell)` - Before spell/ability
- `midcast(spell)` - During spell cast
- `aftercast(spell)` - After spell completes
- `status_change(new,old)` - On status changes
- `buff_change(name,gain)` - On gaining/losing buffs
- `self_command(command)` - Custom commands

### Usage

1. Copy `TEMPLATE.lua` to create a new job file
2. Rename to match job (e.g. `WHM.lua`, `WAR.lua`)
3. Define gear sets in `get_sets()`
4. Implement required callbacks
5. Add job-specific logic

### Commands
- `/gs reload` - Reload GearSwap
- `/gs c test <category> <set>` - Test equipment sets
- `/gs c toggle <category>` - Toggle through gear sets

### Required Setup
- Windower 4
- GearSwap addon
- Job-specific gear sets defined

## Contributing
1. Fork repository
2. Create feature branch
3. Submit pull request