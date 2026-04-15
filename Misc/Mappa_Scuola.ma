//Maya ASCII 2026 scene
//Name: Mappa_Scuola.ma
//Last modified: Wed, Apr 15, 2026 04:02:57 PM
//Codeset: 1252
requires maya "2026";
requires -nodeType "VRaySettingsNode" -nodeType "VRayMtl" -dataType "VRaySunParams"
		 -dataType "vrayFloatVectorData" -dataType "vrayFloatVectorData" -dataType "vrayIntData"
		 "vrayformaya" "7";
requires "mtoa" "5.5.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "7.10.02 390afec";
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202507081222-4d6919b75c";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 26200)";
fileInfo "UUID" "8CC51F71-4E67-4D77-5EB4-D3A4A193CCD3";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "3675CCD4-4D5F-8DC0-9194-7FAEC8359743";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2550117094492457 37.523636993729312 52.450963413649376 ;
	setAttr ".r" -type "double3" -31.538352729680515 -2.2000000000010815 6.9625953804958961e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "45FD36A0-44A6-F1E5-C754-519A015B2E1C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 72.141602351693805;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "51A77177-4EBD-AC75-FEC5-2CBFD85BD6A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2224935857298531 1000.1 -1.2845650484489086 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DFB544CA-42AB-3BF5-E9A0-E0A2F49A9AC1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 75.263347873068398;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "74E61C53-4B5E-05F3-9695-ABB7DA4505BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AF171573-4A0D-1938-3B61-3E9CA81218B7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "615DE181-477B-2BD6-2D3B-55AEEBBA9DC3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D11A018A-441E-A5A1-9F97-3090DDFA105B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "GRP_Progetto_02";
	rename -uid "6AD4C3BA-4D72-C0C3-8410-4F957169B3A9";
	setAttr ".v" no;
createNode transform -n "pCube2" -p "GRP_Progetto_02";
	rename -uid "85F84926-42A8-ADE9-079A-4F9AA2A1A721";
	setAttr ".t" -type "double3" -1.8463127794538889 -3.5527136788005009e-15 4.665285096498855 ;
	setAttr ".r" -type "double3" 0 -38.205296704628694 0 ;
	setAttr ".s" -type "double3" 10.547666311813325 1 4.8299117412041292 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "34F4C459-40F6-AD21-236C-6D934669DEA1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3" -p "GRP_Progetto_02";
	rename -uid "6DC03E7C-4D52-ECD5-EE37-5496284118DD";
	setAttr ".t" -type "double3" 8.0851965675919626 0 -5.2436635949782024 ;
	setAttr ".r" -type "double3" 0 -69.344445996032448 0 ;
	setAttr ".s" -type "double3" 10.820001035542299 1 5.5363340584498211 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "E481E22F-4C45-8551-D1A3-6881F26471AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "GRP_Progetto_02";
	rename -uid "4B956A60-47A5-6346-E905-7E97C2664821";
	setAttr ".t" -type "double3" -3.5829017054935033 0 -4.6338538879990336 ;
	setAttr ".r" -type "double3" 0 45.002513791517202 0 ;
	setAttr ".s" -type "double3" 1.9967912055825872 1 0.4592380834114449 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "B1018CA4-4BCA-A174-3E43-D28092004CF3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "GRP_Progetto_02";
	rename -uid "1195DEA4-489E-3210-08D8-398F3CC68E06";
	setAttr ".t" -type "double3" -1.2592146691133466 0 -2.266307001612657 ;
	setAttr ".r" -type "double3" 0 -44.897989366844477 0 ;
	setAttr ".s" -type "double3" 1.9967912055825872 1 0.4592380834114449 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "C25C55D0-42CF-7E64-968E-50ADFC3A6FBF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "GRP_Progetto_02";
	rename -uid "A8DDC277-4998-010D-918F-76A42B5BC238";
	setAttr ".t" -type "double3" 0.085901147249453746 0 -0.17010214718745154 ;
	setAttr ".r" -type "double3" 0 5.3891343611279794 0 ;
	setAttr ".rp" -type "double3" 2.6218436887952352 0 1.1025956881432104 ;
	setAttr ".rpt" -type "double3" 8.7430063189231078e-16 0 -4.9960036108132044e-16 ;
	setAttr ".sp" -type "double3" 2.6218436887952352 0 1.1025956881432104 ;
createNode mesh -n "pCube9Shape" -p "pCube9";
	rename -uid "5C189EA6-4A8B-CE40-31B4-B6A6AA000BF5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[9]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[6]" "f[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[5]" "f[11]" "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[10]" "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[7]" "f[13]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  2.64010763 -0.5 2.17358255 0.67135382 -0.5 2.50702357
		 2.64010763 0.5 2.17358255 0.67135382 0.5 2.50702357 2.71679521 0.5 2.62637258 0.74804127 0.5 2.95981359
		 2.71679521 -0.5 2.62637258 0.74804127 -0.5 2.95981359 3.58937001 -0.5 0.99113071
		 2.22394252 -0.5 2.44810796 3.58937001 0.5 0.99113071 2.22394252 0.5 2.44810796 3.92445731 0.5 1.30516267
		 2.55902982 0.5 2.7621398 3.92445731 -0.5 1.30516267 2.55902982 -0.5 2.7621398 4.13455868 -0.5 -0.7546221
		 3.53124404 -0.5 1.14884484 4.13455868 0.5 -0.7546221 3.53124404 0.5 1.14884484 4.57233334 0.5 -0.6158669
		 3.9690187 0.5 1.28759992 4.57233334 -0.5 -0.6158669 3.9690187 -0.5 1.28759992;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "GRP_Progetto_02";
	rename -uid "836ED9A7-48A1-33B6-35CF-259D34E9C453";
	setAttr ".t" -type "double3" 10.584715970318546 0 3.900507604252609 ;
	setAttr ".r" -type "double3" 0 -99.75822056373346 0 ;
	setAttr ".s" -type "double3" 1.9967912055825872 1 0.4592380834114449 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "51B210ED-4093-1D49-EAC7-17BECD01269C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "GRP_Progetto_02";
	rename -uid "259ACDE5-45B7-573C-576E-9A829750BB73";
	setAttr ".t" -type "double3" 10.982333966303246 0 5.6045726522252917 ;
	setAttr ".r" -type "double3" 0 -52.024150839191464 0 ;
	setAttr ".s" -type "double3" 1.9967912055825872 1 0.4592380834114449 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "385BB937-465C-09B1-648D-AE86C67EE548";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "GRP_Progetto_02";
	rename -uid "639AE100-4DCF-EB30-481A-5B8D82BEE878";
	setAttr ".t" -type "double3" 9.3112595743984663 0 13.404272504628304 ;
	setAttr ".r" -type "double3" 0 34.852963123202549 0 ;
	setAttr ".s" -type "double3" 13.145077778528998 1 6.8597360881227099 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "38D5C4B8-4578-E4FB-7573-5CBC93CABF44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "GRP_Progetto_02";
	rename -uid "60112D38-4BCC-C5E7-A84A-9EAEFD19D2EB";
	setAttr ".t" -type "double3" 0.09362410715216507 0 1.0517792292011414 ;
	setAttr ".r" -type "double3" 0 9.1301226134268347 0 ;
	setAttr ".rp" -type "double3" -0.63356408517492857 0 11.752178339472234 ;
	setAttr ".rpt" -type "double3" 4.4408920985006262e-16 0 2.6090241078691179e-15 ;
	setAttr ".sp" -type "double3" -0.63356408517492857 0 11.752178339472234 ;
createNode mesh -n "pCube16Shape" -p "pCube16";
	rename -uid "59402075-468B-BE4A-C50E-F38D80A51DB5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[9]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[6]" "f[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[5]" "f[11]" "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[10]" "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[7]" "f[13]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.0096943378 -0.5 9.63650417 -1.53504539 -0.5 11.5760622
		 -2.0096943378 0.5 9.63650417 -1.53504539 0.5 11.5760622 -1.56361938 0.5 9.52734089
		 -1.088970423 0.5 11.46689892 -1.56361938 -0.5 9.52734089 -1.088970423 -0.5 11.46689892
		 -1.56200397 -0.5 11.51366997 0.26379299 -0.5 12.32215023 -1.56200397 0.5 11.51366997
		 0.26379299 0.5 12.32215023 -1.37606311 0.5 11.093758583 0.44973385 0.5 11.90223885
		 -1.37606311 -0.5 11.093758583 0.44973385 -0.5 11.90223885 -0.042257965 -0.5 12.008014679
		 0.28971949 -0.5 13.97701645 -0.042257965 0.5 12.008014679 0.28971949 0.5 13.97701645
		 0.41058877 0.5 11.93166351 0.74256623 0.5 13.90066528 0.41058877 -0.5 11.93166351
		 0.74256623 -0.5 13.90066528;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GRP_Progetto_01";
	rename -uid "556E4E72-46F0-DA6A-8114-DCBD6BBD8293";
createNode transform -n "pCube17" -p "GRP_Progetto_01";
	rename -uid "03D5D91C-4AE4-D1C6-D82F-9F9CBCD0ECA4";
	setAttr ".t" -type "double3" -12.652089329321962 0 -9.6634068105844904 ;
	setAttr ".r" -type "double3" 0 74.023100272210982 0 ;
	setAttr ".s" -type "double3" 2.6199886330070759 1 4.0372168905932124 ;
createNode mesh -n "pCubeShape13" -p "pCube17";
	rename -uid "9FA28DAB-4FE9-0BD9-F449-3DAADD2DAF9B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".pt[9]" -type "float3" -2.2351742e-08 0 3.7252903e-09 ;
	setAttr ".pt[10]" -type "float3" -2.2351742e-08 0 3.7252903e-09 ;
	setAttr ".pt[11]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".pt[20]" -type "float3" -0.5854193 0 1.4558108 ;
	setAttr ".pt[21]" -type "float3" -0.5747596 0 1.257138 ;
	setAttr ".pt[22]" -type "float3" -0.5747596 0 1.257138 ;
	setAttr ".pt[23]" -type "float3" -0.5854193 0 1.4558108 ;
createNode transform -n "pCube18" -p "GRP_Progetto_01";
	rename -uid "13AC9BD3-4C42-4E6B-E4D2-8FA2E59157A5";
	setAttr ".t" -type "double3" 11.881006704584509 0 11.786317478439198 ;
	setAttr ".r" -type "double3" 0 -27.80235941114773 0 ;
	setAttr ".s" -type "double3" 6.5243345476712786 1 9.583675018243337 ;
createNode mesh -n "pCubeShape14" -p "pCube18";
	rename -uid "B0008455-47FF-5FFA-1AEA-63842A1A43E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube19" -p "GRP_Progetto_01";
	rename -uid "A115AF21-4A2F-3BDA-2AC2-F8998BD5DD40";
	setAttr ".t" -type "double3" 12.508283095466149 0 -7.2111960739761969 ;
	setAttr ".r" -type "double3" 0 76.016752096469347 0 ;
	setAttr ".s" -type "double3" 4.3205703068779862 1 6.3465387024596733 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "0E574990-4475-0ECD-619D-CA94F62C2212";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GRP_Progetto_03";
	rename -uid "F21CB83F-4FF0-884C-6A6D-90A4EC15E8E3";
	setAttr ".v" no;
createNode transform -n "pCube20" -p "GRP_Progetto_03";
	rename -uid "B24A5779-4B6D-9F7F-9B16-5C92C657431C";
	setAttr ".t" -type "double3" 1.9365526076295607 0 5.1950621130225638 ;
	setAttr ".r" -type "double3" 0 -33.118125432107206 0 ;
	setAttr ".s" -type "double3" 16.918271386864706 1 1 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "115D2BD8-4C0E-E803-EFA9-B897B990B22A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube22" -p "GRP_Progetto_03";
	rename -uid "E3F557E0-4EB4-F685-C8A1-408FCDC15A5F";
	setAttr ".t" -type "double3" -2.8764236676644304 0 -5.8456351955761008 ;
	setAttr ".r" -type "double3" 0 10.172375681024768 0 ;
	setAttr ".s" -type "double3" 2.8000000208016314 1 1 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "9750BC60-4C6D-BD6D-68FD-538AB89CB52E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube23" -p "GRP_Progetto_03";
	rename -uid "5E380699-4A23-F502-1F32-169649AD2709";
	setAttr ".t" -type "double3" -1.3782022214642602 0 -9.8905850060592346 ;
	setAttr ".r" -type "double3" 0 -185.11579827470695 0 ;
	setAttr ".s" -type "double3" 8.6293788559859159 0.51006268067586058 0.51006268067586058 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "228C2022-44F0-B345-E0A8-029AC95DD5AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[10]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[7]" "f[11]" "f[16:17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2:4]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[5]" "f[9]" "f[12:13]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.625 0 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.43750626 0 0.375 -8.0471816e-09 0.43750626 0.25 0.375 0.25
		 0.43750712 0.5 0.375 0.5 0.43750623 0.75 0.375 0.75 0.43750662 1 0.375 1 0.56103235
		 0 0.625 0.25 0.56103235 0.25 0.625 0.49999997 0.5610317 0.5 0.62499994 0.74999994
		 0.56103289 0.75 0.625 1 0.56103128 0.9999963 0.5 1 0.5 0 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.50000012 0.5 -0.5 0.49999988
		 -0.5 0.5 0.50000012 0.5 0.5 0.49999988 -0.5 0.5 -0.49999964 0.5 0.5 -0.49999964 -0.5 -0.5 -0.49999964
		 0.5 -0.5 -0.49999964 0.24050921 -0.5 2.18698978 -0.0067753419 -0.5 2.94572115 -0.25351262 -0.5 2.14845037
		 -0.25351262 0.5 2.14845037 -0.0067753419 0.5 2.94572115 0.24050921 0.5 2.18698978
		 -0.25350925 0.5 1.14847255 -0.0067753419 0.5 1.94573271 0.24050581 0.5 1.18701184
		 -0.25351265 -0.5 1.14845026 -0.0067753419 -0.5 1.94572079 0.24050921 -0.5 1.18698931;
	setAttr -s 36 ".ed[0:35]"  0 2 0 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 0 0
		 7 1 0 19 8 1 10 17 1 10 9 0 9 12 1 12 11 0 11 10 1 9 8 0 8 13 1 13 12 0 15 14 0 14 11 1
		 13 16 1 16 15 0 18 17 0 17 14 1 16 19 1 19 18 0 0 10 0 11 2 0 14 4 0 17 6 0 8 1 0
		 3 13 0 5 16 0 7 19 0 12 15 1 15 18 1 9 18 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 -8 -6 -4 -2
		mu 0 4 0 1 2 16
		f 4 6 0 2 4
		mu 0 4 3 6 8 4
		f 4 10 11 12 13
		mu 0 4 5 25 26 7
		f 4 14 15 16 -12
		mu 0 4 25 15 17 26
		f 4 25 -14 26 -1
		mu 0 4 6 5 7 8
		f 4 -27 -19 27 -3
		mu 0 4 8 7 9 10
		f 4 -28 -23 28 -5
		mu 0 4 10 9 11 12
		f 4 -29 -10 -26 -7
		mu 0 4 12 11 13 14
		f 4 -16 29 1 30
		mu 0 4 17 15 0 16
		f 4 -20 -31 3 31
		mu 0 4 19 17 16 18
		f 4 -24 -32 5 32
		mu 0 4 21 19 18 20
		f 4 -9 -33 7 -30
		mu 0 4 23 21 20 22
		f 4 -13 33 17 18
		mu 0 4 7 26 27 9
		f 4 -17 19 20 -34
		mu 0 4 26 17 19 27
		f 4 -18 34 21 22
		mu 0 4 9 27 28 11
		f 4 -21 23 24 -35
		mu 0 4 27 19 21 28
		f 4 -15 35 -25 8
		mu 0 4 23 24 28 21
		f 4 -11 9 -22 -36
		mu 0 4 24 13 11 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24" -p "GRP_Progetto_03";
	rename -uid "6D36FDFE-4DC5-5148-667C-28ABC86DD332";
	setAttr ".t" -type "double3" 6.8436831822902402 0 -5.5030149414937091 ;
	setAttr ".r" -type "double3" 0 -240.49292378470236 0 ;
	setAttr ".s" -type "double3" 8.6293788559859159 0.51006268067586058 0.51006268067586058 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "CF9B4690-402B-2316-1FF9-72A1964A682E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[10]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[7]" "f[11]" "f[16:17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2:4]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[5]" "f[9]" "f[12:13]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.625 0 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.43750626 0 0.375 -8.0471816e-09 0.43750626 0.25 0.375 0.25
		 0.43750712 0.5 0.375 0.5 0.43750623 0.75 0.375 0.75 0.43750662 1 0.375 1 0.56103235
		 0 0.625 0.25 0.56103235 0.25 0.625 0.49999997 0.5610317 0.5 0.62499994 0.74999994
		 0.56103289 0.75 0.625 1 0.56103128 0.9999963 0.5 1 0.5 0 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.50000012 0.5 -0.5 0.49999988
		 -0.5 0.5 0.50000012 0.5 0.5 0.49999988 -0.5 0.5 -0.49999964 0.5 0.5 -0.49999964 -0.5 -0.5 -0.49999964
		 0.5 -0.5 -0.49999964 0.24050921 -0.5 2.18698978 -0.0067753419 -0.5 2.94572115 -0.25351262 -0.5 2.14845037
		 -0.25351262 0.5 2.14845037 -0.0067753419 0.5 2.94572115 0.24050921 0.5 2.18698978
		 -0.25350925 0.5 1.14847255 -0.0067753419 0.5 1.94573271 0.24050581 0.5 1.18701184
		 -0.25351265 -0.5 1.14845026 -0.0067753419 -0.5 1.94572079 0.24050921 -0.5 1.18698931;
	setAttr -s 36 ".ed[0:35]"  0 2 0 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 0 0
		 7 1 0 19 8 1 10 17 1 10 9 0 9 12 1 12 11 0 11 10 1 9 8 0 8 13 1 13 12 0 15 14 0 14 11 1
		 13 16 1 16 15 0 18 17 0 17 14 1 16 19 1 19 18 0 0 10 0 11 2 0 14 4 0 17 6 0 8 1 0
		 3 13 0 5 16 0 7 19 0 12 15 1 15 18 1 9 18 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 -8 -6 -4 -2
		mu 0 4 0 1 2 16
		f 4 6 0 2 4
		mu 0 4 3 6 8 4
		f 4 10 11 12 13
		mu 0 4 5 25 26 7
		f 4 14 15 16 -12
		mu 0 4 25 15 17 26
		f 4 25 -14 26 -1
		mu 0 4 6 5 7 8
		f 4 -27 -19 27 -3
		mu 0 4 8 7 9 10
		f 4 -28 -23 28 -5
		mu 0 4 10 9 11 12
		f 4 -29 -10 -26 -7
		mu 0 4 12 11 13 14
		f 4 -16 29 1 30
		mu 0 4 17 15 0 16
		f 4 -20 -31 3 31
		mu 0 4 19 17 16 18
		f 4 -24 -32 5 32
		mu 0 4 21 19 18 20
		f 4 -9 -33 7 -30
		mu 0 4 23 21 20 22
		f 4 -13 33 17 18
		mu 0 4 7 26 27 9
		f 4 -17 19 20 -34
		mu 0 4 26 17 19 27
		f 4 -18 34 21 22
		mu 0 4 9 27 28 11
		f 4 -21 23 24 -35
		mu 0 4 27 19 21 28
		f 4 -15 35 -25 8
		mu 0 4 23 24 28 21
		f 4 -11 9 -22 -36
		mu 0 4 24 13 11 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25" -p "GRP_Progetto_03";
	rename -uid "DEB3F848-438A-A8F6-740C-98A0D0AAC1AE";
	setAttr ".t" -type "double3" 1.2990300434613555 0 -4.5466051521147435 ;
	setAttr ".r" -type "double3" 0 -62.901194275088748 0 ;
	setAttr ".s" -type "double3" 2.8000000208016314 1 1 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "8C615F7B-483E-6A84-8B8D-2389D4B6BE11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26" -p "GRP_Progetto_03";
	rename -uid "E3D2BA83-465C-0290-67F2-E6B8B2E4426C";
	setAttr ".t" -type "double3" 2.5516661567990924 0 -0.41754537111257828 ;
	setAttr ".r" -type "double3" 0 -48.206694842099907 0 ;
	setAttr ".s" -type "double3" 2.8000000208016314 1 1 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "592C586B-4596-E05D-A468-0F8373118B5E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27" -p "GRP_Progetto_03";
	rename -uid "F9FB7BF9-413D-76AC-A6C1-CDB12F663F82";
	setAttr ".t" -type "double3" 6.6807259378012578 0 2.5980600869227128 ;
	setAttr ".r" -type "double3" 0 -22.929136140983367 0 ;
	setAttr ".s" -type "double3" 2.8000000208016314 1 1 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "E848AA4F-4F81-4D6E-A601-16A3A8D22B64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28" -p "GRP_Progetto_03";
	rename -uid "E8779A62-482E-3C46-EE4C-D29EFDD0F827";
	setAttr ".t" -type "double3" -7.3284247995796168 0 -2.4623507326587522 ;
	setAttr ".r" -type "double3" 0 -45.484341336923393 0 ;
	setAttr ".s" -type "double3" 5.0167452357758862 1 1.9561606062197137 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "FFD533A1-44BB-0540-939C-56ADD2A470ED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube29" -p "GRP_Progetto_03";
	rename -uid "ADE6ABC0-44B3-A1AD-DA11-038AEBCA51AF";
	setAttr ".t" -type "double3" 11.549597484137474 0 0.70352878075964109 ;
	setAttr ".r" -type "double3" 0 -98.826153066999623 0 ;
	setAttr ".s" -type "double3" 9.3322952792895197 1 1.9561606062197137 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "9F83AFAD-4C23-2B81-DD75-469E559E0C06";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GRP_Additive";
	rename -uid "5819CF93-4E52-042E-5131-88A519CF4E6D";
	setAttr ".v" no;
createNode transform -n "imagePlane1" -p "GRP_Additive";
	rename -uid "E82C1328-4029-FC6B-33C9-909FA1654C67";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 5.1635194729419096 5.1635194729419096 5.1635194729419096 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "B6AB2D1C-4AF6-8F5E-C0BB-538AF191CEE8";
	setAttr -k off ".v";
	setAttr ".fc" 202;
	setAttr ".imn" -type "string" "C:/Users/studente/Desktop/Mappa_Scuola.png";
	setAttr ".cov" -type "short2" 1000 1000 ;
	setAttr ".dlc" no;
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode transform -n "GRP_Blockout_Massa" -p "GRP_Additive";
	rename -uid "0CA584A1-4016-7DE6-EBB3-228ADCE7B154";
createNode transform -n "pPlane7" -p "GRP_Blockout_Massa";
	rename -uid "FEE39C5B-4080-3A3A-4589-0BA0BCD53F3A";
	setAttr ".t" -type "double3" 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 ;
createNode mesh -n "pPlaneShape7" -p "pPlane7";
	rename -uid "059FCDE2-43B6-1B63-364B-48901F9C1DA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[14]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[18]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[25]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.5 0 ;
createNode mesh -n "polySurfaceShape6" -p "pPlane7";
	rename -uid "4DF634F8-4392-B744-21A8-C1B47B21D2B0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -29.820515 0 1.4663019 -24.250851 
		0 2.2113311 -27.641937 0 -14.933807 -22.308901 0 -12.531208;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane8" -p "GRP_Blockout_Massa";
	rename -uid "3EB9E560-45E1-E622-0445-F6BB533C5FBB";
	setAttr ".t" -type "double3" -18.128780241971931 0 21.817068654548255 ;
createNode mesh -n "pPlaneShape8" -p "pPlane8";
	rename -uid "E7301FC8-43D4-5B58-4241-EB8E360CB01E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[8]" -type "float3" 12.698156 -1.7763568e-15 2.5596335 ;
	setAttr ".pt[9]" -type "float3" 12.698156 -1.7763568e-15 2.5596335 ;
	setAttr ".pt[10]" -type "float3" 12.698156 -1.7763568e-15 2.5596335 ;
	setAttr ".pt[11]" -type "float3" 12.698156 -1.7763568e-15 2.5596335 ;
createNode transform -n "Aiuole" -p "GRP_Blockout_Massa";
	rename -uid "7CEE628D-482F-FD35-AC45-2ABCD88F9E3F";
createNode transform -n "pPlane5" -p "Aiuole";
	rename -uid "8AC6F618-4358-D286-2451-908408169462";
	setAttr ".t" -type "double3" 21.491134802762506 0 -10.111073752460126 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "FEA2B372-4017-4B27-01C7-70A39AB622E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.5 0 ;
createNode mesh -n "polySurfaceShape4" -p "pPlane5";
	rename -uid "A0DB0E28-45F0-7F46-A794-B8B682F2A996";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -9.1477318 0 14.847832 -1.4830918 
		0 17.404516 -7.7513304 0 7.0349398 0.9463321 0 6.3698378;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4" -p "Aiuole";
	rename -uid "C9D3D1C9-4F76-DC1E-5025-F9BB7E3C8D8F";
	setAttr ".t" -type "double3" 10.937318535827913 0 -15.483925670172287 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "A194583F-423F-8D12-9D46-86B72F1408B2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.5 0 ;
createNode mesh -n "polySurfaceShape1" -p "pPlane4";
	rename -uid "83771907-411C-3BEA-0643-7595AE9504E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -9.199976 0 13.437239 -3.5728593 
		0 12.754783 -10.154563 0 8.497777 -3.8601332 0 5.7429075;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3" -p "Aiuole";
	rename -uid "EFC2651D-4CDE-9ABA-2069-398C4EF530ED";
	setAttr ".t" -type "double3" -2.8799124621744108 0 -25.631081407121219 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "74DE69F4-4ECB-1469-6B29-969BAD054166";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.5 0 ;
createNode mesh -n "polySurfaceShape3" -p "pPlane3";
	rename -uid "08D02F12-4A1D-6780-4BDF-3AB730475E8B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -10.767687 0 11.382997 -5.6811428 
		0 14.268435 -8.0462656 0 6.0110788 1.7619642 0 10.986605;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane2" -p "Aiuole";
	rename -uid "2495D235-451D-4FC9-43F7-E792302E0DCD";
	setAttr ".t" -type "double3" -1.8390427772480917 0 -8.0388087983205416 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "2BEF9178-4ECB-A6D6-D265-369F0F7138E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.5 0 ;
createNode mesh -n "polySurfaceShape2" -p "pPlane2";
	rename -uid "9BEA2EA4-40BE-8AD6-95A0-7FB729ABB41D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -13.934051 0 20.920662 -12.399961 
		0 21.643738 -7.4284444 0 5.1229548 -4.9954748 0 8.4766788;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane1" -p "Aiuole";
	rename -uid "D3DBC2C8-4309-5C33-9C3D-128509B9635F";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "BC2B6E06-44D8-C317-D89C-F8813B2C1395";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.5 0 ;
createNode transform -n "pPlane6" -p "GRP_Blockout_Massa";
	rename -uid "D43D70EB-485E-16FF-0651-A3BEC186DC76";
	setAttr ".t" -type "double3" 19.356745908511837 -7.1054273576010019e-15 -25.583644604665796 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	rename -uid "511229A8-4944-6106-6FF3-AEAD1A1FFC2E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.5 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.5 0 ;
createNode mesh -n "polySurfaceShape5" -p "pPlane6";
	rename -uid "21D454CA-49B1-16F4-6255-CDB743ADB5DC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -40.220669 0 1.785324 6.1200566 
		0 20.012751 -40.407581 0 0.20681095 5.7952967 0 0.5312885;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "GRP_Blockout_Massa";
	rename -uid "5E35C5D4-4AAD-410F-F996-57AB65DAA3C2";
	setAttr ".t" -type "double3" -10.970868843832761 0 14.029430593591073 ;
	setAttr ".r" -type "double3" 0 -11.61426055393312 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "C6344936-4C7E-1733-06EE-54BCEE355C83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 6.5 ;
	setAttr ".pt[1]" -type "float3" 12 0 6.5 ;
	setAttr ".pt[2]" -type "float3" 0 0 6.5 ;
	setAttr ".pt[3]" -type "float3" 12 0 6.5 ;
	setAttr ".pt[5]" -type "float3" 12 0 0 ;
	setAttr ".pt[7]" -type "float3" 12 0 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "51D777AD-4E46-DB5D-91B7-7EA34FA55458";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "81562F4B-4EED-AAD3-5DE5-EC8415F0B4C0";
	setAttr ".sver" 2;
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".csdu" 0;
	setAttr ".csdp" 1;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".dac" 1.5;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 0;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" -1;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".seu" yes;
	setAttr ".gomsb" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".gopv" yes;
	setAttr ".gopvgs" 1;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".vfbSA" -type "Int32Array" 1118 0 4462 1 4450 0 1
		 4442 1700143739 1869181810 825893486 1632379436 1936876921 578501154 1936876886 577662825 573321530 1935764579 574235251
		 1953460082 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1696738338 1818386798
		 1949966949 744846706 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828 1931619453 1814913653
		 1919252833 1530536563 1818436219 577991521 1751327290 779317089 1886611812 1132028268 1701999215 1869182051 573317742 1886351984
		 1769239141 975336293 1702240891 1869181810 825893486 1634607660 975332717 1936278562 2036427888 1919894304 1952671090 577662825
		 1852121644 1701601889 1920219682 573334901 1634760805 975332462 1702195828 2019893804 1684955504 1701601889 1920219682 573334901
		 1718579824 577072233 573321786 1869641829 1701999987 774912546 1931619376 1600484961 1600284530 1835627120 1986622569 975336293
		 1936482662 1864510565 1601136995 1701603686 1126316578 1917857594 1634887535 1766203501 796091756 1869903169 1802724708 2036419887
		 842019425 1701982006 1920298867 796091747 1330201423 1852793645 1936157030 2036419887 842019425 1701063986 1819631974 1868771188
		 1734960750 1768124206 573317743 1869177711 1819239263 1886614127 577069921 573322554 1869177711 1936286815 2036427888 1769366884
		 975332707 1864510512 1601136995 2003134838 1851880052 1919903347 809116269 1668227628 1935634281 1768257121 1634560366 975332711
		 1936482662 1763847269 1717527395 577072233 740434490 1667459362 1869770847 1701603686 1952539743 1849303649 745303157 1667459362
		 1852142175 1953392996 578055781 573321274 1886088290 1852793716 1715085942 1702063201 1931619453 1814913653 1919252833 1530536563
		 1818436219 577991521 1751327290 779317089 778462578 1920298867 1868981603 1919247468 1881287714 1701867378 1701409906 2067407475
		 1919252002 1852795251 741423650 1835101730 574235237 1920298835 540697955 574768978 1852121644 1701601889 1920219682 573334901
		 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1715085925 1702063201 1818370604 1600417381 1701080941 741358114
		 1634758434 2037672291 774978082 1931619376 1601662824 1986359920 578250089 1970435130 1931619429 1952408434 577073273 746401850
		 1651864354 2036427821 577991269 578509626 1935764579 574235251 1868654691 1701981811 1768697446 1836345447 740456553 1869770786
		 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1766597178 1299474535 740456553 1634624802 577072226
		 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1949966949 2103801202 1970479660 1634479458
		 1936876921 1566259746 578497661 1935764579 574235251 1868654691 1701981811 1868770918 1936683117 577074281 1919951404 1919250543
		 1936025972 578501154 1936876918 577662825 573321530 1701667182 1126316578 1869639023 1702127987 1696738338 1818386798 1715085925
		 1702063201 2019893804 1684955504 1634089506 744846188 1886938402 1633971809 577072226 1970435130 1646406757 1684956524 1685024095
		 809116261 1886331436 1953063777 825893497 573321262 2003789939 1701998687 2003134838 1920219682 746415477 1651864354 2036427821
		 577991269 2103270202 2066513245 1634493218 975336307 1634231074 1882092399 1701064293 1936289646 740455013 1869770786 1953654128
		 577987945 1981971258 1769173605 975335023 1847733297 577072481 1698964026 1936289646 540701285 1986096757 1634494817 577072226
		 1852121644 1701601889 1634089506 744846188 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828
		 1818370604 1600417381 1701080941 741358114 1634758434 2037672291 774978082 1931619376 1601662824 1986359920 578250089 1970435130
		 1629629541 1986622563 1715085925 1702063201 1919951404 1952805733 741489186 1920234274 1952935525 825893480 573321262 1768186226
		 975336309 808333361 2003313196 1701012289 1634887020 975332724 1702195828 1701061164 1936289646 1834971749 577070191 746402106
		 1651864354 2036427821 577991269 2103270202 1663204140 1936941420 1663187490 1936679272 778399790 1918986355 778986864 1920298082
		 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1918986323 795764080 1920298050
		 1696738338 1818386798 1715085925 1702063201 2019893804 1684955504 1634089506 744846188 1886938402 1633971809 577072226 1970435130
		 1646406757 1684956524 1685024095 809116261 1886331436 1953063777 825893497 573321262 2003789939 1701998687 2003134838 1920219682
		 573334901 1918986355 1601070448 1920298082 1836016479 1702131056 1634089506 744846188 1634235170 1852141682 1869439327 578055797
		 808333626 1752375852 1701868129 1634885486 1937074532 774912546 1646406709 1601336684 1768186226 975336309 858992177 808464432
		 959591472 746403121 1651864354 2036427821 577991269 2103270202 1663204140 1936941420 1663187490 1936679272 778399790 1936614764
		 740456550 1869770786 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1699488314 1159754606 1667589734
		 740455284 1634624802 577072226 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1949966949
		 744846706 1701601826 1834968174 577070191 573321786 1667330159 578385001 808333626 1752375852 1885304687 1769366898 975337317
		 1702195828 1818698284 1600483937 975335023 1936482662 1730292837 1701994860 2053731167 859447909 741355056 1634494242 2002740594
		 1751607653 825893492 573321262 1869573218 1702322029 1952999273 774912546 808464436 808464432 741751093 1634494242 1952408946
		 1936028264 1684828008 774978082 1713515568 1702128745 1869766514 1769234804 975335023 741355056 1952543522 1952543349 577662825
		 808333626 1634214444 1635214450 1633641842 1818583907 1952543333 975332453 1702195828 1868767788 2002740332 577598049 1818322490
		 573334899 1702129257 1952670066 577074793 1970435130 1931619429 1600484961 1918987367 1949966949 744846706 1801544226 1818713957
		 1600483937 1734960503 975336552 1936482662 1663183973 1952540018 1717919589 1952671078 1701994355 1953265011 1634231135 1818586734
		 1634089506 744846188 1634624802 1600482402 1684106338 975336293 1702195828 1769153068 577987940 573322810 1684106338 1918858085
		 1952543855 577662825 775237946 1931619376 1634038388 1818386283 975336053 808594992 808464432 959590448 1965173816 1734305139
		 1769234802 975333230 1936482662 1730292837 1769234802 1683973998 1769172581 975337844 808333365 1919361580 1852404833 1701601127
		 1752459118 808532514 573321262 1952543335 1600613993 1836019578 775240226 1730292784 1769234802 1935632238 1701867372 774912546
		 1730292784 1769234802 1935632238 1852142196 577270887 808333626 1937056300 1668243301 1937075299 577662825 1818322490 573334899
		 1818452847 1869181813 2037604206 1952804205 576940402 1970435130 1864510565 1970037603 1852795251 1919250527 1953391971 808598050
		 573321262 1818452847 1869181813 1869766510 1769234804 975335023 741355056 1667460898 1769174380 1633644143 975332210 774910001
		 1965173808 1935631731 1952543331 975333475 1936482662 1931619429 1935635043 1701670265 1667854964 1920219682 573334901 1601332083
		 1953784176 577663589 573321274 1601332083 1953265005 1634494313 1667196274 1953396079 741423650 1919120162 1852138591 2037672307
		 808794658 573321262 1601332083 1735288172 975333492 808333365 1668489772 1819500402 1600483439 1769103734 1701015137 774912546
		 1931619376 2002743907 1752458345 1918989919 1668178281 809116261 573321262 1601332083 1684366707 741358114 1919120162 1869576799
		 842670701 573321262 1601332083 1635020658 1852795252 774912546 1931619376 1935635043 1852142196 577270887 808333626 1937056300
		 1969512293 975336563 1936482662 1679961189 1601467253 1953784176 577663589 573321274 1953723748 1852138591 2037672307 808794658
		 573321262 1953723748 1684107871 1601402217 1769103734 1701015137 774912546 1679961136 1601467253 1953786218 975336037 741355056
		 1937073186 1870290804 975334767 741355058 1937073186 1869766516 1769234804 975335023 741355056 1937073186 1953718132 1735288178
		 975333492 741355057 1634494242 1969186162 1868522867 1635021666 1600482403 1734438249 1715085925 1702063201 1818698284 1600483937
		 1953718895 1701602145 1634560351 1885300071 577270881 740434490 1935830818 1835622260 1600481121 1836019578 774978082 1864510512
		 1601467234 1734438249 1869766501 1769234804 975335023 741355056 1935830818 1835622260 1600481121 1701999731 1752459118 774978082
		 1965173808 1717527923 1702128745 1835622258 577070945 1818322490 573334899 1918987367 1835622245 1600481121 1752457584 572668450
		 1937056300 1751342949 1634561906 1600350580 1919246945 1769234802 975335023 1936482662 1663183973 1836020328 1667855457 1700946271
		 1952543346 577662825 825110586 808464432 825241648 573323572 1701667171 1952407922 577073273 573321274 1919251571 1834970981
		 577070191 746401850 1651864354 2036427821 577991269 2103270202 2066513245 1634493218 975336307 1634231074 1865315183 1819436406
		 1932425569 1886216564 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1835103315
		 573317744 1650552421 975332716 1936482662 1696738405 1851879544 1715085924 1702063201 2019893804 1684955504 1701601889 1920219682
		 573334901 1835103347 1869111152 1601857906 1734962273 825893486 1953702444 1601203553 1953654134 1768710495 975335015 573321779
		 1835103347 1868783472 577924972 774986554 774974512 774974512 573332784 1835103347 1868980080 975336558 1702240891 1869181810
		 825893486 1869619756 1601465961 1702521203 808532514 1634083372 2037148013 741358114 2037674786 975332716 1998728240 1751607653
		 809116276 1634083372 975332707 1769095458 2099407969 1953702444 1601203553 1769108595 975333230 1702240891 1869181810 825893486
		 1634869804 1953718135 1735289202 572668450 1768301100 1600938350 1769108595 975333230 2105352738 1970479660 1634479458 1936876921
		 1566259746 746413437 1734693410 1198419817 975335013 1702240891 1869181810 825893486 1869423148 1600484213 1819045734 1700755311
		 1818386798 975332453 1936482662 1830956133 1702065519 1819240031 1601662828 1852403568 1869373300 1684368227 1634089506 744846188
		 1970236706 1717527923 1869376623 1869635447 1601465961 809116280 1869423148 1600484213 1819045734 1885304687 1953393007 975337823
		 573340976 1684956498 1767273061 975337317 1702240891 1869181810 825893486 1852121644 1701601889 1852142175 1601332580 1768383858
		 975335023 1936482662 1914842213 1869178725 1869438830 975332708 573323060 1684956530 1918857829 1869178725 813195118 825047586
		 573321262 1684956530 1918857829 1869178725 813260654 825047586 573321262 1684956530 1918857829 1869178725 829972334 825047586
		 573321262 1684956530 1918857829 1869178725 830037870 825047586 573321262 2037149552 1734701663 1936617321 578501154 1936876918
		 577662825 573322042 2037149552 1936617319 1566259746 1981951101 1601660265 577004914 1970435130 1981951077 1601660265 1701147239
		 1949966958 744846706 1701410338 1818386295 975332725 1702195828 1769349676 1834973029 577728111 1818322490 573334899 1869377379
		 1818451826 1601203553 1701080941 959855138 1868767788 1601335148 1835101283 1852792688 1920219682 573334901 1600484213 1702390128
		 1935761260 1952671088 577662815 1818322490 573334899 1600484213 1869504880 1634558322 1701410399 1852792695 1634089506 744846188
		 2020175906 1767861349 1601136238 1801678700 975332453 1936482662 1881287781 1818589289 1718511967 1868783471 1667592818 1600415092
		 1869377379 975336306 1936482662 1931619429 1701995892 1869438831 975332708 1814178864 1601467233 1684956530 2002743909 1752458345
		 741358114 1935764514 1701994356 1919247470 1768253535 578054247 746401850 1952661794 1936617321 578501154 1936876918 577662825
		 573321530 1937072496 1380993381 1701339999 1684368227 1634089506 744846188 1936028706 1936020084 1684107871 975335273 573321525
		 1953719668 1601398098 1667590243 577004907 1818322490 573334899 1969382756 1634227047 1735289188 1684107871 975335273 573322805
		 1969382756 1634227047 1735289188 1701339999 1684368227 1634089506 744846188 1702130466 1299146098 1600480367 1768186226 926556783
		 1931619384 1701995892 1685015919 1751342949 1701536613 1715085924 1702063201 32125 ;
	setAttr ".vfbSyncM" yes;
	setAttr ".mSceneName" -type "string" "C:/Users/studente/Desktop/Mappa_Scuola.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 256;
	setAttr ".rt_gpuRaysPerPixel" 2;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F76BB2CE-402C-B060-2AD5-159403294B23";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F9D85053-4EDA-3208-BA99-D3BB565AC4AF";
createNode displayLayerManager -n "layerManager";
	rename -uid "342D5ED6-4599-6B55-ACE8-E4894EAE70C7";
createNode displayLayer -n "defaultLayer";
	rename -uid "89C2B149-42C8-D1C6-DB96-308EF23C89D0";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EFC300C0-450B-BDBA-FF2C-01A83F9CA1BE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D47A3AA4-4B5C-7A47-93BC-AE84A7C2515B";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "D75D92BD-46A8-C28F-D132-6E81B997D2B7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -578.57140558106653 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode polyCube -n "polyCube1";
	rename -uid "02EDFA0C-405A-B45F-F216-98A507D5D0AA";
	setAttr ".cuv" 4;
createNode polyPlane -n "polyPlane1";
	rename -uid "AAE40174-474B-9F15-7C4E-F9B7C0AA3077";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "0673184F-4575-75A3-3814-0BBEC360C03A";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.3205376 0 10.388837 ;
	setAttr ".rs" 64340;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.24174690246582 0 6.3340945243835449 ;
	setAttr ".cbx" -type "double3" -2.3993287086486816 0 14.443578720092773 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "3B4A2D3C-4295-F9D6-C008-BFA38B52AD6F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  -9.7417469 0 13.092211723
		 -6.53929281 0 13.94357872 -5.67452621 0 6.83409452 -2.89932871 0 9.88838482;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "6A231538-4ADC-1287-862C-1C85F070BAAA";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.937318535827913 0 -15.483925670172287 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.0736074 0 -5.8938527 ;
	setAttr ".rs" 56955;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.28275558569363568 0 -10.2410181460634 ;
	setAttr ".cbx" -type "double3" 7.8644592485659501 0 -1.546686976934982 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4B1D87AC-437C-831C-F547-E884D4527FE2";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.8390427772480917 0 -8.0388087983205416 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -11.303805 0 5.3445377 ;
	setAttr ".rs" 62913;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.273093337245651 0 -3.4158539528920748 ;
	setAttr ".cbx" -type "double3" -6.3345175926167441 0 14.104928994648208 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "029E99A4-40BA-4CE7-BD39-7E92C313A01D";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.8799124621744108 0 -25.631081407121219 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.3827739 0 -15.491324 ;
	setAttr ".rs" 44348;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.14759930604648 0 -20.120002572587527 ;
	setAttr ".cbx" -type "double3" -0.61794814103793616 0 -10.862646882585086 ;
	setAttr ".raf" no;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DC62EB4B-49EC-1547-F883-988DE461E8EB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 330\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|top\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1.5\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|top\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1.5\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1.5\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1.5\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "01CBCEA4-4013-A112-6AC2-02846D095537";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "37D32B53-42B2-4316-D41D-A1A10A30F545";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.491134802762506 0 -10.111073752460126 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 17.390434 0 1.7761033 ;
	setAttr ".rs" 61507;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.843403021756647 0 -4.2412359915348326 ;
	setAttr ".cbx" -type "double3" 22.937466899816034 0 7.7934424676326479 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "DAC0CC3C-4D42-6795-05D8-D5BF2610A9F1";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.356745908511837 -7.1054273576010019e-15 -25.583644604665796 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.2129836 -7.1054274e-15 -15.473864 ;
	setAttr ".rs" 59146;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -21.550835420833867 -7.1054273576010019e-15 -25.876833653432886 ;
	setAttr ".cbx" -type "double3" 25.976802537692745 -7.1054273576010019e-15 -5.0708939790554446 ;
	setAttr ".raf" no;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "5204C728-4667-0350-553C-1EA0C7A89595";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -21.028418 -1.4210855e-14 -5.7665091 ;
	setAttr ".rs" 34440;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -24.313249489081691 -1.4210854715202004e-14 -6.1390237170458057 ;
	setAttr ".cbx" -type "double3" -17.743585487616848 -1.4210854715202004e-14 -5.3939945060014942 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "DB295BDE-4B6D-31B6-8881-53A317BAC305";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -17.839293 -1.4210855e-14 -4.4369287 ;
	setAttr ".rs" 62780;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.934999367011379 -1.4210854715202004e-14 -5.3939942675829151 ;
	setAttr ".cbx" -type "double3" -17.743585487616848 -1.4210854715202004e-14 -3.4798631030321339 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "F462642D-4543-EEE8-31CF-51AC53241F51";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[4]" -type "float3" -0.31902182 0 1.9141314 ;
	setAttr ".tk[5]" -type "float3" -0.1914131 0 1.9141314 ;
createNode polySplit -n "polySplit1";
	rename -uid "30985969-499B-CD75-1298-2795C013BE48";
	setAttr -s 2 ".e[0:1]"  0.59085399 0.59085399;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "B9FA4DFA-4915-B8BB-7BEA-12BD2C068B6C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[6]" -type "float3" 4.1472845 0 0.51043493 ;
	setAttr ".tk[7]" -type "float3" 4.1472845 0 0.44663054 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "F5328C26-4245-81B0-1C58-50BF57C3696B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -14.636137 -1.4210855e-14 -3.1246011 ;
	setAttr ".rs" 57105;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.484559913886377 -1.4210854715202004e-14 -3.2159694987535694 ;
	setAttr ".cbx" -type "double3" -13.787713905585596 -1.4210854715202004e-14 -3.0332326251268604 ;
createNode polySplit -n "polySplit2";
	rename -uid "865AE345-48D2-965A-1A30-4CA87E549E3C";
	setAttr -s 2 ".e[0:1]"  0.91672802 0.91672802;
	setAttr -s 2 ".d[0:1]"  -2147483635 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "35E38E8E-4224-AFB1-7F45-339CE530233A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[10]" -type "float3" -2.7744923 0 23.023457 ;
	setAttr ".tk[11]" -type "float3" -3.0397377 0 23.103027 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "9ED5FFEF-4425-A0F7-FD2D-26A124D1FDB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -16.70089 -1.4210855e-14 19.107878 ;
	setAttr ".rs" 33536;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.827451607001613 -1.4210854715202004e-14 18.145959917902925 ;
	setAttr ".cbx" -type "double3" -16.574327369941066 -1.4210854715202004e-14 20.069795672297456 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "C26549C4-4716-5327-137A-BFA6E1C1C8D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -13.96887 -1.4210855e-14 20.009708 ;
	setAttr ".rs" 42246;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.095432182563135 -1.4210854715202004e-14 19.047790591120698 ;
	setAttr ".cbx" -type "double3" -13.842307945502588 -1.4210854715202004e-14 20.971626345515229 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "0CEFFF6F-477B-56B8-452D-8D8CD0E7C5FE";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[14]" -type "float3" 2.7320189 0 0.90183049 ;
	setAttr ".tk[15]" -type "float3" 2.7320189 0 0.90183049 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "9F0F3388-4B59-85CB-30D5-91BABE0603D3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[14]" -type "float3" -0.071351588 0 0.0049330276 ;
	setAttr ".tk[15]" -type "float3" -0.12768912 0 -0.24858591 ;
	setAttr ".tk[16]" -type "float3" 1.1405504 0 0.21219543 ;
	setAttr ".tk[17]" -type "float3" 1.1405504 0 0.015014041 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "07E63A16-413A-1BF1-9164-F1877DA7E039";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "2E85FB5D-4D59-0369-D43C-FB89CF65DB06";
	setAttr ".dc" -type "componentList" 1 "f[6]";
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "DC6D9F61-47EC-E528-D116-8485A8200295";
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0072651898733884 -1.4210854715202004e-14 -8.1053256350755909 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -19.114285 -1.4210855e-14 -1.6202382 ;
	setAttr ".rs" 64250;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -24.632270714057277 -1.4210854715202004e-14 -23.539133008122466 ;
	setAttr ".cbx" -type "double3" -13.596300026191065 -1.4210854715202004e-14 20.298656527399995 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "0015963B-4BF8-50A6-E741-EA94FA58FF81";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[11]" -type "float3" 0.79537255 0 0.22886097 ;
	setAttr ".tk[13]" -type "float3" 0.49149758 0 0.21294606 ;
createNode polyPlane -n "polyPlane2";
	rename -uid "E89868CC-44E7-FC43-15F0-1C8E2CB01485";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "52F9E7BB-442B-3433-4010-C18B5D2CE8A4";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -18.128780241971931 0 21.817068654548255 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -16.180073 0 22.791056 ;
	setAttr ".rs" 46078;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -19.586148377424202 0 19.89145846987876 ;
	setAttr ".cbx" -type "double3" -12.773998137479744 0 25.690651971351233 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "64B6B9CE-45D9-7F91-EEB5-6299049D9361";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  -0.95736808 0 2.23385906 3.6471169
		 0 3.37358332 0.30824015 0 -1.42561018 4.8547821 0 -0.42383021;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "B54C6BF5-4641-CFAB-110E-7393F8BDD63A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -18.128780241971931 0 21.817068654548255 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -13.377831 0.25 23.291945 ;
	setAttr ".rs" 41375;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.981663580900154 0 20.893238622199622 ;
	setAttr ".cbx" -type "double3" -12.773998137479744 0.5 25.690651494514075 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "55A6F6CB-4CE0-B667-056A-A79801EDB561";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0.5 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.5 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.5 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.5 0 ;
createNode polyCube -n "polyCube2";
	rename -uid "0D95DD42-4F49-35A6-993F-53BF495F1728";
	setAttr ".cuv" 4;
createNode VRayMtl -n "M_Design";
	rename -uid "C9C463B9-4DDC-9A2A-69A8-BFBEA5687458";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".dc" -type "float3" 1 0.99309999 0 ;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".gtrec" 2;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".tlsl" 1;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" 2 "color" "diffuseColor" ;
createNode shadingEngine -n "VRayMtl1SG";
	rename -uid "C3847EBA-4BC8-0D60-E2ED-9DB860A2B067";
	setAttr ".ihi" 0;
	setAttr -s 23 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "EF559F86-4792-D12D-FD2E-1DAE7CBB5AB9";
createNode VRayMtl -n "M_Masse";
	rename -uid "3274BB06-4A13-007C-DA37-289EB998B7FD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".dc" -type "float3" 0.096000001 0.43979999 0.0603 ;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".gtrec" 2;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".tlsl" 1;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" 2 "color" "diffuseColor" ;
createNode shadingEngine -n "VRayMtl2SG";
	rename -uid "09596E9E-43D7-80EF-05D7-FEBD3E1D55E0";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "DD215A09-4DC4-9431-F49B-08980DF6C089";
createNode groupId -n "groupId8";
	rename -uid "2F7C3300-4116-B1CC-FCC1-BE91B030D251";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "65A1F7F2-4BE1-7C1C-52FD-6FA6FE197F74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "4929FD79-4911-57CE-79D6-68B0A0B64FCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "FC6E93BA-412F-99AB-BB69-B78D9548DFBD";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube3";
	rename -uid "D9F11E28-48F3-6080-C1D9-37A82524B8AF";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "B84D5EF4-4090-FACC-EC57-DEB3C3F63CEC";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.72115128426298214 0 -2.5187856721627067 0 0 1 0 0
		 3.8812702968746025 0 1.1112430446531771 0 -12.652089329321962 0 -9.6634068105844904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.711454 0 -9.1077852 ;
	setAttr ".rs" 34411;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.072029823016152 -0.5 -10.367178124339254 ;
	setAttr ".cbx" -type "double3" -10.35087853875317 0.5 -7.8483924521765482 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "77979802-463E-F7FB-FF01-618F7CDA2BA8";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.72115128426298214 0 -2.5187856721627067 0 0 1 0 0
		 3.8812702968746025 0 1.1112430446531771 0 -12.652089329321962 0 -9.6634068105844904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.7839069 0 -5.5711813 ;
	setAttr ".rs" 56437;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.6690921307868178 -0.5 -6.6268051435010609 ;
	setAttr ".cbx" -type "double3" -3.8987216819280111 0.5 -4.5155572890913014 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak10";
	rename -uid "C157173C-476D-C820-76DD-A592905D3E2E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" -0.65532339 0 1.5138149 ;
	setAttr ".tk[9]" -type "float3" -0.69463605 0 1.7914481 ;
	setAttr ".tk[10]" -type "float3" -0.69463605 0 1.7914481 ;
	setAttr ".tk[11]" -type "float3" -0.65532339 0 1.5138149 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "39FCC773-49A6-7FB7-C3FB-D8A7D3609539";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.72115128426298214 0 -2.5187856721627067 0 0 1 0 0
		 3.8812702968746025 0 1.1112430446531771 0 -12.652089329321962 0 -9.6634068105844904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2701818 0 1.0321845 ;
	setAttr ".rs" 56692;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9036542073598817 -0.5 -0.13516623953057305 ;
	setAttr ".cbx" -type "double3" -0.63670943465693419 0.5 2.19953529803335 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak11";
	rename -uid "7620B7EA-4775-891A-0781-76909CEA2664";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" -2.068433 0 1.3544768 ;
	setAttr ".tk[13]" -type "float3" -2.0393283 0 1.2193626 ;
	setAttr ".tk[14]" -type "float3" -2.0393283 0 1.2193626 ;
	setAttr ".tk[15]" -type "float3" -2.068433 0 1.3544768 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "F895ACAF-4761-1A57-562C-AFA87FBA0EEA";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.72115128426298214 0 -2.5187856721627067 0 0 1 0 0
		 3.8812702968746025 0 1.1112430446531771 0 -12.652089329321962 0 -9.6634068105844904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6377258 0 5.6363735 ;
	setAttr ".rs" 33218;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.98514597342240862 -0.5 4.4765510266300197 ;
	setAttr ".cbx" -type "double3" 2.2903057401636868 0.5 6.7961957334239074 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "4622ECA0-4AC3-6B18-D654-BA8DE135A5D6";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[16]" -type "float3" -1.3831981 0 1.0012945 ;
	setAttr ".tk[17]" -type "float3" -1.384708 0 1.0114212 ;
	setAttr ".tk[18]" -type "float3" -1.384708 0 1.0114212 ;
	setAttr ".tk[19]" -type "float3" -1.3831981 0 1.0012945 ;
createNode polyCube -n "polyCube4";
	rename -uid "7301DD1C-4FC3-83D1-FC79-31BCC87C4F74";
	setAttr ".cuv" 4;
createNode VRayMtl -n "M_Progetto_01";
	rename -uid "E41593D7-40FB-4803-BFA1-F78A83B37010";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".gtrec" 2;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".tlsl" 1;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" 2 "color" "diffuseColor" ;
createNode shadingEngine -n "VRayMtl3SG";
	rename -uid "3D726654-46ED-F238-88DB-468C7C2FB55F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "323EFE98-486B-D734-8185-5C9EC691C006";
createNode polyCube -n "polyCube5";
	rename -uid "B2B03CF0-4A26-FB42-53F5-41BFA7B5BFF5";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit3";
	rename -uid "021F4E3D-4329-429D-DD5A-D0831FF9102A";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "FB1BAEAC-4DD6-6D70-825B-98B31042BBE1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
	setAttr ".ix" -type "matrix" 13.291858826105482 0 6.7186743214811901 0 0 1 0 0 -0.45111681909217843 0 0.89246490997246197 0
		 0.12057419650020407 0 0.84771985607652667 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak13";
	rename -uid "0EB64986-4B82-2D06-E224-BEBDE1D28AD5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.0070745861 0 3.29656959
		 -0.0070745861 0 3.29656959 -0.0070745861 0 3.29656959 -0.0070745861 0 3.29656959;
createNode polyCube -n "polyCube6";
	rename -uid "8B3B872B-4C7E-6261-E0B6-22B1F0F2872D";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	rename -uid "0696679A-421C-BF2B-1FDE-ED92ECB64002";
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyCube2.out" "pCubeShape2.i";
connectAttr "groupId9.id" "pCube9Shape.iog.og[0].gid";
connectAttr "VRayMtl1SG.mwc" "pCube9Shape.iog.og[0].gco";
connectAttr "groupId8.id" "pCube9Shape.ciog.cog[0].cgid";
connectAttr "groupId18.id" "pCube16Shape.iog.og[0].gid";
connectAttr "VRayMtl1SG.mwc" "pCube16Shape.iog.og[0].gco";
connectAttr "groupId17.id" "pCube16Shape.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace13.out" "pCubeShape13.i";
connectAttr "polyCube4.out" "pCubeShape14.i";
connectAttr "polyBevel1.out" "pCubeShape20.i";
connectAttr "polyCube6.out" "pCubeShape22.i";
connectAttr "polyCube7.out" "pCubeShape28.i";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":perspShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyExtrudeFace7.out" "pPlaneShape7.i";
connectAttr "polyExtrudeFace9.out" "pPlaneShape8.i";
connectAttr "polyExtrudeFace5.out" "pPlaneShape5.i";
connectAttr "polyExtrudeFace2.out" "pPlaneShape4.i";
connectAttr "polyExtrudeFace4.out" "pPlaneShape3.i";
connectAttr "polyExtrudeFace3.out" "pPlaneShape2.i";
connectAttr "polyExtrudeFace1.out" "pPlaneShape1.i";
connectAttr "polyExtrudeFace6.out" "pPlaneShape6.i";
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "VRayMtl1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "VRayMtl2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "VRayMtl3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "VRayMtl1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "VRayMtl2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "VRayMtl3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyPlane1.out" "polyTweak1.ip";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace2.ip";
connectAttr "pPlaneShape4.wm" "polyExtrudeFace2.mp";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace3.ip";
connectAttr "pPlaneShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polySurfaceShape3.o" "polyExtrudeFace4.ip";
connectAttr "pPlaneShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polySurfaceShape4.o" "polyExtrudeFace5.ip";
connectAttr "pPlaneShape5.wm" "polyExtrudeFace5.mp";
connectAttr "polySurfaceShape5.o" "polyExtrudeFace6.ip";
connectAttr "pPlaneShape6.wm" "polyExtrudeFace6.mp";
connectAttr "polySurfaceShape6.o" "polyExtrudeEdge1.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak2.out" "polyExtrudeEdge2.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplit1.ip";
connectAttr "polyExtrudeEdge2.out" "polyTweak3.ip";
connectAttr "polySplit1.out" "polyExtrudeEdge3.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeEdge3.mp";
connectAttr "polyTweak4.out" "polySplit2.ip";
connectAttr "polyExtrudeEdge3.out" "polyTweak4.ip";
connectAttr "polySplit2.out" "polyExtrudeEdge4.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeEdge4.mp";
connectAttr "polyTweak5.out" "polyExtrudeEdge5.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak5.ip";
connectAttr "polyExtrudeEdge5.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeFace7.mp";
connectAttr "deleteComponent2.og" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "pPlaneShape8.wm" "polyExtrudeFace8.mp";
connectAttr "polyPlane2.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "pPlaneShape8.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "M_Design.oc" "VRayMtl1SG.ss";
connectAttr "pCubeShape3.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape2.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape4.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape5.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCube9Shape.ciog.cog[0]" "VRayMtl1SG.dsm" -na;
connectAttr "pCube9Shape.iog.og[0]" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape10.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape11.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape12.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCube16Shape.ciog.cog[0]" "VRayMtl1SG.dsm" -na;
connectAttr "pCube16Shape.iog.og[0]" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape19.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape14.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape13.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape29.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape28.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape27.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape26.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape25.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape24.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape23.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape22.iog" "VRayMtl1SG.dsm" -na;
connectAttr "pCubeShape20.iog" "VRayMtl1SG.dsm" -na;
connectAttr "groupId9.msg" "VRayMtl1SG.gn" -na;
connectAttr "groupId18.msg" "VRayMtl1SG.gn" -na;
connectAttr "VRayMtl1SG.msg" "materialInfo1.sg";
connectAttr "M_Design.msg" "materialInfo1.m";
connectAttr "M_Masse.oc" "VRayMtl2SG.ss";
connectAttr "pCubeShape1.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape6.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape1.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape2.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape3.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape4.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape5.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape8.iog" "VRayMtl2SG.dsm" -na;
connectAttr "pPlaneShape7.iog" "VRayMtl2SG.dsm" -na;
connectAttr "VRayMtl2SG.msg" "materialInfo2.sg";
connectAttr "M_Masse.msg" "materialInfo2.m";
connectAttr "polyCube3.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak12.ip";
connectAttr "M_Progetto_01.oc" "VRayMtl3SG.ss";
connectAttr "VRayMtl3SG.msg" "materialInfo3.sg";
connectAttr "M_Progetto_01.msg" "materialInfo3.m";
connectAttr "polyCube5.out" "polySplit3.ip";
connectAttr "polyTweak13.out" "polyBevel1.ip";
connectAttr "pCubeShape20.wm" "polyBevel1.mp";
connectAttr "polySplit3.out" "polyTweak13.ip";
connectAttr "VRayMtl1SG.pa" ":renderPartition.st" -na;
connectAttr "VRayMtl2SG.pa" ":renderPartition.st" -na;
connectAttr "VRayMtl3SG.pa" ":renderPartition.st" -na;
connectAttr "M_Design.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Masse.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Progetto_01.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Mappa_Scuola.ma
