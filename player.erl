-module(player).
-export([create/1]).

create(Name) -> { player, {name, Name}, {score, 0} }.