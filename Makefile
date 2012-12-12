.SUFFIXES: .erl .beam

.erl.beam:
	erlc -W $<

ERL = erl -boot start_clean

MODS = world player

all: compile
	${ERL} -s world create

compile: ${MODS:%=%.beam}

clean:
	rm -rf *.beam erl_crash.dump