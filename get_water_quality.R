path1 <- paste0("water_quality_data/",Sys.time(),".rds")

water <- jsonify::from_json("http://106.37.208.244:10001/Home/GetSectionDataList?&page=1&rows=9999")

saveRDS(water,path1)
