dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/_Step1_raw";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
		
open("H:/230500 Nimo round2_histology_retina/NeuN/_Step1_raw/"+title+".lsm");
run("Split Channels");
selectWindow("C1-"+title+".lsm");
run("Subtract Background...", "rolling=10");
run("Enhance Contrast", "saturated=0.35");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/Lectin/lectin-"+title+".tif");

selectWindow("C2-"+title+".lsm");
run("Subtract Background...", "rolling=10");
run("Enhance Contrast", "saturated=0.35");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/aSMCA/aSMCA-"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/aSMCA/aSMCA-"+title+".tif");
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/Lectin/lectin-"+title+".tif");
run("Merge Channels...", "c1=aSMCA-"+title+".tif c2=lectin-"+title+".tif create");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step2_sub/merge/"+title+".tif");
run("Close All");

	}
	
