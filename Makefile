

SUBDIRS=$(patsubst %/Makefile,%/fake_target,$(wildcard */Makefile))


all: subdirs


subdirs: $(SUBDIRS)


%/fake_target:
	@echo Building $(patsubst %/fake_target,%,$@)
	@make -C $(patsubst %/fake_target,%,$@)


