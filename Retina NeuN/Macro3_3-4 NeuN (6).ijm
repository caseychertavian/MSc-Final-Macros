dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/NeuN_ROI";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
		
open("H:/230500 Nimo round2_histology_retina/NeuN/_Step3_crop/NeuN/NeuN-"+title+".tif");
setAutoThreshold("Moments dark");
setOption("BlackBackground", true);
run("Convert to Mask");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step4_thres/NeuN/NeuN-"+title+".tif");
run("Close All");

	}
	
