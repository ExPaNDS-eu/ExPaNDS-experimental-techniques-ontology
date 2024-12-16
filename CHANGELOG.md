# Changelog for version 1.2.0
## Summary
Modification of PaNET01236, PaNET01106, PaNET01196
- PaNET01236: 'neutron single crystal diffraction' now subclass of 'neutron diffraction'
- PaNET01106: 'imaging' no longer subclass of 'defined by functional dependence'
- PaNET01196: 'x-ray absorption spectroscopy' now a subclass of 'x-ray absorption'

## gitlog entry
1ef8c35eae52f884e389f3c4936a9ffbb46b6254 (HEAD -> master, origin/master, origin/HEAD) ISS-112
b3d9ec42775938ad8577785d97429af6f8fb9655 Fix two validation errors in PaNET_metadata.ttl (#145)
4fab3dce793530ca84ab27a5f182da47d11dd935 Add workflow job to validate PaNET_metadata.ttl (#146)
f2a588bfecc785da59c4cd4e02623babacc28ba9 Add text declaration of files (#147)
53a8f5b9cc67b6b5f2f174f9344a6d27f99688f9 Add example of PaNET being used
dc00bc2b5cb42fefe5e74da09a3ec0f57717403e Remove named individuals
b4e5ed1e2a1fdfa751fe2dc0f73245ffb67ddcd9 Change line ending from DOS- to Unix-style.
991415dddd1aae7f6c650a975c7686bd2ab5f1d9 Teach git to ignore panet-build generated output
dfce0a0d9de7dc08ba9d8cfe1bb0f231ed6e5e78 Generate reasoned version of PaNET
a4e3f5c6e0fd2f9ed368487649e3eb03f9ec140e Add Paul Millar as a creator
75bed029ca5f54357ddb4fefa534b3e9ad77b1a6 Remove version information from PaNET metadata
c6565cead3702eb5d2f0b8ccfb53116dfc9f7ac7 Remove generated PaNET.owl file
f77b97566fe4ba591daf2b17fc4c262edc8479cd Create new GitHub Workflow to automate certain tasks
53e4b1c636461605f4be7f7262d7280577bc0004 remove redundant ontology metadata file
2f215d287919e83178930700eeb3cf21b7d1b9cc remove releases/latest-release/PaNET.owl (#103)

# Changelog for version 1.1.0

## Minor enhancements and bug-fixes.

- http://purl.org/pan-science/PaNET/PaNET01146:

Change label to 'photoemission electron microscopy' for better consistency with community usage.

- http://purl.org/pan-science/PaNET/PaNET01107 (inelastic small angle scattering):

Fix typo in label

- http://purl.org/pan-science/PaNET/PaNET01125 (spectroscopy):

Remove equivalence to 'versus energy' as this wrongly classifies MAD as spectroscopy.

- http://purl.org/pan-science/PaNET/PaNET01124 (small angle scattering):

No longer a subclass of 'diffraction' (which was an error).

- Internal update: Add disjoint classes to Robot CSV file for easier implementation of disjoints.

- http://purl.org/pan-science/PaNET/PaNET01034 ('inelastic scattering') & http://purl.org/pan-science/PaNET/PaNET01020 ('elastic scattering')

Now defined as being disjoint classes.
