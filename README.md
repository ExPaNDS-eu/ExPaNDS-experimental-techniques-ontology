# Photon and Neutron Experimental Techniques (PaNET) ontology

The Photon and Neutron Experimental Technique (PaNET) ontology provides a taxonomy of experimental techniques relevant for the Photon and Neutron (PaN) community. The ontology allows to add semantic tags to datasets, and other related research objects, to indicate the experimental technique(s) that was (or were) used to create them.

This ontology was initiated as part of the [Work Package 3 on EOSC Data Catalogue Services for PaN national Research Infrastructures](https://expands-eu.github.io/WP1-reporting/reports-wp/reports-wp3.html) of the [ExPaNDS project](https://expands.eu/). Currently, the ontology is further developed by in-kind contributions of several PaN facilities across Europe.


## Get in Contact

### Regular Meetings

- every Thursday 10:00 CEST
- [details](https://indico.desy.de/category/1163/)

### Subscribe to our Mailing Lists

There are two mailing lists for different purposes available. The **Announcement List** will provide detailed information on releases and will only be sent once or twice a year. It is dedicated to service providers that use PaNET. The **Maintenance List** is used to invite to the weekly meetings and announce the agendas. It can also be used to initiate discussions and highlight open issues.


1. Go to the public page of the mailing list ([Announcement](https://lists.desy.de/sympa/subscribe/panet-announce?previous_action=info)), [Maintenance](https://lists.desy.de/sympa/subscribe/panet-maintenance?previous_action=info)).
2. Enter your email address and name.
3. Press the blue button "I subscribe to list panet-announce".
4. The page updates and you need to confirm (blue button).
5. You receive a mail by SYMPA with the title "DESY Mailing lists services" and including a link. Click it.
6. A German text asks you to confirm your subscription by clicking the button "Bestätigen" while the "Abonnieren" is marked with a checkmark.
7. You receive a welcome mail by panet-announce-request@desy.de


## References

- Deliverable on the ExPaNDS ontologies at [10.5281/zenodo.4806026](https://doi.org/10.5281/zenodo.4806026): 
  ``Collins, Steve P., da Graça Ramos, Silvia, Iyayi, Daniel, Görzig, Heike, González Beltrán, Alejandra, Ashton, Alun, Egli, Stefan, and Minotti, Carlo. “Expands Ontologies V1.0”. Zenodo, June 4, 2021. doi:10.5281/zenodo.4806026.``

- Journal Article on PaNET 2.0 [10.1107/S1600577525005272](https://doi.org/10.1107/S1600577525005272): ``Tan, T., Bago, B., Busch, S., Duyme, R., Gaisne, G., Gonzalez Beltran, A. N., Gorzig, H., Koumoutsos, G., Krahl, R., Millar, P., Minotti, C., Nentwich, M., Schrettner, L., Syder, K., Rocca-Serra, P., Sansone, S.-A. & Collins, S. P. (2025). J. Synchrotron Rad. 32, 1361-1369.``

## Browse PaNET

- [PaNET ontology specification](https://pan-ontologies.github.io/PaNET/index-en.html)
- [BioPortal](https://bioportal.bioontology.org/ontologies/PANET)

## Licence

The ontology is provided using the [CC-BY 4.0license](https://creativecommons.org/licenses/by/4.0/).

## Structure of the repository

This repository is structured as follows:
- the **meetings** folder contains documents related to the WP3 discussions on the ontology,
- the **source** folder contains a CSV file with the list of experimental techniques and its relationships, which is used to generate the associated ontology file using the Web Ontology Language (OWL),
- the **releases** folder contains the different releases of the PaNET ontology,
- the **gh-pages** branch contains the ontology documentation (produced automatically by a GitHub action).

## Notes on Workflow

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


## Review process and release


At the moment, only one reviewer can approve and merge the changes to the master branch. Before any merge to the master branch, it is recommended to upload the new version of the OWL file to BioPortal to ensure that the file is correctly configured and displayed in BioPortal before any release. In each upload, BioPortal will check the validity of the file, convert it to other formats such as RDF and XML. After the merge to master, the PaNET ontology will automatically be updated on BioPortal over the night.
