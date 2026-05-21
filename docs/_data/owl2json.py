from rdflib import Graph
import json

# Load the OWL file (RDF/XML format)
g = Graph()
g.parse("PaNET_reasoned.owl", format="xml")  # Replace with your file path

# Serialize to JSON-LD (standardized RDF-to-JSON format)
jsonld_data = g.serialize(format="json-ld")

# Save to a JSON file
with open("PaNET_reasoned.json", "w") as f:
    f.write(jsonld_data)

print("Conversion of PaNET_reasoned.owl complete! Output saved to PaNET_reasoned.json")
