yob2013 <- read.table('names/yob2013.txt', sep=",", stringsAsFactors = FALSE)
colnames(yob2013) <- c('Name', 'Sex', 'Num.2013')
yob2013$Sex <- as.factor(yob2013$Sex)
yob2013 <- transform(yob2013, Rank.2013 = ave(Num.2013, Sex, FUN = function(x) rank(-x, ties.method = "min")))