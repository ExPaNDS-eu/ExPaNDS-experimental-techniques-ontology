#TARGETS=mapping_WFL.ttl mapping_V4C.ttl
TARGETS=mapping_WFL.ttl

all: ${TARGETS}

clean:
	rm -f ${TARGETS}

%.ttl: %.csv
	robot \
	    template \
	        --template mapping_WFL.csv \
	        --prefix "panet: http://purl.org/pan-science/PaNET/" \
	        --prefix "skos: http://www.w3.org/2004/02/skos/core#" \
	        --prefix "wfl: https://www.wayforlight.eu/catalogue?Techniques=" \
	        --add-prefix "panet: http://purl.org/pan-science/PaNET/" \
	        --add-prefix "skos: http://www.w3.org/2004/02/skos/core#" \
	        --add-prefix "wfl: https://www.wayforlight.eu/catalogue?Techniques=" \
	        --output mapping_WFL.ttl
	        
.PHONY: all
