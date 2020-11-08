SRC = $(shell find src/ -type f -name '*.sh')
OUT = bash_programing.sh
BASHFILE = ~/.bash_profile

all:
	cat global_var.sh > $(OUT)
	cat bp_condition.sh >> $(OUT)
	for file in $(SRC); do \
			cat $$file >> $(OUT); \
			echo >> $(OUT); \
	done

install:

ifeq ("$(wildcard $(OUT))","")
		$(error $(OUT) not found. Try: make)
endif

	echo "\n[[ -e $(shell pwd)/$(OUT) ]] && source $(shell pwd)/$(OUT)" >> $(BASHFILE)

clean:
	rm -rf bash_programing.sh

uninstall:
	sed -i .bak "/bash_programing\.sh/d" $(BASHFILE)
