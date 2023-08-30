dir_processing = "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/NeuN_ROIs_foraSMCA";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
		
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/allzero.tif");
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/NeuN_ROIs_foraSMCA/"+title+".roi");
setForegroundColor(255, 255, 255);
run("Fill", "slice");
run("Select None");
run("Gaussian Blur...", "sigma=10");
setThreshold(2, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step6_create line/"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step6_create line/"+title+".tif");
run("Invert");
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/Lectin/lectin-"+title+".tif");
imageCalculator("Subtract create", "lectin-"+title+".tif",""+title+".tif");
selectWindow("Result of lectin-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step3_crop/Lectin/lectin-"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step6_create line/"+title+".tif");
run("Invert");
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/aSMCA/aSMCA-"+title+".tif");
imageCalculator("Subtract create", "aSMCA-"+title+".tif",""+title+".tif");
selectWindow("Result of aSMCA-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step3_crop/aSMCA/aSMCA-"+title+".tif");
run("Close All");


	}
	
