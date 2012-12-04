-module(world).
-export([create/0]).

create() -> { world, {players, []}, {mobs, []} }.