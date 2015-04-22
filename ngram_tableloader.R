#####################################################################

# Prediction Functions for Stupid Backoff w/SMART Words removed

###############################################

all20.4pred <- function(str1,str2,str3){
        all20.4prediction[intersect(all20.4g.v1list[[str1]], intersect(all20.4g.v2list[[str2]],all20.4g.v3list[[str3]]))]
}

all20.3pred <- function(str2,str3){
        all20.3prediction[intersect(all20.3g.v1list[[str2]], all20.3g.v2list[[str3]])]
}

all20.2pred <- function(str3){all20.2prediction[all20.2g.v1list[[str3]]]}

all20.1pred <- function(){all20.1prediction[sample(1:length(all20.1g.v1list),size=1)]}

##################################################################################

# NGram Tables Loader File

##################################################################################

library(tm)
#library(readr)
library(data.table)


#####################################################################

# Stupid Back-Off Tables

###############################################

# read in 4gram table from text file
#all20.4table <- read_table("all20.4table.txt",n_max=-1, col_names=F, col_types=c)
all20.4table <- read.table("all20.4table.txt", -1,col.names=c("V1","V2","V3","V4","V5"),stringsAsFactors=F)
all20.4table <- data.table(all20.4table)


# all20.4table load and ready
all20.4position <- 1:nrow(all20.4table)

all20.4g.v1list <- tapply(all20.4position,all20.4table$V1,c)
all20.4g.v2list <- tapply(all20.4position,all20.4table$V2,c)
all20.4g.v3list <- tapply(all20.4position,all20.4table$V3,c)
all20.4prediction <- all20.4table$V4

###############################################

# read in 3gram table from text file
#all20.3table <- read_table("all20.3table.txt",n_max=-1, col_names=F, col_types=c("c","c","c","c","i"))
all20.3table <- read.table("all20.3table.txt", -1,col.names=c("V1","V2","V3","V4"),stringsAsFactors=F)
all20.3table <- data.table(all20.3table)

# all20.3table load and ready
all20.3position <- 1:nrow(all20.3table)

all20.3g.v1list <- tapply(all20.3position,all20.3table$V1,c)
all20.3g.v2list <- tapply(all20.3position,all20.3table$V2,c)

all20.3prediction <- all20.3table$V3

##################################################################

# read in 2gram table from text file
#all20.2table <- read.table("all20.2table.txt",n_max=-1, col_names=F)
all20.2table <- read.table("all20.2table.txt", -1,col.names=c("V1","V2","V3"),stringsAsFactors=F)
all20.2table <- data.table(all20.2table)

# all20.2table load and ready
all20.2position <- 1:nrow(all20.2table)

all20.2g.v1list <- tapply(all20.2position,all20.2table$V1,c)

all20.2prediction <- all20.2table$V2


##################################################################

# read in 1gram table from text file
#all20.1table <- read_table("all20.1table.txt",n_max=-1, col_names=F)
all20.1table <- read.table("all20.1table.txt", -1,col.names=c("V1","V2"),stringsAsFactors=F)
all20.1table <- data.table(all20.1table)

# all20.1table load and ready
all20.1position <- 1:nrow(all20.1table)

all20.1g.v1list <- tapply(all20.1position,all20.1table$V1,c)

all20.1prediction <- all20.1table$V1


#####################################################################

# Prediction Functions for Stupid Backoff w/SMART Words removed

###############################################

all20.4pred <- function(str1,str2,str3){
        all20.4prediction[intersect(all20.4g.v1list[[str1]], intersect(all20.4g.v2list[[str2]],all20.4g.v3list[[str3]]))]
}

all20.3pred <- function(str2,str3){
        all20.3prediction[intersect(all20.3g.v1list[[str2]], all20.3g.v2list[[str3]])]
}

all20.2pred <- function(str3){all20.2prediction[all20.2g.v1list[[str3]]]}

all20.1pred <- function(){all20.1prediction[sample(1:length(all20.1g.v1list),size=1)]}

##################################################################################

# NGram Tables Loader File

##################################################################################

#library(tm)
#library(readr)
library(data.table)


#####################################################################

# Stupid Back-Off Tables

###############################################

# read in 4gram table from text file
#all20.4table <- read_table("all20.4table.txt",n_max=-1, col_names=F, col_types=c)
all20.4table <- read.table("all20.4table.txt", -1,col.names=c("V1","V2","V3","V4","V5"),stringsAsFactors=F)
all20.4table <- data.table(all20.4table)


# all20.4table load and ready
all20.4position <- 1:nrow(all20.4table)

all20.4g.v1list <- tapply(all20.4position,all20.4table$V1,c)
all20.4g.v2list <- tapply(all20.4position,all20.4table$V2,c)
all20.4g.v3list <- tapply(all20.4position,all20.4table$V3,c)
all20.4prediction <- all20.4table$V4

###############################################

# read in 3gram table from text file
#all20.3table <- read_table("all20.3table.txt",n_max=-1, col_names=F, col_types=c("c","c","c","c","i"))
all20.3table <- read.table("all20.3table.txt", -1,col.names=c("V1","V2","V3","V4"),stringsAsFactors=F)
all20.3table <- data.table(all20.3table)

# all20.3table load and ready
all20.3position <- 1:nrow(all20.3table)

all20.3g.v1list <- tapply(all20.3position,all20.3table$V1,c)
all20.3g.v2list <- tapply(all20.3position,all20.3table$V2,c)

all20.3prediction <- all20.3table$V3

##################################################################

# read in 2gram table from text file
#all20.2table <- read.table("all20.2table.txt",n_max=-1, col_names=F)
all20.2table <- read.table("all20.2table.txt", -1,col.names=c("V1","V2","V3"),stringsAsFactors=F)
all20.2table <- data.table(all20.2table)

# all20.2table load and ready
all20.2position <- 1:nrow(all20.2table)

all20.2g.v1list <- tapply(all20.2position,all20.2table$V1,c)

all20.2prediction <- all20.2table$V2


##################################################################

# read in 1gram table from text file
#all20.1table <- read_table("all20.1table.txt",n_max=-1, col_names=F)
all20.1table <- read.table("all20.1table.txt", -1,col.names=c("V1","V2"),stringsAsFactors=F)
all20.1table <- data.table(all20.1table)

# all20.1table load and ready
all20.1position <- 1:nrow(all20.1table)

all20.1g.v1list <- tapply(all20.1position,all20.1table$V1,c)

all20.1prediction <- all20.1table$V1