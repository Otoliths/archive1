path <- paste0("water_quality_data/",Sys.time(),".json")

download.file("http://106.37.208.244:10001/Home/GetSectionDataList?&page=1&rows=9999",path)
