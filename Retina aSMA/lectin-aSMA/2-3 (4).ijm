dir_processing = "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step5_select/aSMCA/";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(6,title.length()-4);
open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step5_select/aSMCA/aSMCA-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step3_/aSMCA-"+title+".tif");
open("H:/230500 Nimo round2_histology_retina/Lectin10X_enhance/_Step2.5_enhance/lectin-"+title+".tif");
run("Merge Channels...", "c1=aSMCA-"+title+".tif c2=lectin-"+title+".tif create");
saveAs("Jpeg", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_check/"+title+".jpg");
run("Close All");
	}