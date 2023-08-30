dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/_Step4_thres/DAPI";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(5,title.length()-4);


open("H:/230500 Nimo round2_histology_retina/NeuN/_Step5_select/NeuN/NeuN-"+title+".tif");
run("Analyze Particles...", "size=0-1000000 pixel clear add");
roiManager("Save", "H:/230500 Nimo round2_histology_retina/NeuN/excel/roi/roi/"+title+".zip");

roiManager("Measure");
saveAs("Results", "H:/230500 Nimo round2_histology_retina/NeuN/excel/roi/NeuN/"+title+".csv");
run("Clear Results");

open("H:/230500 Nimo round2_histology_retina/NeuN/_Step5_select/DAPI/DAPI-"+title+".tif");
roiManager("Measure");
saveAs("Results", "H:/230500 Nimo round2_histology_retina/NeuN/excel/roi/DAPI/"+title+".csv");
run("Clear Results");
roiManager("Delete");
run("Close All");
						
	}
	
