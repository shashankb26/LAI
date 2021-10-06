library(raster)
library(sp,rgeos)
setwd("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\output")
jan8=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\JAN\\RT_T45RUH_20190108T045151_B08.tif")
feb8=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\FEB\\RT_T45RUH_20190207T044951_B08.tif")
mar8=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\MARCH\\RT_T45RUH_20190309T044651_B08.tif")
dec8=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\DEC\\RT_T45RUH_20181209T045201_B08.tif")

jan4=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\JAN\\RT_T45RUH_20190108T045151_B04.tif")
feb4=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\FEB\\RT_T45RUH_20190207T044951_B04.tif")
mar4=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\MARCH\\RT_T45RUH_20190309T044651_B04.tif")
dec4=brick("F:\\STUDY MATERIAL\\Semester7\\ASLE\\Lab\\naoc\\New folder\\DEC\\RT_T45RUH_20181209T045201_B04.tif")

ndvi_jan=(jan8-jan4)/(jan4+jan8)
plot(ndvi_jan)
print(ndvi_jan)
lai_jan=(((1+ndvi_jan)/(1-ndvi_jan))*ndvi_jan)^0.5
writeRaster(lai_jan,filename = "lai_jan.tif",format="GTiff",overwrite=TRUE)
plot(lai_jan)
print(lai_jan)

ndvi_feb=(feb8-feb4)/(feb4+feb8)
plot(ndvi_feb)
lai_feb=(((1+ndvi_feb)/(1-ndvi_feb))*ndvi_feb)^0.5
plot(lai_feb)
writeRaster(lai_feb,filename = "lai_feb.tif",format="GTiff",overwrite=TRUE)

ndvi_mar=(mar8-mar4)/(mar4+mar8)
plot(ndvi_mar)
lai_mar=(((1+ndvi_mar)/(1-ndvi_mar))*ndvi_mar)^0.5
plot(lai_mar)
writeRaster(lai_mar,filename = "lai_mar.tif",format="GTiff",overwrite=TRUE)

ndvi_dec=(dec8-dec4)/(dec4+dec8)
plot(ndvi_dec)
lai_dec=(((1+ndvi_dec)/(1-ndvi_dec))*ndvi_dec)^0.5
plot(lai_dec)
writeRaster(lai_dec,filename = "lai_dec.tif",format="GTiff",overwrite=TRUE)

FVC_JAN=(ndvi_jan+0.9360733)/(0.946972 +0.9360733)
plot(FVC_JAN)
writeRaster(FVC_JAN,filename = "FVC_JAN.tif",format="GTiff",overwrite=TRUE)

FVC_FEB=(ndvi_feb+0.5033652)/(0.9262821  +0.5033652)
plot(FVC_FEB)
writeRaster(FVC_FEB,filename = "FVC_FEB.tif",format="GTiff",overwrite=TRUE)

FVC_MARCH=(ndvi_mar+-0.4535017)/(1+ 0.4535017)
plot(FVC_MARCH)
writeRaster(FVC_MARCH,filename = "FVC_MARCH.tif",format="GTiff",overwrite=TRUE)

FVC_DEC=(ndvi_dec+0.7587302)/( 0.9451339 +0.758730)
plot(FVC_DEC)
writeRaster(FVC_DEC,filename = "FVC_DEC.tif",format="GTiff",overwrite=TRUE)
