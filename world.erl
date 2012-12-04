-module(world).
-export([create/0, add_player/2]).

create() -> { world, {players, []}, {mobs, []} }.

add_player(World, Player) ->
  { world, {players, P}, {mobs, M} } = World,
  { world, {players, [Player|P]}, {mobs, M} }.
