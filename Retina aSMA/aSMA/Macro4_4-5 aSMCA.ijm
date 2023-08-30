run("Close All");
dir_processing = "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step4_thres/aSMCA";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
		

open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step4_thres/aSMCA/"+title+".tif");
run("Analyze Particles...", "size=0-7 pixel clear overlay add");
run("Create Mask");
imageCalculator("Subtract create", title+".tif","Mask");
selectWindow("Result of "+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step5_select/aSMCA/"+title+".tif");
run("Close All");
roiManager("Delete");

open("H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step5_select/aSMCA/"+title+".tif");
run("Analyze Particles...", "size=500-10000000 pixel clear overlay add");
if(nResults>0){
run("Create Mask");
imageCalculator("Subtract create", title+".tif","Mask");
selectWindow("Result of "+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA_batch_from_NeuN/_Step5_select/aSMCA/"+title+".tif");
run("Close All");
roiManager("Delete");
}


	}
	
