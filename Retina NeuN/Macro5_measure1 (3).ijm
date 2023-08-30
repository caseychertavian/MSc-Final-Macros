dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/_Step4_thres/DAPI";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(5,title.length()-4);


open("H:/230500 Nimo round2_histology_retina/NeuN/NeuN_ROI/"+title+".roi");
setForegroundColor(255, 255, 255);
run("Fill", "slice");
run("Select None");
run("Measure");
saveAs("Results", "H:/230500 Nimo round2_histology_retina/NeuN/excel/length/"+title+".csv");
run("Clear Results");
run("Close All");		
						
	}
	
