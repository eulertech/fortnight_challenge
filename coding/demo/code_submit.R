nums <- read.table("input.txt",sep="");
nums <- as.list(nums)
#nums <- as.list(as.data.frame(t(nums))
write.table(as.numeric(nums[1])+as.numeric(nums[2]),sep="")
