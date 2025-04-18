### Advanced Spaceship Repair

This mod enhance repairing entities capability on space platform for war effort.

- The spaceship is able to repairs 24 entities using 24 repair pack every 3 seconds. (Configurable, 6 - 48)    
- 1 durability = 1 HP. 1 normal repair pack = 300 HP. It ALWAYS consume 1 pack for each repair.
- modded / quality repair pack with over 1500 durability is capped at 1500. Extra durability is consumed as waste. (Epic is 1200, Legendary is 1800)
- It queue damaged entity with 50% health or lower. (Configurable, 25% - 75%)
- It stops repairing when health is over 90% to reduce waste. The remaining repairs slowly by base game repairing mechanic.


#### Acceptable Entities for Batch Repair
```
    {filter="turret", mode = "or"},
    {filter="crafting-machine", mode = "or"},
    {filter="transport-belt-connectable", mode = "or"},
    {filter = "type", type = "unit", mode="or"},
    {filter = "type", type = "inserter", mode="or"},
    {filter = "type", type = "asteroid-collector", mode="or"},
```