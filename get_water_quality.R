if(!file.exists("water_quality_data")){
  dir.create("water_quality_data")
}

#path <- paste0("water_quality_data/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
path <- paste0("water_quality_data/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".json")
#water <- jsonify::from_json("http://106.37.208.244:10001/Home/GetSectionDataList?&page=1&rows=9999",fill_na = TRUE)

url <- "https://szzdjc.cnemc.cn:8070/GJZ/Ajax/Publish.ashx?AreaID=&RiverID=&MNName=&PageIndex=1&PageSize=9999&action=getRealDatas"
# water <- jsonlite::fromJSON(url, simplifyVector = FALSE)
# saveRDS(water,path)
download.file(url,path)


# baseurl1 <- "http://xxfb.mwr.cn/hydroSearch/"
# baseurl2 <- "http://xxfb.mwr.cn/portal/"
# query1 <- c("greatRiver","greatRsvr")
# query2 <- c("vitalRiverInfo","vitalRsvrInfo","earlyWarningInfo","hydroinfoByDays","surpassWarningInfo")


# hydroSearch <- lapply(1:length(query1),function(x){
#   jsonify::from_json(paste0(baseurl1,query1[x]))
# })
# 
# portal <- lapply(1:length(query2),function(x){
#   jsonify::from_json(paste0(baseurl2,query2[x]))
# })
# 
# hydrological <- list(greatRiver = hydroSearch[[1]],
#                      greatRsvr = hydroSearch[[2]],
#                      vitalRiverInfo = portal[[1]],
#                      vitalRsvrInfo = portal[[2]],
#                      earlyWarningInfo = portal[[3]],
#                      hydroinfoByDays = portal[[4]],
#                      surpassWarningInfo = portal[[5]])


# hydrological <- list(greatRiver = jsonify::from_json("http://xxfb.mwr.cn/hydroSearch/greatRiver"),
#                      greatRsvr = jsonify::from_json("http://xxfb.mwr.cn/hydroSearch/greatRsvr"))
# 
# 
# path2 <- paste0("hydrological_data/",Sys.time(),".rds")
# saveRDS(hydrological,path2)
