# sudo apt install python3-rdflib 

from rdflib import Graph, Namespace, Literal, URIRef
from rdflib.namespace import RDF, RDFS, SKOS

# Get technique specific information from WFL data base
db_techniques = []
with open('wfl-select2-data.sql') as f:
    while line := f.readline():
        if "Techniques" in line:
            fmtd_line = line.strip('\n').split('\t')
            db_techniques.append(fmtd_line)


# Prepare TTL generation
# Create a blank graph
g = Graph()

# Define and bind namespaces
# ns should end with "/" or "#", however the actual working link is https://www.wayforlight.eu/catalogue?Techniques=_
wfl_base = "https://www.wayforlight.eu/technique/"
g.bind("wfl",  Namespace(wfl_base))

for technique in db_techniques:
    id, pid, name, pname, fullname, grp = technique

    # Add name
    subj = URIRef(  wfl_base + id )
    pred = URIRef(  RDFS.label )
    obj  = Literal( name )
    g.add((subj, pred, obj))

    # Add type
    pred = URIRef(  RDF.type )
    obj  = URIRef(  SKOS.Concept )
    g.add((subj, pred, obj))

    # Add link
    pred = URIRef(  RDF.HTML )
    obj  = Literal( wfl_base + id )
    g.add((subj, pred, obj))

    # Add parent, if applicable (pid not "0")
    if pid == "0": 
        continue
    pred = URIRef(  RDFS.subClassOf )
    obj  = URIRef(  wfl_base + pid )
    g.add((subj, pred, obj))


g.serialize(destination="WFL_ontology.ttl", format="turtle")