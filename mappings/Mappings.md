# Mappings

A mapping connects the terms or concepts listed in different semantic artifacts. A semantic artifact can be a 
vocabulary, dictionary, ontology, or maybe just a list. Mappings are often created to enable interoperability, data 
exchange, or integration between different systems, applications, or domains that use different terminology. 

## Realisation

The guidelines presented here are based on the 
[Ontology Development Kit](https://oboacademy.github.io/obook/tutorial/odk-tutorial-2/) and the included 
[tutorial on mappings using sssom](https://mapping-commons.github.io/sssom/tutorial/). 

For PaNET, each mapping to a semantic artifact will be handled in a separate csv file. Please use the template 
to create a new mapping. The csv file will be automatically transformed in a more interoperable owl file. 

The csv file allows to map terms and concept using the [skos](https://www.w3.org/TR/skos-reference/) terms
- Related Match (symmetric, associative mapping)
- Close Match (symmetric, partially interchangeable)
- Exact Match
- Narrow Match (hierarchical relationship)
- Broad Match (hierarchical relationship)
to facilitate detailed relationships.

If a PaNET term is related to a concept in another vocabulary, then the type of the relationship must be identified. 
A new line in the csv consists of 
- subject_id: e.g. `panet:PaNET00410_`
- subject_label: e.g. `medical application`
- predicate_id: e.g. `skos:exactMatch`
- object_id: often a url or alike, please define a prefix in the header; e.g. `wfl:1419` (instead of https://www.wayforlight.eu/technique/1419)
- object_label: e.g. `Medical application`
- mapping_justification: `semapv:ManualMappingCuration`
- author_id: your orcid using a prefix, e.g. `orcid:0000-0002-5850-4469`
- object_source_version: e.g. `10.17`
- mapping_date: in ISO 8601 format, e.g. `2025-11-12`
- confidence: number between 0 and 1, e.g. `1`

The template includes some extra information in angle brackets `<>` as well as an example line. Please replace or delete these when creating your own mapping.

## Example

```
# curie_map:,,,,,,,,,
#   panet: http://purl.org/pan-science/PaNET/,,,,,,,,,
#   rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#,,,,,,,,,
#   rdfs: http://www.w3.org/2000/01/rdf-schema#,,,,,,,,,
#   skos: http://www.w3.org/2004/02/skos/core#,,,,,,,,,
#   sssom: https://w3id.org/sssom/,,,,,,,,,
#   wfl: https://www.wayforlight.eu/technique/,,,,,,,,,
#   orcid: https://orcid.org/,,,,,,,,,
#   semapv: https://w3id.org/semapv/vocab/,,,,,,,,,
# license: https://creativecommons.org/licenses/by/4.0/,,,,,,,,,
# mapping_set_description: Manually curated alignment of the PaNET ontology with wayforlight.,,,,,,,,,
#   Intended to be used for ontological analysis.,,,,,,,,,
# mapping_set_id: mapping_WFL_PaNET_v1.0,,,,,,,,,
# mapping_set_version: '2025-11-12',,,,,,,,,
# object_source: https://www.wayforlight.eu/technique/,,,,,,,,,
# subject_source: https://expands-eu.github.io/ExPaNDS-experimental-techniques-ontology/index-en.html,,,,,,,,,
# ,,,,,,,,,
subject_id,subject_label,predicate_id,object_id,object_label,mapping_justification,author_id,object_source_version,mapping_date,confidence
panet:PaNET00410,medical application,skos:exactMatch,wfl:1419,Medical application,semapv:ManualMappingCuration,orcid:0000-0002-5850-4469,10.17,2025-11-12,1
```
