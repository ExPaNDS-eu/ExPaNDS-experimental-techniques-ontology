TARGETS=mapping_WFL.csv

EDT_FILES=$(TARGETS:.csv=_edt.csv)
OWL_FILES=$(TARGETS:.csv=.owl)

all: ${EDT_FILES} ${OWL_FILES}


# TRANSFORM xy_mapping.csv TO xy_mapping.owl
# 1. format the header -> intermediate file xy_mapping_edt.csv
%_edt.csv: %.csv
	@echo "\n===== Formatting header for $@"
	cp $< $@
	sed -i '/^\# / s/,//g' $@


# 2 convert -> xy_mapping.owl
%.owl: %_edt.csv
	@echo "\n===== Convert $< to $@"
	sssom convert $< --output-format owl -o $@


# files are only intermediate: will be deleted automatically
.INTERMEDIATE: ${EDT_FILES} 


.PHONY: all
