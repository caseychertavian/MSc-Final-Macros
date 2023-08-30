dir_processing = "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_check";
list = getFileList(dir_processing);
for(i = 0; i < list.length; i++) 
	{
		title = list[i];
		title = title.substring(0,title.length()-4);
open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR/"+title+".tif");
run("Shape Index Map", "gaussian_blur_radius=3");
setThreshold(0.001, 1e30);
setOption("BlackBackground", true);
run("Convert to Mask");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step5_OR_shape/"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR/"+title+".tif");
run("Fill Holes");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step4_OR_fillholes/"+title+".tif");
run("Close All");

open("H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step5_OR_shape/"+title+".tif");
run("Skeletonize");
saveAs("Tiff", "H:/230500 Nimo round2_histology_retina/aSMCA10X_enhance approach2/_Step6_OR_shape_skel/"+title+".tif");
run("Close All");
	}