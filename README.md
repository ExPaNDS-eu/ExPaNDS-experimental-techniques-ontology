# ExPaNDS-experimental-techniques-ontology 
EU Photon and Neutron Experimental technique Ontology.
This ontology is part of WP3 (Data Catalogue) ExPaNDS project.

### Notes

Robot software available at https://search.maven.org/artifact/org.obolibrary.robot/robot (currently using v1.8.1)

Create a template before generating first in Excel and then convert it to a CSV file.

The executable is located at robot-1.8.1/bin/robot
If robot-1.8.1/bin/robot.jar does not exist:
- go to the directory robot-1.8.1
- mvn install
- check robot-1.8.1/bin/robot.jar exists
Then execute:  
robot template --template synchrotron_techniques.csv --ontology-iri 'http://purl.org/ExPaNDS/' --output synchrotron_techniques.owl

A owl file will be created as synchrotron_techniques.owl
