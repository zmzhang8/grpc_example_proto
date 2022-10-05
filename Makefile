# TARGET_LANG: dart, go

TARGET_LANG   ?= go
OUTPUT_DIR    ?= $(TARGET_LANG)_gens
PROTO_INCLUDE ?=
EXTRA_FLAGS   ?=
PROTOC        ?= protoc

FLAGS := -I.:$(PROTO_INCLUDE)
FLAGS += --$(TARGET_LANG)_out=$(OUTPUT_DIR)
ifeq ($(TARGET_LANG),go)
FLAGS += --$(TARGET_LANG)-grpc_out=$(OUTPUT_DIR)
endif
FLAGS += $(EXTRA_FLAGS)

SRC := $(shell find . -type f -name '*.proto')
ifneq ($(PROTO_INCLUDE),)
SRC += $(shell find $(PROTO_INCLUDE) -type f -name '*.proto')
endif

all:
	mkdir -p $(OUTPUT_DIR)
	$(PROTOC) $(FLAGS) $(SRC)

print:
	@echo FLAGS: ${FLAGS}
	@echo PROTOS: $(SRC)

clean:
	rm -r $(OUTPUT_DIR)