#
namelist <- read.csv('C://Users//mfp53502//Documents//GitHub//fortnight_challenge//Admin//AANameList.csv')
names(namelist) <- c('Name')

name2exclude <- c('liang','adam')
notkeep <- namelist$Name %in% name2exclude
name2use <- as.data.frame(namelist[!notkeep,])

subgroup <- 3
numgroup <- 0
perm <- sample(dim(name2use)[1])
permName <- as.data.frame(name2use[perm,1])
n <-  0
while (n < length(perm)){
      if(n %% subgroup== 0) {
        numgroup <- numgroup + 1
        print("========================================")
        print(paste0("members in group ",numgroup,":  "))
        print("========================================")
      }
      print(as.character(permName[n+1,1]))
      n <- n + 1
}
