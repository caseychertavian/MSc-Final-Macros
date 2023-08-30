dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/NeuN_ROI";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
		

open("H:/230500 Nimo round2_histology_retina/NeuN/_Step1_raw/"+title+".lsm");
run("Split Channels");
selectWindow("C4-"+title+".lsm");
run("Subtract Background...", "rolling=10");
run("Enhance Contrast", "saturated=0.35");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step2_sub/NeuN/NeuN-"+title+".tif");
selectWindow("C3-"+title+".lsm");
run("Subtract Background...", "rolling=10");
run("Enhance Contrast", "saturated=0.35");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step2_sub/DAPI/DAPI-"+title+".tif");


run("Close All");

	}
	
