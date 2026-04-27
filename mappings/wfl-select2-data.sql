--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17
-- Dumped by pg_dump version 10.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: select2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.select2 (id, pid, name, pname, fullname, grp) FROM stdin;
1392	0	Photoelectron emission		Photoelectron emission	Techniques
1407	1392	XPS	Photoelectron emission	Photoelectron emission / XPS	Techniques
1408	1392	UPS	Photoelectron emission	Photoelectron emission / UPS	Techniques
1409	1392	Angular Resolved PES	Photoelectron emission	Photoelectron emission / Angular Resolved PES	Techniques
1410	1392	Photoelectron diffraction	Photoelectron emission	Photoelectron emission / Photoelectron diffraction	Techniques
1411	1392	Time-resolved studies	Photoelectron emission	Photoelectron emission / Time-resolved studies	Techniques
5996	1392	Spin-resolved ARPES	Photoelectron emission	Photoelectron emission / Spin-resolved ARPES	Techniques
1388	0	Imaging		Imaging	Techniques
1412	1388	THz near-field microscopy	Imaging	Imaging / THz near-field microscopy	Techniques
1413	1388	IR Microscopy	Imaging	Imaging / IR Microscopy	Techniques
1414	1388	X-ray microscopy	Imaging	Imaging / X-ray microscopy	Techniques
1415	1388	X-ray tomography	Imaging	Imaging / X-ray tomography	Techniques
1416	1388	X-ray holography	Imaging	Imaging / X-ray holography	Techniques
1417	1388	Photoemission EM	Imaging	Imaging / Photoemission EM	Techniques
1418	1388	Fluorescence imaging	Imaging	Imaging / Fluorescence imaging	Techniques
1419	1388	Medical application	Imaging	Imaging / Medical application	Techniques
3421	1388	Scanning photoemission EM	Imaging	Imaging / Scanning photoemission EM	Techniques
1393	0	Scattering		Scattering	Techniques
1420	1393	Elastic scattering	Scattering	Scattering / Elastic scattering	Techniques
1421	1393	Coherent scattering	Scattering	Scattering / Coherent scattering	Techniques
1422	1393	Inelastic scattering	Scattering	Scattering / Inelastic scattering	Techniques
1423	1393	Magnetic scattering	Scattering	Scattering / Magnetic scattering	Techniques
1424	1393	Nuclear resonant scattering	Scattering	Scattering / Nuclear resonant scattering	Techniques
1425	1393	Small angle scattering	Scattering	Scattering / Small angle scattering	Techniques
1426	1393	Wide angle scattering	Scattering	Scattering / Wide angle scattering	Techniques
1427	1393	Time-resolved scattering	Scattering	Scattering / Time-resolved scattering	Techniques
1394	0	Emission or Reflection		Emission or Reflection	Techniques
1428	1394	X-ray fluorescence (XRF)	Emission or Reflection	Emission or Reflection / X-ray fluorescence (XRF)	Techniques
1429	1394	X-ray excited optical luminescence (XEOL)	Emission or Reflection	Emission or Reflection / X-ray excited optical luminescence (XEOL)	Techniques
1430	1394	Reflectrometry	Emission or Reflection	Emission or Reflection / Reflectrometry	Techniques
1431	1394	Micro XRF	Emission or Reflection	Emission or Reflection / Micro XRF	Techniques
1432	1394	Ellipsometry	Emission or Reflection	Emission or Reflection / Ellipsometry	Techniques
1433	1394	Polarimetry	Emission or Reflection	Emission or Reflection / Polarimetry	Techniques
1434	1394	Time-resolved studies	Emission or Reflection	Emission or Reflection / Time-resolved studies	Techniques
1395	0	Absorption		Absorption	Techniques
1435	1395	NEXAFS	Absorption	Absorption / NEXAFS	Techniques
1436	1395	EXAFS	Absorption	Absorption / EXAFS	Techniques
1437	1395	UVCD	Absorption	Absorption / UVCD	Techniques
1438	1395	XMCD	Absorption	Absorption / XMCD	Techniques
1439	1395	IR spectroscopy	Absorption	Absorption / IR spectroscopy	Techniques
1440	1395	Time-resolved studies	Absorption	Absorption / Time-resolved studies	Techniques
1397	0	Diffraction		Diffraction	Techniques
1441	1397	Crystallography	Diffraction	Diffraction / Crystallography	Techniques
1442	1397	Crystallography (biological macromolecules)	Diffraction	Diffraction / Crystallography (biological macromolecules)	Techniques
1443	1397	Powder diffraction	Diffraction	Diffraction / Powder diffraction	Techniques
1444	1397	Surface diffraction	Diffraction	Diffraction / Surface diffraction	Techniques
1445	1397	Topography	Diffraction	Diffraction / Topography	Techniques
1446	1397	Time-resolved studies	Diffraction	Diffraction / Time-resolved studies	Techniques
1396	0	Lithography		Lithography	Techniques
1447	1396	X-ray lithography	Lithography	Lithography / X-ray lithography	Techniques
1448	1396	EUV litography	Lithography	Lithography / EUV litography	Techniques
5574	0	Ion Spectroscopy		Ion Spectroscopy	Techniques
5575	5574	Ion imaging	Ion Spectroscopy	Ion Spectroscopy / Ion imaging	Techniques
5576	5574	Mass spectrometry	Ion Spectroscopy	Ion Spectroscopy / Mass spectrometry	Techniques
600	0	FEL		FEL	FelFacilityType
601	600	Xray FEL	FEL	FEL / Xray FEL	FelFacilityType
602	600	IR FEL	FEL	FEL / IR FEL	FelFacilityType
503	0	Laser-based light sources		Laser-based light sources	LaserFacilityType
504	503	THz radiation	Laser-based light sources	Laser-based light sources / THz radiation	LaserFacilityType
505	503	VUV-XUV	Laser-based light sources	Laser-based light sources / VUV-XUV	LaserFacilityType
506	503	X-rays	Laser-based light sources	Laser-based light sources / X-rays	LaserFacilityType
507	503	Gamma-rays	Laser-based light sources	Laser-based light sources / Gamma-rays	LaserFacilityType
100	0	Physics		Physics	Disciplines
102	100	Atomic & molecular physics	Physics	Physics / Atomic & molecular physics	Disciplines
104	100	High energy & particle physics	Physics	Physics / High energy & particle physics	Disciplines
107	100	Quantum electronics & optics	Physics	Physics / Quantum electronics & optics	Disciplines
101	100	Astronomy/Astrophysics/Astroparticles	Physics	Physics / Astronomy/Astrophysics/Astroparticles	Disciplines
108	100	Other - Physics	Physics	Physics / Other - Physics	Disciplines
109	0	Chemistry		Chemistry	Disciplines
110	0	Life Sciences & Biotech		Life Sciences & Biotech	Disciplines
111	110	Food quality and safety	Life Sciences & Biotech	Life Sciences & Biotech / Food quality and safety	Disciplines
112	110	Agriculture & Fisheries	Life Sciences & Biotech	Life Sciences & Biotech / Agriculture & Fisheries	Disciplines
113	110	Medicine	Life Sciences & Biotech	Life Sciences & Biotech / Medicine	Disciplines
114	110	Veterinary sciences	Life Sciences & Biotech	Life Sciences & Biotech / Veterinary sciences	Disciplines
115	110	Molecular and cellular biology	Life Sciences & Biotech	Life Sciences & Biotech / Molecular and cellular biology	Disciplines
116	110	Other - Life Sciences & Biotech	Life Sciences & Biotech	Life Sciences & Biotech / Other - Life Sciences & Biotech	Disciplines
117	0	Earth Sciences & Environment		Earth Sciences & Environment	Disciplines
118	117	Global change & Climate observation	Earth Sciences & Environment	Earth Sciences & Environment / Global change & Climate observation	Disciplines
119	117	Ecosystems & Biodiversity	Earth Sciences & Environment	Earth Sciences & Environment / Ecosystems & Biodiversity	Disciplines
125	0	Engineering & Technology		Engineering & Technology	Disciplines
126	125	Aeronautics	Engineering & Technology	Engineering & Technology / Aeronautics	Disciplines
127	125	Space	Engineering & Technology	Engineering & Technology / Space	Disciplines
130	125	Transport	Engineering & Technology	Engineering & Technology / Transport	Disciplines
131	125	Other - Engineering & Technology	Engineering & Technology	Engineering & Technology / Other - Engineering & Technology	Disciplines
133	0	Information & Communication Technologies		Information & Communication Technologies	Disciplines
135	133	Trust & Security	Information & Communication Technologies	Information & Communication Technologies / Trust & Security	Disciplines
136	133	Communication & Networks	Information & Communication Technologies	Information & Communication Technologies / Communication & Networks	Disciplines
137	133	Computing & software technologies	Information & Communication Technologies	Information & Communication Technologies / Computing & software technologies	Disciplines
138	133	Components & Micro-systems	Information & Communication Technologies	Information & Communication Technologies / Components & Micro-systems	Disciplines
139	133	Knowledge & interface technologies	Information & Communication Technologies	Information & Communication Technologies / Knowledge & interface technologies	Disciplines
140	133	Other - ICT	Information & Communication Technologies	Information & Communication Technologies / Other - ICT	Disciplines
141	0	Material Sciences		Material Sciences	Disciplines
142	141	Knowledge based multifunctional materials	Material Sciences	Material Sciences / Knowledge based multifunctional materials	Disciplines
143	141	Other - Material Sciences	Material Sciences	Material Sciences / Other - Material Sciences	Disciplines
144	0	Energy		Energy	Disciplines
145	144	Sustainable energy systems	Energy	Energy / Sustainable energy systems	Disciplines
146	144	Fusion	Energy	Energy / Fusion	Disciplines
147	144	Other - Energy	Energy	Energy / Other - Energy	Disciplines
148	0	Social Sciences		Social Sciences	Disciplines
149	148	Economics	Social Sciences	Social Sciences / Economics	Disciplines
150	148	Political Sciences	Social Sciences	Social Sciences / Political Sciences	Disciplines
151	148	Educational sciences	Social Sciences	Social Sciences / Educational sciences	Disciplines
152	148	Law	Social Sciences	Social Sciences / Law	Disciplines
153	148	Demography	Social Sciences	Social Sciences / Demography	Disciplines
154	148	Other - Social Sciences	Social Sciences	Social Sciences / Other - Social Sciences	Disciplines
155	0	Humanities		Humanities	Disciplines
156	155	Arts	Humanities	Humanities / Arts	Disciplines
157	155	History	Humanities	Humanities / History	Disciplines
158	155	Languages	Humanities	Humanities / Languages	Disciplines
160	109	Other - Chemistry	Chemistry	Chemistry / Other - Chemistry	Disciplines
700	0	Synchrotron		Synchrotron	SynchrotronFacilityType
121	117	Marine science/Oceanography	Earth Sciences & Environment	Earth Sciences & Environment / Marine science/Oceanography	Disciplines
120	117	Natural disaster, Desertification & Pollution	Earth Sciences & Environment	Earth Sciences & Environment / Natural disaster, Desertification & Pollution	Disciplines
123	117	Other - Earth Sciences & Environment	Earth Sciences & Environment	Earth Sciences & Environment / Other - Earth Sciences & Environment	Disciplines
122	117	Water sciences/Hydrology	Earth Sciences & Environment	Earth Sciences & Environment / Water sciences/Hydrology	Disciplines
5997	1388	Ptychography	Imaging	Imaging / Ptychography	Techniques
5998	1388	Coherent diffractive imaging	Imaging	Imaging / Coherent diffractive imaging	Techniques
5999	1393	Resonant scattering	Scattering	Scattering / Resonant scattering	Techniques
6000	1393	Anomalous scattering	Scattering	Scattering / Anomalous scattering	Techniques
6001	1393	Reflectivity	Scattering	Scattering / Reflectivity	Techniques
9999	0	Synchrotron		Synchrotron	SynchrotronFacilityType
550	0	Lasers		Lasers	LaserFacilityType
551	500	VIS-IR	Lasers	Lasers / VIS-IR	LaserFacilityType
552	500	UV	Lasers	Lasers / UV	LaserFacilityType
161	109	Atoms, molecules, clusters and gas-phase chemistry	Chemistry	Chemistry / Atoms, molecules, clusters and gas-phase chemistry	Disciplines
162	109	Biochemistry	Chemistry	Chemistry / Biochemistry	Disciplines
163	109	Catalysis	Chemistry	Chemistry / Catalysis	Disciplines
164	109	Electrochemistry	Chemistry	Chemistry / Electrochemistry	Disciplines
165	109	Femtochemistry, solid- and liquid-state chemistry	Chemistry	Chemistry / Femtochemistry, solid- and liquid-state chemistry	Disciplines
166	109	Green Chemistry	Chemistry	Chemistry / Green Chemistry	Disciplines
167	109	Physical Chemistry	Chemistry	Chemistry / Physical Chemistry	Disciplines
168	109	Technique Development - Chemistry	Chemistry	Chemistry / Technique Development - Chemistry	Disciplines
169	109	Theoretical Chemistry	Chemistry	Chemistry / Theoretical Chemistry	Disciplines
170	117	Geology	Earth Sciences & Environment	Earth Sciences & Environment / Geology	Disciplines
171	117	Mineralogy	Earth Sciences & Environment	Earth Sciences & Environment / Mineralogy	Disciplines
172	117	Plant science	Earth Sciences & Environment	Earth Sciences & Environment / Plant science	Disciplines
173	117	Technique Development - Earth Sciences & Environment	Earth Sciences & Environment	Earth Sciences & Environment / Technique Development - Earth Sciences & Environment	Disciplines
174	144	Technique Development - Energy	Energy	Energy / Technique Development - Energy	Disciplines
175	125	Detectors	Engineering & Technology	Engineering & Technology / Detectors	Disciplines
176	125	Nanotechnology & production processes	Engineering & Technology	Engineering & Technology / Nanotechnology & production processes	Disciplines
177	125	Technique Development - Engineering & Technology	Engineering & Technology	Engineering & Technology / Technique Development - Engineering & Technology	Disciplines
178	155	Cultural Heritage	Humanities	Humanities / Cultural Heritage	Disciplines
179	155	Technique Development - Humanities	Humanities	Humanities / Technique Development - Humanities	Disciplines
180	133	Data management/presentation	Information & Communication Technologies	Information & Communication Technologies / Data management/presentation	Disciplines
181	133	Data processing	Information & Communication Technologies	Information & Communication Technologies / Data processing	Disciplines
182	133	ICT for citizens, businesses & organizations	Information & Communication Technologies	Information & Communication Technologies / ICT for citizens, businesses & organizations	Disciplines
183	133	Technique Development - ICT	Information & Communication Technologies	Information & Communication Technologies / Technique Development - ICT	Disciplines
184	110	Biophysics	Life Sciences & Biotech	Life Sciences & Biotech / Biophysics	Disciplines
185	110	Evolutionary science	Life Sciences & Biotech	Life Sciences & Biotech / Evolutionary science	Disciplines
186	110	Pharmaceutics (drug screening)	Life Sciences & Biotech	Life Sciences & Biotech / Pharmaceutics (drug screening)	Disciplines
187	110	Protein and macromolecular structures	Life Sciences & Biotech	Life Sciences & Biotech / Protein and macromolecular structures	Disciplines
188	110	Technique Development - Life Sciences & Biotech	Life Sciences & Biotech	Life Sciences & Biotech / Technique Development - Life Sciences & Biotech	Disciplines
189	141	Metallurgy	Material Sciences	Material Sciences / Metallurgy	Disciplines
190	141	Technique Development - Material Sciences	Material Sciences	Material Sciences / Technique Development - Material Sciences	Disciplines
191	100	Dynamics	Physics	Physics / Dynamics	Disciplines
192	100	Hard condensed matter - electronic properties	Physics	Physics / Hard condensed matter - electronic properties	Disciplines
193	100	Hard condensed matter - structures	Physics	Physics / Hard condensed matter - structures	Disciplines
194	100	High-field science, non-linear X-ray Optics	Physics	Physics / High-field science, non-linear X-ray Optics	Disciplines
195	100	Matter under extreme conditions, warm dense matter, plasmas	Physics	Physics / Matter under extreme conditions, warm dense matter, plasmas	Disciplines
196	100	Nanophysics & physics of confined matter	Physics	Physics / Nanophysics & physics of confined matter	Disciplines
197	100	Optics	Physics	Physics / Optics	Disciplines
198	100	Surfaces, interfaces and thin films	Physics	Physics / Surfaces, interfaces and thin films	Disciplines
199	100	Soft condensed matter physics	Physics	Physics / Soft condensed matter physics	Disciplines
200	100	Technique Development - Physics	Physics	Physics / Technique Development - Physics	Disciplines
201	0	Mathematics		Mathematics	Disciplines
202	201	Computational mathematics 	Mathematics	Mathematics / Computational mathematics 	Disciplines
159	155	Other - Humanities	Humanities	Humanities / Other - Humanities	Disciplines
203	201	Mathematics	Mathematics	Mathematics / Mathematics	Disciplines
204	201	Numerical analysis	Mathematics	Mathematics / Numerical analysis	Disciplines
205	201	Other - Mathematics	Mathematics	Mathematics / Other - Mathematics	Disciplines
206	201	Technique Development - Mathematics	Mathematics	Mathematics / Technique Development - Mathematics	Disciplines
6002	1395	THz spectroscopy	Absorption	Absorption / THz spectroscopy	Techniques
6003	1395	Electron spin resonance	Absorption	Absorption / Electron spin resonance	Techniques
6004	1394	Electron spin resonance	Emission or Reflection	Emission or Reflection / Electron spin resonance	Techniques
6005	1394	THz high harmonic generation	Emission or Reflection	Emission or Reflection / THz high harmonic generation	Techniques
\.


--
-- PostgreSQL database dump complete
--

