options(timeout=1000)
if (!file.exists(paste0("water_quality_data/",as.POSIXlt(Sys.Date(), "Asia/Shanghai")))){
  dir.create(paste0("water_quality_data/",as.POSIXlt(Sys.Date(), "Asia/Shanghai")))
}
path <- paste0("water_quality_data/",as.POSIXlt(Sys.Date(), "Asia/Shanghai"),"/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".json")

try(download.file("http://106.37.208.244:10001/Home/GetSectionDataList?&page=1&rows=9999",path),silent = T)
