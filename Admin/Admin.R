#
namelist <- read.csv('C://Users//mfp53502//Documents//GitHub//fortnight_challenge//Admin//AANameList.csv')
names(namelist) <- c('Name')

name2exclude <- 'liang'
name2use <- as.data.frame(namelist[namelist[,1] != name2exclude,])
perm <- sample(dim(name2use)[1])

subgroup <- 3
numgroup <- 0
n <-  0
while (n < length(perm)){
      if(n %% subgroup== 0) {
        numgroup <- numgroup + 1
        print("========================================")
        print(paste0("members in group ",numgroup,":  "))
        print("========================================")
      }
      print(as.character(name2use[n+1,1]))
      n <- n + 1
}
