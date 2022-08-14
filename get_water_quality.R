path1 <- paste0("water_quality_data/",Sys.time(),".rds")

water <- jsonify::from_json("http://106.37.208.244:10001/Home/GetSectionDataList?&page=1&rows=9999")

saveRDS(water,path1)


baseurl1 <- "http://xxfb.mwr.cn/hydroSearch/"
baseurl2 <- "http://xxfb.mwr.cn/portal/"
query1 <- c("greatRiver","greatRsvr")
query2 <- c("vitalRiverInfo","vitalRsvrInfo","earlyWarningInfo","hydroinfoByDays","surpassWarningInfo")


hydroSearch <- lapply(1:length(query1),function(x){
  jsonify::from_json(paste0(baseurl1,query1[x]))
})

portal <- lapply(1:length(query2),function(x){
  jsonify::from_json(paste0(baseurl2,query2[x]))
})

hydrological <- list(greatRiver = hydroSearch[[1]],
                     greatRsvr = hydroSearch[[2]],
                     vitalRiverInfo = portal[[1]],
                     vitalRsvrInfo = portal[[2]],
                     earlyWarningInfo = portal[[3]],
                     hydroinfoByDays = portal[[4]],
                     surpassWarningInfo = portal[[5]])

path2 <- paste0("hydrological_data/",Sys.time(),".rds")
saveRDS(hydrological,path2)
