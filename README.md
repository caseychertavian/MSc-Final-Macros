# MSc-Final-Macros

Brief descriptions of macros

NG2+ pericytes in the retina and blood vessels

	(2-2.5): Enhance images 
	(2.3-5): Apply Renyi-Crop threshold and generate skeletonized mask of lectin-labelled blood vessels 
	(3-4-5-6): Measure vessel:pericyte area ratio and vessel:pericyte number; skeletonize blood vessels; measure density and diameter 
	Add to an excel file 

PDGFRα+β+ pericytes in the cortical GM and blood vessels

	(2-2.5): Enhance images 
	(2.3-5): Apply RenyiEntropy dark threshold 
	(3-4-5-6): Measure vessel:pericyte area ratio and vessel:pericyte number; skeletonize blood vessels; measure density and diameter 
	Add to an excel file 

α-SMA+ VSMC in the cortical GM

	(2-3): Enhance images, subtract background, added Triangle threshold 
	(3-4): Create AND/OR masks with lectin, create masks 
	(4-5): Blur vessels to ensure one vessel is not counted as two vessels 
	Measure diameter and density of VSMC and add to an excel file 

Iba-1+ microglia in the retina (IF)

	(1-2): Enhance and subtract background 
	(2-3): Split channels 
	(2-4 DAPI): Apply Triangle Dark background 
	(3-4 Iba-1): Apply Moments Dark background 
	(4-5 DAPI): Create mask 
	(4-5 Iba-1): Create mask 
	(line-5)(5-6): Add linear ROI of superficial retinal layer and ROI of whole retina
	(measure 1): Measure tissue area and length of retina 
	(measure 2): Select and measure Iba-1 signal then check for DAPI signal. Determine if Iba-1 are in the whole retina or on the superficial retinal layer 
	Take out measure 3 

NeuN+ neurons in the retina 
	(1-2): Subtract background 

	(2-3): Isolate retina 
	(3-4): Threshold with moments 
	(4-5): Select out extra particles 
	(measure 1): Measure tissue information 
	(measure 2): Apply NeuN ROI and measure NeuN 

α-SMA+ VSMC in the retina 

	First folder Macros for SMA 
	(1-2) (2-3): aSMA subtract background and blur to ensure vessels are counted twice 
	(3-4): Apply Renyi Entropy dark threshold 
	(4-5): Create mask 
	Second folder are Macros for lectin and SMa 
	(2-3): Merge lectin and aSMA channels 
	(3-4): Create OR mask with lectin and aSMA 
	(4-5-6): Count VSMC density and skeletonize to determine VSMC diameter 
	Add to excel file 
 
![image](https://github.com/caseychertavian/MSc-Final-Macros/assets/143603526/015b06e2-6c91-436e-b55e-7f229e5c074c)
