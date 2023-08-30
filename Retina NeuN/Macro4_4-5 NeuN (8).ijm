dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/_Step4_thres/DAPI";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(5,title.length()-4);
		

open("H:/230500 Nimo round2_histology_retina/NeuN/_Step4_thres/NeuN/NeuN-"+title+".tif");
run("Analyze Particles...", "size=0-15 pixel clear overlay add");
run("Create Mask");
imageCalculator("Subtract create", "NeuN-"+title+".tif","Mask");
selectWindow("Result of NeuN-"+title+".tif");
run("Watershed");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step5_select/NeuN/NeuN-"+title+".tif");
run("Close All");
roiManager("Delete");
	}
	
