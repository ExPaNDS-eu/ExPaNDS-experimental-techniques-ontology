from rdflib import Graph
import json

# Load the OWL file (RDF/XML format)
g = Graph()
g.parse("PaNET.owl", format="xml")  # Replace with your file path

# Serialize to JSON-LD (standardized RDF-to-JSON format)
jsonld_data = g.serialize(format="json-ld")

# Save to a JSON file
with open("PaNET.json", "w") as f:
    f.write(jsonld_data)

print("Conversion of PaNET.owl complete! Output saved to PaNET.json")


# Load the OWL file (RDF/XML format)
g = Graph()
g.parse("PaNET_reasoned.owl", format="xml")  # Replace with your file path

# Serialize to JSON-LD (standardized RDF-to-JSON format)
jsonld_data = g.serialize(format="json-ld")

# Save to a JSON file
with open("PaNET_reasoned.json", "w") as f:
    f.write(jsonld_data)

print("Conversion of PaNET_reasoned.owl complete! Output saved to PaNET_reasoned.json")



# Load the Turtle file
g = Graph()
g.parse("PaNET_metadata.ttl", format="turtle")

# Serialize to JSON-LD
jsonld_data = g.serialize(format="json-ld", indent=2)

# Save to a file
with open("PaNET_metadata.json", "w") as f:
    f.write(jsonld_data)

print("Conversion PaNET_metadata.ttl complete! Output saved to metadata.json")
