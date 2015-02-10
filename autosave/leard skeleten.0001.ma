//Maya ASCII 2015 scene
//Name: leard skeleten.0001.ma
//Last modified: Fri, Feb 06, 2015 09:28:25 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKSkeletonGeneratorNode"
		 -nodeType "HIKState2SK" -nodeType "HIKState2GlobalSK" -nodeType "HIKProperty2State"
		 -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2014.2";
requires -nodeType "CustomRigRetargeterNode" "retargeterNodes.py" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "C:/Users/jwulf/Dropbox/cis/410py/gundam/gundam/scenes/leard skeleten.ma";
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.8597989210733693 9.5858736264647675 14.204023421613311 ;
	setAttr ".r" -type "double3" -24.938352729358574 -0.99999999999989486 -2.4851868508880358e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.024765825110766;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.62202931885487223 3.250788131835078 0.58221203356812445 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "body";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "bodyShape" -p "body";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "bodyShapeOrig" -p "body";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 294 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[250:293]" 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  -2.075363874 -0.5 0.5 -1.075363874 -0.5 0.5 -2.075363874 0.5 0.5
		 -1.075363874 0.5 0.5 -2.075363874 0.5 -0.5 -1.075363874 0.5 -0.5 -2.075363874 -0.5 -0.5
		 -1.075363874 -0.5 -0.5 -2.075363874 0.25695032 0.5 -1.075363874 0.25695032 0.5 -2.075363874 1.25695038 0.5
		 -1.075363874 1.25695038 0.5 -2.075363874 1.25695038 -0.5 -1.075363874 1.25695038 -0.5
		 -2.075363874 0.25695032 -0.5 -1.075363874 0.25695032 -0.5 -2.075363874 1.034493923 0.5
		 -1.075363874 1.034493923 0.5 -2.075363874 2.034493923 0.5 -1.075363874 2.034493923 0.5
		 -2.075363874 2.034493923 -0.5 -1.075363874 2.034493923 -0.5 -2.075363874 1.034493923 -0.5
		 -1.075363874 1.034493923 -0.5 -2.075363874 1.90079188 0.5 -1.075363874 1.90079188 0.5
		 -2.075363874 2.90079188 0.5 -1.075363874 2.90079188 0.5 -2.075363874 2.90079188 -0.5
		 -1.075363874 2.90079188 -0.5 -2.075363874 1.90079188 -0.5 -1.075363874 1.90079188 -0.5
		 -0.23854944 -0.5 0.5 0.76145053 -0.5 0.5 -0.23854944 0.5 0.5 0.76145053 0.5 0.5 -0.23854944 0.5 -0.5
		 0.76145053 0.5 -0.5 -0.23854944 -0.5 -0.5 0.76145053 -0.5 -0.5 -0.23854944 0.25695032 0.5
		 0.76145053 0.25695032 0.5 -0.23854944 1.25695038 0.5 0.76145053 1.25695038 0.5 -0.23854944 1.25695038 -0.5
		 0.76145053 1.25695038 -0.5 -0.23854944 0.25695032 -0.5 0.76145053 0.25695032 -0.5
		 -0.23854944 1.034493923 0.5 0.76145053 1.034493923 0.5 -0.23854944 2.034493923 0.5
		 0.76145053 2.034493923 0.5 -0.23854944 2.034493923 -0.5 0.76145053 2.034493923 -0.5
		 -0.23854944 1.034493923 -0.5 0.76145053 1.034493923 -0.5 -0.23854944 1.90079188 0.5
		 0.76145053 1.90079188 0.5 -0.23854944 2.90079188 0.5 0.76145053 2.90079188 0.5 -0.23854944 2.90079188 -0.5
		 0.76145053 2.90079188 -0.5 -0.23854944 1.90079188 -0.5 0.76145053 1.90079188 -0.5
		 -1.1410538 2.6906817 0.5 -0.1410538 2.6906817 0.5 -1.1410538 3.6906817 0.5 -0.1410538 3.6906817 0.5
		 -1.1410538 3.6906817 -0.5 -0.1410538 3.6906817 -0.5 -1.1410538 2.6906817 -0.5 -0.1410538 2.6906817 -0.5
		 -1.1410538 3.44763184 0.5 -0.1410538 3.44763184 0.5 -1.1410538 4.44763184 0.5 -0.1410538 4.44763184 0.5
		 -1.1410538 4.44763184 -0.5 -0.1410538 4.44763184 -0.5 -1.1410538 3.44763184 -0.5
		 -0.1410538 3.44763184 -0.5 -1.1410538 4.22517538 0.5 -0.1410538 4.22517538 0.5 -1.1410538 5.22517538 0.5
		 -0.1410538 5.22517538 0.5 -1.1410538 5.22517538 -0.5 -0.1410538 5.22517538 -0.5 -1.1410538 4.22517538 -0.5
		 -0.1410538 4.22517538 -0.5 -1.1410538 5.091473579 0.5 -0.1410538 5.091473579 0.5
		 -1.1410538 6.091473579 0.5 -0.1410538 6.091473579 0.5 -1.1410538 6.091473579 -0.5
		 -0.1410538 6.091473579 -0.5 -1.1410538 5.091473579 -0.5 -0.1410538 5.091473579 -0.5
		 3.15122366 5.036712646 0.47436741 3.13424349 6.036568642 0.47445688 2.15137887 5.019732475 0.47910193
		 2.1343987 6.019587994 0.47919139 2.1466434 5.019741535 -0.52088684 2.12966323 6.019597054 -0.52079737
		 3.14648819 5.036721706 -0.52562135 3.12950802 6.036577225 -0.52553189 2.39439106 5.023859501 0.4779512
		 2.37741089 6.023715019 0.47804067 1.39454603 5.0068788528 0.48268571 1.37756586 6.006734848 0.48277518
		 1.38981104 5.0068883896 -0.51730305 1.37283087 6.0067439079 -0.51721358 2.38965559 5.023868561 -0.52203757
		 2.37267542 6.023724556 -0.5219481 1.61696815 5.010656357 0.4816325 1.59998798 6.010512352 0.48172197
		 0.6171236 4.99367619 0.48636702 0.60014343 5.99353218 0.48645648 0.61238861 4.99368525 -0.51362181
		 0.59540844 5.99354076 -0.51353228 1.61223316 5.010665417 -0.51835626 1.59525299 6.010520935 -0.5182668
		 0.75080442 4.99594641 0.48573396 0.73382425 5.99580193 0.48582348 -0.24904013 4.97896576 0.49046847
		 -0.2660203 5.97882175 0.490558 -0.25377512 4.9789753 -0.50952029 -0.27075529 5.97883081 -0.50943077
		 0.74606943 4.99595547 -0.51425481 0.72908926 5.99581146 -0.51416528 -4.41519403 5.96733904 0.50427777
		 -4.41639805 4.96733952 0.50427437 -3.41520596 5.96613503 0.49954239 -3.41640973 4.96613598 0.49953902
		 -3.41994143 5.96614408 -0.50044638 -3.4211452 4.96614456 -0.50044978 -4.4199295 5.9673481 -0.49571103
		 -4.42113304 4.96734858 -0.49571443 -3.65825272 5.9664278 0.50069332 -3.65945649 4.96642828 0.50068992
		 -2.65826464 5.96522427 0.49595797 -2.65946865 4.96522474 0.49595457 -2.66299963 5.96523285 -0.50403082
		 -2.66420364 4.9652338 -0.50403422 -3.66298819 5.96643686 -0.49929547 -3.66419196 4.96643734 -0.49929887
		 -2.88071871 5.96549177 0.49701136 -2.88192272 4.96549225 0.497008 -1.88073063 5.96428823 0.49227601
		 -1.88193464 4.96428871 0.49227265 -1.88546562 5.96429729 -0.50771278 -1.88666964 4.96429777 -0.50771618
		 -2.8854537 5.96550083 -0.50297743 -2.88665771 4.96550179 -0.50298083 -2.014430523 5.96444893 0.49290913
		 -2.015634537 4.96444988 0.49290577 -1.014442444 5.96324539 0.48817378 -1.015646458 4.96324587 0.48817042
		 -1.019177437 5.96325445 -0.51181501 -1.020381451 4.96325493 -0.51181841 -2.019165516 5.96445799 -0.50707966
		 -2.02036953 4.96445847 -0.50708306 -1.11840844 5.86339951 0.5 -0.1184085 5.86339951 0.5
		 -1.11840844 6.86339951 0.5 -0.1184085 6.86339951 0.5 -1.11840844 6.86339951 -0.5
		 -0.1184085 6.86339951 -0.5;
	setAttr ".vt[166:167]" -1.11840844 5.86339951 -0.5 -0.1184085 5.86339951 -0.5;
	setAttr -s 252 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:251]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0 120 121 0
		 122 123 0 124 125 0 126 127 0 120 122 0 121 123 0 122 124 0 123 125 0 124 126 0 125 127 0
		 126 120 0 127 121 0 128 129 0 130 131 0 132 133 0 134 135 0 128 130 0 129 131 0 130 132 0
		 131 133 0 132 134 0 133 135 0 134 128 0 135 129 0 136 137 0 138 139 0 140 141 0 142 143 0
		 136 138 0 137 139 0 138 140 0 139 141 0 140 142 0 141 143 0 142 136 0 143 137 0 144 145 0
		 146 147 0 148 149 0 150 151 0 144 146 0 145 147 0 146 148 0 147 149 0 148 150 0 149 151 0
		 150 144 0 151 145 0 152 153 0 154 155 0 156 157 0 158 159 0 152 154 0 153 155 0 154 156 0
		 155 157 0 156 158 0 157 159 0 158 152 0 159 153 0 160 161 0 162 163 0 164 165 0 166 167 0
		 160 162 0 161 163 0 162 164 0 163 165 0 164 166 0 165 167 0 166 160 0 167 161 0;
	setAttr -s 126 -ch 504 ".fc[0:125]" -type "polyFaces" 
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
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181
		f 4 156 161 -158 -161
		mu 0 4 182 183 184 185
		f 4 157 163 -159 -163
		mu 0 4 185 184 186 187
		f 4 158 165 -160 -165
		mu 0 4 187 186 188 189
		f 4 159 167 -157 -167
		mu 0 4 189 188 190 191
		f 4 -168 -166 -164 -162
		mu 0 4 183 192 193 184
		f 4 166 160 162 164
		mu 0 4 194 182 185 195
		f 4 168 173 -170 -173
		mu 0 4 196 197 198 199
		f 4 169 175 -171 -175
		mu 0 4 199 198 200 201
		f 4 170 177 -172 -177
		mu 0 4 201 200 202 203
		f 4 171 179 -169 -179
		mu 0 4 203 202 204 205
		f 4 -180 -178 -176 -174
		mu 0 4 197 206 207 198
		f 4 178 172 174 176
		mu 0 4 208 196 199 209
		f 4 180 185 -182 -185
		mu 0 4 210 211 212 213
		f 4 181 187 -183 -187
		mu 0 4 213 212 214 215
		f 4 182 189 -184 -189
		mu 0 4 215 214 216 217
		f 4 183 191 -181 -191
		mu 0 4 217 216 218 219
		f 4 -192 -190 -188 -186
		mu 0 4 211 220 221 212
		f 4 190 184 186 188
		mu 0 4 222 210 213 223
		f 4 192 197 -194 -197
		mu 0 4 224 225 226 227
		f 4 193 199 -195 -199
		mu 0 4 227 226 228 229
		f 4 194 201 -196 -201
		mu 0 4 229 228 230 231
		f 4 195 203 -193 -203
		mu 0 4 231 230 232 233
		f 4 -204 -202 -200 -198
		mu 0 4 225 234 235 226
		f 4 202 196 198 200
		mu 0 4 236 224 227 237
		f 4 204 209 -206 -209
		mu 0 4 238 239 240 241
		f 4 205 211 -207 -211
		mu 0 4 241 240 242 243
		f 4 206 213 -208 -213
		mu 0 4 243 242 244 245
		f 4 207 215 -205 -215
		mu 0 4 245 244 246 247
		f 4 -216 -214 -212 -210
		mu 0 4 239 248 249 240
		f 4 214 208 210 212
		mu 0 4 250 238 241 251
		f 4 216 221 -218 -221
		mu 0 4 252 253 254 255
		f 4 217 223 -219 -223
		mu 0 4 255 254 256 257
		f 4 218 225 -220 -225
		mu 0 4 257 256 258 259
		f 4 219 227 -217 -227
		mu 0 4 259 258 260 261
		f 4 -228 -226 -224 -222
		mu 0 4 253 262 263 254
		f 4 226 220 222 224
		mu 0 4 264 252 255 265
		f 4 228 233 -230 -233
		mu 0 4 266 267 268 269
		f 4 229 235 -231 -235
		mu 0 4 269 268 270 271
		f 4 230 237 -232 -237
		mu 0 4 271 270 272 273
		f 4 231 239 -229 -239
		mu 0 4 273 272 274 275
		f 4 -240 -238 -236 -234
		mu 0 4 267 276 277 268
		f 4 238 232 234 236
		mu 0 4 278 266 269 279
		f 4 240 245 -242 -245
		mu 0 4 280 281 282 283
		f 4 241 247 -243 -247
		mu 0 4 283 282 284 285
		f 4 242 249 -244 -249
		mu 0 4 285 284 286 287
		f 4 243 251 -241 -251
		mu 0 4 287 286 288 289
		f 4 -252 -250 -248 -246
		mu 0 4 281 290 291 282
		f 4 250 244 246 248
		mu 0 4 292 280 283 293;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Character1_Reference";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.62202939251646305 0 0 ;
createNode locator -n "Character1_ReferenceShape" -p "Character1_Reference";
	setAttr -k off ".v";
createNode joint -n "Character1_Hips" -p "Character1_Reference";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 3.4404597349527677 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 3.4404597349527628 0 1;
	setAttr ".typ" 1;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftUpLeg" -p "Character1_Hips";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.87865573835478328 -0.59643845859232769 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.25662634583832022 2.84402127636044 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftLeg" -p "Character1_LeftUpLeg";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.7483689318416562 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.25662634583832022 1.0956523445187838 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftFoot" -p "Character1_LeftLeg";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.5856158536173812 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.25662634583832022 -0.48996350909859743 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftToeBase" -p "Character1_LeftFoot";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.3257576715083346e-007 0.11470607022923263 0.19834638512210123 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.25662677841408738 -0.3752574388693648 0.19834638512210123 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightUpLeg" -p "Character1_Hips";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.87865573835478328 -0.59643845859232769 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5006851308712463 2.84402127636044 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightLeg" -p "Character1_RightUpLeg";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.7483689318416562 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5006851308712463 1.0956523445187838 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightFoot" -p "Character1_RightLeg";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.5856158536173812 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5006851308712463 -0.48996350909859743 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightToeBase" -p "Character1_RightFoot";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -4.3257576720634461e-007 0.11470607022923263 0.19834638512210123 ;
	setAttr ".jo" -type "double3" 0 1.462281197300244e-006 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 0 -2.5521621482894059e-008 0 0 1 0 0
		 2.5521621482894059e-008 0 0.99999999999999967 0 -1.5006855634470135 -0.3752574388693648 0.19834638512210123 1;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_Spine" -p "Character1_Hips";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0.27270392275109057 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 3.7131636577038583 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_Spine1" -p "Character1_Spine";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 0.60026990941298308 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 4.3134335671168413 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_Spine2" -p "Character1_Spine1";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 0.60026990941298397 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 4.9137034765298253 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftShoulder" -p "Character1_Spine2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.35932485779920098 0.66215604424636876 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.26270453471726207 5.5758595207761941 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.54962586208265707 5.3527884267268178e-006 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.286921327365395 5.5758648735646208 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftForeArm" -p "Character1_LeftArm";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.4016474158868057 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6885687432522007 5.5758648735646208 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_LeftHand" -p "Character1_LeftForeArm";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.3704211469540963 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.0589898902062971 5.5758648735646208 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightShoulder" -p "Character1_Spine2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.35932485779920098 0.66215604424636876 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.98135425031566403 5.5758595207761941 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightArm" -p "Character1_RightShoulder";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.54962586208265707 5.3527884267268178e-006 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.5309801123983211 5.5758648735646208 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightForeArm" -p "Character1_RightArm";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -1.4016474158868057 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.9326275282851268 5.5758648735646208 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_RightHand" -p "Character1_RightForeArm";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -1.3704211469540963 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.3030486752392232 5.5758648735646208 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_Neck" -p "Character1_Spine2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 0.60026990941298308 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 5.5139733859428084 0 1;
	setAttr ".typ" 7;
	setAttr ".radi" 0.13166158689199267;
createNode joint -n "Character1_Head" -p "Character1_Neck";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 0.77915406500312923 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 6.2931274509459376 0 1;
	setAttr ".typ" 8;
	setAttr ".radi" 0.13166158689199267;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode HIKCharacterNode -n "Character1";
	setAttr ".OutputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".ReferenceTx" -0.62202939251646305;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTx" -0.62202939251646305;
	setAttr ".HipsTy" 3.4404597349527677;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 0.25662634583832022;
	setAttr ".LeftUpLegTy" 2.84402127636044;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 0.25662634583832022;
	setAttr ".LeftLegTy" 1.0956523445187838;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 0.25662634583832022;
	setAttr ".LeftFootTy" -0.48996350909859743;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -1.5006851308712463;
	setAttr ".RightUpLegTy" 2.84402127636044;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -1.5006851308712463;
	setAttr ".RightLegTy" 1.0956523445187838;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -1.5006851308712463;
	setAttr ".RightFootTy" -0.48996350909859743;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTx" -0.62202939251646305;
	setAttr ".SpineTy" 3.7131636577038583;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 0.286921327365395;
	setAttr ".LeftArmTy" 5.5758648735646208;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 1.6885687432522007;
	setAttr ".LeftForeArmTy" 5.5758648735646208;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 3.0589898902062971;
	setAttr ".LeftHandTy" 5.5758648735646208;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -1.5309801123983211;
	setAttr ".RightArmTy" 5.5758648735646208;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -2.9326275282851268;
	setAttr ".RightForeArmTy" 5.5758648735646208;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -4.3030486752392232;
	setAttr ".RightHandTy" 5.5758648735646208;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTx" -0.62202939251646305;
	setAttr ".HeadTy" 6.2931274509459376;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 0.25662677841408738;
	setAttr ".LeftToeBaseTy" -0.3752574388693648;
	setAttr ".LeftToeBaseTz" 0.19834638512210123;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -1.5006855634470135;
	setAttr ".RightToeBaseTy" -0.3752574388693648;
	setAttr ".RightToeBaseTz" 0.19834638512210123;
	setAttr ".RightToeBaseSx" 0.99999999999999967;
	setAttr ".RightToeBaseSz" 0.99999999999999967;
	setAttr ".RightToeBaseJointOrienty" 1.462281197300244e-006;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" -0.26270453471726207;
	setAttr ".LeftShoulderTy" 5.5758595207761941;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.98135425031566403;
	setAttr ".RightShoulderTy" 5.5758595207761941;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTx" -0.62202939251646305;
	setAttr ".NeckTy" 5.5139733859428084;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 80.519743439999999;
	setAttr ".LeftFingerBaseTy" 147.08957459999999;
	setAttr ".LeftFingerBaseTz" 1.304684401;
	setAttr ".LeftFingerBaseRy" -6.2191910648259628e-005;
	setAttr ".RightFingerBaseTx" -81.763802225032933;
	setAttr ".RightFingerBaseTy" 147.08957459999999;
	setAttr ".RightFingerBaseTz" 1.304684401;
	setAttr ".RightFingerBaseRy" -0.034907713150901909;
	setAttr ".Spine1Tx" -0.62202939251646305;
	setAttr ".Spine1Ty" 4.3134335671168413;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Tx" -0.62202939251646305;
	setAttr ".Spine2Ty" 4.9137034765298253;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 119;
	setAttr ".Spine4Ty" 123;
	setAttr ".Spine5Ty" 127;
	setAttr ".Spine6Ty" 131;
	setAttr ".Spine7Ty" 135;
	setAttr ".Spine8Ty" 139;
	setAttr ".Spine9Ty" 143;
	setAttr ".Neck1Ty" 147;
	setAttr ".Neck2Ty" 149;
	setAttr ".Neck3Ty" 151;
	setAttr ".Neck4Ty" 153;
	setAttr ".Neck5Ty" 155;
	setAttr ".Neck6Ty" 157;
	setAttr ".Neck7Ty" 159;
	setAttr ".Neck8Ty" 161;
	setAttr ".Neck9Ty" 163;
	setAttr ".LeftUpLegRollTx" 0.25662634583832022;
	setAttr ".LeftUpLegRollTy" 1.9698368104396118;
	setAttr ".LeftLegRollTx" 0.25662634583832022;
	setAttr ".LeftLegRollTy" 0.30284441771009318;
	setAttr ".RightUpLegRollTx" -1.5006851308712463;
	setAttr ".RightUpLegRollTy" 1.9698368104396118;
	setAttr ".RightLegRollTx" -1.5006851308712463;
	setAttr ".RightLegRollTy" 0.30284441771009318;
	setAttr ".LeftArmRollTx" 0.98774503530879787;
	setAttr ".LeftArmRollTy" 5.5758648735646208;
	setAttr ".LeftForeArmRollTx" 2.3737793167292489;
	setAttr ".LeftForeArmRollTy" 5.5758648735646208;
	setAttr ".RightArmRollTx" -2.2318038203417241;
	setAttr ".RightArmRollTy" 5.5758648735646208;
	setAttr ".RightForeArmRollTx" -3.617838101762175;
	setAttr ".RightForeArmRollTy" 5.5758648735646208;
	setAttr ".HipsTranslationTy" 100;
	setAttr ".HipsTranslationMinRLimitx" -45;
	setAttr ".HipsTranslationMinRLimity" -45;
	setAttr ".HipsTranslationMinRLimitz" -45;
	setAttr ".HipsTranslationMaxRLimitx" 45;
	setAttr ".HipsTranslationMaxRLimity" 45;
	setAttr ".HipsTranslationMaxRLimitz" 45;
	setAttr ".LeftHandThumb1Tx" 3.2822207945274986;
	setAttr ".LeftHandThumb1Ty" 5.679650635454994;
	setAttr ".LeftHandThumb1Tz" 0.38490905284081911;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 3.4111973604384107;
	setAttr ".LeftHandThumb2Ty" 5.6587654341172069;
	setAttr ".LeftHandThumb2Tz" 0.44849568975742793;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 3.5417421467122372;
	setAttr ".LeftHandThumb3Ty" 5.6587649198755248;
	setAttr ".LeftHandThumb3Tz" 0.44849652942486928;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandThumb4Tx" 3.6786318770330468;
	setAttr ".LeftHandThumb4Ty" 5.6587650328528643;
	setAttr ".LeftHandThumb4Tz" 0.44849579141273477;
	setAttr ".LeftHandThumb4MinRLimitx" -45;
	setAttr ".LeftHandThumb4MinRLimity" -45;
	setAttr ".LeftHandThumb4MinRLimitz" -45;
	setAttr ".LeftHandThumb4MaxRLimitx" 45;
	setAttr ".LeftHandThumb4MaxRLimity" 45;
	setAttr ".LeftHandThumb4MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 3.5118406494080188;
	setAttr ".LeftHandIndex1Ty" 5.7185394497984925;
	setAttr ".LeftHandIndex1Tz" 0.31203679892935043;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 3.7286035912323046;
	setAttr ".LeftHandIndex2Ty" 5.7185385888332494;
	setAttr ".LeftHandIndex2Tz" 0.32526718039442154;
	setAttr ".LeftHandIndex2JointOrienty" 0.00060923483500415594;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 3.8647530769773257;
	setAttr ".LeftHandIndex3Ty" 5.7185380512169441;
	setAttr ".LeftHandIndex3Tz" 0.33357720781469241;
	setAttr ".LeftHandIndex3JointOrienty" 0.00060923483500415594;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandIndex4Tx" 3.9652117910464848;
	setAttr ".LeftHandIndex4Ty" 5.7185376538483714;
	setAttr ".LeftHandIndex4Tz" 0.33970878448048225;
	setAttr ".LeftHandIndex4JointOrienty" 0.00060923483500415594;
	setAttr ".LeftHandIndex4MinRLimitx" -45;
	setAttr ".LeftHandIndex4MinRLimity" -45;
	setAttr ".LeftHandIndex4MinRLimitz" -45;
	setAttr ".LeftHandIndex4MaxRLimitx" 45;
	setAttr ".LeftHandIndex4MaxRLimity" 45;
	setAttr ".LeftHandIndex4MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 3.5112196662843709;
	setAttr ".LeftHandMiddle1Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle1Tz" 0.11726621664611887;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 3.7608606804670792;
	setAttr ".LeftHandMiddle2Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle2Tz" 0.11729340157610825;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 3.9028061353187096;
	setAttr ".LeftHandMiddle3Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle3Tz" 0.11730884158810462;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle4Tx" 4.0057594841159609;
	setAttr ".LeftHandMiddle4Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle4Tz" 0.11731995050879354;
	setAttr ".LeftHandMiddle4MinRLimitx" -45;
	setAttr ".LeftHandMiddle4MinRLimity" -45;
	setAttr ".LeftHandMiddle4MinRLimitz" -45;
	setAttr ".LeftHandMiddle4MaxRLimitx" 45;
	setAttr ".LeftHandMiddle4MaxRLimity" 45;
	setAttr ".LeftHandMiddle4MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 3.5155254265026619;
	setAttr ".LeftHandRing1Ty" 5.7255592539302205;
	setAttr ".LeftHandRing1Tz" -0.071289842824901029;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 3.748458202960931;
	setAttr ".LeftHandRing2Ty" 5.7255592539302205;
	setAttr ".LeftHandRing2Tz" -0.071289834825500234;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 3.8667543987483302;
	setAttr ".LeftHandRing3Ty" 5.7255592539302205;
	setAttr ".LeftHandRing3Tz" -0.071289845341566446;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandRing4Tx" 3.9654838943964017;
	setAttr ".LeftHandRing4Ty" 5.7255592539302205;
	setAttr ".LeftHandRing4Tz" -0.071289918774268185;
	setAttr ".LeftHandRing4MinRLimitx" -45;
	setAttr ".LeftHandRing4MinRLimity" -45;
	setAttr ".LeftHandRing4MinRLimitz" -45;
	setAttr ".LeftHandRing4MaxRLimitx" 45;
	setAttr ".LeftHandRing4MaxRLimity" 45;
	setAttr ".LeftHandRing4MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 3.5149358719822201;
	setAttr ".LeftHandPinky1Ty" 5.698563645919215;
	setAttr ".LeftHandPinky1Tz" -0.2238354999903634;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 3.6711959411740547;
	setAttr ".LeftHandPinky2Ty" 5.698565227601966;
	setAttr ".LeftHandPinky2Tz" -0.2238354999903634;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 3.7725512867129201;
	setAttr ".LeftHandPinky3Ty" 5.6985662521895613;
	setAttr ".LeftHandPinky3Tz" -0.2238355128433332;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".LeftHandPinky4Tx" 3.8581021483285705;
	setAttr ".LeftHandPinky4Ty" 5.6985671170505743;
	setAttr ".LeftHandPinky4Tz" -0.22383544174753509;
	setAttr ".LeftHandPinky4MinRLimitx" -45;
	setAttr ".LeftHandPinky4MinRLimity" -45;
	setAttr ".LeftHandPinky4MinRLimitz" -45;
	setAttr ".LeftHandPinky4MaxRLimitx" 45;
	setAttr ".LeftHandPinky4MaxRLimity" 45;
	setAttr ".LeftHandPinky4MaxRLimitz" 45;
	setAttr ".LeftHandExtraFinger1Tx" 80.592138829999996;
	setAttr ".LeftHandExtraFinger1Ty" 146.7884134;
	setAttr ".LeftHandExtraFinger1Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger1Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger2Tx" 82.636238160000005;
	setAttr ".LeftHandExtraFinger2Ty" 146.7883913;
	setAttr ".LeftHandExtraFinger2Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger2Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger3Tx" 84.610739649999999;
	setAttr ".LeftHandExtraFinger3Ty" 146.7883775;
	setAttr ".LeftHandExtraFinger3Tz" -4.4903566079999999;
	setAttr ".LeftHandExtraFinger3Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger4Tx" 86.277354299999999;
	setAttr ".LeftHandExtraFinger4Ty" 146.7883673;
	setAttr ".LeftHandExtraFinger4Tz" -4.4903558170000002;
	setAttr ".LeftHandExtraFinger4Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger4Rz" -5.2244860362123464e-006;
	setAttr ".RightHandThumb1Tx" -4.5262795795604251;
	setAttr ".RightHandThumb1Ty" 5.679650635454994;
	setAttr ".RightHandThumb1Tz" 0.38490905284081911;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -4.6552561454713368;
	setAttr ".RightHandThumb2Ty" 5.6587654341172069;
	setAttr ".RightHandThumb2Tz" 0.44849568975742793;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -4.7858009317451637;
	setAttr ".RightHandThumb3Ty" 5.6587649198755248;
	setAttr ".RightHandThumb3Tz" 0.44849652942486928;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandThumb4Tx" -4.9226906620659729;
	setAttr ".RightHandThumb4Ty" 5.6587650328528643;
	setAttr ".RightHandThumb4Tz" 0.44849579141273477;
	setAttr ".RightHandThumb4MinRLimitx" -45;
	setAttr ".RightHandThumb4MinRLimity" -45;
	setAttr ".RightHandThumb4MinRLimitz" -45;
	setAttr ".RightHandThumb4MaxRLimitx" 45;
	setAttr ".RightHandThumb4MaxRLimity" 45;
	setAttr ".RightHandThumb4MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -4.7558994344409449;
	setAttr ".RightHandIndex1Ty" 5.7185394497984925;
	setAttr ".RightHandIndex1Tz" 0.31203679892935043;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -4.9726623762652311;
	setAttr ".RightHandIndex2Ty" 5.7185385888332494;
	setAttr ".RightHandIndex2Tz" 0.32526718039442154;
	setAttr ".RightHandIndex2JointOrienty" 0.0006092545355265459;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -5.1088118620102518;
	setAttr ".RightHandIndex3Ty" 5.7185380512169441;
	setAttr ".RightHandIndex3Tz" 0.33357720781469241;
	setAttr ".RightHandIndex3JointOrienty" 0.00060925452882496249;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandIndex4Tx" -5.2092705760794109;
	setAttr ".RightHandIndex4Ty" 5.7185376538483714;
	setAttr ".RightHandIndex4Tz" 0.33970878448048225;
	setAttr ".RightHandIndex4JointOrienty" 0.00060925452882496249;
	setAttr ".RightHandIndex4MinRLimitx" -45;
	setAttr ".RightHandIndex4MinRLimity" -45;
	setAttr ".RightHandIndex4MinRLimitz" -45;
	setAttr ".RightHandIndex4MaxRLimitx" 45;
	setAttr ".RightHandIndex4MaxRLimity" 45;
	setAttr ".RightHandIndex4MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -4.755278451317297;
	setAttr ".RightHandMiddle1Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle1Tz" 0.11726621664611887;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -5.0049194655000058;
	setAttr ".RightHandMiddle2Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle2Tz" 0.11729340157610825;
	setAttr ".RightHandMiddle2JointOrienty" 0.00060925453552654622;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -5.1468649203516357;
	setAttr ".RightHandMiddle3Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle3Tz" 0.11730884158810462;
	setAttr ".RightHandMiddle3JointOrienty" -0.0018277636065796394;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandMiddle4Tx" -5.2498182691488875;
	setAttr ".RightHandMiddle4Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle4Tz" 0.11731995050879354;
	setAttr ".RightHandMiddle4JointOrienty" 0.0018277636065796399;
	setAttr ".RightHandMiddle4MinRLimitx" -45;
	setAttr ".RightHandMiddle4MinRLimity" -45;
	setAttr ".RightHandMiddle4MinRLimitz" -45;
	setAttr ".RightHandMiddle4MaxRLimitx" 45;
	setAttr ".RightHandMiddle4MaxRLimity" 45;
	setAttr ".RightHandMiddle4MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -4.7595842115355884;
	setAttr ".RightHandRing1Ty" 5.7255592539302205;
	setAttr ".RightHandRing1Tz" -0.071289842824901029;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -4.9925169879938576;
	setAttr ".RightHandRing2Ty" 5.7255592539302205;
	setAttr ".RightHandRing2Tz" -0.071289834825500234;
	setAttr ".RightHandRing2JointOrienty" 0.00060925453552654601;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -5.1108131837812563;
	setAttr ".RightHandRing3Ty" 5.7255592539302205;
	setAttr ".RightHandRing3Tz" -0.071289845341566446;
	setAttr ".RightHandRing3JointOrienty" -6.7015834319882284e-012;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandRing4Tx" -5.2095426794293278;
	setAttr ".RightHandRing4Ty" 5.7255592539302205;
	setAttr ".RightHandRing4Tz" -0.071289918774268185;
	setAttr ".RightHandRing4JointOrienty" -6.7015834319882284e-012;
	setAttr ".RightHandRing4MinRLimitx" -45;
	setAttr ".RightHandRing4MinRLimity" -45;
	setAttr ".RightHandRing4MinRLimitz" -45;
	setAttr ".RightHandRing4MaxRLimitx" 45;
	setAttr ".RightHandRing4MaxRLimity" 45;
	setAttr ".RightHandRing4MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -4.7589946570151467;
	setAttr ".RightHandPinky1Ty" 5.698563645919215;
	setAttr ".RightHandPinky1Tz" -0.2238354999903634;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -4.9152547262069808;
	setAttr ".RightHandPinky2Ty" 5.698565227601966;
	setAttr ".RightHandPinky2Tz" -0.2238354999903634;
	setAttr ".RightHandPinky2JointOrienty" 0.00060925453552654622;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -5.0166100717458466;
	setAttr ".RightHandPinky3Ty" 5.6985662521895613;
	setAttr ".RightHandPinky3Tz" -0.2238355128433332;
	setAttr ".RightHandPinky3JointOrienty" -0.0012185090710530924;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandPinky4Tx" -5.102160933361497;
	setAttr ".RightHandPinky4Ty" 5.6985671170505743;
	setAttr ".RightHandPinky4Tz" -0.22383544174753509;
	setAttr ".RightHandPinky4JointOrienty" 0.00060925453552654644;
	setAttr ".RightHandPinky4MinRLimitx" -45;
	setAttr ".RightHandPinky4MinRLimity" -45;
	setAttr ".RightHandPinky4MinRLimitz" -45;
	setAttr ".RightHandPinky4MaxRLimitx" 45;
	setAttr ".RightHandPinky4MaxRLimity" 45;
	setAttr ".RightHandPinky4MaxRLimitz" 45;
	setAttr ".RightHandExtraFinger1Tx" -81.83619761503293;
	setAttr ".RightHandExtraFinger1Ty" 146.7884134;
	setAttr ".RightHandExtraFinger1Tz" -4.4903564649999996;
	setAttr ".RightHandExtraFinger1Ry" -0.034907713534874346;
	setAttr ".RightHandExtraFinger2Tx" -83.880296945032939;
	setAttr ".RightHandExtraFinger2Ty" 146.7883913;
	setAttr ".RightHandExtraFinger2Tz" -4.4903564649999996;
	setAttr ".RightHandExtraFinger2Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger3Tx" -85.854798435032933;
	setAttr ".RightHandExtraFinger3Ty" 146.7883775;
	setAttr ".RightHandExtraFinger3Tz" -4.4903566079999999;
	setAttr ".RightHandExtraFinger3Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger4Tx" -87.521413085032933;
	setAttr ".RightHandExtraFinger4Ty" 146.7883673;
	setAttr ".RightHandExtraFinger4Tz" -4.4903558170000002;
	setAttr ".RightHandExtraFinger4Ry" -0.034907713150901909;
	setAttr ".LeftFootThumb1Tx" 6.18422217;
	setAttr ".LeftFootThumb1Ty" 4.9992492679999998;
	setAttr ".LeftFootThumb1Tz" 1.930123209;
	setAttr ".LeftFootThumb2Tx" 4.551409713;
	setAttr ".LeftFootThumb2Ty" 2.6643834059999998;
	setAttr ".LeftFootThumb2Tz" 3.591937658;
	setAttr ".LeftFootThumb3Tx" 3.4619466889999999;
	setAttr ".LeftFootThumb3Ty" 1.8880788850000001;
	setAttr ".LeftFootThumb3Tz" 6.4001420700000002;
	setAttr ".LeftFootThumb4Tx" 3.4619466999999999;
	setAttr ".LeftFootThumb4Ty" 1.8880788550000001;
	setAttr ".LeftFootThumb4Tz" 9.6971958839999992;
	setAttr ".LeftFootIndex1Tx" 7.1105199680000002;
	setAttr ".LeftFootIndex1Ty" 1.888079117;
	setAttr ".LeftFootIndex1Tz" 12.9547209;
	setAttr ".LeftFootIndex2Tx" 7.1105199749999999;
	setAttr ".LeftFootIndex2Ty" 1.8880790999999999;
	setAttr ".LeftFootIndex2Tz" 14.82972745;
	setAttr ".LeftFootIndex3Tx" 7.1105199810000004;
	setAttr ".LeftFootIndex3Ty" 1.888079083;
	setAttr ".LeftFootIndex3Tz" 16.76314442;
	setAttr ".LeftFootIndex4Tx" 7.1105199880000001;
	setAttr ".LeftFootIndex4Ty" 1.8880790649999999;
	setAttr ".LeftFootIndex4Tz" 18.850666449999999;
	setAttr ".LeftFootMiddle1Tx" 8.9167242489999996;
	setAttr ".LeftFootMiddle1Ty" 1.888079163;
	setAttr ".LeftFootMiddle1Tz" 12.9547209;
	setAttr ".LeftFootMiddle2Tx" 8.9167242550000001;
	setAttr ".LeftFootMiddle2Ty" 1.888079147;
	setAttr ".LeftFootMiddle2Tz" 14.82860045;
	setAttr ".LeftFootMiddle3Tx" 8.9167242610000006;
	setAttr ".LeftFootMiddle3Ty" 1.888079131;
	setAttr ".LeftFootMiddle3Tz" 16.64971237;
	setAttr ".LeftFootMiddle4Tx" 8.9167242669999993;
	setAttr ".LeftFootMiddle4Ty" 1.8880791139999999;
	setAttr ".LeftFootMiddle4Tz" 18.565581959999999;
	setAttr ".LeftFootRing1Tx" 10.723903740000001;
	setAttr ".LeftFootRing1Ty" 1.888079211;
	setAttr ".LeftFootRing1Tz" 12.9547209;
	setAttr ".LeftFootRing2Tx" 10.723903740000001;
	setAttr ".LeftFootRing2Ty" 1.888079195;
	setAttr ".LeftFootRing2Tz" 14.71345226;
	setAttr ".LeftFootRing3Tx" 10.72390375;
	setAttr ".LeftFootRing3Ty" 1.8880791800000001;
	setAttr ".LeftFootRing3Tz" 16.472174209999999;
	setAttr ".LeftFootRing4Tx" 10.723903760000001;
	setAttr ".LeftFootRing4Ty" 1.8880791640000001;
	setAttr ".LeftFootRing4Tz" 18.27484922;
	setAttr ".LeftFootPinky1Tx" 12.52979668;
	setAttr ".LeftFootPinky1Ty" 1.888079257;
	setAttr ".LeftFootPinky1Tz" 12.9547209;
	setAttr ".LeftFootPinky2Tx" 12.52979669;
	setAttr ".LeftFootPinky2Ty" 1.8880792420000001;
	setAttr ".LeftFootPinky2Tz" 14.5796458;
	setAttr ".LeftFootPinky3Tx" 12.52979669;
	setAttr ".LeftFootPinky3Ty" 1.8880792289999999;
	setAttr ".LeftFootPinky3Tz" 16.143599309999999;
	setAttr ".LeftFootPinky4Tx" 12.5297967;
	setAttr ".LeftFootPinky4Ty" 1.8880792129999999;
	setAttr ".LeftFootPinky4Tz" 17.861196199999998;
	setAttr ".LeftFootExtraFinger1Tx" 5.0860939849999998;
	setAttr ".LeftFootExtraFinger1Ty" 1.888079254;
	setAttr ".LeftFootExtraFinger1Tz" 12.9547209;
	setAttr ".LeftFootExtraFinger2Tx" 5.0860939910000003;
	setAttr ".LeftFootExtraFinger2Ty" 1.888079236;
	setAttr ".LeftFootExtraFinger2Tz" 14.94401483;
	setAttr ".LeftFootExtraFinger3Tx" 5.0860939979999999;
	setAttr ".LeftFootExtraFinger3Ty" 1.8880792179999999;
	setAttr ".LeftFootExtraFinger3Tz" 16.99182682;
	setAttr ".LeftFootExtraFinger4Tx" 5.0860940049999996;
	setAttr ".LeftFootExtraFinger4Ty" 1.8880791990000001;
	setAttr ".LeftFootExtraFinger4Tz" 19.0793827;
	setAttr ".RightFootThumb1Tx" -7.4282809550329265;
	setAttr ".RightFootThumb1Ty" 4.9992492679999998;
	setAttr ".RightFootThumb1Tz" 1.930123209;
	setAttr ".RightFootThumb2Tx" -5.7954684980329265;
	setAttr ".RightFootThumb2Ty" 2.6643834059999998;
	setAttr ".RightFootThumb2Tz" 3.591937658;
	setAttr ".RightFootThumb3Tx" -4.706005474032926;
	setAttr ".RightFootThumb3Ty" 1.8880788850000001;
	setAttr ".RightFootThumb3Tz" 6.4001420700000002;
	setAttr ".RightFootThumb4Tx" -4.706005485032926;
	setAttr ".RightFootThumb4Ty" 1.8880788550000001;
	setAttr ".RightFootThumb4Tz" 9.6971958839999992;
	setAttr ".RightFootIndex1Tx" -8.3545787530329267;
	setAttr ".RightFootIndex1Ty" 1.888079117;
	setAttr ".RightFootIndex1Tz" 12.9547209;
	setAttr ".RightFootIndex2Tx" -8.3545787600329255;
	setAttr ".RightFootIndex2Ty" 1.8880790999999999;
	setAttr ".RightFootIndex2Tz" 14.82972745;
	setAttr ".RightFootIndex3Tx" -8.354578766032926;
	setAttr ".RightFootIndex3Ty" 1.888079083;
	setAttr ".RightFootIndex3Tz" 16.76314442;
	setAttr ".RightFootIndex4Tx" -8.3545787730329266;
	setAttr ".RightFootIndex4Ty" 1.8880790649999999;
	setAttr ".RightFootIndex4Tz" 18.850666449999999;
	setAttr ".RightFootMiddle1Tx" -10.160783034032926;
	setAttr ".RightFootMiddle1Ty" 1.888079163;
	setAttr ".RightFootMiddle1Tz" 12.9547209;
	setAttr ".RightFootMiddle2Tx" -10.160783040032927;
	setAttr ".RightFootMiddle2Ty" 1.888079147;
	setAttr ".RightFootMiddle2Tz" 14.82860045;
	setAttr ".RightFootMiddle3Tx" -10.160783046032927;
	setAttr ".RightFootMiddle3Ty" 1.888079131;
	setAttr ".RightFootMiddle3Tz" 16.64971237;
	setAttr ".RightFootMiddle4Tx" -10.160783052032926;
	setAttr ".RightFootMiddle4Ty" 1.8880791139999999;
	setAttr ".RightFootMiddle4Tz" 18.565581959999999;
	setAttr ".RightFootRing1Tx" -11.967962525032927;
	setAttr ".RightFootRing1Ty" 1.888079211;
	setAttr ".RightFootRing1Tz" 12.9547209;
	setAttr ".RightFootRing2Tx" -11.967962525032927;
	setAttr ".RightFootRing2Ty" 1.888079195;
	setAttr ".RightFootRing2Tz" 14.71345226;
	setAttr ".RightFootRing3Tx" -11.967962535032926;
	setAttr ".RightFootRing3Ty" 1.8880791800000001;
	setAttr ".RightFootRing3Tz" 16.472174209999999;
	setAttr ".RightFootRing4Tx" -11.967962545032927;
	setAttr ".RightFootRing4Ty" 1.8880791640000001;
	setAttr ".RightFootRing4Tz" 18.27484922;
	setAttr ".RightFootPinky1Tx" -13.773855465032927;
	setAttr ".RightFootPinky1Ty" 1.888079257;
	setAttr ".RightFootPinky1Tz" 12.9547209;
	setAttr ".RightFootPinky2Tx" -13.773855475032926;
	setAttr ".RightFootPinky2Ty" 1.8880792420000001;
	setAttr ".RightFootPinky2Tz" 14.5796458;
	setAttr ".RightFootPinky3Tx" -13.773855475032926;
	setAttr ".RightFootPinky3Ty" 1.8880792289999999;
	setAttr ".RightFootPinky3Tz" 16.143599309999999;
	setAttr ".RightFootPinky4Tx" -13.773855485032927;
	setAttr ".RightFootPinky4Ty" 1.8880792129999999;
	setAttr ".RightFootPinky4Tz" 17.861196199999998;
	setAttr ".RightFootExtraFinger1Tx" -6.3301527700329263;
	setAttr ".RightFootExtraFinger1Ty" 1.888079254;
	setAttr ".RightFootExtraFinger1Tz" 12.9547209;
	setAttr ".RightFootExtraFinger2Tx" -6.3301527760329268;
	setAttr ".RightFootExtraFinger2Ty" 1.888079236;
	setAttr ".RightFootExtraFinger2Tz" 14.94401483;
	setAttr ".RightFootExtraFinger3Tx" -6.3301527830329265;
	setAttr ".RightFootExtraFinger3Ty" 1.8880792179999999;
	setAttr ".RightFootExtraFinger3Tz" 16.99182682;
	setAttr ".RightFootExtraFinger4Tx" -6.3301527900329262;
	setAttr ".RightFootExtraFinger4Ty" 1.8880791990000001;
	setAttr ".RightFootExtraFinger4Tz" 19.0793827;
	setAttr ".LeftInHandThumbTx" 71.709864199999998;
	setAttr ".LeftInHandThumbTy" 146.58868419999999;
	setAttr ".LeftInHandIndexTx" 71.709864199999998;
	setAttr ".LeftInHandIndexTy" 146.58868419999999;
	setAttr ".LeftInHandMiddleTx" 71.709864199999998;
	setAttr ".LeftInHandMiddleTy" 146.58868419999999;
	setAttr ".LeftInHandRingTx" 71.709864199999998;
	setAttr ".LeftInHandRingTy" 146.58868419999999;
	setAttr ".LeftInHandPinkyTx" 71.709864199999998;
	setAttr ".LeftInHandPinkyTy" 146.58868419999999;
	setAttr ".LeftInHandExtraFingerTx" 71.709864199999998;
	setAttr ".LeftInHandExtraFingerTy" 146.58868419999999;
	setAttr ".RightInHandThumbTx" -72.953922985032932;
	setAttr ".RightInHandThumbTy" 146.58868419999999;
	setAttr ".RightInHandIndexTx" -72.953922985032932;
	setAttr ".RightInHandIndexTy" 146.58868419999999;
	setAttr ".RightInHandMiddleTx" -72.953922985032932;
	setAttr ".RightInHandMiddleTy" 146.58868419999999;
	setAttr ".RightInHandRingTx" -72.953922985032932;
	setAttr ".RightInHandRingTy" 146.58868419999999;
	setAttr ".RightInHandPinkyTx" -72.953922985032932;
	setAttr ".RightInHandPinkyTy" 146.58868419999999;
	setAttr ".RightInHandExtraFingerTx" -72.953922985032932;
	setAttr ".RightInHandExtraFingerTy" 146.58868419999999;
	setAttr ".LeftInFootThumbTx" 8.9100008010000007;
	setAttr ".LeftInFootThumbTy" 8.15039625;
	setAttr ".LeftInFootIndexTx" 8.9100008010000007;
	setAttr ".LeftInFootIndexTy" 8.1503963469999992;
	setAttr ".LeftInFootMiddleTx" 8.9100008010000007;
	setAttr ".LeftInFootMiddleTy" 8.1503963469999992;
	setAttr ".LeftInFootRingTx" 8.9100008010000007;
	setAttr ".LeftInFootRingTy" 8.1503963469999992;
	setAttr ".LeftInFootPinkyTx" 8.9100008010000007;
	setAttr ".LeftInFootPinkyTy" 8.1503963469999992;
	setAttr ".LeftInFootExtraFingerTx" 8.9100008010000007;
	setAttr ".LeftInFootExtraFingerTy" 8.1503963469999992;
	setAttr ".RightInFootThumbTx" -10.154059586032927;
	setAttr ".RightInFootThumbTy" 8.15039625;
	setAttr ".RightInFootIndexTx" -10.154059586032927;
	setAttr ".RightInFootIndexTy" 8.1503963469999992;
	setAttr ".RightInFootMiddleTx" -10.154059586032927;
	setAttr ".RightInFootMiddleTy" 8.1503963469999992;
	setAttr ".RightInFootRingTx" -10.154059586032927;
	setAttr ".RightInFootRingTy" 8.1503963469999992;
	setAttr ".RightInFootPinkyTx" -10.154059586032927;
	setAttr ".RightInFootPinkyTy" 8.1503963469999992;
	setAttr ".RightInFootExtraFingerTx" -10.154059586032927;
	setAttr ".RightInFootExtraFingerTy" 8.1503963469999992;
	setAttr ".LeftShoulderExtraTx" 12.353625535000001;
	setAttr ".LeftShoulderExtraTy" 146.58868419999999;
	setAttr ".RightShoulderExtraTx" -13.597684320032927;
	setAttr ".RightShoulderExtraTy" 146.58868419999999;
createNode HIKProperty2State -n "HIKproperties1";
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 0.11470607022923263;
	setAttr ".FootBackToAnkle" 0.099173192561050616;
	setAttr ".FootMiddleToAnkle" 0.19834638512210123;
	setAttr ".FootFrontToMiddle" 0.099173192561050616;
	setAttr ".FootInToAnkle" 0.099173192561050616;
	setAttr ".FootOutToAnkle" 0.099173192561050616;
	setAttr ".HandBottomToWrist" 0.5;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 0.13090861418058683;
	setAttr ".HandFrontToMiddle" 0.13090861418058683;
	setAttr ".HandInToWrist" 0.13090861418058683;
	setAttr ".HandOutToWrist" 0.13090861418058683;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".CtrlChestPullLeftHand" 0;
	setAttr ".CtrlChestPullRightHand" 0;
	setAttr ".LeftHandThumbTip" 0.041674809818237971;
	setAttr ".LeftHandIndexTip" 0.041674809818237971;
	setAttr ".LeftHandMiddleTip" 0.041674809818237971;
	setAttr ".LeftHandRingTip" 0.041674809818237971;
	setAttr ".LeftHandPinkyTip" 0.041674809818237971;
	setAttr ".LeftHandExtraFingerTip" 0.041674809818237971;
	setAttr ".RightHandThumbTip" 0.041674809818237971;
	setAttr ".RightHandIndexTip" 0.041674809818237971;
	setAttr ".RightHandMiddleTip" 0.041674809818237971;
	setAttr ".RightHandRingTip" 0.041674809818237971;
	setAttr ".RightHandPinkyTip" 0.041674809818237971;
	setAttr ".RightHandExtraFingerTip" 0.041674809818237971;
	setAttr ".LeftFootThumbTip" 0.041674809818237971;
	setAttr ".LeftFootIndexTip" 0.041674809818237971;
	setAttr ".LeftFootMiddleTip" 0.041674809818237971;
	setAttr ".LeftFootRingTip" 0.041674809818237971;
	setAttr ".LeftFootPinkyTip" 0.041674809818237971;
	setAttr ".LeftFootExtraFingerTip" 0.041674809818237971;
	setAttr ".RightFootThumbTip" 0.041674809818237971;
	setAttr ".RightFootIndexTip" 0.041674809818237971;
	setAttr ".RightFootMiddleTip" 0.041674809818237971;
	setAttr ".RightFootRingTip" 0.041674809818237971;
	setAttr ".RightFootPinkyTip" 0.041674809818237971;
	setAttr ".RightFootExtraFingerTip" 0.041674809818237971;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
createNode HIKSkeletonGeneratorNode -n "HIKSkeletonGeneratorNode1";
	setAttr ".ihi" 0;
	setAttr ".WantToeBase" yes;
	setAttr ".ReferenceTx" -0.62202939251646305;
	setAttr ".HipsTx" -0.62202939251646305;
	setAttr ".HipsTy" 3.4404597349527677;
	setAttr ".LeftUpLegTx" 0.25662634583832022;
	setAttr ".LeftUpLegTy" 2.84402127636044;
	setAttr ".LeftLegTx" 0.25662634583832022;
	setAttr ".LeftLegTy" 1.0956523445187838;
	setAttr ".LeftFootTx" 0.25662634583832022;
	setAttr ".LeftFootTy" -0.48996350909859743;
	setAttr ".RightUpLegTx" -1.5006851308712463;
	setAttr ".RightUpLegTy" 2.84402127636044;
	setAttr ".RightLegTx" -1.5006851308712463;
	setAttr ".RightLegTy" 1.0956523445187838;
	setAttr ".RightFootTx" -1.5006851308712463;
	setAttr ".RightFootTy" -0.48996350909859743;
	setAttr ".SpineTx" -0.62202939251646305;
	setAttr ".SpineTy" 3.7131636577038583;
	setAttr ".LeftArmTx" 0.286921327365395;
	setAttr ".LeftArmTy" 5.5758648735646208;
	setAttr ".LeftForeArmTx" 1.6885687432522007;
	setAttr ".LeftForeArmTy" 5.5758648735646208;
	setAttr ".LeftHandTx" 3.0589898902062971;
	setAttr ".LeftHandTy" 5.5758648735646208;
	setAttr ".RightArmTx" -1.5309801123983211;
	setAttr ".RightArmTy" 5.5758648735646208;
	setAttr ".RightForeArmTx" -2.9326275282851268;
	setAttr ".RightForeArmTy" 5.5758648735646208;
	setAttr ".RightHandTx" -4.3030486752392232;
	setAttr ".RightHandTy" 5.5758648735646208;
	setAttr ".HeadTx" -0.62202939251646305;
	setAttr ".HeadTy" 6.2931274509459376;
	setAttr ".LeftToeBaseTx" 0.25662677841408738;
	setAttr ".LeftToeBaseTy" -0.3752574388693648;
	setAttr ".LeftToeBaseTz" 0.19834638512210123;
	setAttr ".RightToeBaseTx" -1.5006855634470135;
	setAttr ".RightToeBaseTy" -0.3752574388693648;
	setAttr ".RightToeBaseTz" 0.19834638512210123;
	setAttr ".LeftShoulderTx" -0.26270453471726207;
	setAttr ".LeftShoulderTy" 5.5758595207761941;
	setAttr ".RightShoulderTx" -0.98135425031566403;
	setAttr ".RightShoulderTy" 5.5758595207761941;
	setAttr ".NeckTx" -0.62202939251646305;
	setAttr ".NeckTy" 5.5139733859428084;
	setAttr ".LeftFingerBaseTx" 80.519743439999999;
	setAttr ".LeftFingerBaseTy" 147.08957459999999;
	setAttr ".LeftFingerBaseTz" 1.304684401;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -81.763802225032933;
	setAttr ".RightFingerBaseTy" 147.08957459999999;
	setAttr ".RightFingerBaseTz" 1.304684401;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Tx" -0.62202939251646305;
	setAttr ".Spine1Ty" 4.3134335671168413;
	setAttr ".Spine2Tx" -0.62202939251646305;
	setAttr ".Spine2Ty" 4.9137034765298253;
	setAttr ".Spine3Ty" 119;
	setAttr ".Spine4Ty" 123;
	setAttr ".Spine5Ty" 127;
	setAttr ".Spine6Ty" 131;
	setAttr ".Spine7Ty" 135;
	setAttr ".Spine8Ty" 139;
	setAttr ".Spine9Ty" 143;
	setAttr ".Neck1Ty" 147;
	setAttr ".Neck2Ty" 149;
	setAttr ".Neck3Ty" 151;
	setAttr ".Neck4Ty" 153;
	setAttr ".Neck5Ty" 155;
	setAttr ".Neck6Ty" 157;
	setAttr ".Neck7Ty" 159;
	setAttr ".Neck8Ty" 161;
	setAttr ".Neck9Ty" 163;
	setAttr ".LeftUpLegRollTx" 0.25662634583832022;
	setAttr ".LeftUpLegRollTy" 1.9698368104396118;
	setAttr ".LeftLegRollTx" 0.25662634583832022;
	setAttr ".LeftLegRollTy" 0.30284441771009318;
	setAttr ".RightUpLegRollTx" -1.5006851308712463;
	setAttr ".RightUpLegRollTy" 1.9698368104396118;
	setAttr ".RightLegRollTx" -1.5006851308712463;
	setAttr ".RightLegRollTy" 0.30284441771009318;
	setAttr ".LeftArmRollTx" 0.98774503530879787;
	setAttr ".LeftArmRollTy" 5.5758648735646208;
	setAttr ".LeftForeArmRollTx" 2.3737793167292489;
	setAttr ".LeftForeArmRollTy" 5.5758648735646208;
	setAttr ".RightArmRollTx" -2.2318038203417241;
	setAttr ".RightArmRollTy" 5.5758648735646208;
	setAttr ".RightForeArmRollTx" -3.617838101762175;
	setAttr ".RightForeArmRollTy" 5.5758648735646208;
	setAttr ".HipsTranslationTy" 100;
	setAttr ".LeftHandThumb1Tx" 3.2822207945274986;
	setAttr ".LeftHandThumb1Ty" 5.679650635454994;
	setAttr ".LeftHandThumb1Tz" 0.38490905284081911;
	setAttr ".LeftHandThumb2Tx" 3.4111973604384107;
	setAttr ".LeftHandThumb2Ty" 5.6587654341172069;
	setAttr ".LeftHandThumb2Tz" 0.44849568975742793;
	setAttr ".LeftHandThumb3Tx" 3.5417421467122372;
	setAttr ".LeftHandThumb3Ty" 5.6587649198755248;
	setAttr ".LeftHandThumb3Tz" 0.44849652942486928;
	setAttr ".LeftHandThumb4Tx" 3.6786318770330468;
	setAttr ".LeftHandThumb4Ty" 5.6587650328528643;
	setAttr ".LeftHandThumb4Tz" 0.44849579141273477;
	setAttr ".LeftHandIndex1Tx" 3.5118406494080188;
	setAttr ".LeftHandIndex1Ty" 5.7185394497984925;
	setAttr ".LeftHandIndex1Tz" 0.31203679892935043;
	setAttr ".LeftHandIndex2Tx" 3.7286035912323046;
	setAttr ".LeftHandIndex2Ty" 5.7185385888332494;
	setAttr ".LeftHandIndex2Tz" 0.32526718039442154;
	setAttr ".LeftHandIndex3Tx" 3.8647530769773257;
	setAttr ".LeftHandIndex3Ty" 5.7185380512169441;
	setAttr ".LeftHandIndex3Tz" 0.33357720781469241;
	setAttr ".LeftHandIndex4Tx" 3.9652117910464848;
	setAttr ".LeftHandIndex4Ty" 5.7185376538483714;
	setAttr ".LeftHandIndex4Tz" 0.33970878448048225;
	setAttr ".LeftHandMiddle1Tx" 3.5112196662843709;
	setAttr ".LeftHandMiddle1Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle1Tz" 0.11726621664611887;
	setAttr ".LeftHandMiddle2Tx" 3.7608606804670792;
	setAttr ".LeftHandMiddle2Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle2Tz" 0.11729340157610825;
	setAttr ".LeftHandMiddle3Tx" 3.9028061353187096;
	setAttr ".LeftHandMiddle3Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle3Tz" 0.11730884158810462;
	setAttr ".LeftHandMiddle4Tx" 4.0057594841159609;
	setAttr ".LeftHandMiddle4Ty" 5.7302720023543241;
	setAttr ".LeftHandMiddle4Tz" 0.11731995050879354;
	setAttr ".LeftHandRing1Tx" 3.5155254265026619;
	setAttr ".LeftHandRing1Ty" 5.7255592539302205;
	setAttr ".LeftHandRing1Tz" -0.071289842824901029;
	setAttr ".LeftHandRing2Tx" 3.748458202960931;
	setAttr ".LeftHandRing2Ty" 5.7255592539302205;
	setAttr ".LeftHandRing2Tz" -0.071289834825500234;
	setAttr ".LeftHandRing3Tx" 3.8667543987483302;
	setAttr ".LeftHandRing3Ty" 5.7255592539302205;
	setAttr ".LeftHandRing3Tz" -0.071289845341566446;
	setAttr ".LeftHandRing4Tx" 3.9654838943964017;
	setAttr ".LeftHandRing4Ty" 5.7255592539302205;
	setAttr ".LeftHandRing4Tz" -0.071289918774268185;
	setAttr ".LeftHandPinky1Tx" 3.5149358719822201;
	setAttr ".LeftHandPinky1Ty" 5.698563645919215;
	setAttr ".LeftHandPinky1Tz" -0.2238354999903634;
	setAttr ".LeftHandPinky2Tx" 3.6711959411740547;
	setAttr ".LeftHandPinky2Ty" 5.698565227601966;
	setAttr ".LeftHandPinky2Tz" -0.2238354999903634;
	setAttr ".LeftHandPinky3Tx" 3.7725512867129201;
	setAttr ".LeftHandPinky3Ty" 5.6985662521895613;
	setAttr ".LeftHandPinky3Tz" -0.2238355128433332;
	setAttr ".LeftHandPinky4Tx" 3.8581021483285705;
	setAttr ".LeftHandPinky4Ty" 5.6985671170505743;
	setAttr ".LeftHandPinky4Tz" -0.22383544174753509;
	setAttr ".LeftHandExtraFinger1Tx" 80.592138829999996;
	setAttr ".LeftHandExtraFinger1Ty" 146.7884134;
	setAttr ".LeftHandExtraFinger1Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 82.636238160000005;
	setAttr ".LeftHandExtraFinger2Ty" 146.7883913;
	setAttr ".LeftHandExtraFinger2Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 84.610739649999999;
	setAttr ".LeftHandExtraFinger3Ty" 146.7883775;
	setAttr ".LeftHandExtraFinger3Tz" -4.4903566079999999;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 86.277354299999999;
	setAttr ".LeftHandExtraFinger4Ty" 146.7883673;
	setAttr ".LeftHandExtraFinger4Tz" -4.4903558170000002;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -4.5262795795604251;
	setAttr ".RightHandThumb1Ty" 5.679650635454994;
	setAttr ".RightHandThumb1Tz" 0.38490905284081911;
	setAttr ".RightHandThumb2Tx" -4.6552561454713368;
	setAttr ".RightHandThumb2Ty" 5.6587654341172069;
	setAttr ".RightHandThumb2Tz" 0.44849568975742793;
	setAttr ".RightHandThumb3Tx" -4.7858009317451637;
	setAttr ".RightHandThumb3Ty" 5.6587649198755248;
	setAttr ".RightHandThumb3Tz" 0.44849652942486928;
	setAttr ".RightHandThumb4Tx" -4.9226906620659729;
	setAttr ".RightHandThumb4Ty" 5.6587650328528643;
	setAttr ".RightHandThumb4Tz" 0.44849579141273477;
	setAttr ".RightHandIndex1Tx" -4.7558994344409449;
	setAttr ".RightHandIndex1Ty" 5.7185394497984925;
	setAttr ".RightHandIndex1Tz" 0.31203679892935043;
	setAttr ".RightHandIndex2Tx" -4.9726623762652311;
	setAttr ".RightHandIndex2Ty" 5.7185385888332494;
	setAttr ".RightHandIndex2Tz" 0.32526718039442154;
	setAttr ".RightHandIndex3Tx" -5.1088118620102518;
	setAttr ".RightHandIndex3Ty" 5.7185380512169441;
	setAttr ".RightHandIndex3Tz" 0.33357720781469241;
	setAttr ".RightHandIndex4Tx" -5.2092705760794109;
	setAttr ".RightHandIndex4Ty" 5.7185376538483714;
	setAttr ".RightHandIndex4Tz" 0.33970878448048225;
	setAttr ".RightHandMiddle1Tx" -4.755278451317297;
	setAttr ".RightHandMiddle1Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle1Tz" 0.11726621664611887;
	setAttr ".RightHandMiddle2Tx" -5.0049194655000058;
	setAttr ".RightHandMiddle2Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle2Tz" 0.11729340157610825;
	setAttr ".RightHandMiddle3Tx" -5.1468649203516357;
	setAttr ".RightHandMiddle3Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle3Tz" 0.11730884158810462;
	setAttr ".RightHandMiddle4Tx" -5.2498182691488875;
	setAttr ".RightHandMiddle4Ty" 5.7302720023543241;
	setAttr ".RightHandMiddle4Tz" 0.11731995050879354;
	setAttr ".RightHandRing1Tx" -4.7595842115355884;
	setAttr ".RightHandRing1Ty" 5.7255592539302205;
	setAttr ".RightHandRing1Tz" -0.071289842824901029;
	setAttr ".RightHandRing2Tx" -4.9925169879938576;
	setAttr ".RightHandRing2Ty" 5.7255592539302205;
	setAttr ".RightHandRing2Tz" -0.071289834825500234;
	setAttr ".RightHandRing3Tx" -5.1108131837812563;
	setAttr ".RightHandRing3Ty" 5.7255592539302205;
	setAttr ".RightHandRing3Tz" -0.071289845341566446;
	setAttr ".RightHandRing4Tx" -5.2095426794293278;
	setAttr ".RightHandRing4Ty" 5.7255592539302205;
	setAttr ".RightHandRing4Tz" -0.071289918774268185;
	setAttr ".RightHandPinky1Tx" -4.7589946570151467;
	setAttr ".RightHandPinky1Ty" 5.698563645919215;
	setAttr ".RightHandPinky1Tz" -0.2238354999903634;
	setAttr ".RightHandPinky2Tx" -4.9152547262069808;
	setAttr ".RightHandPinky2Ty" 5.698565227601966;
	setAttr ".RightHandPinky2Tz" -0.2238354999903634;
	setAttr ".RightHandPinky3Tx" -5.0166100717458466;
	setAttr ".RightHandPinky3Ty" 5.6985662521895613;
	setAttr ".RightHandPinky3Tz" -0.2238355128433332;
	setAttr ".RightHandPinky4Tx" -5.102160933361497;
	setAttr ".RightHandPinky4Ty" 5.6985671170505743;
	setAttr ".RightHandPinky4Tz" -0.22383544174753509;
	setAttr ".RightHandExtraFinger1Tx" -81.83619761503293;
	setAttr ".RightHandExtraFinger1Ty" 146.7884134;
	setAttr ".RightHandExtraFinger1Tz" -4.4903564649999996;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -83.880296945032939;
	setAttr ".RightHandExtraFinger2Ty" 146.7883913;
	setAttr ".RightHandExtraFinger2Tz" -4.4903564649999996;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -85.854798435032933;
	setAttr ".RightHandExtraFinger3Ty" 146.7883775;
	setAttr ".RightHandExtraFinger3Tz" -4.4903566079999999;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -87.521413085032933;
	setAttr ".RightHandExtraFinger4Ty" 146.7883673;
	setAttr ".RightHandExtraFinger4Tz" -4.4903558170000002;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
	setAttr ".LeftFootThumb1Tx" 6.18422217;
	setAttr ".LeftFootThumb1Ty" 4.9992492679999998;
	setAttr ".LeftFootThumb1Tz" 1.930123209;
	setAttr ".LeftFootThumb2Tx" 4.551409713;
	setAttr ".LeftFootThumb2Ty" 2.6643834059999998;
	setAttr ".LeftFootThumb2Tz" 3.591937658;
	setAttr ".LeftFootThumb3Tx" 3.4619466889999999;
	setAttr ".LeftFootThumb3Ty" 1.8880788850000001;
	setAttr ".LeftFootThumb3Tz" 6.4001420700000002;
	setAttr ".LeftFootThumb4Tx" 3.4619466999999999;
	setAttr ".LeftFootThumb4Ty" 1.8880788550000001;
	setAttr ".LeftFootThumb4Tz" 9.6971958839999992;
	setAttr ".LeftFootIndex1Tx" 7.1105199680000002;
	setAttr ".LeftFootIndex1Ty" 1.888079117;
	setAttr ".LeftFootIndex1Tz" 12.9547209;
	setAttr ".LeftFootIndex2Tx" 7.1105199749999999;
	setAttr ".LeftFootIndex2Ty" 1.8880790999999999;
	setAttr ".LeftFootIndex2Tz" 14.82972745;
	setAttr ".LeftFootIndex3Tx" 7.1105199810000004;
	setAttr ".LeftFootIndex3Ty" 1.888079083;
	setAttr ".LeftFootIndex3Tz" 16.76314442;
	setAttr ".LeftFootIndex4Tx" 7.1105199880000001;
	setAttr ".LeftFootIndex4Ty" 1.8880790649999999;
	setAttr ".LeftFootIndex4Tz" 18.850666449999999;
	setAttr ".LeftFootMiddle1Tx" 8.9167242489999996;
	setAttr ".LeftFootMiddle1Ty" 1.888079163;
	setAttr ".LeftFootMiddle1Tz" 12.9547209;
	setAttr ".LeftFootMiddle2Tx" 8.9167242550000001;
	setAttr ".LeftFootMiddle2Ty" 1.888079147;
	setAttr ".LeftFootMiddle2Tz" 14.82860045;
	setAttr ".LeftFootMiddle3Tx" 8.9167242610000006;
	setAttr ".LeftFootMiddle3Ty" 1.888079131;
	setAttr ".LeftFootMiddle3Tz" 16.64971237;
	setAttr ".LeftFootMiddle4Tx" 8.9167242669999993;
	setAttr ".LeftFootMiddle4Ty" 1.8880791139999999;
	setAttr ".LeftFootMiddle4Tz" 18.565581959999999;
	setAttr ".LeftFootRing1Tx" 10.723903740000001;
	setAttr ".LeftFootRing1Ty" 1.888079211;
	setAttr ".LeftFootRing1Tz" 12.9547209;
	setAttr ".LeftFootRing2Tx" 10.723903740000001;
	setAttr ".LeftFootRing2Ty" 1.888079195;
	setAttr ".LeftFootRing2Tz" 14.71345226;
	setAttr ".LeftFootRing3Tx" 10.72390375;
	setAttr ".LeftFootRing3Ty" 1.8880791800000001;
	setAttr ".LeftFootRing3Tz" 16.472174209999999;
	setAttr ".LeftFootRing4Tx" 10.723903760000001;
	setAttr ".LeftFootRing4Ty" 1.8880791640000001;
	setAttr ".LeftFootRing4Tz" 18.27484922;
	setAttr ".LeftFootPinky1Tx" 12.52979668;
	setAttr ".LeftFootPinky1Ty" 1.888079257;
	setAttr ".LeftFootPinky1Tz" 12.9547209;
	setAttr ".LeftFootPinky2Tx" 12.52979669;
	setAttr ".LeftFootPinky2Ty" 1.8880792420000001;
	setAttr ".LeftFootPinky2Tz" 14.5796458;
	setAttr ".LeftFootPinky3Tx" 12.52979669;
	setAttr ".LeftFootPinky3Ty" 1.8880792289999999;
	setAttr ".LeftFootPinky3Tz" 16.143599309999999;
	setAttr ".LeftFootPinky4Tx" 12.5297967;
	setAttr ".LeftFootPinky4Ty" 1.8880792129999999;
	setAttr ".LeftFootPinky4Tz" 17.861196199999998;
	setAttr ".LeftFootExtraFinger1Tx" 5.0860939849999998;
	setAttr ".LeftFootExtraFinger1Ty" 1.888079254;
	setAttr ".LeftFootExtraFinger1Tz" 12.9547209;
	setAttr ".LeftFootExtraFinger2Tx" 5.0860939910000003;
	setAttr ".LeftFootExtraFinger2Ty" 1.888079236;
	setAttr ".LeftFootExtraFinger2Tz" 14.94401483;
	setAttr ".LeftFootExtraFinger3Tx" 5.0860939979999999;
	setAttr ".LeftFootExtraFinger3Ty" 1.8880792179999999;
	setAttr ".LeftFootExtraFinger3Tz" 16.99182682;
	setAttr ".LeftFootExtraFinger4Tx" 5.0860940049999996;
	setAttr ".LeftFootExtraFinger4Ty" 1.8880791990000001;
	setAttr ".LeftFootExtraFinger4Tz" 19.0793827;
	setAttr ".RightFootThumb1Tx" -7.4282809550329265;
	setAttr ".RightFootThumb1Ty" 4.9992492679999998;
	setAttr ".RightFootThumb1Tz" 1.930123209;
	setAttr ".RightFootThumb2Tx" -5.7954684980329265;
	setAttr ".RightFootThumb2Ty" 2.6643834059999998;
	setAttr ".RightFootThumb2Tz" 3.591937658;
	setAttr ".RightFootThumb3Tx" -4.706005474032926;
	setAttr ".RightFootThumb3Ty" 1.8880788850000001;
	setAttr ".RightFootThumb3Tz" 6.4001420700000002;
	setAttr ".RightFootThumb4Tx" -4.706005485032926;
	setAttr ".RightFootThumb4Ty" 1.8880788550000001;
	setAttr ".RightFootThumb4Tz" 9.6971958839999992;
	setAttr ".RightFootIndex1Tx" -8.3545787530329267;
	setAttr ".RightFootIndex1Ty" 1.888079117;
	setAttr ".RightFootIndex1Tz" 12.9547209;
	setAttr ".RightFootIndex2Tx" -8.3545787600329255;
	setAttr ".RightFootIndex2Ty" 1.8880790999999999;
	setAttr ".RightFootIndex2Tz" 14.82972745;
	setAttr ".RightFootIndex3Tx" -8.354578766032926;
	setAttr ".RightFootIndex3Ty" 1.888079083;
	setAttr ".RightFootIndex3Tz" 16.76314442;
	setAttr ".RightFootIndex4Tx" -8.3545787730329266;
	setAttr ".RightFootIndex4Ty" 1.8880790649999999;
	setAttr ".RightFootIndex4Tz" 18.850666449999999;
	setAttr ".RightFootMiddle1Tx" -10.160783034032926;
	setAttr ".RightFootMiddle1Ty" 1.888079163;
	setAttr ".RightFootMiddle1Tz" 12.9547209;
	setAttr ".RightFootMiddle2Tx" -10.160783040032927;
	setAttr ".RightFootMiddle2Ty" 1.888079147;
	setAttr ".RightFootMiddle2Tz" 14.82860045;
	setAttr ".RightFootMiddle3Tx" -10.160783046032927;
	setAttr ".RightFootMiddle3Ty" 1.888079131;
	setAttr ".RightFootMiddle3Tz" 16.64971237;
	setAttr ".RightFootMiddle4Tx" -10.160783052032926;
	setAttr ".RightFootMiddle4Ty" 1.8880791139999999;
	setAttr ".RightFootMiddle4Tz" 18.565581959999999;
	setAttr ".RightFootRing1Tx" -11.967962525032927;
	setAttr ".RightFootRing1Ty" 1.888079211;
	setAttr ".RightFootRing1Tz" 12.9547209;
	setAttr ".RightFootRing2Tx" -11.967962525032927;
	setAttr ".RightFootRing2Ty" 1.888079195;
	setAttr ".RightFootRing2Tz" 14.71345226;
	setAttr ".RightFootRing3Tx" -11.967962535032926;
	setAttr ".RightFootRing3Ty" 1.8880791800000001;
	setAttr ".RightFootRing3Tz" 16.472174209999999;
	setAttr ".RightFootRing4Tx" -11.967962545032927;
	setAttr ".RightFootRing4Ty" 1.8880791640000001;
	setAttr ".RightFootRing4Tz" 18.27484922;
	setAttr ".RightFootPinky1Tx" -13.773855465032927;
	setAttr ".RightFootPinky1Ty" 1.888079257;
	setAttr ".RightFootPinky1Tz" 12.9547209;
	setAttr ".RightFootPinky2Tx" -13.773855475032926;
	setAttr ".RightFootPinky2Ty" 1.8880792420000001;
	setAttr ".RightFootPinky2Tz" 14.5796458;
	setAttr ".RightFootPinky3Tx" -13.773855475032926;
	setAttr ".RightFootPinky3Ty" 1.8880792289999999;
	setAttr ".RightFootPinky3Tz" 16.143599309999999;
	setAttr ".RightFootPinky4Tx" -13.773855485032927;
	setAttr ".RightFootPinky4Ty" 1.8880792129999999;
	setAttr ".RightFootPinky4Tz" 17.861196199999998;
	setAttr ".RightFootExtraFinger1Tx" -6.3301527700329263;
	setAttr ".RightFootExtraFinger1Ty" 1.888079254;
	setAttr ".RightFootExtraFinger1Tz" 12.9547209;
	setAttr ".RightFootExtraFinger2Tx" -6.3301527760329268;
	setAttr ".RightFootExtraFinger2Ty" 1.888079236;
	setAttr ".RightFootExtraFinger2Tz" 14.94401483;
	setAttr ".RightFootExtraFinger3Tx" -6.3301527830329265;
	setAttr ".RightFootExtraFinger3Ty" 1.8880792179999999;
	setAttr ".RightFootExtraFinger3Tz" 16.99182682;
	setAttr ".RightFootExtraFinger4Tx" -6.3301527900329262;
	setAttr ".RightFootExtraFinger4Ty" 1.8880791990000001;
	setAttr ".RightFootExtraFinger4Tz" 19.0793827;
	setAttr ".LeftInHandThumbTx" 71.709864199999998;
	setAttr ".LeftInHandThumbTy" 146.58868419999999;
	setAttr ".LeftInHandIndexTx" 71.709864199999998;
	setAttr ".LeftInHandIndexTy" 146.58868419999999;
	setAttr ".LeftInHandMiddleTx" 71.709864199999998;
	setAttr ".LeftInHandMiddleTy" 146.58868419999999;
	setAttr ".LeftInHandRingTx" 71.709864199999998;
	setAttr ".LeftInHandRingTy" 146.58868419999999;
	setAttr ".LeftInHandPinkyTx" 71.709864199999998;
	setAttr ".LeftInHandPinkyTy" 146.58868419999999;
	setAttr ".LeftInHandExtraFingerTx" 71.709864199999998;
	setAttr ".LeftInHandExtraFingerTy" 146.58868419999999;
	setAttr ".RightInHandThumbTx" -72.953922985032932;
	setAttr ".RightInHandThumbTy" 146.58868419999999;
	setAttr ".RightInHandIndexTx" -72.953922985032932;
	setAttr ".RightInHandIndexTy" 146.58868419999999;
	setAttr ".RightInHandMiddleTx" -72.953922985032932;
	setAttr ".RightInHandMiddleTy" 146.58868419999999;
	setAttr ".RightInHandRingTx" -72.953922985032932;
	setAttr ".RightInHandRingTy" 146.58868419999999;
	setAttr ".RightInHandPinkyTx" -72.953922985032932;
	setAttr ".RightInHandPinkyTy" 146.58868419999999;
	setAttr ".RightInHandExtraFingerTx" -72.953922985032932;
	setAttr ".RightInHandExtraFingerTy" 146.58868419999999;
	setAttr ".LeftInFootThumbTx" 8.9100008010000007;
	setAttr ".LeftInFootThumbTy" 8.15039625;
	setAttr ".LeftInFootIndexTx" 8.9100008010000007;
	setAttr ".LeftInFootIndexTy" 8.1503963469999992;
	setAttr ".LeftInFootMiddleTx" 8.9100008010000007;
	setAttr ".LeftInFootMiddleTy" 8.1503963469999992;
	setAttr ".LeftInFootRingTx" 8.9100008010000007;
	setAttr ".LeftInFootRingTy" 8.1503963469999992;
	setAttr ".LeftInFootPinkyTx" 8.9100008010000007;
	setAttr ".LeftInFootPinkyTy" 8.1503963469999992;
	setAttr ".LeftInFootExtraFingerTx" 8.9100008010000007;
	setAttr ".LeftInFootExtraFingerTy" 8.1503963469999992;
	setAttr ".RightInFootThumbTx" -10.154059586032927;
	setAttr ".RightInFootThumbTy" 8.15039625;
	setAttr ".RightInFootIndexTx" -10.154059586032927;
	setAttr ".RightInFootIndexTy" 8.1503963469999992;
	setAttr ".RightInFootMiddleTx" -10.154059586032927;
	setAttr ".RightInFootMiddleTy" 8.1503963469999992;
	setAttr ".RightInFootRingTx" -10.154059586032927;
	setAttr ".RightInFootRingTy" 8.1503963469999992;
	setAttr ".RightInFootPinkyTx" -10.154059586032927;
	setAttr ".RightInFootPinkyTy" 8.1503963469999992;
	setAttr ".RightInFootExtraFingerTx" -10.154059586032927;
	setAttr ".RightInFootExtraFingerTy" 8.1503963469999992;
	setAttr ".LeftShoulderExtraTx" 12.353625535000001;
	setAttr ".LeftShoulderExtraTy" 146.58868419999999;
	setAttr ".RightShoulderExtraTx" -13.597684320032927;
	setAttr ".RightShoulderExtraTy" 146.58868419999999;
createNode skinCluster -n "skinCluster1";
	setAttr -s 168 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[3]" 0.0023941559119934094;
	setAttr ".wl[0].w[5]" 0.0075307049648419763;
	setAttr ".wl[0].w[6]" 0.21853682899794358;
	setAttr ".wl[0].w[7]" 0.38576915506261056;
	setAttr ".wl[0].w[8]" 0.38576915506261056;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[3]" 0.0093757256098135882;
	setAttr ".wl[1].w[4]" 0.0093757256098135882;
	setAttr ".wl[1].w[6]" 0.17853233143858613;
	setAttr ".wl[1].w[7]" 0.40135810867089333;
	setAttr ".wl[1].w[8]" 0.40135810867089333;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[2]" 0.0055554054048545642;
	setAttr ".wl[2].w[5]" 0.20558226849413047;
	setAttr ".wl[2].w[6]" 0.53385511051487933;
	setAttr ".wl[2].w[7]" 0.1275036077930678;
	setAttr ".wl[2].w[8]" 0.1275036077930678;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[2]" 0.026801613677691922;
	setAttr ".wl[3].w[5]" 0.17789081381379795;
	setAttr ".wl[3].w[6]" 0.59144940777608479;
	setAttr ".wl[3].w[7]" 0.10192908236621263;
	setAttr ".wl[3].w[8]" 0.10192908236621263;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[2]" 0.0062361526447913254;
	setAttr ".wl[4].w[5]" 0.2307738704850533;
	setAttr ".wl[4].w[6]" 0.59927254930189655;
	setAttr ".wl[4].w[7]" 0.083301384731461911;
	setAttr ".wl[4].w[8]" 0.080416042836796889;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[2]" 0.029616036099523218;
	setAttr ".wl[5].w[5]" 0.19657102841043206;
	setAttr ".wl[5].w[6]" 0.65355717839921568;
	setAttr ".wl[5].w[7]" 0.061298967965743224;
	setAttr ".wl[5].w[8]" 0.058956789125085854;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[2]" 0.0041149230657042445;
	setAttr ".wl[6].w[5]" 0.013622128509720886;
	setAttr ".wl[6].w[6]" 0.39530651945801637;
	setAttr ".wl[6].w[7]" 0.39530651945801637;
	setAttr ".wl[6].w[8]" 0.19164990950854208;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[2]" 0.018223564845273765;
	setAttr ".wl[7].w[3]" 0.018223564845273765;
	setAttr ".wl[7].w[6]" 0.40200383049974486;
	setAttr ".wl[7].w[7]" 0.40200383049974486;
	setAttr ".wl[7].w[8]" 0.15954520930996269;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[2]" 0.0047003375495422465;
	setAttr ".wl[8].w[5]" 0.092292012264612838;
	setAttr ".wl[8].w[6]" 0.45168606773060599;
	setAttr ".wl[8].w[7]" 0.22566079122761951;
	setAttr ".wl[8].w[8]" 0.22566079122761951;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[2]" 0.022511608967447531;
	setAttr ".wl[9].w[5]" 0.071687244062285924;
	setAttr ".wl[9].w[6]" 0.4967789608491307;
	setAttr ".wl[9].w[7]" 0.20451109306056794;
	setAttr ".wl[9].w[8]" 0.20451109306056794;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.017339674475518412;
	setAttr ".wl[10].w[5]" 0.49460585400668017;
	setAttr ".wl[10].w[6]" 0.45306652455839713;
	setAttr ".wl[10].w[7]" 0.017493973479702146;
	setAttr ".wl[10].w[8]" 0.017493973479702146;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[1]" 0.022653175599436279;
	setAttr ".wl[11].w[2]" 0.022081889748501792;
	setAttr ".wl[11].w[5]" 0.49990300784337161;
	setAttr ".wl[11].w[6]" 0.44459419596345229;
	setAttr ".wl[11].w[7]" 0.010767730845238067;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.017471020070315868;
	setAttr ".wl[12].w[5]" 0.49835242376936706;
	setAttr ".wl[12].w[6]" 0.45649843974428816;
	setAttr ".wl[12].w[7]" 0.013839058208014426;
	setAttr ".wl[12].w[8]" 0.013839058208014426;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.010669031057518754;
	setAttr ".wl[13].w[1]" 0.0226554358002936;
	setAttr ".wl[13].w[2]" 0.022084092949811108;
	setAttr ".wl[13].w[5]" 0.49995288523040482;
	setAttr ".wl[13].w[6]" 0.44463855496197169;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[2]" 0.0061149805969291276;
	setAttr ".wl[14].w[5]" 0.12006879469850298;
	setAttr ".wl[14].w[6]" 0.58762833753181387;
	setAttr ".wl[14].w[7]" 0.15274015797936655;
	setAttr ".wl[14].w[8]" 0.13344772919338735;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[2]" 0.029382872799977526;
	setAttr ".wl[15].w[5]" 0.093568486228993081;
	setAttr ".wl[15].w[6]" 0.64841180554630407;
	setAttr ".wl[15].w[7]" 0.12314087660956669;
	setAttr ".wl[15].w[8]" 0.10549595881515865;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.010658949776710919;
	setAttr ".wl[16].w[5]" 0.46436919987843556;
	setAttr ".wl[16].w[6]" 0.47037518207798557;
	setAttr ".wl[16].w[7]" 0.027298334133433952;
	setAttr ".wl[16].w[8]" 0.027298334133433952;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[1]" 0.021400252197670222;
	setAttr ".wl[17].w[2]" 0.021479412875417842;
	setAttr ".wl[17].w[5]" 0.46587771034003561;
	setAttr ".wl[17].w[6]" 0.47400078880765051;
	setAttr ".wl[17].w[7]" 0.017241835779225684;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.15740723352616165;
	setAttr ".wl[18].w[1]" 0.0074272351853488083;
	setAttr ".wl[18].w[5]" 0.71373143303448805;
	setAttr ".wl[18].w[6]" 0.11247848991288718;
	setAttr ".wl[18].w[9]" 0.0089556083411144044;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.11809780030093539;
	setAttr ".wl[19].w[1]" 0.034008039715945203;
	setAttr ".wl[19].w[2]" 0.016504770558302365;
	setAttr ".wl[19].w[5]" 0.75047850444777842;
	setAttr ".wl[19].w[6]" 0.08091088497703855;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.15740723352616165;
	setAttr ".wl[20].w[1]" 0.0074272351853488083;
	setAttr ".wl[20].w[5]" 0.71373143303448805;
	setAttr ".wl[20].w[6]" 0.11247848991288718;
	setAttr ".wl[20].w[9]" 0.0089556083411144044;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.11809780030093539;
	setAttr ".wl[21].w[1]" 0.034008039715945203;
	setAttr ".wl[21].w[2]" 0.016504770558302365;
	setAttr ".wl[21].w[5]" 0.75047850444777842;
	setAttr ".wl[21].w[6]" 0.08091088497703855;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.010814120700377679;
	setAttr ".wl[22].w[5]" 0.47112939663111847;
	setAttr ".wl[22].w[6]" 0.47722281275473727;
	setAttr ".wl[22].w[7]" 0.020416834956883269;
	setAttr ".wl[22].w[8]" 0.020416834956883269;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.021502729609447171;
	setAttr ".wl[23].w[2]" 0.021582269356623284;
	setAttr ".wl[23].w[5]" 0.46810861591625202;
	setAttr ".wl[23].w[6]" 0.47627059261970695;
	setAttr ".wl[23].w[7]" 0.012535792497970443;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.11127445921484708;
	setAttr ".wl[24].w[5]" 0.71409233583196463;
	setAttr ".wl[24].w[6]" 0.15930853585346127;
	setAttr ".wl[24].w[7]" 0.0076623345498635148;
	setAttr ".wl[24].w[8]" 0.0076623345498635148;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.079619237494316847;
	setAttr ".wl[25].w[1]" 0.033887645279482861;
	setAttr ".wl[25].w[2]" 0.019441463199539107;
	setAttr ".wl[25].w[5]" 0.7478216786684988;
	setAttr ".wl[25].w[6]" 0.11922997535816236;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.48116109147856601;
	setAttr ".wl[26].w[5]" 0.48116109147856601;
	setAttr ".wl[26].w[6]" 0.011116110646600431;
	setAttr ".wl[26].w[9]" 0.017935533740427126;
	setAttr ".wl[26].w[10]" 0.0086261726558405274;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.65088744455469028;
	setAttr ".wl[27].w[1]" 0.013027436222115879;
	setAttr ".wl[27].w[5]" 0.28413519806094328;
	setAttr ".wl[27].w[9]" 0.043036676835933978;
	setAttr ".wl[27].w[10]" 0.0089132443263167209;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.48116109147856601;
	setAttr ".wl[28].w[5]" 0.48116109147856601;
	setAttr ".wl[28].w[6]" 0.011116110646600431;
	setAttr ".wl[28].w[9]" 0.017935533740427126;
	setAttr ".wl[28].w[10]" 0.0086261726558405274;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.65088744455469028;
	setAttr ".wl[29].w[1]" 0.013027436222115879;
	setAttr ".wl[29].w[5]" 0.28413519806094328;
	setAttr ".wl[29].w[9]" 0.043036676835933978;
	setAttr ".wl[29].w[10]" 0.0089132443263167209;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.11131381724637775;
	setAttr ".wl[30].w[1]" 0.007433619172131492;
	setAttr ".wl[30].w[5]" 0.71434491192955052;
	setAttr ".wl[30].w[6]" 0.15936488364810764;
	setAttr ".wl[30].w[9]" 0.0075427680038326061;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.079619237494316847;
	setAttr ".wl[31].w[1]" 0.033887645279482861;
	setAttr ".wl[31].w[2]" 0.019441463199539107;
	setAttr ".wl[31].w[5]" 0.7478216786684988;
	setAttr ".wl[31].w[6]" 0.11922997535816236;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[2]" 0.19473247337707736;
	setAttr ".wl[32].w[3]" 0.38609472502245684;
	setAttr ".wl[32].w[4]" 0.38609472502245662;
	setAttr ".wl[32].w[7]" 0.016539038289004618;
	setAttr ".wl[32].w[8]" 0.016539038289004618;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[1]" 0.0055437812323554121;
	setAttr ".wl[33].w[2]" 0.20238752011100888;
	setAttr ".wl[33].w[3]" 0.39508882710680698;
	setAttr ".wl[33].w[4]" 0.39508882710680687;
	setAttr ".wl[33].w[7]" 0.0018910444430219285;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[1]" 0.18697423247495809;
	setAttr ".wl[34].w[2]" 0.55088478773270155;
	setAttr ".wl[34].w[3]" 0.11118455104432677;
	setAttr ".wl[34].w[4]" 0.11118455104432677;
	setAttr ".wl[34].w[6]" 0.039771877703686884;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.19529017176369062;
	setAttr ".wl[35].w[2]" 0.56624260213977051;
	setAttr ".wl[35].w[3]" 0.11672872692341565;
	setAttr ".wl[35].w[4]" 0.11672872692341565;
	setAttr ".wl[35].w[6]" 0.0050097722497074492;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[1]" 0.20771233365556743;
	setAttr ".wl[36].w[2]" 0.61198574434922015;
	setAttr ".wl[36].w[3]" 0.06932757691171515;
	setAttr ".wl[36].w[4]" 0.066791200580935683;
	setAttr ".wl[36].w[6]" 0.044183144502561666;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[1]" 0.21801668689212916;
	setAttr ".wl[37].w[2]" 0.63213798718489;
	setAttr ".wl[37].w[3]" 0.073461540975912593;
	setAttr ".wl[37].w[4]" 0.070791010164285087;
	setAttr ".wl[37].w[6]" 0.0055927747827830866;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[2]" 0.38724054238552841;
	setAttr ".wl[38].w[3]" 0.38724054238552841;
	setAttr ".wl[38].w[4]" 0.16958756230025115;
	setAttr ".wl[38].w[6]" 0.027965676464345973;
	setAttr ".wl[38].w[7]" 0.027965676464345973;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.011045580058905406;
	setAttr ".wl[39].w[2]" 0.40324238324239847;
	setAttr ".wl[39].w[3]" 0.40324238324239836;
	setAttr ".wl[39].w[4]" 0.178900718741035;
	setAttr ".wl[39].w[6]" 0.0035689347152628214;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[1]" 0.079441747404771904;
	setAttr ".wl[40].w[2]" 0.46542779163350972;
	setAttr ".wl[40].w[3]" 0.21076413375341899;
	setAttr ".wl[40].w[4]" 0.21076413375341899;
	setAttr ".wl[40].w[6]" 0.033602193454880483;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[1]" 0.08311184732079753;
	setAttr ".wl[41].w[2]" 0.47606859110651761;
	setAttr ".wl[41].w[3]" 0.2183037972311753;
	setAttr ".wl[41].w[4]" 0.2183037972311753;
	setAttr ".wl[41].w[6]" 0.0042119671103341754;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.48255614350051151;
	setAttr ".wl[42].w[2]" 0.43558388238932466;
	setAttr ".wl[42].w[3]" 0.013145558705419154;
	setAttr ".wl[42].w[5]" 0.034838798151343185;
	setAttr ".wl[42].w[6]" 0.033875617253401415;
	setAttr -s 5 ".wl[43].w[0:4]"  0.014019366359509027 0.50288494378542592 
		0.45480118745449477 0.014147251200285158 0.014147251200285158;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.013027909651153259;
	setAttr ".wl[44].w[1]" 0.48261367201894079;
	setAttr ".wl[44].w[2]" 0.4356358110524306;
	setAttr ".wl[44].w[5]" 0.034842951501100512;
	setAttr ".wl[44].w[6]" 0.033879655776374779;
	setAttr -s 5 ".wl[45].w[0:4]"  0.014106913166577827 0.5060253119035274 
		0.45764128669947479 0.011113244115210025 0.011113244115210025;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[1]" 0.10312200455439317;
	setAttr ".wl[46].w[2]" 0.60416403737978375;
	setAttr ".wl[46].w[3]" 0.13359565077247837;
	setAttr ".wl[46].w[4]" 0.11549986158071138;
	setAttr ".wl[46].w[6]" 0.043618445712633486;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[1]" 0.10880952447450135;
	setAttr ".wl[47].w[2]" 0.62326610086771128;
	setAttr ".wl[47].w[3]" 0.14065326931252911;
	setAttr ".wl[47].w[4]" 0.12175682364954855;
	setAttr ".wl[47].w[6]" 0.0055142816957097981;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[1]" 0.45298942432481187;
	setAttr ".wl[48].w[2]" 0.45985833476360743;
	setAttr ".wl[48].w[3]" 0.020886393529826741;
	setAttr ".wl[48].w[5]" 0.033065748452695123;
	setAttr ".wl[48].w[6]" 0.033200098929058876;
	setAttr -s 5 ".wl[49].w[0:4]"  0.0085104055917704403 0.46992283996549866 
		0.47691183537164411 0.022327459535543402 0.022327459535543402;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.13046921647434928;
	setAttr ".wl[50].w[1]" 0.70428273190535573;
	setAttr ".wl[50].w[2]" 0.091133257108391902;
	setAttr ".wl[50].w[5]" 0.050846651252511151;
	setAttr ".wl[50].w[6]" 0.023268143259391763;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.14119181182457077;
	setAttr ".wl[51].w[1]" 0.74566096241273927;
	setAttr ".wl[51].w[2]" 0.098892987404013422;
	setAttr ".wl[51].w[5]" 0.0065971574428859391;
	setAttr ".wl[51].w[9]" 0.0076570809157906778;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.13046921647434928;
	setAttr ".wl[52].w[1]" 0.70428273190535573;
	setAttr ".wl[52].w[2]" 0.091133257108391902;
	setAttr ".wl[52].w[5]" 0.050846651252511151;
	setAttr ".wl[52].w[6]" 0.023268143259391763;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.14119181182457077;
	setAttr ".wl[53].w[1]" 0.74566096241273927;
	setAttr ".wl[53].w[2]" 0.098892987404013422;
	setAttr ".wl[53].w[5]" 0.0065971574428859391;
	setAttr ".wl[53].w[9]" 0.0076570809157906778;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[1]" 0.45556219427782035;
	setAttr ".wl[54].w[2]" 0.4624701169439171;
	setAttr ".wl[54].w[3]" 0.01532548210002265;
	setAttr ".wl[54].w[5]" 0.033253546576723358;
	setAttr ".wl[54].w[6]" 0.033388660101516504;
	setAttr -s 5 ".wl[55].w[0:4]"  0.0086140750830315388 0.47564720424236723 
		0.48272133608418188 0.016508692295209664 0.016508692295209664;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.089592907939146774;
	setAttr ".wl[56].w[1]" 0.70071072570697934;
	setAttr ".wl[56].w[2]" 0.13142106736165465;
	setAttr ".wl[56].w[5]" 0.050588765398985679;
	setAttr ".wl[56].w[6]" 0.02768653359323368;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.097792002554102642;
	setAttr ".wl[57].w[1]" 0.74617068866805525;
	setAttr ".wl[57].w[2]" 0.14302987015963581;
	setAttr ".wl[57].w[5]" 0.0066016671926631184;
	setAttr ".wl[57].w[9]" 0.0064057714255433126;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.66840532421989851;
	setAttr ".wl[58].w[1]" 0.24771165823333408;
	setAttr ".wl[58].w[5]" 0.018054225842101108;
	setAttr ".wl[58].w[9]" 0.055079107011189177;
	setAttr ".wl[58].w[10]" 0.010749684693477035;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.48414089975794161;
	setAttr ".wl[59].w[1]" 0.48414089975794161;
	setAttr ".wl[59].w[2]" 0.0088239739603921639;
	setAttr ".wl[59].w[9]" 0.015671154563697054;
	setAttr ".wl[59].w[10]" 0.0072230719600276079;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.66840532421989851;
	setAttr ".wl[60].w[1]" 0.24771165823333408;
	setAttr ".wl[60].w[5]" 0.018054225842101108;
	setAttr ".wl[60].w[9]" 0.055079107011189177;
	setAttr ".wl[60].w[10]" 0.010749684693477035;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.48414089975794161;
	setAttr ".wl[61].w[1]" 0.48414089975794161;
	setAttr ".wl[61].w[2]" 0.0088239739603921639;
	setAttr ".wl[61].w[9]" 0.015671154563697054;
	setAttr ".wl[61].w[10]" 0.0072230719600276079;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.089592907939146774;
	setAttr ".wl[62].w[1]" 0.70071072570697934;
	setAttr ".wl[62].w[2]" 0.13142106736165465;
	setAttr ".wl[62].w[5]" 0.050588765398985679;
	setAttr ".wl[62].w[6]" 0.02768653359323368;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.097792002554102642;
	setAttr ".wl[63].w[1]" 0.74617068866805525;
	setAttr ".wl[63].w[2]" 0.14302987015963581;
	setAttr ".wl[63].w[5]" 0.0066016671926631184;
	setAttr ".wl[63].w[9]" 0.0064057714255433126;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.50372751989485542;
	setAttr ".wl[64].w[1]" 0.013307026981082814;
	setAttr ".wl[64].w[5]" 0.44902018462448595;
	setAttr ".wl[64].w[6]" 0.0075599456208735169;
	setAttr ".wl[64].w[9]" 0.026385322878702318;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.51528477860210686;
	setAttr ".wl[65].w[1]" 0.42956004175419293;
	setAttr ".wl[65].w[2]" 0.0082101446223935212;
	setAttr ".wl[65].w[5]" 0.016248158825558742;
	setAttr ".wl[65].w[9]" 0.030696876195747916;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.40167900959118935;
	setAttr ".wl[66].w[5]" 0.083083514268787906;
	setAttr ".wl[66].w[9]" 0.36935472495719734;
	setAttr ".wl[66].w[10]" 0.12129907844366349;
	setAttr ".wl[66].w[11]" 0.024583672739161771;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.39626897812891582;
	setAttr ".wl[67].w[1]" 0.07144631489189357;
	setAttr ".wl[67].w[9]" 0.3894583231976062;
	setAttr ".wl[67].w[10]" 0.11969476317211683;
	setAttr ".wl[67].w[11]" 0.023131620609467586;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.40167900959118935;
	setAttr ".wl[68].w[5]" 0.083083514268787906;
	setAttr ".wl[68].w[9]" 0.36935472495719734;
	setAttr ".wl[68].w[10]" 0.12129907844366349;
	setAttr ".wl[68].w[11]" 0.024583672739161771;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.39626897812891582;
	setAttr ".wl[69].w[1]" 0.07144631489189357;
	setAttr ".wl[69].w[9]" 0.3894583231976062;
	setAttr ".wl[69].w[10]" 0.11969476317211683;
	setAttr ".wl[69].w[11]" 0.023131620609467586;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.50372751989485542;
	setAttr ".wl[70].w[1]" 0.013307026981082814;
	setAttr ".wl[70].w[5]" 0.44902018462448595;
	setAttr ".wl[70].w[6]" 0.0075599456208735169;
	setAttr ".wl[70].w[9]" 0.026385322878702318;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.51528477860210686;
	setAttr ".wl[71].w[1]" 0.42956004175419293;
	setAttr ".wl[71].w[2]" 0.0082101446223935212;
	setAttr ".wl[71].w[5]" 0.016248158825558742;
	setAttr ".wl[71].w[9]" 0.030696876195747916;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.61543152055133366;
	setAttr ".wl[72].w[1]" 0.010692397673851252;
	setAttr ".wl[72].w[5]" 0.12748044873834416;
	setAttr ".wl[72].w[9]" 0.20261382202745665;
	setAttr ".wl[72].w[10]" 0.043781811009014363;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.61899045785577589;
	setAttr ".wl[73].w[1]" 0.11038113838592821;
	setAttr ".wl[73].w[5]" 0.010858696689069353;
	setAttr ".wl[73].w[9]" 0.21629811847727703;
	setAttr ".wl[73].w[10]" 0.04347158859194953;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.086298641837769405;
	setAttr ".wl[74].w[9]" 0.33501807613660323;
	setAttr ".wl[74].w[10]" 0.35865366221854772;
	setAttr ".wl[74].w[11]" 0.17831264244727796;
	setAttr ".wl[74].w[16]" 0.041716977359801725;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.081560012442775817;
	setAttr ".wl[75].w[9]" 0.34083022079177561;
	setAttr ".wl[75].w[10]" 0.3668115682882031;
	setAttr ".wl[75].w[11]" 0.17415448549033941;
	setAttr ".wl[75].w[12]" 0.03664371298690608;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.086298641837769405;
	setAttr ".wl[76].w[9]" 0.33501807613660323;
	setAttr ".wl[76].w[10]" 0.35865366221854772;
	setAttr ".wl[76].w[11]" 0.17831264244727796;
	setAttr ".wl[76].w[16]" 0.041716977359801725;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.081560012442775817;
	setAttr ".wl[77].w[9]" 0.34083022079177561;
	setAttr ".wl[77].w[10]" 0.3668115682882031;
	setAttr ".wl[77].w[11]" 0.17415448549033941;
	setAttr ".wl[77].w[12]" 0.03664371298690608;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.61543152055133366;
	setAttr ".wl[78].w[1]" 0.010692397673851252;
	setAttr ".wl[78].w[5]" 0.12748044873834416;
	setAttr ".wl[78].w[9]" 0.20261382202745665;
	setAttr ".wl[78].w[10]" 0.043781811009014363;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.61899045785577589;
	setAttr ".wl[79].w[1]" 0.11038113838592821;
	setAttr ".wl[79].w[5]" 0.010858696689069353;
	setAttr ".wl[79].w[9]" 0.21629811847727703;
	setAttr ".wl[79].w[10]" 0.04347158859194953;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.16069653848726426;
	setAttr ".wl[80].w[9]" 0.3638568092406832;
	setAttr ".wl[80].w[10]" 0.35318361184006003;
	setAttr ".wl[80].w[11]" 0.099451915983604811;
	setAttr ".wl[80].w[16]" 0.022811124448387576;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.1555090240982975;
	setAttr ".wl[81].w[9]" 0.37103129460069006;
	setAttr ".wl[81].w[10]" 0.3593078053909089;
	setAttr ".wl[81].w[11]" 0.094174172731940883;
	setAttr ".wl[81].w[12]" 0.01997770317816271;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[10]" 0.10690353448330615;
	setAttr ".wl[82].w[11]" 0.34198257672133719;
	setAttr ".wl[82].w[16]" 0.29197568801950097;
	setAttr ".wl[82].w[17]" 0.14735259776859469;
	setAttr ".wl[82].w[20]" 0.11178560300726098;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[10]" 0.1149687564820977;
	setAttr ".wl[83].w[11]" 0.36368577642078537;
	setAttr ".wl[83].w[12]" 0.27643509445882258;
	setAttr ".wl[83].w[13]" 0.12433327137597511;
	setAttr ".wl[83].w[20]" 0.12057710126231921;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[10]" 0.10690353448330615;
	setAttr ".wl[84].w[11]" 0.34198257672133719;
	setAttr ".wl[84].w[16]" 0.29197568801950097;
	setAttr ".wl[84].w[17]" 0.14735259776859469;
	setAttr ".wl[84].w[20]" 0.11178560300726098;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[10]" 0.1149687564820977;
	setAttr ".wl[85].w[11]" 0.36368577642078537;
	setAttr ".wl[85].w[12]" 0.27643509445882258;
	setAttr ".wl[85].w[13]" 0.12433327137597511;
	setAttr ".wl[85].w[20]" 0.12057710126231921;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[0]" 0.16069653848726426;
	setAttr ".wl[86].w[9]" 0.3638568092406832;
	setAttr ".wl[86].w[10]" 0.35318361184006003;
	setAttr ".wl[86].w[11]" 0.099451915983604811;
	setAttr ".wl[86].w[16]" 0.022811124448387576;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[0]" 0.1555090240982975;
	setAttr ".wl[87].w[9]" 0.37103129460069006;
	setAttr ".wl[87].w[10]" 0.3593078053909089;
	setAttr ".wl[87].w[11]" 0.094174172731940883;
	setAttr ".wl[87].w[12]" 0.01997770317816271;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[10]" 0.17599011756027008;
	setAttr ".wl[88].w[11]" 0.35502280772579398;
	setAttr ".wl[88].w[16]" 0.2274838607943814;
	setAttr ".wl[88].w[17]" 0.13180578349019084;
	setAttr ".wl[88].w[20]" 0.10969743042936364;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[10]" 0.18875114737999873;
	setAttr ".wl[89].w[11]" 0.37437988775906944;
	setAttr ".wl[89].w[12]" 0.21144630685515639;
	setAttr ".wl[89].w[13]" 0.11136084960294422;
	setAttr ".wl[89].w[20]" 0.1140618084028311;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[11]" 0.2092441488364036;
	setAttr ".wl[90].w[16]" 0.23044704401199723;
	setAttr ".wl[90].w[17]" 0.13747139060172445;
	setAttr ".wl[90].w[20]" 0.22732516190842258;
	setAttr ".wl[90].w[21]" 0.19551225464145211;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[11]" 0.20477655778774598;
	setAttr ".wl[91].w[12]" 0.21669535258666367;
	setAttr ".wl[91].w[13]" 0.1180142893014561;
	setAttr ".wl[91].w[20]" 0.24889043095563027;
	setAttr ".wl[91].w[21]" 0.21162336936850396;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[11]" 0.2092441488364036;
	setAttr ".wl[92].w[16]" 0.23044704401199723;
	setAttr ".wl[92].w[17]" 0.13747139060172445;
	setAttr ".wl[92].w[20]" 0.22732516190842258;
	setAttr ".wl[92].w[21]" 0.19551225464145211;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[11]" 0.20477655778774598;
	setAttr ".wl[93].w[12]" 0.21669535258666367;
	setAttr ".wl[93].w[13]" 0.1180142893014561;
	setAttr ".wl[93].w[20]" 0.24889043095563027;
	setAttr ".wl[93].w[21]" 0.21162336936850396;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[10]" 0.17599011756027008;
	setAttr ".wl[94].w[11]" 0.35502280772579398;
	setAttr ".wl[94].w[16]" 0.2274838607943814;
	setAttr ".wl[94].w[17]" 0.13180578349019084;
	setAttr ".wl[94].w[20]" 0.10969743042936364;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[10]" 0.18875114737999873;
	setAttr ".wl[95].w[11]" 0.37437988775906944;
	setAttr ".wl[95].w[12]" 0.21144630685515639;
	setAttr ".wl[95].w[13]" 0.11136084960294422;
	setAttr ".wl[95].w[20]" 0.1140618084028311;
	setAttr -s 5 ".wl[96].w[11:15]"  0.00090744446663035489 0.0017677383255991477 
		0.019067471240019104 0.48912867298387575 0.48912867298387563;
	setAttr -s 5 ".wl[97].w[11:15]"  0.00067245122590333945 0.0013211302573892588 
		0.015100952407395399 0.49145273305465598 0.49145273305465598;
	setAttr -s 5 ".wl[98].w[11:15]"  0.0042293343311881971 0.010634397497582734 
		0.30233035780581846 0.59047112632513366 0.092334784040276965;
	setAttr -s 5 ".wl[99].w[11:15]"  0.0029968166043643418 0.0077447607880883496 
		0.29204656017925906 0.62767077549197114 0.069541086936317109;
	setAttr -s 5 ".wl[100].w[11:15]"  0.0047585512102545522 0.01189291799203899 
		0.31056013793912202 0.57560239051695239 0.097186002341632119;
	setAttr -s 5 ".wl[101].w[11:15]"  0.0034793923601609583 0.008934453310248924 
		0.30372390125614451 0.60865831550747451 0.075203937565971157;
	setAttr -s 5 ".wl[102].w[11:15]"  0.0010828662051950144 0.0021043684344110784 
		0.022194425124198169 0.48730917011809788 0.48730917011809788;
	setAttr -s 5 ".wl[103].w[11:15]"  0.00082855261304701916 0.0016237780313815436 
		0.018124743376785057 0.48971146298939322 0.48971146298939322;
	setAttr -s 5 ".wl[104].w[11:15]"  0.0031147117564396089 0.0072571593668206685 
		0.16884237420314202 0.63180694727334286 0.1889788074002548;
	setAttr -s 5 ".wl[105].w[11:15]"  0.0022917486745254218 0.0054475881738819485 
		0.15367398068174201 0.68147033527903811 0.15711634719081252;
	setAttr -s 5 ".wl[106].w[11:15]"  0.01492658361546839 0.0511981475573388 
		0.52546164726962163 0.39370071574935794 0.014712905808213288;
	setAttr -s 5 ".wl[107].w[11:15]"  0.010290215032299569 0.038461915170351461 
		0.56738276333298598 0.37442334702659696 0.009441759437766031;
	setAttr -s 5 ".wl[108].w[11:15]"  0.016465378659976111 0.055610048435893282 
		0.51968178978490887 0.39231270943038254 0.015930073688839037;
	setAttr -s 5 ".wl[109].w[11:15]"  0.011731986898169875 0.043083481619022389 
		0.55902355785942104 0.37559540699829669 0.010565566625089871;
	setAttr -s 5 ".wl[110].w[11:15]"  0.0035323956742357087 0.0081917491555711913 
		0.17920263010219503 0.61433581631160095 0.19473740875639714;
	setAttr -s 5 ".wl[111].w[11:15]"  0.0026793865027919749 0.0063377416603652001 
		0.16651319072425863 0.65902212095886115 0.16544756015372306;
	setAttr -s 5 ".wl[112].w[11:15]"  0.0086776878390174006 0.026887811519030549 
		0.47612410913814129 0.46739301395930272 0.020917377544508009;
	setAttr -s 5 ".wl[113].w[11:15]"  0.0057357173297152529 0.018867696746549457 
		0.48990280731209274 0.47213838852751672 0.013355390084125897;
	setAttr -s 5 ".wl[114].w[10:14]"  0.049694139777946185 0.087388991521537424 
		0.33543066140851924 0.47457231787875453 0.052913889413242599;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[11]" 0.066564203894356966;
	setAttr ".wl[115].w[12]" 0.34283647371561188;
	setAttr ".wl[115].w[13]" 0.52600321050517429;
	setAttr ".wl[115].w[14]" 0.034907665867935332;
	setAttr ".wl[115].w[20]" 0.029688446016921485;
	setAttr -s 5 ".wl[116].w[10:14]"  0.052503596940895292 0.091409138973442161 
		0.33646723700578934 0.46512476502746186 0.054495262052411335;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[11]" 0.071402967540387427;
	setAttr ".wl[117].w[12]" 0.34629680548828751;
	setAttr ".wl[117].w[13]" 0.51305360745553708;
	setAttr ".wl[117].w[14]" 0.036930350649541324;
	setAttr ".wl[117].w[20]" 0.032316268866246632;
	setAttr -s 5 ".wl[118].w[11:15]"  0.0097262516789224408 0.02979372479686649 
		0.4734713394567846 0.46422697407233549 0.022781709995091035;
	setAttr -s 5 ".wl[119].w[11:15]"  0.0066738213519590764 0.021677181572471681 
		0.48729619818678949 0.4692637738037671 0.01508902508501263;
	setAttr -s 5 ".wl[120].w[10:14]"  0.038405552546776363 0.068002226044887981 
		0.28032210717130523 0.5307877691647801 0.082482345072250246;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[11]" 0.051350352643838706;
	setAttr ".wl[121].w[12]" 0.27072951299133186;
	setAttr ".wl[121].w[13]" 0.59647756591543244;
	setAttr ".wl[121].w[14]" 0.057870275799595777;
	setAttr ".wl[121].w[20]" 0.023572292649801152;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[9]" 0.065430122858343501;
	setAttr ".wl[122].w[10]" 0.30036115401666114;
	setAttr ".wl[122].w[11]" 0.41006776582396587;
	setAttr ".wl[122].w[12]" 0.12429426025220444;
	setAttr ".wl[122].w[20]" 0.099846697048825164;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[11]" 0.23395723261166598;
	setAttr ".wl[123].w[12]" 0.23395723261166598;
	setAttr ".wl[123].w[13]" 0.075651949230533463;
	setAttr ".wl[123].w[20]" 0.28156061216548117;
	setAttr ".wl[123].w[21]" 0.17487297338065333;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[9]" 0.068198714882410486;
	setAttr ".wl[124].w[10]" 0.30022209320553767;
	setAttr ".wl[124].w[11]" 0.40209202209942008;
	setAttr ".wl[124].w[12]" 0.12631168150368113;
	setAttr ".wl[124].w[20]" 0.10317548830895071;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[11]" 0.23184171194056652;
	setAttr ".wl[125].w[12]" 0.23184171194056652;
	setAttr ".wl[125].w[13]" 0.076852992127908096;
	setAttr ".wl[125].w[20]" 0.28154955217297123;
	setAttr ".wl[125].w[21]" 0.17791403181798765;
	setAttr -s 5 ".wl[126].w[10:14]"  0.040779714364692535 0.071570869638380635 
		0.28431732723406289 0.51887579071387901 0.08445629804898501;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[11]" 0.055503798361625806;
	setAttr ".wl[127].w[12]" 0.27819005728351642;
	setAttr ".wl[127].w[13]" 0.57975847745658593;
	setAttr ".wl[127].w[14]" 0.060764936514059203;
	setAttr ".wl[127].w[20]" 0.02578273038421271;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[11]" 0.00058442914677586276;
	setAttr ".wl[128].w[16]" 0.0011421221219426289;
	setAttr ".wl[128].w[17]" 0.012810536568906962;
	setAttr ".wl[128].w[18]" 0.49273145608118724;
	setAttr ".wl[128].w[19]" 0.49273145608118724;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[11]" 0.0012787499387323618;
	setAttr ".wl[129].w[16]" 0.0024640410247981997;
	setAttr ".wl[129].w[17]" 0.024712676225172137;
	setAttr ".wl[129].w[18]" 0.48577226640564863;
	setAttr ".wl[129].w[19]" 0.48577226640564863;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[11]" 0.0026392468906165614;
	setAttr ".wl[130].w[16]" 0.006760821496929483;
	setAttr ".wl[130].w[17]" 0.26210980087500357;
	setAttr ".wl[130].w[18]" 0.65393311941251531;
	setAttr ".wl[130].w[19]" 0.074557011324935127;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[11]" 0.0051296661912880945;
	setAttr ".wl[131].w[16]" 0.012621894061251124;
	setAttr ".wl[131].w[17]" 0.30087483432132284;
	setAttr ".wl[131].w[18]" 0.57024665864180135;
	setAttr ".wl[131].w[19]" 0.11112694678433666;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[11]" 0.0026366963464496533;
	setAttr ".wl[132].w[16]" 0.0067413891881812679;
	setAttr ".wl[132].w[17]" 0.25932910936347525;
	setAttr ".wl[132].w[18]" 0.65529016687009267;
	setAttr ".wl[132].w[19]" 0.076002638231801201;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[11]" 0.0051150433114880789;
	setAttr ".wl[133].w[16]" 0.012564986291981882;
	setAttr ".wl[133].w[17]" 0.29836553781155595;
	setAttr ".wl[133].w[18]" 0.57113622294932909;
	setAttr ".wl[133].w[19]" 0.1128182096356449;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[11]" 0.00056192811187840439;
	setAttr ".wl[134].w[16]" 0.001097742071421674;
	setAttr ".wl[134].w[17]" 0.01231372251082513;
	setAttr ".wl[134].w[18]" 0.49301330365293744;
	setAttr ".wl[134].w[19]" 0.49301330365293744;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[11]" 0.001245088795640065;
	setAttr ".wl[135].w[16]" 0.002398376246098159;
	setAttr ".wl[135].w[17]" 0.024061342338531237;
	setAttr ".wl[135].w[18]" 0.48614759630986532;
	setAttr ".wl[135].w[19]" 0.48614759630986532;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[11]" 0.0019708829380446781;
	setAttr ".wl[136].w[16]" 0.004648438260718207;
	setAttr ".wl[136].w[17]" 0.13061527167816173;
	setAttr ".wl[136].w[18]" 0.69442905216160533;
	setAttr ".wl[136].w[19]" 0.16833635496147009;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[11]" 0.0038060624391696146;
	setAttr ".wl[137].w[16]" 0.0087095311193024442;
	setAttr ".wl[137].w[17]" 0.17472211297404591;
	setAttr ".wl[137].w[18]" 0.59745915247315939;
	setAttr ".wl[137].w[19]" 0.21530314099432274;
	setAttr -s 5 ".wl[138].w";
	setAttr ".wl[138].w[11]" 0.008545701924195466;
	setAttr ".wl[138].w[16]" 0.03162857867515368;
	setAttr ".wl[138].w[17]" 0.55694640095327419;
	setAttr ".wl[138].w[18]" 0.39373568106729867;
	setAttr ".wl[138].w[19]" 0.0091436373800780728;
	setAttr -s 5 ".wl[139].w";
	setAttr ".wl[139].w[11]" 0.016472485045939015;
	setAttr ".wl[139].w[16]" 0.054274152162997989;
	setAttr ".wl[139].w[17]" 0.50747745773979425;
	setAttr ".wl[139].w[18]" 0.40414558057174615;
	setAttr ".wl[139].w[19]" 0.017630324479522706;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[11]" 0.0086955371882904559;
	setAttr ".wl[140].w[16]" 0.031942797885598548;
	setAttr ".wl[140].w[17]" 0.55252725106748013;
	setAttr ".wl[140].w[18]" 0.3973452397873849;
	setAttr ".wl[140].w[19]" 0.0094891740712459358;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[11]" 0.016585306419421884;
	setAttr ".wl[141].w[16]" 0.054328076388267324;
	setAttr ".wl[141].w[17]" 0.50486264150802318;
	setAttr ".wl[141].w[18]" 0.4061428482601076;
	setAttr ".wl[141].w[19]" 0.018081127424179978;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[11]" 0.0019460936634518003;
	setAttr ".wl[142].w[16]" 0.0045841066717431942;
	setAttr ".wl[142].w[17]" 0.12826794985380341;
	setAttr ".wl[142].w[18]" 0.69483188394376716;
	setAttr ".wl[142].w[19]" 0.17036996586723444;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[11]" 0.0037673165489286006;
	setAttr ".wl[143].w[16]" 0.0086111220016577648;
	setAttr ".wl[143].w[17]" 0.17235617698586475;
	setAttr ".wl[143].w[18]" 0.59771331344768053;
	setAttr ".wl[143].w[19]" 0.21755207101586849;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[11]" 0.0048201174584781613;
	setAttr ".wl[144].w[16]" 0.015689908171952621;
	setAttr ".wl[144].w[17]" 0.48640269924070301;
	setAttr ".wl[144].w[18]" 0.47989635295965233;
	setAttr ".wl[144].w[19]" 0.013190922169213908;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[11]" 0.010051992049796439;
	setAttr ".wl[145].w[16]" 0.030120714644808675;
	setAttr ".wl[145].w[17]" 0.4689256817615674;
	setAttr ".wl[145].w[18]" 0.46505805990358201;
	setAttr ".wl[145].w[19]" 0.025843551640245467;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[11]" 0.059316791225661282;
	setAttr ".wl[146].w[16]" 0.32250586599687847;
	setAttr ".wl[146].w[17]" 0.55437850551010603;
	setAttr ".wl[146].w[18]" 0.038110597374556535;
	setAttr ".wl[146].w[20]" 0.025688239892797466;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[10]" 0.053234392680758261;
	setAttr ".wl[147].w[11]" 0.089165943980931986;
	setAttr ".wl[147].w[16]" 0.32677968431657728;
	setAttr ".wl[147].w[17]" 0.47043236940760563;
	setAttr ".wl[147].w[18]" 0.060387609614126959;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[11]" 0.061094489795923142;
	setAttr ".wl[148].w[16]" 0.32169569191657349;
	setAttr ".wl[148].w[17]" 0.54995581464748688;
	setAttr ".wl[148].w[18]" 0.040536535155267166;
	setAttr ".wl[148].w[20]" 0.026717468484749363;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[10]" 0.054034939641184949;
	setAttr ".wl[149].w[11]" 0.09009282199094254;
	setAttr ".wl[149].w[16]" 0.32497457309334599;
	setAttr ".wl[149].w[17]" 0.46815725655149854;
	setAttr ".wl[149].w[18]" 0.062740408723028024;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[11]" 0.0048969873119287261;
	setAttr ".wl[150].w[16]" 0.015862139633867536;
	setAttr ".wl[150].w[17]" 0.48544412942372323;
	setAttr ".wl[150].w[18]" 0.48015043944294866;
	setAttr ".wl[150].w[19]" 0.01364630418753187;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[11]" 0.01011541303904274;
	setAttr ".wl[151].w[16]" 0.030189729061267764;
	setAttr ".wl[151].w[17]" 0.4681952297175167;
	setAttr ".wl[151].w[18]" 0.4650478007190913;
	setAttr ".wl[151].w[19]" 0.026451827463081508;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[11]" 0.045412793556319705;
	setAttr ".wl[152].w[16]" 0.24610689650670164;
	setAttr ".wl[152].w[17]" 0.62474751199898881;
	setAttr ".wl[152].w[18]" 0.063362563735947647;
	setAttr ".wl[152].w[20]" 0.020370234202042172;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[10]" 0.04146386464175076;
	setAttr ".wl[153].w[11]" 0.069928386728709435;
	setAttr ".wl[153].w[16]" 0.27358039101535359;
	setAttr ".wl[153].w[17]" 0.52163329725882868;
	setAttr ".wl[153].w[18]" 0.093394060355357592;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[11]" 0.25324703434165691;
	setAttr ".wl[154].w[16]" 0.25467715651638323;
	setAttr ".wl[154].w[17]" 0.089489876690553222;
	setAttr ".wl[154].w[20]" 0.24961239358925416;
	setAttr ".wl[154].w[21]" 0.15297353886215265;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[9]" 0.071106729936042737;
	setAttr ".wl[155].w[10]" 0.30201542598392311;
	setAttr ".wl[155].w[11]" 0.40381302263306262;
	setAttr ".wl[155].w[16]" 0.12559718744736859;
	setAttr ".wl[155].w[20]" 0.097467633999603009;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[11]" 0.25214827558466107;
	setAttr ".wl[156].w[16]" 0.25390261800248709;
	setAttr ".wl[156].w[17]" 0.094895464847737226;
	setAttr ".wl[156].w[20]" 0.24472824267557738;
	setAttr ".wl[156].w[21]" 0.15432539888953714;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[9]" 0.075159106189302771;
	setAttr ".wl[157].w[10]" 0.29830652697179894;
	setAttr ".wl[157].w[11]" 0.3931381338412166;
	setAttr ".wl[157].w[16]" 0.13150256227355223;
	setAttr ".wl[157].w[20]" 0.1018936707241296;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[11]" 0.046726852764330022;
	setAttr ".wl[158].w[16]" 0.24663149413728497;
	setAttr ".wl[158].w[17]" 0.61876342079809932;
	setAttr ".wl[158].w[18]" 0.066758289208880828;
	setAttr ".wl[158].w[20]" 0.021119943091404764;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[10]" 0.042064995483561678;
	setAttr ".wl[159].w[11]" 0.070686581706024251;
	setAttr ".wl[159].w[16]" 0.27239736177949653;
	setAttr ".wl[159].w[17]" 0.51844450603865133;
	setAttr ".wl[159].w[18]" 0.096406554992266288;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[11]" 0.29654379176125778;
	setAttr ".wl[160].w[16]" 0.33097781757307193;
	setAttr ".wl[160].w[17]" 0.14484370297083865;
	setAttr ".wl[160].w[20]" 0.14866148435910151;
	setAttr ".wl[160].w[21]" 0.078973203335730047;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[11]" 0.2948550750295223;
	setAttr ".wl[161].w[12]" 0.33291977303682946;
	setAttr ".wl[161].w[13]" 0.14918710239060956;
	setAttr ".wl[161].w[20]" 0.14526426873172726;
	setAttr ".wl[161].w[21]" 0.077773780811311422;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[11]" 0.072066315407465817;
	setAttr ".wl[162].w[16]" 0.073492700625617927;
	setAttr ".wl[162].w[17]" 0.06194625477908542;
	setAttr ".wl[162].w[20]" 0.39624736459391546;
	setAttr ".wl[162].w[21]" 0.39624736459391546;
	setAttr -s 5 ".wl[163].w";
	setAttr ".wl[163].w[11]" 0.072904569088069568;
	setAttr ".wl[163].w[12]" 0.074504901473819912;
	setAttr ".wl[163].w[13]" 0.063158965880436305;
	setAttr ".wl[163].w[20]" 0.39471578177883715;
	setAttr ".wl[163].w[21]" 0.39471578177883715;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[11]" 0.072066315407465817;
	setAttr ".wl[164].w[16]" 0.073492700625617927;
	setAttr ".wl[164].w[17]" 0.06194625477908542;
	setAttr ".wl[164].w[20]" 0.39624736459391546;
	setAttr ".wl[164].w[21]" 0.39624736459391546;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[11]" 0.072904569088069568;
	setAttr ".wl[165].w[12]" 0.074504901473819912;
	setAttr ".wl[165].w[13]" 0.063158965880436305;
	setAttr ".wl[165].w[20]" 0.39471578177883715;
	setAttr ".wl[165].w[21]" 0.39471578177883715;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[11]" 0.29654379176125778;
	setAttr ".wl[166].w[16]" 0.33097781757307193;
	setAttr ".wl[166].w[17]" 0.14484370297083865;
	setAttr ".wl[166].w[20]" 0.14866148435910151;
	setAttr ".wl[166].w[21]" 0.078973203335730047;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[11]" 0.2948550750295223;
	setAttr ".wl[167].w[12]" 0.33291977303682946;
	setAttr ".wl[167].w[13]" 0.14918710239060956;
	setAttr ".wl[167].w[20]" 0.14526426873172726;
	setAttr ".wl[167].w[21]" 0.077773780811311422;
	setAttr -s 22 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.62202939251646305 -3.4404597349527628 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.25662634583832022 -2.84402127636044 -0 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.25662634583832022 -1.0956523445187838 -0 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.25662634583832022 0.48996350909859743 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.25662677841408738 0.3752574388693648 -0.19834638512210123 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 1.5006851308712463 -2.84402127636044 -0 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 1.5006851308712463 -1.0956523445187838 -0 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 1.5006851308712463 0.48996350909859743 -0 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999967 -0 2.5521621482894059e-008 -0
		 -0 1 -0 0 -2.5521621482894059e-008 -0 0.99999999999999967 -0 1.5006855685091345 0.3752574388693648 -0.19834634682217225 1;
	setAttr ".pm[9]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.62202939251646305 -3.7131636577038583 -0 1;
	setAttr ".pm[10]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.62202939251646305 -4.3134335671168413 -0 1;
	setAttr ".pm[11]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.62202939251646305 -4.9137034765298253 -0 1;
	setAttr ".pm[12]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.26270453471726207 -5.5758595207761941 -0 1;
	setAttr ".pm[13]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.286921327365395 -5.5758648735646208 -0 1;
	setAttr ".pm[14]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.6885687432522007 -5.5758648735646208 -0 1;
	setAttr ".pm[15]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.0589898902062971 -5.5758648735646208 -0 1;
	setAttr ".pm[16]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.98135425031566403 -5.5758595207761941 -0 1;
	setAttr ".pm[17]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 1.5309801123983211 -5.5758648735646208 -0 1;
	setAttr ".pm[18]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 2.9326275282851268 -5.5758648735646208 -0 1;
	setAttr ".pm[19]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 4.3030486752392232 -5.5758648735646208 -0 1;
	setAttr ".pm[20]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.62202939251646305 -5.5139733859428084 -0 1;
	setAttr ".pm[21]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 0.62202939251646305 -6.2931274509459376 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 22 ".ma";
	setAttr -s 22 ".dpf[0:21]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4;
	setAttr -s 22 ".lw";
	setAttr -s 22 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
	setAttr -s 22 ".ifcl";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:125]";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 23 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.62202939251646305 0 0 1;
	setAttr -s 23 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.62202939251646305 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.4404597349527628 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.87865573835478328 -0.59643845859232281
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.7483689318416562
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5856158536173812
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3257576715083346e-007
		 0.11470607022923263 0.19834638512210123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.87865573835478328 -0.59643845859232281
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.7483689318416562
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5856158536173812
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.3257576720634461e-007
		 0.11470607022923263 0.19834638512210123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1.2760810741447028e-008 0 0.99999999999999989 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.27270392275109545
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.60026990941298308
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.60026990941298397
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.35932485779920098 0.66215604424636876
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.54962586208265707 5.3527884267268178e-006
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4016474158868057 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3704211469540963 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.35932485779920098
		 0.66215604424636876 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.54962586208265707
		 5.3527884267268178e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4016474158868057 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3704211469540963 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.60026990941298308
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.77915406500312923
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 23 ".m";
	setAttr -s 23 ".p";
	setAttr -s 23 ".g[0:22]" yes no no no no no no no no no no no no no 
		no no no no no no no no no;
	setAttr ".bp" yes;
createNode HIKSolverNode -n "HIKSolverNode1";
	setAttr ".ihi" 0;
	setAttr ".InputStance" yes;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKState2SK -n "HIKState2SK1";
	setAttr ".ihi" 0;
	setAttr ".HipsTx" 2.8407423746656946e-008;
	setAttr ".HipsTy" 3.4404597282409668;
	setAttr ".LeftUpLegTx" 0.87865573028311039;
	setAttr ".LeftUpLegTy" -0.59643841460975011;
	setAttr ".LeftLegTx" -8.0716728856344844e-009;
	setAttr ".LeftLegTy" -1.7483689345177886;
	setAttr ".LeftFootTx" -8.0716728856344844e-009;
	setAttr ".LeftFootTy" -1.585615846210602;
	setAttr ".RightUpLegTx" -0.87865570327058529;
	setAttr ".RightUpLegTy" -0.59643841460975011;
	setAttr ".RightLegTx" 3.5084197991253063e-008;
	setAttr ".RightLegTy" -1.7483689345177886;
	setAttr ".RightFootTx" 3.5084197991253063e-008;
	setAttr ".RightFootTy" -1.585615846210602;
	setAttr ".SpineTx" 2.8407423746656946e-008;
	setAttr ".SpineTy" 0.2727038793203036;
	setAttr ".LeftArmTx" 0.54962585706299572;
	setAttr ".LeftArmTy" 5.2710939231204179e-006;
	setAttr ".LeftForeArmTx" 1.4016473839154278;
	setAttr ".LeftForeArmTy" -8.1694503606399849e-008;
	setAttr ".LeftHandTx" 1.3704212584262661;
	setAttr ".LeftHandTy" -8.1694501830043009e-008;
	setAttr ".RightArmTx" -0.549625859852793;
	setAttr ".RightArmTy" 5.2710939231204179e-006;
	setAttr ".RightForeArmTx" -1.4016473271005798;
	setAttr ".RightForeArmTy" -8.1694504494578268e-008;
	setAttr ".RightForeArmSx" 0.99999999999999978;
	setAttr ".RightHandTx" -1.3704210824021277;
	setAttr ".RightHandTy" -8.1694503606399849e-008;
	setAttr ".RightHandSx" 0.99999999999999989;
	setAttr ".HeadTx" 2.8407423746656946e-008;
	setAttr ".HeadTy" 0.77915415083087325;
	setAttr ".LeftToeBaseTx" 4.389631629297952e-007;
	setAttr ".LeftToeBaseTy" 0.11470607663781252;
	setAttr ".LeftToeBaseTz" 0.19834639132022858;
	setAttr ".RightToeBaseTx" -4.4175296021187194e-007;
	setAttr ".RightToeBaseTy" 0.11470607663781257;
	setAttr ".RightToeBaseTz" 0.19834639132022858;
	setAttr ".LeftShoulderTx" 0.35932487109884531;
	setAttr ".LeftShoulderTy" 0.66215607013155076;
	setAttr ".LeftShoulderSy" 0.99999999999999989;
	setAttr ".RightShoulderTx" -0.35932484408632015;
	setAttr ".RightShoulderTy" 0.66215607013155076;
	setAttr ".RightShoulderSy" 0.99999999999999989;
	setAttr ".NeckTx" 2.8407423746656946e-008;
	setAttr ".NeckTy" 0.60026975955415818;
	setAttr ".NeckSy" 0.99999999999999989;
	setAttr ".Spine1Tx" 2.8407423746656946e-008;
	setAttr ".Spine1Ty" 0.60026998945190346;
	setAttr ".Spine2Tx" 2.8407423746656946e-008;
	setAttr ".Spine2Ty" 0.60026987450303171;
createNode CustomRigRetargeterNode -n "CustomRigRetargeterNode1";
	setAttr ".pv" -type "string" "";
createNode HIKState2GlobalSK -n "HIKState2GlobalSK1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 1\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n"
		+ "            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 19 100 -ps 2 81 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n"
		+ "\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1.og[0]" "bodyShape.i";
connectAttr "groupId1.id" "bodyShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "bodyShape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "bodyShape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "bodyShape.iog.og[1].gco";
connectAttr "groupId3.id" "bodyShape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "bodyShape.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "bodyShape.twl";
connectAttr "Character1_Hips.s" "Character1_LeftUpLeg.is";
connectAttr "Character1_LeftUpLeg.s" "Character1_LeftLeg.is";
connectAttr "Character1_LeftLeg.s" "Character1_LeftFoot.is";
connectAttr "Character1_LeftFoot.s" "Character1_LeftToeBase.is";
connectAttr "Character1_Hips.s" "Character1_RightUpLeg.is";
connectAttr "Character1_RightUpLeg.s" "Character1_RightLeg.is";
connectAttr "Character1_RightLeg.s" "Character1_RightFoot.is";
connectAttr "Character1_RightFoot.s" "Character1_RightToeBase.is";
connectAttr "Character1_Hips.s" "Character1_Spine.is";
connectAttr "Character1_Spine.s" "Character1_Spine1.is";
connectAttr "Character1_Spine1.s" "Character1_Spine2.is";
connectAttr "Character1_Spine2.s" "Character1_LeftShoulder.is";
connectAttr "Character1_LeftShoulder.s" "Character1_LeftArm.is";
connectAttr "Character1_LeftArm.s" "Character1_LeftForeArm.is";
connectAttr "Character1_LeftForeArm.s" "Character1_LeftHand.is";
connectAttr "Character1_Spine2.s" "Character1_RightShoulder.is";
connectAttr "Character1_RightShoulder.s" "Character1_RightArm.is";
connectAttr "Character1_RightArm.s" "Character1_RightForeArm.is";
connectAttr "Character1_RightForeArm.s" "Character1_RightHand.is";
connectAttr "Character1_Spine2.s" "Character1_Neck.is";
connectAttr "Character1_Neck.s" "Character1_Head.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HIKproperties1.msg" "Character1.propertyState";
connectAttr "HIKSkeletonGeneratorNode1.CharacterNode" "Character1.SkeletonGenerator"
		;
connectAttr "Character1_Reference.ch" "Character1.Reference";
connectAttr "Character1_Hips.ch" "Character1.Hips";
connectAttr "Character1_LeftUpLeg.ch" "Character1.LeftUpLeg";
connectAttr "Character1_LeftLeg.ch" "Character1.LeftLeg";
connectAttr "Character1_LeftFoot.ch" "Character1.LeftFoot";
connectAttr "Character1_RightUpLeg.ch" "Character1.RightUpLeg";
connectAttr "Character1_RightLeg.ch" "Character1.RightLeg";
connectAttr "Character1_RightFoot.ch" "Character1.RightFoot";
connectAttr "Character1_Spine.ch" "Character1.Spine";
connectAttr "Character1_LeftArm.ch" "Character1.LeftArm";
connectAttr "Character1_LeftForeArm.ch" "Character1.LeftForeArm";
connectAttr "Character1_LeftHand.ch" "Character1.LeftHand";
connectAttr "Character1_RightArm.ch" "Character1.RightArm";
connectAttr "Character1_RightForeArm.ch" "Character1.RightForeArm";
connectAttr "Character1_RightHand.ch" "Character1.RightHand";
connectAttr "Character1_Head.ch" "Character1.Head";
connectAttr "Character1_LeftToeBase.ch" "Character1.LeftToeBase";
connectAttr "Character1_RightToeBase.ch" "Character1.RightToeBase";
connectAttr "Character1_LeftShoulder.ch" "Character1.LeftShoulder";
connectAttr "Character1_RightShoulder.ch" "Character1.RightShoulder";
connectAttr "Character1_Neck.ch" "Character1.Neck";
connectAttr "Character1_Spine1.ch" "Character1.Spine1";
connectAttr "Character1_Spine2.ch" "Character1.Spine2";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Character1_Hips.wm" "skinCluster1.ma[0]";
connectAttr "Character1_LeftUpLeg.wm" "skinCluster1.ma[1]";
connectAttr "Character1_LeftLeg.wm" "skinCluster1.ma[2]";
connectAttr "Character1_LeftFoot.wm" "skinCluster1.ma[3]";
connectAttr "Character1_LeftToeBase.wm" "skinCluster1.ma[4]";
connectAttr "Character1_RightUpLeg.wm" "skinCluster1.ma[5]";
connectAttr "Character1_RightLeg.wm" "skinCluster1.ma[6]";
connectAttr "Character1_RightFoot.wm" "skinCluster1.ma[7]";
connectAttr "Character1_RightToeBase.wm" "skinCluster1.ma[8]";
connectAttr "Character1_Spine.wm" "skinCluster1.ma[9]";
connectAttr "Character1_Spine1.wm" "skinCluster1.ma[10]";
connectAttr "Character1_Spine2.wm" "skinCluster1.ma[11]";
connectAttr "Character1_LeftShoulder.wm" "skinCluster1.ma[12]";
connectAttr "Character1_LeftArm.wm" "skinCluster1.ma[13]";
connectAttr "Character1_LeftForeArm.wm" "skinCluster1.ma[14]";
connectAttr "Character1_LeftHand.wm" "skinCluster1.ma[15]";
connectAttr "Character1_RightShoulder.wm" "skinCluster1.ma[16]";
connectAttr "Character1_RightArm.wm" "skinCluster1.ma[17]";
connectAttr "Character1_RightForeArm.wm" "skinCluster1.ma[18]";
connectAttr "Character1_RightHand.wm" "skinCluster1.ma[19]";
connectAttr "Character1_Neck.wm" "skinCluster1.ma[20]";
connectAttr "Character1_Head.wm" "skinCluster1.ma[21]";
connectAttr "Character1_Hips.liw" "skinCluster1.lw[0]";
connectAttr "Character1_LeftUpLeg.liw" "skinCluster1.lw[1]";
connectAttr "Character1_LeftLeg.liw" "skinCluster1.lw[2]";
connectAttr "Character1_LeftFoot.liw" "skinCluster1.lw[3]";
connectAttr "Character1_LeftToeBase.liw" "skinCluster1.lw[4]";
connectAttr "Character1_RightUpLeg.liw" "skinCluster1.lw[5]";
connectAttr "Character1_RightLeg.liw" "skinCluster1.lw[6]";
connectAttr "Character1_RightFoot.liw" "skinCluster1.lw[7]";
connectAttr "Character1_RightToeBase.liw" "skinCluster1.lw[8]";
connectAttr "Character1_Spine.liw" "skinCluster1.lw[9]";
connectAttr "Character1_Spine1.liw" "skinCluster1.lw[10]";
connectAttr "Character1_Spine2.liw" "skinCluster1.lw[11]";
connectAttr "Character1_LeftShoulder.liw" "skinCluster1.lw[12]";
connectAttr "Character1_LeftArm.liw" "skinCluster1.lw[13]";
connectAttr "Character1_LeftForeArm.liw" "skinCluster1.lw[14]";
connectAttr "Character1_LeftHand.liw" "skinCluster1.lw[15]";
connectAttr "Character1_RightShoulder.liw" "skinCluster1.lw[16]";
connectAttr "Character1_RightArm.liw" "skinCluster1.lw[17]";
connectAttr "Character1_RightForeArm.liw" "skinCluster1.lw[18]";
connectAttr "Character1_RightHand.liw" "skinCluster1.lw[19]";
connectAttr "Character1_Neck.liw" "skinCluster1.lw[20]";
connectAttr "Character1_Head.liw" "skinCluster1.lw[21]";
connectAttr "Character1_Hips.obcc" "skinCluster1.ifcl[0]";
connectAttr "Character1_LeftUpLeg.obcc" "skinCluster1.ifcl[1]";
connectAttr "Character1_LeftLeg.obcc" "skinCluster1.ifcl[2]";
connectAttr "Character1_LeftFoot.obcc" "skinCluster1.ifcl[3]";
connectAttr "Character1_LeftToeBase.obcc" "skinCluster1.ifcl[4]";
connectAttr "Character1_RightUpLeg.obcc" "skinCluster1.ifcl[5]";
connectAttr "Character1_RightLeg.obcc" "skinCluster1.ifcl[6]";
connectAttr "Character1_RightFoot.obcc" "skinCluster1.ifcl[7]";
connectAttr "Character1_RightToeBase.obcc" "skinCluster1.ifcl[8]";
connectAttr "Character1_Spine.obcc" "skinCluster1.ifcl[9]";
connectAttr "Character1_Spine1.obcc" "skinCluster1.ifcl[10]";
connectAttr "Character1_Spine2.obcc" "skinCluster1.ifcl[11]";
connectAttr "Character1_LeftShoulder.obcc" "skinCluster1.ifcl[12]";
connectAttr "Character1_LeftArm.obcc" "skinCluster1.ifcl[13]";
connectAttr "Character1_LeftForeArm.obcc" "skinCluster1.ifcl[14]";
connectAttr "Character1_LeftHand.obcc" "skinCluster1.ifcl[15]";
connectAttr "Character1_RightShoulder.obcc" "skinCluster1.ifcl[16]";
connectAttr "Character1_RightArm.obcc" "skinCluster1.ifcl[17]";
connectAttr "Character1_RightForeArm.obcc" "skinCluster1.ifcl[18]";
connectAttr "Character1_RightHand.obcc" "skinCluster1.ifcl[19]";
connectAttr "Character1_Neck.obcc" "skinCluster1.ifcl[20]";
connectAttr "Character1_Head.obcc" "skinCluster1.ifcl[21]";
connectAttr "bodyShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "bodyShape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "bodyShape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "Character1_Reference.msg" "bindPose1.m[0]";
connectAttr "Character1_Hips.msg" "bindPose1.m[1]";
connectAttr "Character1_LeftUpLeg.msg" "bindPose1.m[2]";
connectAttr "Character1_LeftLeg.msg" "bindPose1.m[3]";
connectAttr "Character1_LeftFoot.msg" "bindPose1.m[4]";
connectAttr "Character1_LeftToeBase.msg" "bindPose1.m[5]";
connectAttr "Character1_RightUpLeg.msg" "bindPose1.m[6]";
connectAttr "Character1_RightLeg.msg" "bindPose1.m[7]";
connectAttr "Character1_RightFoot.msg" "bindPose1.m[8]";
connectAttr "Character1_RightToeBase.msg" "bindPose1.m[9]";
connectAttr "Character1_Spine.msg" "bindPose1.m[10]";
connectAttr "Character1_Spine1.msg" "bindPose1.m[11]";
connectAttr "Character1_Spine2.msg" "bindPose1.m[12]";
connectAttr "Character1_LeftShoulder.msg" "bindPose1.m[13]";
connectAttr "Character1_LeftArm.msg" "bindPose1.m[14]";
connectAttr "Character1_LeftForeArm.msg" "bindPose1.m[15]";
connectAttr "Character1_LeftHand.msg" "bindPose1.m[16]";
connectAttr "Character1_RightShoulder.msg" "bindPose1.m[17]";
connectAttr "Character1_RightArm.msg" "bindPose1.m[18]";
connectAttr "Character1_RightForeArm.msg" "bindPose1.m[19]";
connectAttr "Character1_RightHand.msg" "bindPose1.m[20]";
connectAttr "Character1_Neck.msg" "bindPose1.m[21]";
connectAttr "Character1_Head.msg" "bindPose1.m[22]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[12]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[12]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "Character1_Hips.bps" "bindPose1.wm[1]";
connectAttr "Character1_LeftUpLeg.bps" "bindPose1.wm[2]";
connectAttr "Character1_LeftLeg.bps" "bindPose1.wm[3]";
connectAttr "Character1_LeftFoot.bps" "bindPose1.wm[4]";
connectAttr "Character1_LeftToeBase.bps" "bindPose1.wm[5]";
connectAttr "Character1_RightUpLeg.bps" "bindPose1.wm[6]";
connectAttr "Character1_RightLeg.bps" "bindPose1.wm[7]";
connectAttr "Character1_RightFoot.bps" "bindPose1.wm[8]";
connectAttr "Character1_RightToeBase.bps" "bindPose1.wm[9]";
connectAttr "Character1_Spine.bps" "bindPose1.wm[10]";
connectAttr "Character1_Spine1.bps" "bindPose1.wm[11]";
connectAttr "Character1_Spine2.bps" "bindPose1.wm[12]";
connectAttr "Character1_LeftShoulder.bps" "bindPose1.wm[13]";
connectAttr "Character1_LeftArm.bps" "bindPose1.wm[14]";
connectAttr "Character1_LeftForeArm.bps" "bindPose1.wm[15]";
connectAttr "Character1_LeftHand.bps" "bindPose1.wm[16]";
connectAttr "Character1_RightShoulder.bps" "bindPose1.wm[17]";
connectAttr "Character1_RightArm.bps" "bindPose1.wm[18]";
connectAttr "Character1_RightForeArm.bps" "bindPose1.wm[19]";
connectAttr "Character1_RightHand.bps" "bindPose1.wm[20]";
connectAttr "Character1_Neck.bps" "bindPose1.wm[21]";
connectAttr "Character1_Head.bps" "bindPose1.wm[22]";
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "Character1_Hips.pm" "HIKState2SK1.HipsPGX";
connectAttr "Character1_Hips.jo" "HIKState2SK1.HipsPreR";
connectAttr "Character1_Hips.ssc" "HIKState2SK1.HipsSC";
connectAttr "Character1_Hips.is" "HIKState2SK1.HipsIS";
connectAttr "Character1_Hips.ro" "HIKState2SK1.HipsROrder";
connectAttr "Character1_Hips.ra" "HIKState2SK1.HipsPostR";
connectAttr "Character1_LeftUpLeg.pm" "HIKState2SK1.LeftUpLegPGX";
connectAttr "Character1_LeftUpLeg.jo" "HIKState2SK1.LeftUpLegPreR";
connectAttr "Character1_LeftUpLeg.ssc" "HIKState2SK1.LeftUpLegSC";
connectAttr "Character1_LeftUpLeg.is" "HIKState2SK1.LeftUpLegIS";
connectAttr "Character1_LeftUpLeg.ro" "HIKState2SK1.LeftUpLegROrder";
connectAttr "Character1_LeftUpLeg.ra" "HIKState2SK1.LeftUpLegPostR";
connectAttr "Character1_LeftLeg.pm" "HIKState2SK1.LeftLegPGX";
connectAttr "Character1_LeftLeg.jo" "HIKState2SK1.LeftLegPreR";
connectAttr "Character1_LeftLeg.ssc" "HIKState2SK1.LeftLegSC";
connectAttr "Character1_LeftLeg.is" "HIKState2SK1.LeftLegIS";
connectAttr "Character1_LeftLeg.ro" "HIKState2SK1.LeftLegROrder";
connectAttr "Character1_LeftLeg.ra" "HIKState2SK1.LeftLegPostR";
connectAttr "Character1_LeftFoot.pm" "HIKState2SK1.LeftFootPGX";
connectAttr "Character1_LeftFoot.jo" "HIKState2SK1.LeftFootPreR";
connectAttr "Character1_LeftFoot.ssc" "HIKState2SK1.LeftFootSC";
connectAttr "Character1_LeftFoot.is" "HIKState2SK1.LeftFootIS";
connectAttr "Character1_LeftFoot.ro" "HIKState2SK1.LeftFootROrder";
connectAttr "Character1_LeftFoot.ra" "HIKState2SK1.LeftFootPostR";
connectAttr "Character1_RightUpLeg.pm" "HIKState2SK1.RightUpLegPGX";
connectAttr "Character1_RightUpLeg.jo" "HIKState2SK1.RightUpLegPreR";
connectAttr "Character1_RightUpLeg.ssc" "HIKState2SK1.RightUpLegSC";
connectAttr "Character1_RightUpLeg.is" "HIKState2SK1.RightUpLegIS";
connectAttr "Character1_RightUpLeg.ro" "HIKState2SK1.RightUpLegROrder";
connectAttr "Character1_RightUpLeg.ra" "HIKState2SK1.RightUpLegPostR";
connectAttr "Character1_RightLeg.pm" "HIKState2SK1.RightLegPGX";
connectAttr "Character1_RightLeg.jo" "HIKState2SK1.RightLegPreR";
connectAttr "Character1_RightLeg.ssc" "HIKState2SK1.RightLegSC";
connectAttr "Character1_RightLeg.is" "HIKState2SK1.RightLegIS";
connectAttr "Character1_RightLeg.ro" "HIKState2SK1.RightLegROrder";
connectAttr "Character1_RightLeg.ra" "HIKState2SK1.RightLegPostR";
connectAttr "Character1_RightFoot.pm" "HIKState2SK1.RightFootPGX";
connectAttr "Character1_RightFoot.jo" "HIKState2SK1.RightFootPreR";
connectAttr "Character1_RightFoot.ssc" "HIKState2SK1.RightFootSC";
connectAttr "Character1_RightFoot.is" "HIKState2SK1.RightFootIS";
connectAttr "Character1_RightFoot.ro" "HIKState2SK1.RightFootROrder";
connectAttr "Character1_RightFoot.ra" "HIKState2SK1.RightFootPostR";
connectAttr "Character1_Spine.pm" "HIKState2SK1.SpinePGX";
connectAttr "Character1_Spine.jo" "HIKState2SK1.SpinePreR";
connectAttr "Character1_Spine.ssc" "HIKState2SK1.SpineSC";
connectAttr "Character1_Spine.is" "HIKState2SK1.SpineIS";
connectAttr "Character1_Spine.ro" "HIKState2SK1.SpineROrder";
connectAttr "Character1_Spine.ra" "HIKState2SK1.SpinePostR";
connectAttr "Character1_LeftArm.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "Character1_LeftArm.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "Character1_LeftArm.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "Character1_LeftArm.is" "HIKState2SK1.LeftArmIS";
connectAttr "Character1_LeftArm.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "Character1_LeftArm.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "Character1_LeftForeArm.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "Character1_LeftForeArm.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "Character1_LeftForeArm.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "Character1_LeftForeArm.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "Character1_LeftForeArm.ro" "HIKState2SK1.LeftForeArmROrder";
connectAttr "Character1_LeftForeArm.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "Character1_LeftHand.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "Character1_LeftHand.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "Character1_LeftHand.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "Character1_LeftHand.is" "HIKState2SK1.LeftHandIS";
connectAttr "Character1_LeftHand.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "Character1_LeftHand.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "Character1_RightArm.pm" "HIKState2SK1.RightArmPGX";
connectAttr "Character1_RightArm.jo" "HIKState2SK1.RightArmPreR";
connectAttr "Character1_RightArm.ssc" "HIKState2SK1.RightArmSC";
connectAttr "Character1_RightArm.is" "HIKState2SK1.RightArmIS";
connectAttr "Character1_RightArm.ro" "HIKState2SK1.RightArmROrder";
connectAttr "Character1_RightArm.ra" "HIKState2SK1.RightArmPostR";
connectAttr "Character1_RightForeArm.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "Character1_RightForeArm.jo" "HIKState2SK1.RightForeArmPreR";
connectAttr "Character1_RightForeArm.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "Character1_RightForeArm.is" "HIKState2SK1.RightForeArmIS";
connectAttr "Character1_RightForeArm.ro" "HIKState2SK1.RightForeArmROrder";
connectAttr "Character1_RightForeArm.ra" "HIKState2SK1.RightForeArmPostR";
connectAttr "Character1_RightHand.pm" "HIKState2SK1.RightHandPGX";
connectAttr "Character1_RightHand.jo" "HIKState2SK1.RightHandPreR";
connectAttr "Character1_RightHand.ssc" "HIKState2SK1.RightHandSC";
connectAttr "Character1_RightHand.is" "HIKState2SK1.RightHandIS";
connectAttr "Character1_RightHand.ro" "HIKState2SK1.RightHandROrder";
connectAttr "Character1_RightHand.ra" "HIKState2SK1.RightHandPostR";
connectAttr "Character1_Head.pm" "HIKState2SK1.HeadPGX";
connectAttr "Character1_Head.jo" "HIKState2SK1.HeadPreR";
connectAttr "Character1_Head.ssc" "HIKState2SK1.HeadSC";
connectAttr "Character1_Head.is" "HIKState2SK1.HeadIS";
connectAttr "Character1_Head.ro" "HIKState2SK1.HeadROrder";
connectAttr "Character1_Head.ra" "HIKState2SK1.HeadPostR";
connectAttr "Character1_LeftToeBase.pm" "HIKState2SK1.LeftToeBasePGX";
connectAttr "Character1_LeftToeBase.jo" "HIKState2SK1.LeftToeBasePreR";
connectAttr "Character1_LeftToeBase.ssc" "HIKState2SK1.LeftToeBaseSC";
connectAttr "Character1_LeftToeBase.is" "HIKState2SK1.LeftToeBaseIS";
connectAttr "Character1_LeftToeBase.ro" "HIKState2SK1.LeftToeBaseROrder";
connectAttr "Character1_LeftToeBase.ra" "HIKState2SK1.LeftToeBasePostR";
connectAttr "Character1_RightToeBase.pm" "HIKState2SK1.RightToeBasePGX";
connectAttr "Character1_RightToeBase.jo" "HIKState2SK1.RightToeBasePreR";
connectAttr "Character1_RightToeBase.ssc" "HIKState2SK1.RightToeBaseSC";
connectAttr "Character1_RightToeBase.is" "HIKState2SK1.RightToeBaseIS";
connectAttr "Character1_RightToeBase.ro" "HIKState2SK1.RightToeBaseROrder";
connectAttr "Character1_RightToeBase.ra" "HIKState2SK1.RightToeBasePostR";
connectAttr "Character1_LeftShoulder.pm" "HIKState2SK1.LeftShoulderPGX";
connectAttr "Character1_LeftShoulder.jo" "HIKState2SK1.LeftShoulderPreR";
connectAttr "Character1_LeftShoulder.ssc" "HIKState2SK1.LeftShoulderSC";
connectAttr "Character1_LeftShoulder.is" "HIKState2SK1.LeftShoulderIS";
connectAttr "Character1_LeftShoulder.ro" "HIKState2SK1.LeftShoulderROrder";
connectAttr "Character1_LeftShoulder.ra" "HIKState2SK1.LeftShoulderPostR";
connectAttr "Character1_RightShoulder.pm" "HIKState2SK1.RightShoulderPGX";
connectAttr "Character1_RightShoulder.jo" "HIKState2SK1.RightShoulderPreR";
connectAttr "Character1_RightShoulder.ssc" "HIKState2SK1.RightShoulderSC";
connectAttr "Character1_RightShoulder.is" "HIKState2SK1.RightShoulderIS";
connectAttr "Character1_RightShoulder.ro" "HIKState2SK1.RightShoulderROrder";
connectAttr "Character1_RightShoulder.ra" "HIKState2SK1.RightShoulderPostR";
connectAttr "Character1_Neck.pm" "HIKState2SK1.NeckPGX";
connectAttr "Character1_Neck.jo" "HIKState2SK1.NeckPreR";
connectAttr "Character1_Neck.ssc" "HIKState2SK1.NeckSC";
connectAttr "Character1_Neck.is" "HIKState2SK1.NeckIS";
connectAttr "Character1_Neck.ro" "HIKState2SK1.NeckROrder";
connectAttr "Character1_Neck.ra" "HIKState2SK1.NeckPostR";
connectAttr "Character1_Spine1.pm" "HIKState2SK1.Spine1PGX";
connectAttr "Character1_Spine1.jo" "HIKState2SK1.Spine1PreR";
connectAttr "Character1_Spine1.ssc" "HIKState2SK1.Spine1SC";
connectAttr "Character1_Spine1.is" "HIKState2SK1.Spine1IS";
connectAttr "Character1_Spine1.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "Character1_Spine1.ra" "HIKState2SK1.Spine1PostR";
connectAttr "Character1_Spine2.pm" "HIKState2SK1.Spine2PGX";
connectAttr "Character1_Spine2.jo" "HIKState2SK1.Spine2PreR";
connectAttr "Character1_Spine2.ssc" "HIKState2SK1.Spine2SC";
connectAttr "Character1_Spine2.is" "HIKState2SK1.Spine2IS";
connectAttr "Character1_Spine2.ro" "HIKState2SK1.Spine2ROrder";
connectAttr "Character1_Spine2.ra" "HIKState2SK1.Spine2PostR";
connectAttr "HIKState2GlobalSK1.msg" "CustomRigRetargeterNode1.s";
connectAttr "Character1.msg" "CustomRigRetargeterNode1.d";
connectAttr "Character1.OutputCharacterDefinition" "HIKState2GlobalSK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2GlobalSK1.InputCharacterState"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bodyShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of leard skeleten.0001.ma
