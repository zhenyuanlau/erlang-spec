.PHONY: clean compile start

compile: clean src/*.erl
	@cp src/uba.app.src ebin/uba.app
	@erl -make
start: compile
	@erl -boot start_sasl -pa ebin/ -config config/sys.config
clean:
	@rm -fr ebin/*.beam erl_crash.dump logs/*.log
