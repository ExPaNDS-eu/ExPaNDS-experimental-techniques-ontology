# Changelog for version 1.3.0
## Summary
  * Introduction of specifiers concept with initial usage (thanks Terence)
  * New terms:
    * microtomography
    * MHz x-ray spectroscopy
  * Various misc tidy-up of relationships
  * New PaNET logo added
  * Update of the metadata.

## gitlog entry
0f1c4e224b4eb08549f5f0251137fd4c84febb29 (HEAD -> master, upstream/master, upstream/HEAD) Update CI/CD to use panet-build to v0.10
298c889d644932125883ed62553386054e9878fb Update GitHub CI/CD to use panet-build v0.9
d91fd51a5af33024200a286130164c90d0452eac Update README.md
07821502e0a5a2e2e319d57c4cff4519b7618bb2 Update PaNET_metadata.ttl
547642c28173bb42ad2399439c0cbaea1f4abae5 (terence/master) Update technique classes
b9c817b27756242f5666b368f5a5fda1bb32a3ea Changed parent class for PaNET01025
46e729eae24d320f8194e8b5e4fd06c74f95fb3d Add 'x-ray probe'
78ce7fcbaf9913c56ffdf89f3a419e96cf33d336 Rename concept class
8f65245b155f3166c91790c3bcd7c323e3e79187 Rename 'definedbypurpose' relationship
f939a811afcc6895442e2ce3af86bf50341c18ef Update label
d5527e92598598a34526b0088f6555942db0aacd Update labels of technique 100-411
26f6fb9348719b6af0befbedbb10748df4149f7b (kara-mela/master) Update technique classes 100-401
a036714ad8ee75fab2777226a6d97fcdfeb671a9 Remove dubious comments from source CSV
ef68d25f43aca433b9f1f0221ddb7b13d0d43808 Update technique classes
56826cd3223ad1db27260b0d957fac4ead5c16a3 Change to lowercase
983b75375e458e580aaa85d440121a4b46d9fdef Add concept and relationship classes
6a38bad7f2a099767b2218a0008a8273c19891c4 Add four columns for last line
202000951f1a56b36aa04a683e40a061dac99d9a Repurpose redundant columns
87c3f43e046116301488c3e68adbfe6439afbbc9 Removed incorrect subclass relationships
4f8cb0107ae18ca12c3ca8e72332438ea95e8216 Update PaNET.csv
84fcd5dae4591b79343529af9197f7d2ef8c399b Add missing subclass relationships
671e1f1e781d33aea99ae6af1304a0a252f9f98e Fix parent class for 'anomalous small angle x-ray scattering'
78731d5fa3f0d7c40183c081a556be635b259e41 Moved altlabel
3a80fa51534e89789312152fc56a3df338697404 Fix regression from commit cfcc08b71c
3f34efd545037eaec5350ad5ab159edb87a5a094 Fix subclass relationship for 'energy dispersive diffraction'
e1b953a0fbb55236b26616d6a4d097b0de9ba9ca Name change for 'grazing incidence wide angle scattering'
9e23998dbec944b2df75f08821a9d29ae5847143 (terence/change-technique-class-labels, terence/add-concept-classes-and-relationships) Corrected link to PaNET.owl in PaNET_metadata.owl
b2bc582963cd782212f1cda401695516d510923e Add Terence Tan as creator to source/PaNET_metadata.ttl
e50cf076ff3dc3472b9cf08a815cd63c63b0a1db Motivation added to new term template
1f79f73c69829d52d50f068904ddd732a43b3150 PaNET logo added in different formats
cfcc08b71cf27c6d73b18416d86cd97bcd96eaa3 new techniques: x-ray propagation phase contrast (micro)tomography
1919a518ccbd1c12ba22c3e656b48456f5e6314f Add Melanie Nentwich as creator to source/PaNET_metadata.ttl
6e172443972f444f969eef4211bcb95e024a213f Add Rolf Krahl to creators in PaNET metadata
c48e3db8ec0e5aaaa11613fb5ca83683f61d68b7 Add MHz X-ray microscopy as new term
a82fe82ee155160e7379e58787281d5748664c04 Teaching git to ignore generated files
bdb5518e1f494b132f340de4e2f3793a4e3d525e Changed parent class for PaNET01021
90b68a3d0d197db01578137ba4d5b994bcd47478 Update to latest builder image
126a10374976a5a2e1c6abd0453c251bb4b85fe3 Delete source/.DS_Store
47c1838360ec3832625845a58334de306e8fc100 Delete .DS_Store
d648c36ae95bc1ac0c3de204d7944541980b8afa Update .DS_Store
4b8b6d7dfeb272fd6d3bd98c830fb8f4a1eb0837 Update .DS_Store
47192ee57d68e6c8edfed5b5c339277049724779 Create .DS_Store
6983d761005bc3ef254d6b69b2e27d7c580c836b Update PaNET.csv
7d52eab90d376393b860cc40559825707f12301b Update
d40fc612330cd9bc7960d0f60199d5a563c4640f closes: #173
ea8d972d2993c888e9a2c090deee6d7e2865e77f Update PaNET.csv
8bb152d7d5edfa23109722bbdfe688839784798c Add parent class to PaNET01170
254fea5edda3161ad79a6c48519c5b6468c837c4 Changed parent class for PaNET00207
c548a761ffee1c70c6fa1866788f49eb048e9951 Change parent class for PaNET01286
df5def53ebc71434eaa9627e113a4a382ee1123b Changed parent class for PaNET01253
b2a32001da08a657710ffa69ef58bae5183c55ef Remove CHMO:0000182
0a93eb93ab504ba4f03f9cf3ceed644f7d267b58 Add parent classes for PaNET01226
9f56965c10b5799fcf2dfbb19680ebaa4d92eb44 Changed parent class for PaNET01167 (#201)
d87880ffaf7c1715fac1bb49a423d369b9b0c99a Changed parent classes for PaNET01149 (#200)
d143bf210945f337b690bb11918f93e877cac3e1 Teach git to ignore Mac .DS_Store files
e30127cf4709f91166ea7a9c8db57227abee0627 Remove ID PaNET00000 (#196)
77cf3a6c081f0eb8c88e305ec096e67fffcdf643 update panet-build to v0.6; enable ontology diff (#167)

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
