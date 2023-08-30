dir_processing = "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_check";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
if(File.exists("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/NeuN_ROIs_foraSMCA/"+title+".roi")){
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/NeuN_ROIs_foraSMCA/"+title+".roi");
run("Measure");
saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/tissue length/"+title+".csv");
run("Clear Results");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step5_OR_shape/"+title+".tif");
run("Analyze Particles...", "size=0-10000000 clear add");
	open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR/"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/OR/"+title+".csv");
	run("Clear Results");
	
	open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR_fillholes/"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/fillholes/"+title+".csv");
	run("Clear Results");

	open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step3_/aSMCA-"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/aSMCA/"+title+".csv");
	run("Clear Results");

	open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_AND/"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/AND/"+title+".csv");
	run("Clear Results");

	open("H:/230500 Nimo round2_histology_retina/Lectin10X_enhance/_Step3_/thres_crop_RenyiEntropy/lectin-"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/Lectin/"+title+".csv");
	run("Clear Results");

	open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step6_create line/"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/is sup/"+title+".csv");
	run("Clear Results");

	open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step6_OR_shape_skel/"+title+".tif");
	roiManager("Measure");
	saveAs("Results", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/excel/skel/"+title+".csv");
	run("Clear Results");
roiManager("Delete");
run("Close All");
	}else{print(title+"no line roi");}
	}