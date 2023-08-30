dir_processing = "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_check";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);

open("H:/230500 Nimo round2_histology_retina/Lectin10X_enhance/_Step3_/thres_crop_RenyiEntropy/lectin-"+title+".tif");
open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step3_/aSMCA-"+title+".tif");
imageCalculator("OR create", "lectin-"+title+".tif","aSMCA-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR/"+title+".tif");
imageCalculator("AND create", "lectin-"+title+".tif","aSMCA-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_AND/"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR/"+title+".tif");
run("Analyze Particles...", "size=0-5 pixel clear overlay add");
if(nResults>0){
run("Create Mask");
imageCalculator("Subtract create", ""+title+".tif","Mask");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR/"+title+".tif");
roiManager("Delete");
} run("Close All");
	}