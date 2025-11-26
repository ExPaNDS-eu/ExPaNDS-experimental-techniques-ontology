# ExPaNDS Photon and Neutron Experimental Techniques (PaNET) ontology

The Photon and Neutron Experimental Technique (PaNET) ontology provides a taxonomy of experimental techniques relevant for the Photon and Neutron (PaN) community. This ontology is being developed as part of the [Work Package 3 on EOSC Data Catalogue Services for PaN national Research Infrastructures](https://expands-eu.github.io/WP1-reporting/reports-wp/reports-wp3.html) of the [ExPaNDS project](https://expands.eu/).


The ontology allows to add semantic tags to datasets, and other related research objects, to indicate the experimental technique(s) that was (or were) used to create them.

See the associated deliverable on the ExPaNDS ontologies at [10.5281/zenodo.4806026](https://doi.org/10.5281/zenodo.4806026).

To cite the deliverable, please use:

``Collins, Steve P., da Graça Ramos, Silvia, Iyayi, Daniel, Görzig, Heike, González Beltrán, Alejandra, Ashton, Alun, Egli, Stefan, and Minotti, Carlo. “Expands Ontologies V1.0”. Zenodo, June 4, 2021. doi:10.5281/zenodo.4806026.``

You can see the PaNET ontology documentation at: https://expands-eu.github.io/ExPaNDS-experimental-techniques-ontology/index-en.html

You can also browse the PaNET ontology in BioPortal: https://bioportal.bioontology.org/ontologies/PANET

The ontology is provided using the [CC-BY 4.0license](https://creativecommons.org/licenses/by/4.0/).

This repository is structured as follows:
- the **meetings** folder contains documents related to the WP3 discussions on the ontology,
- the **source** folder contains a CSV file with the list of experimental techniques and its relationships, which is used to generate the associated ontology file using the Web Ontology Language (OWL),
- the **releases** folder contains the different releases of the PaNET ontology,
- the **gh-pages** branch contains the ontology documentation (produced automatically by a GitHub action).

### Notes on Workflow

This workflow will be automated using CI in a next release.

The PaNET.owl is generated from an Excel/CSV file using [ROBOT](https://search.maven.org/artifact/org.obolibrary.robot/robot) software. 
Here are some instructions to generate the OWL file:
- if robot-1.8.1/bin/robot.jar does not exist: go to teh directory robot-1.8.1 and do mvn install.
- check robot-1.8.1/bin/robot.jar exists Then execute:
robot template --template PaNET.csv --prefix "PaNET:http://purl.org/pan-science/PaNET/" --ontology-iri "http://purl.org/pan-science/PaNET" --output PaNET.owl

After the PaNET.owl file has been generated, please follow the following steps: 

- Open PaNET_metadata.owl in Protégé
- Update metadata (version, created etc) and save
- Open PaNET techniques ontology created by ROBOT in current window
- Refactor/merge ontologies; select both ontologies; create new ontology; save file (ontology IRI http://www.purl.org/pan-science/PaNET/PaNET.owl )
- Start reasoner (e.g. HermiT)
- Export inferred axioms as ontology; tick all boxes and save to the final owl file; Ontology IRI:http://www.purl.org/pan-science/PaNET/PaNET.owl 
- Select file name; save as RDF/XML.
- Update the Widoco documentation - this step is done automatically relying on a GitHub Action. 


### Review process and release


At the moment, only one reviewer can approve and merge the changes to the master branch. Before any merge to the master branch, it is recommended to upload the new version of the OWL file to BioPortal to ensure that the file is correctly configured and displayed in BioPortal before any release. In each upload, BioPortal will check the validity of the file, convert it to other formats such as RDF and XML. After the merge to master, the PaNET ontology will automatically be updated on BioPortal over the night.


## Restructuring of the ontology


The ontology has since undergone a major revamp of its internal structure. Specifier classes and Object Properties have been added. The specifier classes were created by identifying technique classes that act as umbrella terms for more specific techniques. For example, 'scattering technique' has the associated specifier 'scattering'. The specifier classes are defined using subclass axioms.

In the original version of PaNET, all technique classes were defined using subclass axioms. In the restructured version, there are generally three types of axioms used to define the technique classes:

| Axiom Type | Technique | Equivalent | Subclass |
| -------- | -------- | ------- | ------- |
| Axiom 1 | Technique A | 'Object Property 1' some 'Specifier A' |  |
| Axiom 2 | Technique B | 'Technique A' and 'Technique D' |  |
| Axiom 3 | Technique C |  | Technique B |


The 'umbrella' technique classes, represented by Technique A above, have been redefined in terms of Object Properties and specifier classes. This enables the underlying implicit relationships to be made explicit and formalized. All other technique classes, represented by Techniques B and C, are defined in terms of other techniques using a mix of subclass and equivalence axioms. A stronger logical statement (Axiom 2) is generally preferred over a weaker one (Axiom 3) because the former allows a reasoner to make a greater number of inferences, thereby enhancing the completeness of the technique taxonomy. However, there are situations in which a strong logical definition is inappropriate, and in those cases, a weaker statement like the subclass axiom is used instead to capture necessary domain knowledge.

Full details of the restructuring can be found in this paper: https://doi.org/10.1107/S1600577525005272.

While the implementation of the restructuring has seen some changes since the paper's publication, the underlying principle and the core logical changes described in the paper remain accurate.

Key outcomes of the restructuring:

1. The ontology is easier to maintain for the PaNET support team due to the automatic reasoning of subclass relationships replacing manual definitions.
2. The completeness of the technique taxonomy is improved for users of PaNET, improving data discoverability.
