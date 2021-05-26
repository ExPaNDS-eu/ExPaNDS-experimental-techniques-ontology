# ExPaNDS Photon and Neutron Experimental Techniques (PaNET) ontology


The Photon and Neutron Experimental Technique (PaNET) ontology provides a taxonomy of experimental techniques relevant for the Photon and Neutron (PaN) community. This ontology is being developed as part of the [Work Package 3 on EOSC Data Catalogue Services for PaN national Research Infrastructures](https://expands-eu.github.io/WP1-reporting/reports-wp/reports-wp3.html) of the [ExPaNDS project](https://expands.eu/).


The ontology allows to add semantic tags to datasets, and other related research objects, to indicate the experimental technique(s) that was (or were) used to create them.

Citation: [10.5281/zenodo.4806026](https://doi.org/10.5281/zenodo.4806026)

This repository is structured as follows:
- the **doc** folder contains the ontology documentation
- the **meetings** folder contains documents related to the WP3 discussions on the ontology
- the **source** folder contains a CSV file with the list of experimental techniques and its relationships, which is used to generate the associated ontology file using the Web Ontology Language (OWL).


### Notes on Worflow


This workflow will be automated using CI in a next release.

The PaNET.owl is generated from an Excel/CSV file using [ROBOT](https://search.maven.org/artifact/org.obolibrary.robot/robot) software. 
Here are some instructions to generate the OWL file:
- if robot-1.8.1/bin/robot.jar does not exist: go to teh directory robot-1.8.1 and do mvn install.
- check robot-1.8.1/bin/robot.jar exists Then execute:
robot template --template PaNET.csv --ontology-iri 'http://purl.org/ExPaNDS/' --output PaNET.owl

After the PaNET.owl file has been generated, please follow the following steps: 

- Open PaNET_metadata.owl in Protégé
- Update metadata (version, created etc) and save
- Open PaNET techniques ontology created by ROBOT in current window
- Refactor/merge ontologies; select both ontologies; create new ontology; save file (ontology IRI http://www.purl.org/pan-science/PaNET/PaNET.owl )
- Start reasoner (e.g. HermiT)
- Export inferred axioms as ontology; tick all boxes and save to the final owl file; Ontology IRI:http://www.purl.org/pan-science/PaNET/PaNET.owl 
- Select file name; save as RDF/XML.
- Update the Widoco documentation


### Review process and release


At the moment, only one reviewer can approve and merge the changes to the master branch. Before any merge to the master branch, it is recommended to upload the new version of the OWL file to BioPortal to ensure that the file is correctly configured and displayed in BioPortal before any release. In each upload, BioPortal will check the validity of the file, convert it to other formats such as RDF and XML. After the merge to master, the PaNET ontology will automatically be updated on BioPortal over the night.






 
