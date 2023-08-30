dir_processing = "H:/230500 Nimo round2_histology_retina/NeuN/NeuN_ROI";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
		
open("H:/230500 Nimo round2_histology_retina/NeuN/allzero.tif");
open("H:/230500 Nimo round2_histology_retina/NeuN/NeuN_ROI/"+title+".roi");
setForegroundColor(255, 255, 255);
run("Fill", "slice");
run("Select None");
run("Gaussian Blur...", "sigma=10");
setThreshold(3, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step6_creat line/"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/NeuN/_Step6_creat line/"+title+".tif");
run("Invert");
open("H:/230500 Nimo round2_histology_retina/NeuN/_Step2_sub/NeuN/NeuN-"+title+".tif");
imageCalculator("Subtract create", "NeuN-"+title+".tif",""+title+".tif");
selectWindow("Result of NeuN-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step3_crop/NeuN/NeuN-"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/NeuN/_Step6_creat line/"+title+".tif");
run("Invert");
open("H:/230500 Nimo round2_histology_retina/NeuN/_Step2_sub/DAPI/DAPI-"+title+".tif");
imageCalculator("Subtract create", "DAPI-"+title+".tif",""+title+".tif");
selectWindow("Result of DAPI-"+title+".tif");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/NeuN/_Step3_crop/DAPI/DAPI-"+title+".tif");
run("Close All");


	}
	
