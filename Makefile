SUBDIRS := java c
OUT_DIR=./out

.PHONY: $(SUBDIRS) clean

$(SUBDIRS):
	$(MAKE) -C $(MAKECMDGOALS)

clean:
	rm -rf $(OUT_DIR)